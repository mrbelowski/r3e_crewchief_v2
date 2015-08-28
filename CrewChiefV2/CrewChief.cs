using System;
using System.Diagnostics;
using System.IO;
using System.IO.MemoryMappedFiles;
using System.Runtime.InteropServices;
using System.Threading;
using System.Windows.Forms;
using CrewChiefV2.Data;
using CrewChiefV2.Events;
using System.Collections.Generic;


namespace CrewChiefV2
{
    class CrewChief : IDisposable
    {
        private Boolean keepQuietEnabled = false;
        private Boolean spotterEnabled = UserSettings.GetUserSettings().getBoolean("enable_spotter");

        private bool Mapped
        {
            get { return (_file != null && _view != null); }
        }

        private MemoryMappedFile _file;
        private MemoryMappedViewAccessor _view;

        public static TimeSpan _timeInterval = TimeSpan.FromMilliseconds(UserSettings.GetUserSettings().getInt("update_interval"));

        private static Dictionary<String, AbstractEvent> eventsList = new Dictionary<String, AbstractEvent>();

        public AudioPlayer audioPlayer = new AudioPlayer();

        Shared lastState;
        Shared currentState;

        Boolean stateCleared = false;

        public Boolean running = false;

        double lastGameStateTime = 0;

        private List<SessionData> sessionData = new List<SessionData>();

        private TimeSpan minimumSessionParticipationTime = TimeSpan.FromSeconds(6);
        
        class SessionData {
            public int sessionType;
            public int sessionPhase;
            public int sessionIteration;
            public DateTime startPoint;
            public double runningTime;

            public SessionData(int sessionType, int sessionPhase, int sessionIteration)
            {
                this.sessionType = sessionType;
                this.sessionPhase = sessionPhase;
                this.sessionIteration = sessionIteration;
                this.startPoint = DateTime.Now;
            }

            public void display()
            {
                Console.WriteLine("Session type = " + sessionType + ", session phase = " + sessionPhase +
                    ", session iteration = " + sessionIteration + ", time = " + startPoint.ToString("HH:mm:ss.fff"));
            }
        }

        public CrewChief()
        {
            audioPlayer.initialise();
            eventsList.Add("LapCounter", new LapCounter(audioPlayer));
            eventsList.Add("LapTimes", new LapTimes(audioPlayer));
            eventsList.Add("Penalties", new Penalties(audioPlayer));
            eventsList.Add("MandatoryPitStops", new MandatoryPitStops(audioPlayer));
            eventsList.Add("Fuel", new Fuel(audioPlayer));
            eventsList.Add("Position", new Position(audioPlayer));
            eventsList.Add("RaceTime", new RaceTime(audioPlayer));
            eventsList.Add("TyreMonitor", new TyreMonitor(audioPlayer));
            eventsList.Add("EngineMonitor", new EngineMonitor(audioPlayer));
            eventsList.Add("Timings", new Timings(audioPlayer));
            eventsList.Add("DamageReporting", new DamageReporting(audioPlayer));
            eventsList.Add("PushNow", new PushNow(audioPlayer));
            eventsList.Add("Spotter", new Spotter(audioPlayer, spotterEnabled));            
        }

        public void Dispose()
        {
            if (_view != null)
            {
                _view.Dispose();
            }
            if (_file != null)
            {
                _file.Dispose();
            }
            audioPlayer.stopMonitor();
        }

        public static AbstractEvent getEvent(String eventName)
        {
            if (eventsList.ContainsKey(eventName))
            {
                return eventsList[eventName];
            }
            else
            {
                return null;
            }
        }

        public void toggleKeepQuietMode()
        {
            if (keepQuietEnabled) 
            {
                disableKeepQuietMode();
            }
            else
            {
                enableKeepQuietMode();
            }
        }

        public void toggleSpotterMode()
        {
            if (spotterEnabled)
            {
                disableSpotter();
            }
            else
            {
                enableSpotter();
            }
        }

        public void enableKeepQuietMode()
        {
            keepQuietEnabled = true;
            audioPlayer.enableKeepQuietMode();
        }

        public void disableKeepQuietMode()
        {
            keepQuietEnabled = false;
            audioPlayer.disableKeepQuietMode();
        }

        public void enableSpotter()
        {
            spotterEnabled = true;
            ((Spotter)eventsList["Spotter"]).enableSpotter();
        }

        public void disableSpotter()
        {
            spotterEnabled = false;
            ((Spotter)eventsList["Spotter"]).disableSpotter();
        }

        public void youWot()
        {
            audioPlayer.openChannel();
            audioPlayer.playClipImmediately(AudioPlayer.folderDidntUnderstand, new QueuedMessage(0, null));
            audioPlayer.closeChannel();
        }

        public Boolean Run()
        {
            Console.WriteLine("Polling for shared data every " + _timeInterval.Milliseconds + " milliseconds");
            running = true;
            var timeReset = DateTime.UtcNow;
            var timeLast = timeReset;
            if (!audioPlayer.initialised)
            {
                Console.WriteLine("Failed to initialise audio player");
                return false;
            }
            audioPlayer.startMonitor();
            Boolean displayedMappingMessage = false;
            Boolean attemptedToRunRRRE = false;
            while (running)
            {
                var timeNow = DateTime.UtcNow;

                if (timeNow.Subtract(timeLast) < _timeInterval)
                {
                    Thread.Sleep(1);
                    continue;
                }

                timeLast = timeNow;

                if (Utilities.IsRrreRunning()) {
                    if (!Mapped)
                    {
                        if (!displayedMappingMessage)
                        {
                            Console.WriteLine("Found RRRE.exe, mapping shared memory...");
                            displayedMappingMessage = true;
                        }

                        if (Map())
                        {
                            Console.WriteLine("Memory mapped successfully");
                            timeReset = DateTime.UtcNow;
                        }
                    }
                }
                else if (UserSettings.GetUserSettings().getBoolean("launch_raceroom") && !attemptedToRunRRRE)
                {
                    Utilities.runRrre();
                    attemptedToRunRRRE = true;
                }

                if (Mapped)
                {
                    lastState = currentState;
                    currentState = new Shared();
                    _view.Read(0, out currentState);
                    if (updateSessionData(currentState.SessionType, currentState.SessionPhase, currentState.SessionIteration))
                    {
                        // if the current session is race and the phase is terminated (i.e. finished), play the end message - note this might not trigger 
                        // if it's already been played because of a 'proper' session finish event
                        //
                        // 
                        if ((currentState.SessionType == (int)Constant.Session.Race && currentState.SessionPhase == (int)Constant.SessionPhase.Terminated) ||
                            hasNextSessionStarted() && hasParticipatedInPreviousSession())
                        {
                            int position = lastState.Position;
                            if (lastState.LapTimeBestLeader == -1)
                            {
                                position = lastState.NumCars;
                            }
                            ((LapCounter)eventsList["LapCounter"]).playFinishMessage(lastState.SessionType, position, lastState.NumCars);
                        }
                    }

                    // how long has the game been running?
                    double gameRunningTime = currentState.Player.GameSimulationTime;
                    // if we've gone back in time, this means a new session has started so clear all the game state
                    if ((gameRunningTime <= _timeInterval.Seconds || gameRunningTime < lastGameStateTime || currentState.SessionType != lastState.SessionType)
                        && !stateCleared)
                    {
                        Console.WriteLine("Clearing game state...");
                        CommonData.clearState();
                        foreach (KeyValuePair<String, AbstractEvent> entry in eventsList)
                        {
                            entry.Value.clearState();
                        }
                        stateCleared = true;
                    }
                    else if (gameRunningTime > _timeInterval.Seconds)
                    {
                        if (sessionData.Count > 0)
                        {
                            sessionData[sessionData.Count - 1].runningTime = gameRunningTime;
                        }
                        stateCleared = false;
                        CommonData.setCommonStateData(lastState, currentState);
                        Dictionary<String, String> faultingEvents = new Dictionary<String, String>();
                        Dictionary<String, int> faultingEventsCount = new Dictionary<String, int>();

                        foreach (KeyValuePair<String, AbstractEvent> entry in eventsList)
                        {
                            try
                            {
                                entry.Value.trigger(lastState, currentState);
                            }
                            catch (Exception e)
                            {
                                if (faultingEventsCount.ContainsKey(entry.Key))
                                {
                                    faultingEventsCount[entry.Key]++;
                                    if (faultingEventsCount[entry.Key] > 5)
                                    {
                                        Console.WriteLine("Event " + entry.Key +
                                            " has failed > 5 times in this session");
                                    }
                                }
                                if (!faultingEvents.ContainsKey(entry.Key))
                                {
                                    Console.WriteLine("Event " + entry.Key + " threw exception " + e.Message);
                                    Console.WriteLine("This is the first time this event has failed in this session");
                                    faultingEvents.Add(entry.Key, e.Message);
                                    faultingEventsCount.Add(entry.Key, 1);
                                }
                                else if (faultingEvents[entry.Key] != e.Message)
                                {
                                    Console.WriteLine("Event " + entry.Key + " threw a different exception: " + e.Message);
                                    faultingEvents[entry.Key] = e.Message;
                                }
                            }
                        }
                        CommonData.isNew = false;
                    }
                    lastGameStateTime = currentState.Player.GameSimulationTime;
                }
            }
            audioPlayer.stopMonitor();
            return true;
        }

        /**
         * returns whether the current session phase, type, or iteration is different from the previous one
         */
        private Boolean updateSessionData(int sessionType, int sessionPhase, int sessionIteration)
        {
            if (sessionType == (int)Constant.Session.Unavailable || sessionPhase == (int)Constant.SessionPhase.Unavailable || sessionIteration == -1)
            {
                // don't add 'unavailable' data
                return false;
            }
            if (sessionData.Count != 0)
            {
                SessionData previousSessionData = sessionData[sessionData.Count - 1];
                if (sessionType != previousSessionData.sessionType || sessionPhase != previousSessionData.sessionPhase || 
                    sessionIteration != previousSessionData.sessionIteration)
                {
                    sessionData.Add(new SessionData(sessionType, sessionPhase, sessionIteration));
                    return true;
                }
            }
            else
            {
                sessionData.Add(new SessionData(sessionType, sessionPhase, sessionIteration));
            }
            return false;
        }

        /**
         * This should return false if we restart the existing session or if the session that's being started
         * isn't following on from the previous session (i.e. we've quit to the menu)
         */
        private Boolean hasNextSessionStarted()
        {
            if (sessionData.Count > 1)
            {
                SessionData currentSessionData = sessionData[sessionData.Count - 1];
                SessionData previousSessionData = sessionData[sessionData.Count - 2];
                Boolean sessionHasRecentlyFinished = 
                    previousSessionData.startPoint.Add(TimeSpan.FromSeconds(10 + previousSessionData.runningTime)) > currentSessionData.startPoint;
                
                if (previousSessionData.sessionType == (int)Constant.Session.Practice &&
                    (currentSessionData.sessionType == (int)Constant.Session.Qualify ||
                    currentSessionData.sessionType == (int)Constant.Session.Race))
                {
                    return sessionHasRecentlyFinished;
                }
                if (previousSessionData.sessionType == (int)Constant.Session.Qualify &&
                   currentSessionData.sessionType == (int)Constant.Session.Race)
                {
                    return sessionHasRecentlyFinished;
                }
                if (previousSessionData.sessionType == (int)Constant.Session.Practice &&
                   currentSessionData.sessionType == (int)Constant.Session.Race)
                {
                    return sessionHasRecentlyFinished;
                }
                if (previousSessionData.sessionType == (int)Constant.Session.Qualify &&
                   currentSessionData.sessionType == (int)Constant.Session.Qualify && 
                    previousSessionData.sessionIteration + 1 == currentSessionData.sessionIteration)
                {
                    return sessionHasRecentlyFinished;
                }
                if (previousSessionData.sessionType == (int)Constant.Session.Race &&
                   currentSessionData.sessionType == (int)Constant.Session.Race &&
                    previousSessionData.sessionIteration + 1 == currentSessionData.sessionIteration)
                {
                    return sessionHasRecentlyFinished;
                }
            }
            return false;
        }

        private Boolean hasParticipatedInPreviousSession()
        {
            if (sessionData.Count > 1)
            {
                SessionData previousSessionData = sessionData[sessionData.Count - 2];
                if (previousSessionData.sessionPhase == (int)Constant.SessionPhase.Checkered ||
                    previousSessionData.sessionPhase == (int)Constant.SessionPhase.Terminated)
                {
                    // the previous session ran till the end
                    return true;
                }
                else if (previousSessionData.sessionPhase == (int)Constant.SessionPhase.Green)
                {
                    // the previous session ended when it was still green, see if it ran for more than a minute
                    Console.WriteLine("has particpated = " + (DateTime.Now > previousSessionData.startPoint.Add(minimumSessionParticipationTime)));
                    return DateTime.Now > previousSessionData.startPoint.Add(minimumSessionParticipationTime);
                }
            }
            return false;
        }

        public void stop()
        {
            lastGameStateTime = 0;
            running = false;
            if (_view != null)
            {
                _view.Dispose();
                _view = null;
            }
            if (_file != null)
            {
                _file.Dispose();
                _file = null;
            }    
        }

        private bool Map()
        {
            try
            {
                _file = MemoryMappedFile.OpenExisting(Constant.SharedMemoryName);
                _view = _file.CreateViewAccessor(0, Marshal.SizeOf(typeof(Shared)));
                return true;
            }
            catch (FileNotFoundException)
            {
                return false;
            }
        }
    }
}

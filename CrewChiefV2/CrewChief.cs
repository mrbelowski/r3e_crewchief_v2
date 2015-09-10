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
using CrewChiefV2.GameState;


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

        public static TimeSpan spotterInterval = TimeSpan.FromMilliseconds(UserSettings.GetUserSettings().getInt("spotter_update_interval"));
        
        private static Dictionary<String, AbstractEvent> eventsList = new Dictionary<String, AbstractEvent>();

        public AudioPlayer audioPlayer;

        Shared lastSpotterState;
        Shared currentSpotterState;

        Boolean stateCleared = false;

        public Boolean running = false;

        double lastGameStateTime = 0;

        private List<SessionData> sessionData = new List<SessionData>();

        private TimeSpan minimumSessionParticipationTime = TimeSpan.FromSeconds(6);

        private Dictionary<String, String> faultingEvents = new Dictionary<String, String>();
        
        private Dictionary<String, int> faultingEventsCount = new Dictionary<String, int>();

        private Spotter spotter;

        private Boolean spotterIsRunning = false;

        private Boolean runSpotterThread = false;

        private Boolean disableImmediateMessages = UserSettings.GetUserSettings().getBoolean("disable_immediate_messages");

        private GameStateMapper gameStateMapper;

        public GameStateData currentGameState;

        public SessionConstants sessionConstants = null;

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
            audioPlayer = new AudioPlayer(this);
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
            spotter = new R3ESpotter(audioPlayer, spotterEnabled);
            gameStateMapper = new R3EGameStateMapper();
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
            if (disableImmediateMessages)
            {
                Console.WriteLine("Unable to start spotter - immediate messages are disabled");
            }
            spotterEnabled = true;
            spotter.enableSpotter();
        }

        public void disableSpotter()
        {
            spotterEnabled = false;
            spotter.disableSpotter();
        }

        public void youWot()
        {
            audioPlayer.openChannel();
            audioPlayer.playClipImmediately(AudioPlayer.folderDidntUnderstand, new QueuedMessage(0, null));
            audioPlayer.closeChannel();
        }

        private void startSpotterThread()
        {
            ThreadStart work = spotterWork;
            Thread thread = new Thread(work);
            runSpotterThread = true;
            thread.Start();
        }

        private void spotterWork()
        {
            int threadSleepTime = ((int) spotterInterval.Milliseconds / 10) + 1;
            DateTime nextRunTime = DateTime.Now;
            Console.WriteLine("Invoking spotter every " + spotterInterval.Milliseconds + "ms, pausing " + threadSleepTime + "ms between invocations");

            while (runSpotterThread)
            {
                DateTime now = DateTime.Now;
                if (now > nextRunTime)
                {
                    spotterIsRunning = true;
                    lastSpotterState = currentSpotterState;
                    currentSpotterState = new Shared();
                    if (_view != null)
                    {
                        _view.Read(0, out currentSpotterState);
                        spotter.trigger(lastSpotterState, currentSpotterState);
                    }
                    nextRunTime = nextRunTime.Add(spotterInterval);
                }
                Thread.Sleep(threadSleepTime);
            }
            spotterIsRunning = false;
        }

        public Boolean Run()
        {
            running = true;
            DateTime nextEventTrigger = DateTime.Now;
            if (!audioPlayer.initialised)
            {
                Console.WriteLine("Failed to initialise audio player");
                return false;
            }
            audioPlayer.startMonitor();
            Boolean displayedMappingMessage = false;
            Boolean attemptedToRunRRRE = false;            

            int threadSleepTime = ((int)_timeInterval.Milliseconds / 10) + 1;
            Console.WriteLine("Polling for shared data every " + _timeInterval.Milliseconds + "ms, pausing " + threadSleepTime + "ms between invocations");
            
            while (running)
            {
                if (DateTime.Now > nextEventTrigger)
                {
                    nextEventTrigger = nextEventTrigger.Add(_timeInterval);
                    if (Utilities.IsRrreRunning())
                    {
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
                        Shared currentState = new Shared();
                        _view.Read(0, out currentState);
                        gameStateMapper.mapToGameStateData(currentState);
                        currentGameState = gameStateMapper.getCurrentGameState();
                        GameStateData previousGameState = gameStateMapper.getPreviousGameState();
                        if (currentGameState.SessionData.IsNewSession && !stateCleared)
                        {
                            Console.WriteLine("Clearing game state...");
                            foreach (KeyValuePair<String, AbstractEvent> entry in eventsList)
                            {
                                entry.Value.clearState();
                            }
                            faultingEvents.Clear();
                            faultingEventsCount.Clear();
                            sessionConstants = null;
                            stateCleared = true;
                        }
                        else if (previousGameState == null || currentGameState.SessionData.SessionRunningTime > previousGameState.SessionData.SessionRunningTime)
                        {                            
                            if (sessionConstants == null)
                            {
                                sessionConstants = gameStateMapper.getSessionConstants(currentState);
                            }
                            if (currentGameState.SessionData.IsNewLap)
                            {
                                sessionConstants.display();
                                currentGameState.display();
                            }
                            stateCleared = false;
                            foreach (KeyValuePair<String, AbstractEvent> entry in eventsList)
                            {
                                if (entry.Value.isApplicableForCurrentSessionAndPhase(sessionConstants.SessionType, currentGameState.SessionData.SessionPhase))
                                {
                                    triggerEvent(entry.Key, entry.Value, previousGameState, currentGameState, sessionConstants);
                                }
                            }
                            if (spotterEnabled && !spotterIsRunning)
                            {
                                spotter.clearState();
                                startSpotterThread();
                            }
                            else if (spotterIsRunning && !spotterEnabled)
                            {
                                runSpotterThread = false;
                            }
                        }
                    }
                }
                else
                {
                    Thread.Sleep(threadSleepTime);
                    continue;
                }                
            }
            foreach (KeyValuePair<String, AbstractEvent> entry in eventsList)
            {
                entry.Value.clearState();
            }
            spotter.clearState();
            stateCleared = true;
            audioPlayer.stopMonitor();
            return true;
        }

        private void triggerEvent(String eventName, AbstractEvent abstractEvent, GameStateData previousGameState, GameStateData currentGameState, SessionConstants sessionConstants)
        {
            try
            {
                abstractEvent.trigger(previousGameState, currentGameState, sessionConstants);
            }
            catch (Exception e)
            {
                if (faultingEventsCount.ContainsKey(eventName))
                {
                    faultingEventsCount[eventName]++;
                    if (faultingEventsCount[eventName] > 5)
                    {
                        Console.WriteLine("Event " + eventName +
                            " has failed > 5 times in this session");
                    }
                }
                if (!faultingEvents.ContainsKey(eventName))
                {
                    Console.WriteLine("Event " + eventName + " threw exception " + e.Message);
                    Console.WriteLine("This is the first time this event has failed in this session");
                    faultingEvents.Add(eventName, e.Message);
                    faultingEventsCount.Add(eventName, 1);
                }
                else if (faultingEvents[eventName] != e.Message)
                {
                    Console.WriteLine("Event " + eventName + " threw a different exception: " + e.Message);
                    faultingEvents[eventName] = e.Message;
                }
            }
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
            runSpotterThread = false;
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

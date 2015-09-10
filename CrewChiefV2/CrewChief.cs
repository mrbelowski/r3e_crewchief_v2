using System;
using System.Diagnostics;
using System.IO;
using System.IO.MemoryMappedFiles;
using System.Runtime.InteropServices;
using System.Threading;
using System.Windows.Forms;
using CrewChiefV2.RaceRoom;
using CrewChiefV2.Events;
using System.Collections.Generic;
using CrewChiefV2.GameState;
using CrewChiefV2.PCars;
using CrewChiefV2.RaceRoom.RaceRoomData;


namespace CrewChiefV2
{
    class CrewChief : IDisposable
    {
        private GameDefinition gameDefinition = GameDefinition.pCars64Bit;

        private Boolean keepQuietEnabled = false;
        private Boolean spotterEnabled = UserSettings.GetUserSettings().getBoolean("enable_spotter");

        public static TimeSpan _timeInterval = TimeSpan.FromMilliseconds(UserSettings.GetUserSettings().getInt("update_interval"));

        public static TimeSpan spotterInterval = TimeSpan.FromMilliseconds(UserSettings.GetUserSettings().getInt("spotter_update_interval"));
        
        private static Dictionary<String, AbstractEvent> eventsList = new Dictionary<String, AbstractEvent>();

        public AudioPlayer audioPlayer;

        Object lastSpotterState;
        Object currentSpotterState;

        Boolean stateCleared = false;

        public Boolean running = false;

        private TimeSpan minimumSessionParticipationTime = TimeSpan.FromSeconds(6);

        private Dictionary<String, String> faultingEvents = new Dictionary<String, String>();
        
        private Dictionary<String, int> faultingEventsCount = new Dictionary<String, int>();

        private Spotter spotter;

        private Boolean spotterIsRunning = false;

        private Boolean runSpotterThread = false;

        private Boolean disableImmediateMessages = UserSettings.GetUserSettings().getBoolean("disable_immediate_messages");

        private GameStateMapper gameStateMapper;

        private SharedMemoryLoader sharedMemoryLoader;

        public GameStateData currentGameState;

        public SessionConstants sessionConstants = null;

        private Boolean mapped = false;

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
            gameStateMapper = gameDefinition.getGameStateMapper();
            sharedMemoryLoader = gameDefinition.getSharedMemoryLoader();
        }

        public void Dispose()
        {
            if (sharedMemoryLoader != null)
            {
                sharedMemoryLoader.Dispose();
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
                    currentSpotterState = sharedMemoryLoader.ReadSharedMemory();
                    currentSpotterState = new RaceRoomShared();
                    spotter.trigger(lastSpotterState, currentSpotterState);
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
            Boolean attemptedToRunGame = false;            

            int threadSleepTime = ((int)_timeInterval.Milliseconds / 10) + 1;
            Console.WriteLine("Polling for shared data every " + _timeInterval.Milliseconds + "ms, pausing " + threadSleepTime + "ms between invocations");

            while (running)
            {
                if (DateTime.Now > nextEventTrigger)
                {
                    nextEventTrigger = nextEventTrigger.Add(_timeInterval);
                    if (Utilities.IsGameRunning(gameDefinition.processName))
                    {
                        mapped = sharedMemoryLoader.Initialise();
                    }
                    else if (UserSettings.GetUserSettings().getBoolean("launch_raceroom") && !attemptedToRunGame)
                    {
                        Utilities.runGame(UserSettings.GetUserSettings().getString("r3e_launch_exe"), UserSettings.GetUserSettings().getString("r3e_launch_params"));
                        attemptedToRunGame = true;
                    }

                    if (mapped)
                    {
                        Object sharedMemoryData = sharedMemoryLoader.ReadSharedMemory();
                        gameStateMapper.mapToGameStateData(sharedMemoryData);
                        
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
                                sessionConstants = gameStateMapper.getSessionConstants(sharedMemoryData);
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

        public void stop()
        {
            running = false;
            runSpotterThread = false;  
        }
    }
}

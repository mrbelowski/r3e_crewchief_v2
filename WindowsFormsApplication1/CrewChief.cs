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
        private Boolean spotterEnabled = true;

        private bool Mapped
        {
            get { return (_file != null && _view != null); }
        }

        private MemoryMappedFile _file;
        private MemoryMappedViewAccessor _view;

        public static TimeSpan _timeInterval = TimeSpan.FromMilliseconds(UserSettings.GetUserSettings().getInt("update_interval"));

        private Boolean useSpotter = UserSettings.GetUserSettings().getBoolean("enable_spotter");

        private static Dictionary<String, AbstractEvent> eventsList = new Dictionary<String, AbstractEvent>();

        AudioPlayer audioPlayer;

        Shared lastState;
        Shared currentState;

        Boolean stateCleared = false;

        public static Boolean running = false;

        double lastGameStateTime = 0;

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
            if (eventsList["Spotter"] != null)
            {
                ((Spotter)eventsList["Spotter"]).enableSpotter();
            }
        }

        public void disableSpotter()
        {
            spotterEnabled = false;
            if (eventsList["Spotter"] != null)
            {
                ((Spotter)eventsList["Spotter"]).disableSpotter();
            }
        }

        public void youWot()
        {
            audioPlayer.playClipImmediately(AudioPlayer.folderDidntUnderstand, new QueuedMessage(0, null));
            audioPlayer.closeChannel();
        }

        public void Run()
        {
            CrewChief.running = true;
            var timeReset = DateTime.UtcNow;
            var timeLast = timeReset;

            audioPlayer = new AudioPlayer();
            audioPlayer.initialise();

            eventsList.Add("LapCounter", new LapCounter(audioPlayer));
            eventsList.Add("LapTimes", new LapTimes(audioPlayer));
            eventsList.Add("Penalties", new Penalties(audioPlayer));
            eventsList.Add("MandatoryPitStops", new MandatoryPitStops(audioPlayer));
            eventsList.Add("Fuel", new Fuel(audioPlayer));
            eventsList.Add("Position", new Position(audioPlayer));
            eventsList.Add("RaceTime", new RaceTime(audioPlayer));
            eventsList.Add("TyreTempMonitor", new TyreTempMonitor(audioPlayer));
            eventsList.Add("EngineMonitor", new EngineMonitor(audioPlayer));
            eventsList.Add("Timings", new Timings(audioPlayer));
            eventsList.Add("DamageReporting", new DamageReporting(audioPlayer));
            eventsList.Add("PushNow", new PushNow(audioPlayer));
            if (useSpotter)
            {
                Console.WriteLine("Enabling spotter");
                eventsList.Add("Spotter", new Spotter(audioPlayer));
            }

            while (CrewChief.running)
            {
                var timeNow = DateTime.UtcNow;

                if (timeNow.Subtract(timeLast) < _timeInterval)
                {
                    Thread.Sleep(1);
                    continue;
                }

                timeLast = timeNow;

                if (Utilities.IsRrreRunning() && !Mapped)
                {
                    Console.WriteLine("Found RRRE.exe, mapping shared memory...");

                    if (Map())
                    {
                        Console.WriteLine("Memory mapped successfully");
                        timeReset = DateTime.UtcNow;
                    }
                }

                if (Mapped)
                {
                    lastState = currentState;
                    currentState = new Shared();
                    _view.Read(0, out currentState);

                    // how long has the game been running?
                    double gameRunningTime = currentState.Player.GameSimulationTime;
                    // if we've gone back in time, this means a new session has started - 
                    // clear all the game state
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
                        stateCleared = false;
                        CommonData.setCommonStateData(lastState, currentState);
                        foreach (KeyValuePair<String, AbstractEvent> entry in eventsList)
                        {
                            entry.Value.trigger(lastState, currentState);
                        }
                        CommonData.isNew = false;
                    }
                    lastGameStateTime = currentState.Player.GameSimulationTime;
                }
            }
        }

        public void stop()
        {
            CrewChief.eventsList.Clear();
            lastGameStateTime = 0;
            CrewChief.running = false;
            Dispose();
            _view = null;
            _file = null;
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

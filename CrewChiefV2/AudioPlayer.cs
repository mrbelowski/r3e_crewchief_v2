﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.IO;
using System.Threading;
using System.Media;
using CrewChiefV2.Events;
using System.Windows.Media;
using System.Collections.Specialized;

namespace CrewChiefV2
{
    class AudioPlayer
    {
        public static float minimumSoundPackVersion = 2.5f;

        public static String folderAcknowlegeOK = "acknowledge/OK";
        public static String folderAcknowlegeEnableKeepQuiet = "acknowledge/keepQuietEnabled";
        public static String folderEnableSpotter = "acknowledge/spotterEnabled";
        public static String folderDisableSpotter = "acknowledge/spotterDisabled";
        public static String folderAcknowlegeDisableKeepQuiet = "acknowledge/keepQuietDisabled";
        public static String folderDidntUnderstand = "acknowledge/didnt_understand";
        public static String folderNoData = "acknowledge/no_data";
        public static String folderYes = "acknowledge/yes";
        public static String folderNo = "acknowledge/no";

        private Boolean monitorRunning = false;

        private Boolean keepQuiet = false;
        private Boolean channelOpen = false;

        private Boolean requestChannelOpen = false;
        private Boolean requestChannelClose = false;
        private Boolean holdChannelOpen = false;

        private readonly TimeSpan queueMonitorInterval = TimeSpan.FromMilliseconds(1000);

        private Dictionary<String, List<SoundPlayer>> clips = new Dictionary<String, List<SoundPlayer>>();

        private String soundFolderName = UserSettings.GetUserSettings().getString("sound_files_path");

        private String voiceFolderPath;

        private String fxFolderPath;

        private readonly TimeSpan minTimeBetweenPearlsOfWisdom = TimeSpan.FromSeconds(UserSettings.GetUserSettings().getInt("minimum_time_between_pearls_of_wisdom"));

        private Boolean sweary = UserSettings.GetUserSettings().getBoolean("use_sweary_messages");

        // if this is true, no 'green green green', 'get ready', or spotter messages are played
        private Boolean disableImmediateMessages = UserSettings.GetUserSettings().getBoolean("disable_immediate_messages");

        private Random random = new Random();

        private OrderedDictionary queuedClips = new OrderedDictionary();

        private OrderedDictionary immediateClips = new OrderedDictionary();

        List<String> enabledSounds = new List<String>();

        Boolean enableStartBleep = false;

        Boolean enableEndBleep = false;

        MediaPlayer backgroundPlayer;

        private String soundFilesPath;

        private String backgroundFilesPath;

        // TODO: sort looping callback out so we don't need this...
        private int backgroundLeadout = 30;

        public static String dtmPitWindowOpenBackground = "dtm_pit_window_open.wav";

        public static String dtmPitWindowClosedBackground = "dtm_pit_window_closed.wav";

        // only the monitor Thread can request a reload of the background wav file, so
        // the events thread will have to set these variables to ask for a reload
        private Boolean loadNewBackground = false;
        private String backgroundToLoad;

        private PearlsOfWisdom pearlsOfWisdom;

        DateTime timeLastPearlOfWisdomPlayed = DateTime.UtcNow;

        private Boolean backgroundPlayerInitialised = false;

        public Boolean initialised = false;

        public void initialise()
        {
            if (soundFolderName.Length > 3 && (soundFolderName.Substring(1, 2) == @":\" || soundFolderName.Substring(1, 2) == @":/"))
            {
                soundFilesPath = soundFolderName;
            } else {
                if (System.Diagnostics.Debugger.IsAttached)
                {
                    soundFilesPath = Path.Combine(Path.GetDirectoryName(
                                            System.Reflection.Assembly.GetEntryAssembly().Location), @"..\", @"..\", soundFolderName);
                }
                else
                {
                    soundFilesPath = Path.Combine(Path.GetDirectoryName(
                                            System.Reflection.Assembly.GetEntryAssembly().Location), soundFolderName);
                }
            }
            
            voiceFolderPath = Path.Combine(soundFilesPath, "voice");
            fxFolderPath = Path.Combine(soundFilesPath , "fx");
            backgroundFilesPath = Path.Combine(soundFilesPath, "background_sounds");
            Console.WriteLine("Voice dir full path = " + voiceFolderPath);
            Console.WriteLine("FX dir full path = " + fxFolderPath);
            Console.WriteLine("Background sound dir full path = " + backgroundFilesPath);
            DirectoryInfo soundDirectory = new DirectoryInfo(soundFilesPath);
            if (!soundDirectory.Exists)
            {
                Console.WriteLine("Unable to find sound directory " + soundDirectory.FullName);
                return;
            }
            float soundPackVersion = getSoundPackVersion(soundDirectory);
            if (soundPackVersion == -1 || soundPackVersion == 0)
            {
                Console.WriteLine("Unable to get sound pack version - expected a file called version_info with a single line containing a version number, e.g. 2.0");
            }
            else if (soundPackVersion < minimumSoundPackVersion)
            {
                Console.WriteLine("The sound pack version in use is " + soundPackVersion + " but this version of the app requires version " 
                    + minimumSoundPackVersion + " or greater.");
                Console.WriteLine("You must update your sound pack to run this application");
                return;
            }
            else
            {
                Console.WriteLine("Minimum sound pack version = " + minimumSoundPackVersion + " using sound pack version " + soundPackVersion);
            }
            pearlsOfWisdom = new PearlsOfWisdom();
            int soundsCount = 0;
            try
            {
                DirectoryInfo fxSoundDirectory = new DirectoryInfo(fxFolderPath);
                if (!fxSoundDirectory.Exists)
                {
                    Console.WriteLine("Unable to find fx directory " + fxSoundDirectory.FullName);
                    return;
                }
                FileInfo[] bleepFiles = fxSoundDirectory.GetFiles();
                foreach (FileInfo bleepFile in bleepFiles)
                {
                    if (bleepFile.Name.EndsWith(".wav"))
                    {
                        if (bleepFile.Name.StartsWith("start"))
                        {
                            enableStartBleep = true;
                            openAndCacheClip("start_bleep", bleepFile.FullName);
                        }
                        else if (bleepFile.Name.StartsWith("end"))
                        {
                            enableEndBleep = true;
                            openAndCacheClip("end_bleep", bleepFile.FullName);
                        }
                    }
                }
                DirectoryInfo voiceSoundDirectory = new DirectoryInfo(voiceFolderPath);
                if (!voiceSoundDirectory.Exists)
                {
                    Console.WriteLine("Unable to find voice directory " + voiceSoundDirectory.FullName);
                    return;
                }
                DirectoryInfo[] eventFolders = voiceSoundDirectory.GetDirectories();
                foreach (DirectoryInfo eventFolder in eventFolders)
                {
                    try
                    {
                        //Console.WriteLine("Got event folder " + eventFolder.Name);
                        DirectoryInfo[] eventDetailFolders = eventFolder.GetDirectories();
                        foreach (DirectoryInfo eventDetailFolder in eventDetailFolders)
                        {
                            //Console.WriteLine("Got event detail subfolder " + eventDetailFolder.Name);
                            String fullEventName = eventFolder + "/" + eventDetailFolder;
                            try
                            {
                                FileInfo[] soundFiles = eventDetailFolder.GetFiles();
                                foreach (FileInfo soundFile in soundFiles)
                                {
                                    if (soundFile.Name.EndsWith(".wav") && (sweary || !soundFile.Name.StartsWith("sweary")))
                                    {
                                        //Console.WriteLine("Got sound file " + soundFile.FullName);
                                        soundsCount++;
                                        openAndCacheClip(eventFolder + "/" + eventDetailFolder, soundFile.FullName);
                                        if (!enabledSounds.Contains(fullEventName))
                                        {
                                            enabledSounds.Add(fullEventName);
                                        }
                                    }
                                }
                                if (!enabledSounds.Contains(fullEventName))
                                {
                                    Console.WriteLine("Event " + fullEventName + " has no sound files");
                                }
                            }
                            catch (DirectoryNotFoundException e)
                            {
                                Console.WriteLine("Event subfolder " + fullEventName + " not found");
                            }
                        }
                    }
                    catch (DirectoryNotFoundException e)
                    {
                        Console.WriteLine("Unable to find events folder");
                    }
                }
                Console.WriteLine("Cached " + soundsCount + " clips");
                initialised = true;
            }
            catch (DirectoryNotFoundException e)
            {
                Console.WriteLine("Unable to find sounds directory - path: " + soundFolderName);
            }
        }

        public void startMonitor()
        {
            if (monitorRunning)
            {
                Console.WriteLine("Monitor is already running");
            }
            else
            {
                Console.WriteLine("Starting queue monitor");
                monitorRunning = true;
                // spawn a Thread to monitor the queue
                ThreadStart work;
                if (disableImmediateMessages)
                {
                    Console.WriteLine("Interupting and immediate messages are disabled - no spotter or 'green green green'");
                    work = monitorQueueNoImmediateMessages;
                }
                else
                {
                    work = monitorQueue;
                }
                Thread thread = new Thread(work);
                thread.Start();
            }
            new SmokeTest(this).trigger(new Data.Shared(), new Data.Shared());
        }

        public void stopMonitor()
        {
            Console.WriteLine("Stopping queue monitor");
            monitorRunning = false;
        }

        private float getBackgroundVolume()
        {
            float volume = UserSettings.GetUserSettings().getFloat("background_volume");
            if (volume > 1)
            {
                volume = 1;
            }
            if (volume < 0)
            {
                volume = 0;
            }
            return volume;
        }

        public float getSoundPackVersion(DirectoryInfo soundDirectory)
        {
            FileInfo[] filesInSoundDirectory = soundDirectory.GetFiles();
            
            float soundfilesVersion = -1f;
            foreach (FileInfo fileInSoundDirectory in filesInSoundDirectory)
            {
                if (fileInSoundDirectory.Name == "version_info")
                {
                    String[] lines = File.ReadAllLines(Path.Combine(soundFilesPath, fileInSoundDirectory.Name));
                    foreach (String line in lines) {
                        if (float.TryParse(line, out soundfilesVersion))
                        {
                            return soundfilesVersion;
                        }
                    }
                }
            }
            return soundfilesVersion;
        }

        public void setBackgroundSound(String backgroundSoundName)
        {
            backgroundToLoad = backgroundSoundName;
            loadNewBackground = true;
        }

        private void initialiseBackgroundPlayer()
        {
            if (!backgroundPlayerInitialised && getBackgroundVolume() > 0)
            {
                backgroundPlayer = new MediaPlayer();
                backgroundPlayer.MediaEnded += new EventHandler(backgroundPlayer_MediaEnded);
                backgroundPlayer.Volume = getBackgroundVolume();
                setBackgroundSound(dtmPitWindowClosedBackground);
                backgroundPlayerInitialised = true;
            }
        }

        private void stopBackgroundPlayer()
        {
            if (backgroundPlayer != null && backgroundPlayerInitialised)
            {
                backgroundPlayer.Stop();
                backgroundPlayerInitialised = false;
                backgroundPlayer = null;
            }
        }

        private void monitorQueue()
        {
            Console.WriteLine("Monitor starting");
            initialiseBackgroundPlayer();
            var timeLast = DateTime.UtcNow;
            while (monitorRunning)
            {                
                if (requestChannelOpen)
                {
                    openRadioChannelInternal();
                    requestChannelOpen = false;
                    holdChannelOpen = true;
                }
                if (!holdChannelOpen && channelOpen)
                {
                    closeRadioInternalChannel();
                }
                if (immediateClips.Count > 0)
                {
                    try
                    {
                        playQueueContents(immediateClips, true);
                    }
                    catch (Exception e)
                    {
                        Console.WriteLine("Exception processing immediate clips: " + e.Message);
                        lock (immediateClips)
                        {
                            immediateClips.Clear();
                        }
                    }
                }
                if (requestChannelClose)
                {
                    if (channelOpen && queuedClips.Count == 0)
                    {
                        closeRadioInternalChannel();
                    }
                    requestChannelClose = false;
                    holdChannelOpen = false;
                }
                var timeNow = DateTime.UtcNow;
                if (timeNow.Subtract(timeLast) < queueMonitorInterval)
                {
                    Thread.Sleep(50);
                    continue;
                }
                timeLast = timeNow;
                try
                {
                    playQueueContents(queuedClips, false);
                }
                catch (Exception e)
                {
                    Console.WriteLine("Exception processing queued clips: " + e.Message);
                    lock (queuedClips)
                    {
                        queuedClips.Clear();
                    }
                }
            }
            stopBackgroundPlayer();
        }

        public void enableKeepQuietMode()
        {
            playClipImmediately(folderAcknowlegeEnableKeepQuiet, new QueuedMessage(0, null));
            closeChannel();
            keepQuiet = true;
        }

        public void disableKeepQuietMode()
        {
            playClipImmediately(folderAcknowlegeDisableKeepQuiet, new QueuedMessage(0, null));
            closeChannel();
            keepQuiet = false;
        }

        private void monitorQueueNoImmediateMessages()
        {
            initialiseBackgroundPlayer();
            while (monitorRunning)
            {
                Thread.Sleep(queueMonitorInterval);
                try
                {
                    playQueueContents(queuedClips, false);
                }
                catch (Exception e)
                {
                    Console.WriteLine("Exception processing queued clips: " + e.Message);
                }
                if (!holdChannelOpen && channelOpen)
                {
                    closeRadioInternalChannel();
                }
            }
            stopBackgroundPlayer();
        }

        private void playQueueContents(OrderedDictionary queueToPlay, Boolean isImmediateMessages)
        {
            long milliseconds = DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond;
            List<String> keysToPlay = new List<String>();
            List<String> soundsProcessed = new List<String>();

            Boolean oneOrMoreEventsEnabled = false;
            if (queueToPlay.Count > 0)
            {
                Console.WriteLine("Processing queue of " + queueToPlay.Count + " events");
            }
            lock (queueToPlay)
            {
                foreach (String key in queueToPlay.Keys)
                {
                    QueuedMessage queuedMessage = (QueuedMessage)queueToPlay[key];
                    if (isImmediateMessages || queuedMessage.dueTime <= milliseconds)
                    {
                        if ((isImmediateMessages || !keepQuiet) && 
                            (queuedMessage.abstractEvent == null || queuedMessage.abstractEvent.isClipStillValid(key)) &&
                            !keysToPlay.Contains(key) && (!queuedMessage.gapFiller || playGapFillerMessage()) &&
                            (queuedMessage.expiryTime == 0 || queuedMessage.expiryTime > milliseconds))
                        {
                            keysToPlay.Add(key);
                        }
                        else
                        {
                            Console.WriteLine("Clip " + key + " is not valid");
                            soundsProcessed.Add(key);
                        }
                    }
                }
                if (keysToPlay.Count > 0)
                {
                    if (keysToPlay.Count == 1 && clipIsPearlOfWisdom(keysToPlay[0]) && hasPearlJustBeenPlayed())
                    {
                        Console.WriteLine("Rejecting pearl of wisdom " + keysToPlay[0] +
                            " because one has been played in the last " + minTimeBetweenPearlsOfWisdom + " seconds");
                        soundsProcessed.Add(keysToPlay[0]);
                    }
                    else
                    {
                        foreach (String eventName in keysToPlay)
                        {
                            if ((eventName.StartsWith(QueuedMessage.compoundMessageIdentifier) &&
                                ((QueuedMessage)queueToPlay[eventName]).isValid) || enabledSounds.Contains(eventName))
                            {
                                oneOrMoreEventsEnabled = true;
                            }
                        }
                    }
                }
                if (queueToPlay.Count > 0 && keysToPlay.Count == 0)
                {
                    Console.WriteLine("None of the " + queueToPlay.Count + " message(s) in this queue is due or valid");
                }
            }            
            Boolean wasInterrupted = false;
            if (oneOrMoreEventsEnabled)
            {
                Console.WriteLine(keysToPlay.Count + " events are valid and enabled, playing them...");
                // block for immediate messages...
                if (isImmediateMessages)
                {
                    lock (queueToPlay)
                    {
                        openRadioChannelInternal();
                        soundsProcessed.AddRange(playSounds(keysToPlay, isImmediateMessages, out wasInterrupted));
                    }
                }
                else
                {
                    // for queued messages, allow other messages to be inserted into the queue while these are being read
                    openRadioChannelInternal();
                    soundsProcessed.AddRange(playSounds(keysToPlay, isImmediateMessages, out wasInterrupted));
                }                
                Console.WriteLine("finished playing");
                if (wasInterrupted)
                {
                    Console.WriteLine("We were interrupted");
                }
            }
            else
            {
                soundsProcessed.AddRange(keysToPlay);
            }
            Boolean queueHasDueMessages = false;
            if (soundsProcessed.Count > 0)
            {
                lock (queueToPlay)
                {
                    foreach (String key in soundsProcessed)
                    {
                        if (queueToPlay.Contains(key))
                        {
                            queueToPlay.Remove(key);
                        }
                    }
                    milliseconds = DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond;
                    foreach (String key in queueToPlay.Keys)
                    {
                        QueuedMessage queuedMessage = (QueuedMessage)queueToPlay[key];
                        if (isImmediateMessages || queuedMessage.dueTime <= milliseconds)
                        {
                            queueHasDueMessages = true;
                            break;
                        }
                    }
                }
            }            
            if (queueHasDueMessages && !wasInterrupted)
            {
                Console.WriteLine("There are " + queueToPlay.Count + " more events in the queue, playing them...");
                playQueueContents(queueToPlay, isImmediateMessages);
            }
        }

        private List<String> playSounds(List<String> eventNames, Boolean isImmediateMessages, out Boolean wasInterrupted)
        {
            Console.WriteLine("Playing sounds, events: " + String.Join(", ", eventNames));
            List<String> soundsProcessed = new List<String>();
            OrderedDictionary thisQueue = isImmediateMessages ? immediateClips : queuedClips;
            wasInterrupted = false;
            foreach (String eventName in eventNames)
            {
                // if there's anything in the immediateClips queue, stop processing
                if (isImmediateMessages || immediateClips.Count == 0)
                {
                    if (thisQueue.Contains(eventName))
                    {
                        QueuedMessage thisMessage = (QueuedMessage)thisQueue[eventName];
                        if ((eventName.StartsWith(QueuedMessage.compoundMessageIdentifier) && thisMessage.isValid) ||
                            enabledSounds.Contains(eventName))
                        {
                            if (clipIsPearlOfWisdom(eventName))
                            {
                                if (hasPearlJustBeenPlayed())
                                {
                                    Console.WriteLine("Rejecting pearl of wisdom " + eventName +
                                        " because one has been played in the last " + minTimeBetweenPearlsOfWisdom + " seconds");
                                    soundsProcessed.Add(eventName);
                                    continue;
                                }
                                else
                                {
                                    timeLastPearlOfWisdomPlayed = DateTime.UtcNow;
                                }
                            }
                            if (eventName.StartsWith(QueuedMessage.compoundMessageIdentifier))
                            {
                                foreach (String message in thisMessage.getMessageFolders())
                                {
                                    List<SoundPlayer> clipsList = clips[message];
                                    int index = random.Next(0, clipsList.Count);
                                    SoundPlayer clip = clipsList[index];
                                    clip.PlaySync();
                                }
                            }
                            else
                            {
                                List<SoundPlayer> clipsList = clips[eventName];
                                int index = random.Next(0, clipsList.Count);
                                SoundPlayer clip = clipsList[index];
                                clip.PlaySync();
                            }
                        }
                        else
                        {
                            Console.WriteLine("Event " + eventName + " is disabled");
                        }
                        soundsProcessed.Add(eventName);
                    }                    
                }
                else
                {
                    Console.WriteLine("we've been interrupted");
                    wasInterrupted = true;
                    break;
                }
            }
            if (soundsProcessed.Count == 0)
            {
                Console.WriteLine("Processed no messages in this queue");
            }
            else
            {
                Console.WriteLine("Processed " + String.Join(", ", soundsProcessed.ToArray()));
            }
            return soundsProcessed;
        }

        private void openRadioChannelInternal()
        {
            if (!channelOpen)
            {
                channelOpen = true;
                Console.WriteLine("Opening channel");
                if (getBackgroundVolume() > 0 && loadNewBackground && backgroundToLoad != null)
                {
                    Console.WriteLine("Setting background sounds file to  " + backgroundToLoad);
                    String path = Path.Combine(backgroundFilesPath, backgroundToLoad);
                    if (!backgroundPlayerInitialised)
                    {
                        initialiseBackgroundPlayer();
                    }
                    backgroundPlayer.Volume = getBackgroundVolume();
                    backgroundPlayer.Open(new System.Uri(path, System.UriKind.Absolute));
                    loadNewBackground = false;
                }

                // this looks like we're doing it the wrong way round but there's a short
                // delay playing the event sound, so if we kick off the background before the bleep
                if (getBackgroundVolume() > 0)
                {
                    if (!backgroundPlayerInitialised)
                    {
                        initialiseBackgroundPlayer();
                    }
                    backgroundPlayer.Volume = getBackgroundVolume();
                    int backgroundDuration = 0;
                    int backgroundOffset = 0;
                    if (backgroundPlayer.NaturalDuration.HasTimeSpan)
                    {
                        backgroundDuration = (backgroundPlayer.NaturalDuration.TimeSpan.Minutes * 60) +
                            backgroundPlayer.NaturalDuration.TimeSpan.Seconds;
                        //Console.WriteLine("Duration from file is " + backgroundDuration);
                        backgroundOffset = random.Next(0, backgroundDuration - backgroundLeadout);
                    }
                    //Console.WriteLine("Background offset = " + backgroundOffset);
                    backgroundPlayer.Position = TimeSpan.FromSeconds(backgroundOffset);
                    backgroundPlayer.Play();
                }

                if (enableStartBleep)
                {
                    List<SoundPlayer> bleeps = clips["start_bleep"];
                    int bleepIndex = random.Next(0, bleeps.Count);
                    bleeps[bleepIndex].PlaySync();                    
                }
            }
        }

        private void closeRadioInternalChannel()
        {
            if (channelOpen)
            {
                Console.WriteLine("Closing channel");
                if (enableEndBleep)
                {
                    List<SoundPlayer> bleeps = clips["end_bleep"];
                    int bleepIndex = random.Next(0, bleeps.Count);
                    bleeps[bleepIndex].PlaySync();
                }
                if (getBackgroundVolume() > 0)
                {
                    if (!backgroundPlayerInitialised)
                    {
                        initialiseBackgroundPlayer();
                    }
                    backgroundPlayer.Stop();
                }                                
                channelOpen = false;
            }
        }

        private Boolean playGapFillerMessage()
        {
            return queuedClips.Count == 1 || (queuedClips.Count == 2 && random.Next() > 0.5);
        }

        public void close()
        {
            foreach (KeyValuePair<string, List<SoundPlayer>> entry in clips)
            {
                foreach (SoundPlayer clip in entry.Value)
                {
                    clip.Stop();
                    clips.Remove(entry.Key);
                }
            }
        }

        public void queueClip(String eventName, int secondsDelay, AbstractEvent abstractEvent)
        {
            queueClip(eventName, secondsDelay, abstractEvent, PearlsOfWisdom.PearlType.NONE, 0);
        }

        // we pass in the event which triggered this clip so that we can query the event before playing the
        // clip to check if it's still valid against the latest game state. This is necessary for clips queued
        // with non-zero delays (e.g. you might have crossed the start / finish line between the clip being 
        // queued and it being played)
        public void queueClip(String eventName, int secondsDelay, AbstractEvent abstractEvent,
            PearlsOfWisdom.PearlType pearlType, double pearlMessageProbability)
        {
            queueClip(eventName, new QueuedMessage(secondsDelay, abstractEvent), pearlType, pearlMessageProbability);
        }

        public void queueClip(String eventName, QueuedMessage queuedMessage)
        {
            queueClip(eventName, queuedMessage, PearlsOfWisdom.PearlType.NONE, 0);
        }

        public void openChannel()
        {
            requestChannelOpen = true;
        }

        public void closeChannel()
        {
            requestChannelClose = true;
        }

        public void playClipImmediately(String eventName, QueuedMessage queuedMessage)
        {
            if (disableImmediateMessages)
            {
                return;
            }
            lock (immediateClips)
            {
                if (immediateClips.Contains(eventName))
                {
                    Console.WriteLine("Clip for event " + eventName + " is already queued, ignoring");
                    return;
                }
                else
                {
                    immediateClips.Add(eventName, queuedMessage);
                }
            }
        }

        public void queueClip(String eventName, QueuedMessage queuedMessage, PearlsOfWisdom.PearlType pearlType, double pearlMessageProbability)
        {
            lock (queuedClips)
            {
                if (queuedClips.Contains(eventName))
                {
                    Console.WriteLine("Clip for event " + eventName + " is already queued, ignoring");
                    return;
                }
                else
                {
                    PearlsOfWisdom.PearlMessagePosition pearlPosition = PearlsOfWisdom.PearlMessagePosition.NONE;
                    if (pearlType != PearlsOfWisdom.PearlType.NONE && checkPearlOfWisdomValid(pearlType))
                    {
                        pearlPosition = pearlsOfWisdom.getMessagePosition(pearlMessageProbability);
                    }
                    if (pearlPosition == PearlsOfWisdom.PearlMessagePosition.BEFORE)
                    {
                        QueuedMessage pearlQueuedMessage = new QueuedMessage(queuedMessage.abstractEvent);
                        pearlQueuedMessage.dueTime = queuedMessage.dueTime;
                        queuedClips.Add(PearlsOfWisdom.getMessageFolder(pearlType), pearlQueuedMessage);
                    }
                    queuedClips.Add(eventName, queuedMessage);
                    if (pearlPosition == PearlsOfWisdom.PearlMessagePosition.AFTER)
                    {
                        QueuedMessage pearlQueuedMessage = new QueuedMessage(queuedMessage.abstractEvent);
                        pearlQueuedMessage.dueTime = queuedMessage.dueTime;
                        queuedClips.Add(PearlsOfWisdom.getMessageFolder(pearlType), pearlQueuedMessage);
                    }
                }
            }
        }

        public void removeQueuedClip(String eventName)
        {
            lock (queuedClips)
            {
                if (queuedClips.Contains(eventName))
                {
                    Console.WriteLine("yanking " + eventName + " from queue");
                    queuedClips.Remove(eventName);
                }
            }
        }

        public void removeImmediateClip(String eventName)
        {
            if (disableImmediateMessages)
            {
                return;
            }
            lock (immediateClips)
            {
                if (immediateClips.Contains(eventName))
                {
                    Console.WriteLine("yanking " + eventName + " from immediate queue");
                    immediateClips.Remove(eventName);
                }
            }
        }

        private void openAndCacheClip(String eventName, String file)
        {
            SoundPlayer clip = new SoundPlayer(file);
            clip.Load();
            if (!clips.ContainsKey(eventName))
            {
                clips.Add(eventName, new List<SoundPlayer>());
            }
            clips[eventName].Add(clip);
           // Console.WriteLine("cached clip " + file + " into set " + eventName);
        }

        private void backgroundPlayer_MediaEnded(object sender, EventArgs e)
        {
            Console.WriteLine("looping...");
            backgroundPlayer.Position = TimeSpan.FromMilliseconds(1);
        }

        // checks that another pearl isn't already queued. If one of the same type is already
        // in the queue this method just returns false. If a conflicting pearl is in the queue
        // this method removes it and returns false, so we don't end up with, for example, 
        // a 'keep it up' message in a block that contains a 'your lap times are worsening' message
        private Boolean checkPearlOfWisdomValid(PearlsOfWisdom.PearlType newPearlType)
        {
            Boolean isValid = true;
            if (queuedClips != null && queuedClips.Count > 0)
            {
                List<String> pearlsToPurge = new List<string>();
                foreach (String eventName in queuedClips.Keys)
                {
                    if (clipIsPearlOfWisdom(eventName))
                    {
                        Console.WriteLine("There's already a pearl in the queue, can't add another");
                        isValid = false;
                        if (eventName != PearlsOfWisdom.getMessageFolder(newPearlType))
                        {
                            pearlsToPurge.Add(eventName);
                        }
                    }
                }
                foreach (String pearlToPurge in pearlsToPurge)
                {
                    queuedClips.Remove(pearlToPurge);
                    Console.WriteLine("Queue contains a pearl " + pearlToPurge + " which conflicts with " + newPearlType);
                }
            }
            return isValid;
        }

        private Boolean clipIsPearlOfWisdom(String eventName)
        {
            foreach (PearlsOfWisdom.PearlType pearlType in Enum.GetValues(typeof(PearlsOfWisdom.PearlType)))
            {
                if (pearlType != PearlsOfWisdom.PearlType.NONE && PearlsOfWisdom.getMessageFolder(pearlType) == eventName)
                {
                    return true;
                }
            }
            return false;
        }

        private Boolean hasPearlJustBeenPlayed()
        {
            return timeLastPearlOfWisdomPlayed.Add(minTimeBetweenPearlsOfWisdom) > DateTime.UtcNow;
        }
    }
}

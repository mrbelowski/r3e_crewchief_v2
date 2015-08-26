using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CrewChiefV2.Events
{
    class LapTimes : AbstractEvent
    {
        Boolean readLapTimes = UserSettings.GetUserSettings().getBoolean("read_lap_times");

        // for qualifying:
        // "that was a 1:34.2, you're now 0.4 seconds off the pace"
        private String folderLapTimeIntro = "lap_times/time_intro";   // this might be a blank wav file
        private String folderGapIntro = "lap_times/gap_intro";
        private String folderGapOutroOffPace = "lap_times/gap_outro_off_pace";
        // "that was a 1:34.2, you're fastest in your class"
        private String folderFastestInClass = "lap_times/fastest_in_your_class";

        private String folderLessThanATenthOffThePace = "lap_times/less_than_a_tenth_off_the_pace";

        private String folderQuickerThanSecondPlace = "lap_times/quicker_than_second_place";

        private String folderQuickestOverall = "lap_times/quickest_overall";

        private String folderQuickestInClass = "lap_times/quickest_in_class";

        private String folderPaceOK = "lap_times/pace_ok";
        private String folderPaceGood = "lap_times/pace_good";
        private String folderPaceBad = "lap_times/pace_bad";
        private String folderNeedToFindOneMoreTenth = "lap_times/need_to_find_one_more_tenth";
        private String folderNeedToFindASecond = "lap_times/need_to_find_a_second";
        private String folderNeedToFindMoreThanASecond = "lap_times/need_to_find_more_than_a_second";
        private String folderNeedToFindAFewMoreTenths = "lap_times/need_to_find_a_few_more_tenths";

        // for race:
        private String folderBestLapInRace = "lap_times/best_lap_in_race";
        private String folderBestLapInRaceForClass = "lap_times/best_lap_in_race_for_class";

        private String folderGoodLap = "lap_times/good_lap";

        private String folderConsistentTimes = "lap_times/consistent";

        private String folderImprovingTimes = "lap_times/improving";

        private String folderWorseningTimes = "lap_times/worsening";

        private String folderPersonalBest = "lap_times/personal_best";

        // if the lap is within 0.5% of the best lap time play a message
        private Single goodLapPercent = 0.5f;

        // if the lap is within 1% of the previous lap it's considered consistent
        private Single consistencyLimit = 1f;

        private List<float> lapTimesWindow;

        private int lapTimesWindowSize = 3;

        private ConsistencyResult lastConsistencyMessage;

        // lap number when the last consistency update was made
        private int lastConsistencyUpdate;

        private Boolean lapIsValid;

        private LastLapRating lastLapRating;

        private TimeSpan sessionBestLapTimeDeltaToLeader;

        private TimeSpan currentLapTimeDeltaToLeadersBest;

        private float lastLapTime;

        private Boolean isInSlowerClass;

        private int currentPosition;

        private Random random = new Random();

        private Boolean enableLapTimeMessages = UserSettings.GetUserSettings().getBoolean("enable_laptime_messages");

        public LapTimes(AudioPlayer audioPlayer)
        {
            this.audioPlayer = audioPlayer;
        }

        public override void clearState()
        {
            lapTimesWindow = new List<float>(lapTimesWindowSize);
            lastConsistencyUpdate = 0;
            lastConsistencyMessage = ConsistencyResult.NOT_APPLICABLE;
            lapIsValid = true;
            lastLapRating = LastLapRating.NO_DATA;
            sessionBestLapTimeDeltaToLeader = TimeSpan.MaxValue;
            currentLapTimeDeltaToLeadersBest = TimeSpan.MaxValue;
            lastLapTime = 0;
            isInSlowerClass = false;
            currentPosition = -1;
        }

        public override bool isClipStillValid(string eventSubType)
        {
            return CommonData.isSessionRunning;
        }

        protected override void triggerInternal(Data.Shared lastState, Data.Shared currentState)
        {
            if (currentState.LapTimeBest > 0)
            {
                sessionBestLapTimeDeltaToLeader = TimeSpan.FromSeconds(currentState.LapTimeBest - getLapTimeBestForClassLeader(currentState));
            }
            else
            {
                sessionBestLapTimeDeltaToLeader = TimeSpan.MaxValue;
            }
            if (currentState.LapTimePrevious > 0)
            {
                currentLapTimeDeltaToLeadersBest = TimeSpan.FromSeconds(currentState.LapTimePrevious - getLapTimeBestForClassLeader(currentState));
            }
            else
            {
                // the last lap was invalid so the delta is undefined
                currentLapTimeDeltaToLeadersBest = TimeSpan.MaxValue;
            }
            currentPosition = currentState.Position;
            // in race sessions (race only) the LapTimePrevious isn't set to -1 if that lap was invalid, so 
            // we need to record that it's invalid while we're actually on the lap
            if (CommonData.isSessionRunning && lapIsValid && currentState.CompletedLaps > 0 &&
                !CommonData.isNewLap && currentState.LapTimeCurrent == -1)
            {
                lapIsValid = false;
            }
            if (CommonData.isSessionRunning && CommonData.isNewLap)
            {
                lastLapTime = currentState.LapTimePrevious;
            }
            if (CommonData.isSessionRunning && CommonData.isNewLap && !CommonData.isInLap && !CommonData.isOutLap &&
                ((CommonData.isHotLapping && currentState.CompletedLaps > 0) || currentState.CompletedLaps > 1))
            {
                if (lapTimesWindow == null)
                {
                    lapTimesWindow = new List<float>(lapTimesWindowSize);
                }
                // this might be NO_DATA
                lastLapRating = getLastLapRating(currentState);
                
                if (currentState.LapTimePrevious > 0)
                {
                    lapTimesWindow.Insert(0, currentState.LapTimePrevious);
                    if (lapIsValid)
                    {
                        // queue the actual laptime as a 'gap filler' - this is only played if the
                        // queue would otherwise be empty

                        if (enableLapTimeMessages && readLapTimes && !CommonData.isHotLapping)
                        {
                            QueuedMessage gapFillerLapTime = new QueuedMessage(folderLapTimeIntro, null,
                            TimeSpan.FromSeconds(currentState.LapTimePrevious), 0, this);
                            gapFillerLapTime.gapFiller = true;
                            audioPlayer.queueClip(QueuedMessage.compoundMessageIdentifier + "laptime", gapFillerLapTime);
                        }

                        if (enableLapTimeMessages && currentState.SessionType == (int)Constant.Session.Qualify || currentState.SessionType == (int)Constant.Session.Practice)
                        {
                            if (CommonData.isHotLapping)
                            {
                                // special case for hot lapping - read best lap message and the laptime
                                audioPlayer.queueClip(QueuedMessage.compoundMessageIdentifier + "laptime", new QueuedMessage(folderLapTimeIntro, null,
                                    TimeSpan.FromSeconds(currentState.LapTimePrevious), 0, this));
                                if (lastLapRating == LastLapRating.BEST_IN_CLASS || currentLapTimeDeltaToLeadersBest <= TimeSpan.Zero)
                                {
                                    audioPlayer.queueClip(folderPersonalBest, 0, this);
                                }
                                else if (currentLapTimeDeltaToLeadersBest < TimeSpan.FromMilliseconds(50))
                                {
                                    audioPlayer.queueClip(folderLessThanATenthOffThePace, 0, this);
                                }
                                else if (currentLapTimeDeltaToLeadersBest < TimeSpan.MaxValue)
                                {
                                    audioPlayer.queueClip(QueuedMessage.compoundMessageIdentifier + "_lapTimeNotRaceGap",
                                        new QueuedMessage(folderGapIntro, folderGapOutroOffPace, currentLapTimeDeltaToLeadersBest, 0, this));
                                }
                            }
                            else if (lastLapRating == LastLapRating.BEST_IN_CLASS)
                            {
                                audioPlayer.queueClip(folderFastestInClass, 0, this);
                                if (sessionBestLapTimeDeltaToLeader < TimeSpan.Zero)
                                {
                                    TimeSpan gapBehind = sessionBestLapTimeDeltaToLeader.Negate();
                                    if ((gapBehind.Seconds > 0 || gapBehind.Milliseconds > 50) &&
                                        gapBehind.Seconds < 60)
                                    {
                                        // delay this a bit...
                                        audioPlayer.queueClip(QueuedMessage.compoundMessageIdentifier + "_lapTimeNotRaceGap",
                                                new QueuedMessage(folderGapIntro, folderQuickerThanSecondPlace, gapBehind,
                                                    random.Next(0, 20), this));
                                    }
                                }
                            }
                            else if (lastLapRating == LastLapRating.BEST_OVERALL)
                            {
                                if (currentState.SessionType == (int)Constant.Session.Qualify)
                                {
                                    audioPlayer.queueClip(Position.folderPole, 0, this);
                                }
                                else if (currentState.SessionType == (int)Constant.Session.Practice)
                                {
                                    audioPlayer.queueClip(Position.folderStub + currentState.Position, 0, this);
                                }
                                if (sessionBestLapTimeDeltaToLeader < TimeSpan.Zero)
                                {
                                    TimeSpan gapBehind = sessionBestLapTimeDeltaToLeader.Negate();
                                    if ((gapBehind.Seconds > 0 || gapBehind.Milliseconds > 50) &&
                                        gapBehind.Seconds < 60)
                                    {
                                        // delay this a bit...
                                        audioPlayer.queueClip(QueuedMessage.compoundMessageIdentifier + "_lapTimeNotRaceGap",
                                                new QueuedMessage(folderGapIntro, folderQuickerThanSecondPlace, gapBehind,
                                                    random.Next(0, 20), this));
                                    }
                                }
                            }
                            else
                            {
                                if (lastLapRating == LastLapRating.PERSONAL_BEST_STILL_SLOW || lastLapRating == LastLapRating.PERSONAL_BEST_CLOSE_TO_CLASS_LEADER ||
                                    lastLapRating == LastLapRating.PERSONAL_BEST_CLOSE_TO_OVERALL_LEADER)
                                {
                                    audioPlayer.queueClip(folderPersonalBest, 0, this);
                                }
                                if (getLapTimeBestForClassLeader(currentState) > 0)
                                {
                                    // don't read this message if the rounded time gap is 0.0 seconds or it's more than 59 seconds
                                    if ((sessionBestLapTimeDeltaToLeader.Seconds > 0 || sessionBestLapTimeDeltaToLeader.Milliseconds > 50) &&
                                        sessionBestLapTimeDeltaToLeader.Seconds < 60)
                                    {
                                        // delay this a bit...
                                        audioPlayer.queueClip(QueuedMessage.compoundMessageIdentifier + "_lapTimeNotRaceGap",
                                                new QueuedMessage(folderGapIntro, folderGapOutroOffPace, sessionBestLapTimeDeltaToLeader,
                                                    random.Next(0, 20), this));
                                    }
                                }
                            }
                        }
                        else if (enableLapTimeMessages)
                        {
                            Boolean playedLapMessage = false;
                            float pearlLikelihood = 0.8f;
                            switch (lastLapRating)
                            {
                                case LastLapRating.BEST_OVERALL:
                                    audioPlayer.queueClip(folderBestLapInRace, 0, this, PearlsOfWisdom.PearlType.GOOD, pearlLikelihood);
                                    playedLapMessage = true;
                                    break;
                                case LastLapRating.BEST_IN_CLASS:
                                     audioPlayer.queueClip(folderBestLapInRaceForClass, 0, this, PearlsOfWisdom.PearlType.GOOD, pearlLikelihood);
                                    playedLapMessage = true;
                                    break;
                                case LastLapRating.PERSONAL_BEST_CLOSE_TO_OVERALL_LEADER:
                                case LastLapRating.PERSONAL_BEST_CLOSE_TO_CLASS_LEADER:
                                    audioPlayer.queueClip(folderGoodLap, 0, this, PearlsOfWisdom.PearlType.GOOD, pearlLikelihood);
                                    playedLapMessage = true;
                                    break;
                                case LastLapRating.PERSONAL_BEST_STILL_SLOW:
                                    audioPlayer.queueClip(folderPersonalBest, 0, this, PearlsOfWisdom.PearlType.NEUTRAL, pearlLikelihood);
                                    playedLapMessage = true;
                                    break;
                                case LastLapRating.CLOSE_TO_OVERALL_LEADER:
                                case LastLapRating.CLOSE_TO_CLASS_LEADER:
                                    // this is an OK lap but not a PB. We only want to say "decent lap" occasionally here
                                    if (random.NextDouble() > 0.8)
                                    {
                                        audioPlayer.queueClip(folderGoodLap, 0, this, PearlsOfWisdom.PearlType.NEUTRAL, pearlLikelihood);
                                        playedLapMessage = true;
                                    }
                                    break;
                                default:
                                    break;
                            }
                            // play the consistency message if we've not played the good lap message, or sometimes
                            // play them both
                            Boolean playConsistencyMessage = !playedLapMessage || random.NextDouble() < 0.25;
                            if (playConsistencyMessage && currentState.CompletedLaps >= lastConsistencyUpdate + lapTimesWindowSize && 
                                lapTimesWindow.Count >= lapTimesWindowSize)
                            {
                                ConsistencyResult consistency = checkAgainstPreviousLaps();
                                if (consistency == ConsistencyResult.CONSISTENT)
                                {
                                    lastConsistencyUpdate = currentState.CompletedLaps;
                                    audioPlayer.queueClip(folderConsistentTimes, 0, this);
                                }
                                else if (consistency == ConsistencyResult.IMPROVING)
                                {
                                    lastConsistencyUpdate = currentState.CompletedLaps;
                                    audioPlayer.queueClip(folderImprovingTimes, 0, this);
                                }
                                if (consistency == ConsistencyResult.WORSENING)
                                {
                                    lastConsistencyUpdate = currentState.CompletedLaps;
                                    audioPlayer.queueClip(folderWorseningTimes, 0, this);
                                }
                            }
                        }
                    }
                }               
                lapIsValid = true;
            }
        }
               
        private float getLapTimeBestForClassLeader(Data.Shared currentState)
        {
            if (currentState.LapTimeBestLeaderClass > 0)
            {
                if (currentState.LapTimeBestLeaderClass > currentState.LapTimeBestLeader)
                {
                    isInSlowerClass = true;
                }
                return currentState.LapTimeBestLeaderClass;
            }
            else
            {
                return currentState.LapTimeBestLeader;
            }
        }

        private ConsistencyResult checkAgainstPreviousLaps()
        {
            Boolean isImproving = true;
            Boolean isWorsening = true;
            Boolean isConsistent = true;

            for (int index = 0; index < lapTimesWindowSize - 1; index++)
            {
                // check the lap time was recorded
                if (lapTimesWindow[index] <= 0)
                {
                    Console.WriteLine("no data for consistency check");
                    lastConsistencyMessage = ConsistencyResult.NOT_APPLICABLE;
                    return ConsistencyResult.NOT_APPLICABLE;
                }
                if (lapTimesWindow[index] >= lapTimesWindow[index + 1])
                {
                    isImproving = false;
                    break;
                }
            }

            for (int index = 0; index < lapTimesWindowSize - 1; index++)
            {
                if (lapTimesWindow[index] <= lapTimesWindow[index + 1])
                {
                    isWorsening = false;
                }
            }

            for (int index = 0; index < lapTimesWindowSize - 1; index++)
            {
                float lastLap = lapTimesWindow[index];
                float lastButOneLap = lapTimesWindow[index + 1];
                float consistencyRange = (lastButOneLap * consistencyLimit) / 100;
                if (lastLap > lastButOneLap + consistencyRange || lastLap < lastButOneLap - consistencyRange)
                {
                    isConsistent = false;
                }
            }

            // todo: untangle this mess....
            if (isImproving)
            {
                if (lastConsistencyMessage == ConsistencyResult.IMPROVING)
                {
                    // don't play the same improving message - see if the consistent message might apply
                    if (isConsistent)
                    {
                        lastConsistencyMessage = ConsistencyResult.CONSISTENT;
                        return ConsistencyResult.CONSISTENT;
                    }
                }
                else
                {
                    lastConsistencyMessage = ConsistencyResult.IMPROVING;
                    return ConsistencyResult.IMPROVING;
                }
            }
            if (isWorsening)
            {
                if (lastConsistencyMessage == ConsistencyResult.WORSENING)
                {
                    // don't play the same worsening message - see if the consistent message might apply
                    if (isConsistent)
                    {
                        lastConsistencyMessage = ConsistencyResult.CONSISTENT;
                        return ConsistencyResult.CONSISTENT;
                    }
                }
                else
                {
                    lastConsistencyMessage = ConsistencyResult.WORSENING;
                    return ConsistencyResult.WORSENING;
                }
            }
            if (isConsistent)
            {
                lastConsistencyMessage = ConsistencyResult.CONSISTENT;
                return ConsistencyResult.CONSISTENT;
            }
            return ConsistencyResult.NOT_APPLICABLE;
        }

        private enum ConsistencyResult
        {
            NOT_APPLICABLE, CONSISTENT, IMPROVING, WORSENING
        }

        private LastLapRating getLastLapRating(Data.Shared currentState)
        {
            if (currentState.LapTimePrevious != -1)
            {
                float closeThreshold = currentState.LapTimePrevious * goodLapPercent / 100;
                if (currentState.LapTimeBestLeader >= currentState.LapTimePrevious)
                {
                    return LastLapRating.BEST_OVERALL;
                }
                else if (currentState.LapTimeBestLeaderClass >= currentState.LapTimePrevious)
                {
                    return LastLapRating.BEST_IN_CLASS;
                }
                else if (currentState.LapTimePrevious <= currentState.LapTimeBest)
                {
                    if (currentState.LapTimeBestLeader > currentState.LapTimeBest - closeThreshold)
                    {
                        return LastLapRating.PERSONAL_BEST_CLOSE_TO_OVERALL_LEADER;
                    }
                    else if (currentState.LapTimeBestLeaderClass > currentState.LapTimeBest - closeThreshold)
                    {
                        return LastLapRating.PERSONAL_BEST_CLOSE_TO_CLASS_LEADER;
                    }
                    else
                    {
                        return LastLapRating.PERSONAL_BEST_STILL_SLOW;
                    }
                }
                else if (currentState.LapTimeBestLeader >= currentState.LapTimePrevious - closeThreshold)
                {
                    return LastLapRating.CLOSE_TO_OVERALL_LEADER;
                }
                else if (currentState.LapTimeBestLeaderClass >= currentState.LapTimePrevious - closeThreshold)
                {
                    return LastLapRating.CLOSE_TO_CLASS_LEADER;
                }
                else if (currentState.LapTimeBest >= currentState.LapTimePrevious - closeThreshold)
                {
                    return LastLapRating.CLOSE_TO_PERSONAL_BEST;
                }
                else
                {
                    return LastLapRating.MEH;
                }
            }
            return LastLapRating.NO_DATA;
        }

        public override void respond(String voiceMessage)
        {
            if ((voiceMessage.Contains(SpeechRecogniser.LAST_LAP_TIME) ||
                voiceMessage.Contains(SpeechRecogniser.LAP_TIME) ||
                voiceMessage.Contains(SpeechRecogniser.LAST_LAP)))
            {
                if (lastLapTime > 0)
                {
                    audioPlayer.playClipImmediately(QueuedMessage.compoundMessageIdentifier + "_lapTimeNotRaceTime",
                        new QueuedMessage(folderLapTimeIntro, null, TimeSpan.FromSeconds(lastLapTime), 0, this));
                    audioPlayer.closeChannel();
                }
                else
                {
                    audioPlayer.playClipImmediately(AudioPlayer.folderNoData, new QueuedMessage(0, this));
                    audioPlayer.closeChannel();
                }
            }
            else if (voiceMessage.Contains(SpeechRecogniser.PACE))
            {
                if (CommonData.isRaceRunning)
                {
                    if (lastLapRating != LastLapRating.NO_DATA && currentLapTimeDeltaToLeadersBest != TimeSpan.MaxValue)
                    {
                        if (currentLapTimeDeltaToLeadersBest < TimeSpan.FromMilliseconds(50))
                        {
                            audioPlayer.playClipImmediately(folderPaceGood, new QueuedMessage(0, null));
                            audioPlayer.closeChannel();
                        }
                        else 
                        {
                            String timeToFindFolder = null;
                            if (currentLapTimeDeltaToLeadersBest.Seconds == 0 && currentLapTimeDeltaToLeadersBest.Milliseconds < 200)
                            {
                                timeToFindFolder = folderNeedToFindOneMoreTenth;
                            }
                            else if (currentLapTimeDeltaToLeadersBest.Seconds == 0 && currentLapTimeDeltaToLeadersBest.Milliseconds < 600)
                            {
                                timeToFindFolder = folderNeedToFindAFewMoreTenths;
                            }
                            else if ((currentLapTimeDeltaToLeadersBest.Seconds == 1 && currentLapTimeDeltaToLeadersBest.Milliseconds < 500) ||
                                (currentLapTimeDeltaToLeadersBest.Seconds == 0 && currentLapTimeDeltaToLeadersBest.Milliseconds >= 600))
                            {
                                timeToFindFolder = folderNeedToFindASecond;
                            }
                            else if ((currentLapTimeDeltaToLeadersBest.Seconds == 1 && currentLapTimeDeltaToLeadersBest.Milliseconds >= 500) ||
                               currentLapTimeDeltaToLeadersBest.Seconds > 1)
                            {
                                timeToFindFolder = folderNeedToFindMoreThanASecond;
                            }
                            List<String> messages = new List<String>();
                            switch (lastLapRating)
                            {
                                case LastLapRating.BEST_OVERALL:
                                case LastLapRating.BEST_IN_CLASS:
                                    audioPlayer.playClipImmediately(folderPaceGood, new QueuedMessage(0, null));
                                    audioPlayer.closeChannel();
                                    break;
                                case LastLapRating.PERSONAL_BEST_CLOSE_TO_OVERALL_LEADER:
                                case LastLapRating.PERSONAL_BEST_CLOSE_TO_CLASS_LEADER:
                                case LastLapRating.CLOSE_TO_OVERALL_LEADER:
                                case LastLapRating.CLOSE_TO_CLASS_LEADER:
                                case LastLapRating.PERSONAL_BEST_STILL_SLOW:
                                case LastLapRating.CLOSE_TO_PERSONAL_BEST:
                                    if (timeToFindFolder == null || timeToFindFolder != folderNeedToFindMoreThanASecond)
                                    {
                                        messages.Add(folderPaceOK);
                                    }
                                    if (timeToFindFolder != null)
                                    {
                                        messages.Add(timeToFindFolder);
                                    }
                                    if (messages.Count > 0)
                                    {
                                        audioPlayer.playClipImmediately(QueuedMessage.compoundMessageIdentifier + "_lapTimeRacePaceReport",
                                        new QueuedMessage(messages, 0, null));
                                        audioPlayer.closeChannel();
                                    }                                    
                                    break;
                                case LastLapRating.MEH:
                                    messages.Add(folderPaceBad);
                                    if (timeToFindFolder != null)
                                    {
                                        messages.Add(timeToFindFolder);
                                    }
                                    audioPlayer.playClipImmediately(QueuedMessage.compoundMessageIdentifier + "_lapTimeRacePaceReport",
                                        new QueuedMessage(messages, 0, null));
                                    audioPlayer.closeChannel();
                                        break;
                                default:
                                    audioPlayer.playClipImmediately(AudioPlayer.folderNoData, new QueuedMessage(0, null));
                                    audioPlayer.closeChannel();
                                    break;                     
                            }
                        }                        
                    }
                    else {
                        audioPlayer.playClipImmediately(AudioPlayer.folderNoData, new QueuedMessage(0, null));
                        audioPlayer.closeChannel();
                    }
                }
                else if (CommonData.isSessionRunning) {
                    if (sessionBestLapTimeDeltaToLeader != TimeSpan.MaxValue)
                    {
                        if (sessionBestLapTimeDeltaToLeader <= TimeSpan.Zero)
                        {
                            if (isInSlowerClass)
                            {
                                if (CommonData.isQualifyRunning && currentPosition == 1)
                                {
                                    audioPlayer.playClipImmediately(Position.folderPole, new QueuedMessage(0, null));
                                    audioPlayer.closeChannel();
                                }
                                else
                                {
                                    if (currentPosition > 1)
                                    {
                                        audioPlayer.playClipImmediately(Position.folderStub + currentPosition, new QueuedMessage(0, null));
                                    }
                                    if (currentPosition == 1)
                                    {
                                        audioPlayer.playClipImmediately(folderQuickestOverall, new QueuedMessage(0, null));
                                    } else
                                    {
                                        audioPlayer.playClipImmediately(folderQuickestInClass, new QueuedMessage(0, null));
                                    }
                                    audioPlayer.closeChannel();
                                }
                            }
                            else
                            {
                                if (CommonData.isQualifyRunning && currentPosition == 1)
                                {
                                    audioPlayer.playClipImmediately(Position.folderPole, new QueuedMessage(0, null));
                                    audioPlayer.closeChannel();
                                }
                                else
                                {
                                    audioPlayer.playClipImmediately(folderQuickestOverall, new QueuedMessage(0, null));
                                    audioPlayer.closeChannel();
                                }
                            }
                            if (sessionBestLapTimeDeltaToLeader < TimeSpan.Zero)
                            {
                                TimeSpan gapBehind = sessionBestLapTimeDeltaToLeader.Negate();
                                if ((gapBehind.Seconds > 0 || gapBehind.Milliseconds > 50) &&
                                    gapBehind.Seconds < 60)
                                {
                                    // delay this a bit...
                                    audioPlayer.queueClip(QueuedMessage.compoundMessageIdentifier + "_lapTimeNotRaceGap",
                                            new QueuedMessage(folderGapIntro, folderQuickerThanSecondPlace, gapBehind,
                                                random.Next(0, 20), this));
                                }
                            }
                        }
                        else if (sessionBestLapTimeDeltaToLeader.Seconds == 0 && sessionBestLapTimeDeltaToLeader.Milliseconds < 50)
                        {
                            if (currentPosition > 1)
                            {
                                // should always trigger
                                audioPlayer.playClipImmediately(Position.folderStub + currentPosition, new QueuedMessage(0, null));
                            }
                            audioPlayer.playClipImmediately(folderLessThanATenthOffThePace, new QueuedMessage(0, null));
                            audioPlayer.closeChannel();
                        }
                        else
                        {
                            if (currentPosition > 1)
                            {
                                // should always trigger
                                audioPlayer.playClipImmediately(Position.folderStub + currentPosition, new QueuedMessage(0, null));
                            }
                            audioPlayer.playClipImmediately(QueuedMessage.compoundMessageIdentifier + "_lapTimeNotRaceGap",
                                new QueuedMessage(null, folderGapOutroOffPace, sessionBestLapTimeDeltaToLeader, 0, null));
                            audioPlayer.closeChannel();
                        }
                    }
                    else {
                        audioPlayer.playClipImmediately(AudioPlayer.folderNoData, new QueuedMessage(0, null));
                        audioPlayer.closeChannel();
                    }
                }
            }
        }

        private enum LastLapRating
        {
            BEST_OVERALL, BEST_IN_CLASS, PERSONAL_BEST_CLOSE_TO_OVERALL_LEADER, PERSONAL_BEST_CLOSE_TO_CLASS_LEADER,
            PERSONAL_BEST_STILL_SLOW, CLOSE_TO_OVERALL_LEADER, CLOSE_TO_CLASS_LEADER, CLOSE_TO_PERSONAL_BEST, MEH, NO_DATA
        }
    }
}

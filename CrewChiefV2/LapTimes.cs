﻿using System;
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

        private String folderLeadingInQualOrPrac = "lap_times/quickest_overall";

        private String folderLeadingClassInQualOrPrac = "lap_times/quickest_in_class";

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

        private float lapDeltaToClassLeaderAtLastLap;

        private LastLapRating lastLapRating;

        private TimeSpan sessionBestLapTimeDeltaToLeader;

        private float currentLapTimeDeltaToLeader;
        private TimeSpan currentLapTimeDeltaToLeadersBest;

        public LapTimes(AudioPlayer audioPlayer)
        {
            this.audioPlayer = audioPlayer;
        }

        public override void clearState()
        {
            lapTimesWindow = new List<float>(lapTimesWindowSize);
            lastConsistencyUpdate = 0;
            lapDeltaToClassLeaderAtLastLap = -1;
            lastConsistencyMessage = ConsistencyResult.NOT_APPLICABLE;
            lapIsValid = true;
            lastLapRating = LastLapRating.NO_DATA;
            sessionBestLapTimeDeltaToLeader = TimeSpan.MaxValue;
            currentLapTimeDeltaToLeader = 0;
            currentLapTimeDeltaToLeadersBest = TimeSpan.MaxValue;
        }

        public override bool isClipStillValid(string eventSubType)
        {
            return CommonData.isSessionRunning;
        }

        protected override void triggerInternal(Data.Shared lastState, Data.Shared currentState)
        {
            // in race sessions (race only) the previousLapTime isn't set to -1 if that lap was invalid, so 
            // we need to record that it's invalid while we're actually on the lap
            if (CommonData.isSessionRunning && lapIsValid && currentState.CompletedLaps > 0 &&
                !CommonData.isNewLap && currentState.LapTimeCurrent == -1)
            {
                lapIsValid = false;
            }
            if (CommonData.isSessionRunning && CommonData.isNewLap && currentState.CompletedLaps > 1)
            {
                if (lapTimesWindow == null)
                {
                    lapTimesWindow = new List<float>(lapTimesWindowSize);
                }
                // this might be NO_DATA
                lastLapRating = getLastLapRating(currentState);
                // don't think this check is needed:
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
                    lapTimesWindow.Insert(0, currentState.LapTimePrevious);
                    currentLapTimeDeltaToLeader = getLapTimeDeltaToClassLeader(currentState);
                    if (lapIsValid)
                    {
                        // queue the actual laptime as a 'gap filler' - this is only played if the
                        // queue would otherwise be empty
                        if (readLapTimes)
                        {
                            QueuedMessage gapFillerLapTime = new QueuedMessage(folderLapTimeIntro, null,
                            TimeSpan.FromSeconds(currentState.LapTimePrevious), 0, this);
                            gapFillerLapTime.gapFiller = true;
                            audioPlayer.queueClip(QueuedMessage.compoundMessageIdentifier + "laptime", gapFillerLapTime);
                        }

                        if (lapDeltaToClassLeaderAtLastLap != -1 && (currentState.SessionType == (int)Constant.Session.Qualify ||
                            currentState.SessionType == (int)Constant.Session.Practice))
                        {
                            // time delta to leader has changed to report it
                            if (lapDeltaToClassLeaderAtLastLap != currentLapTimeDeltaToLeader)
                            {
                                if (lastLapRating == LastLapRating.BEST_IN_CLASS)
                                {
                                    audioPlayer.queueClip(folderFastestInClass, 0, this);
                                    sessionBestLapTimeDeltaToLeader = TimeSpan.Zero;
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
                                    sessionBestLapTimeDeltaToLeader = TimeSpan.Zero;
                                }
                                else if (getLapTimeBestForClassLeader(currentState) > 0)
                                {
                                    // don't read this message if the rounded time gap is 0.0 seconds or it's more than 59 seconds
                                    if ((sessionBestLapTimeDeltaToLeader.Seconds > 0 || sessionBestLapTimeDeltaToLeader.Milliseconds > 50) &&
                                        sessionBestLapTimeDeltaToLeader.Seconds < 60)
                                    {
                                        // delay this a bit...
                                        audioPlayer.queueClip(QueuedMessage.compoundMessageIdentifier + "_lapTimeNotRaceGap",
                                                new QueuedMessage(folderGapIntro, folderGapOutroOffPace, sessionBestLapTimeDeltaToLeader,
                                                    new Random().Next(0, 20), this));
                                    }
                                }
                            }
                            else if (lastLapRating == LastLapRating.PERSONAL_BEST_STILL_SLOW || lastLapRating == LastLapRating.PERSONAL_BEST_CLOSE_TO_CLASS_LEADER ||
                                    lastLapRating == LastLapRating.PERSONAL_BEST_CLOSE_TO_OVERALL_LEADER)
                            {
                                audioPlayer.queueClip(folderPersonalBest, 0, this);
                            }
                        }
                        else
                        {
                            Boolean playedLapMessage = false;
                            float pearlLikelihood = 0f;
                            if (CommonData.isRaceStarted)
                            {
                                pearlLikelihood = 0.8f;
                            }
                            switch (lastLapRating)
                            {
                                case LastLapRating.BEST_OVERALL:
                                    if (currentState.SessionType == (int)Constant.Session.Race)
                                    {
                                        audioPlayer.queueClip(folderBestLapInRace, 0, this, PearlsOfWisdom.PearlType.GOOD, pearlLikelihood);
                                    }
                                    playedLapMessage = true;
                                    break;
                                case LastLapRating.BEST_IN_CLASS:
                                    if (currentState.SessionType == (int)Constant.Session.Race)
                                    {
                                        audioPlayer.queueClip(folderBestLapInRaceForClass, 0, this, PearlsOfWisdom.PearlType.GOOD, pearlLikelihood);
                                    }
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
                                    audioPlayer.queueClip(folderGoodLap, 0, this, PearlsOfWisdom.PearlType.NEUTRAL, pearlLikelihood);
                                    playedLapMessage = true;
                                    break;
                                default:
                                    break;
                            }
                            if (currentState.SessionType == (int)Constant.Session.Race && !playedLapMessage &&
                                currentState.CompletedLaps >= lastConsistencyUpdate + lapTimesWindowSize && lapTimesWindow.Count >= lapTimesWindowSize)
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
                        lapDeltaToClassLeaderAtLastLap = currentLapTimeDeltaToLeader;
                    }
                }
                else
                {
                    // the last lap was invalid so the delta is undefined
                    currentLapTimeDeltaToLeadersBest = TimeSpan.MaxValue;
                }
                lapIsValid = true;
            }
        }

        private float getLapTimeDeltaToClassLeader(Data.Shared currentState)
        {
            if (currentState.LapTimeBestLeaderClass > 0)
            {
                return currentState.LapTimeDeltaLeaderClass;
            }
            else
            {
                return currentState.LapTimeDeltaLeader;
            }
        }

        private float getLapTimeBestForClassLeader(Data.Shared currentState)
        {
            if (currentState.LapTimeBestLeaderClass > 0)
            {
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
                if (lapTimesWindow != null && lapTimesWindow.Count() > 0 && lapTimesWindow[0] > 0)
                {
                    audioPlayer.playClipImmediately(QueuedMessage.compoundMessageIdentifier + "_lapTimeNotRaceTime",
                        new QueuedMessage(folderLapTimeIntro, null, TimeSpan.FromSeconds(lapTimesWindow[0]), 0, this));
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
                if (CommonData.isRaceStarted)
                {
                    if (lastLapRating != LastLapRating.NO_DATA && currentLapTimeDeltaToLeadersBest != TimeSpan.MaxValue)
                    {
                        if (currentLapTimeDeltaToLeadersBest.Seconds == 0 && currentLapTimeDeltaToLeadersBest.Milliseconds <= 50)
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
                                    messages.Add(folderPaceOK);
                                    if (timeToFindFolder != null)
                                    {
                                        messages.Add(timeToFindFolder);
                                    }
                                    audioPlayer.playClipImmediately(QueuedMessage.compoundMessageIdentifier + "_lapTimeRacePaceReport",
                                        new QueuedMessage(messages, 0, null));
                                    audioPlayer.closeChannel();
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
                    if (lastLapRating != LastLapRating.NO_DATA && sessionBestLapTimeDeltaToLeader != TimeSpan.MaxValue)
                    {
                        if (sessionBestLapTimeDeltaToLeader == TimeSpan.Zero)
                        {
                            if (lastLapRating == LastLapRating.BEST_OVERALL)
                            {
                                audioPlayer.playClipImmediately(folderLeadingInQualOrPrac, new QueuedMessage(0, null));
                                audioPlayer.closeChannel();
                            }
                            else if (lastLapRating == LastLapRating.BEST_IN_CLASS)
                            {
                                audioPlayer.playClipImmediately(folderLeadingClassInQualOrPrac, new QueuedMessage(0, null));
                                audioPlayer.closeChannel();
                            }
                        }
                        else if (sessionBestLapTimeDeltaToLeader.Seconds == 0 && sessionBestLapTimeDeltaToLeader.Milliseconds < 50)
                        {
                            audioPlayer.playClipImmediately(folderLessThanATenthOffThePace, new QueuedMessage(0, null));
                            audioPlayer.closeChannel();
                        }
                        else
                        {
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

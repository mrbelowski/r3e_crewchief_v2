﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CrewChiefV2.Data;

namespace CrewChiefV2.Events
{
    // note this only works properly in race events as the TimeDeltas aren't populated in practice / qual
    class Timings : AbstractEvent
    {
        private String folderGapInFrontIncreasing = "timings/gap_in_front_increasing";
        private String folderGapInFrontDecreasing = "timings/gap_in_front_decreasing";

        private String folderGapBehindIncreasing = "timings/gap_behind_increasing";
        private String folderGapBehindDecreasing = "timings/gap_behind_decreasing";

        private String folderSeconds = "timings/seconds";

        private String folderBeingHeldUp = "timings/being_held_up";
        private String folderBeingPressured = "timings/being_pressured";

        private List<float> gapsInFront;

        private List<float> gapsBehind;

        private GapStatus lastGapInFrontReport;

        private GapStatus lastGapBehindReport;

        private float gapBehindAtLastReport;

        private float gapInFrontAtLastReport;

        private int sectorsSinceLastReport;

        private int sectorsUntilNextReport;

        private Random rand = new Random();

        private int drsRange;

        private Boolean hasDRS;

        private float currentGapInFront;

        private float currentGapBehind;

        private Boolean enableGapMessages = UserSettings.GetUserSettings().getBoolean("enable_gap_messages");
        
        public Timings(AudioPlayer audioPlayer)
        {
            this.audioPlayer = audioPlayer;
        }

        public override void clearState()
        {
            gapsInFront = new List<float>();
            gapsBehind = new List<float>();
            lastGapBehindReport = GapStatus.NONE;
            lastGapInFrontReport = GapStatus.NONE;
            gapBehindAtLastReport = -1;
            gapInFrontAtLastReport = -1;
            sectorsSinceLastReport = 0;
            sectorsUntilNextReport = 0;
            drsRange = 2;  // TODO: get the DRS range from somewhere
            hasDRS = false;
            currentGapBehind = -1;
            currentGapInFront = -1;
        }

        public override bool isClipStillValid(string eventSubType)
        {
            if (((LapCounter)CrewChief.getEvent("LapCounter")).playedFinished)
            {
                return false;
            }
            if (eventSubType == QueuedMessage.compoundMessageIdentifier + "Timings/gap_in_front")
            {
                return CommonData.isSessionRunning;
            }
            else if (eventSubType == QueuedMessage.compoundMessageIdentifier + "Timings/gap_behind")
            {
                return CommonData.isSessionRunning;
            }
            else if (eventSubType == folderBeingHeldUp)
            {
                return CommonData.isSessionRunning;
            }
            else if (eventSubType == folderBeingPressured)
            {
                return CommonData.isSessionRunning;
            }
            else
            {
                return CommonData.isSessionRunning;
            }
        }

        protected override void triggerInternal(Data.Shared lastState, Data.Shared currentState)
        {
            currentGapInFront = currentState.TimeDeltaFront;
            currentGapBehind = currentState.TimeDeltaBehind;

            if (!hasDRS && currentState.DrsAvailable == 1)
            {
                hasDRS = true;
            }
            if (gapsInFront == null || gapsBehind == null)
            {
                clearState();
            }
            if (!CommonData.racingSameCarInFront)
            {
                gapsInFront.Clear();
            }
            if (!CommonData.racingSameCarBehind)
            {
                gapsBehind.Clear();
            }
            if (enableGapMessages && CommonData.isRaceRunning && CommonData.isNewSector && !CommonData.isPittingInRace)
            {
                sectorsSinceLastReport++;                
                GapStatus gapInFrontStatus = GapStatus.NONE;
                GapStatus gapBehindStatus = GapStatus.NONE;
                if (currentState.Position != 1)
                {
                    gapsInFront.Insert(0, currentState.TimeDeltaFront);
                    gapInFrontStatus = getGapStatus(gapsInFront, gapInFrontAtLastReport);
                }
                if (!CommonData.isLast)
                {
                    gapsBehind.Insert(0, currentState.TimeDeltaBehind);
                    gapBehindStatus = getGapStatus(gapsBehind, gapBehindAtLastReport);
                }

                // Play which ever is the smaller gap, but we're not interested if the gap is < 0.5 or > 20 seconds or hasn't changed:
                Boolean playGapInFront = gapInFrontStatus != GapStatus.NONE &&
                    (gapBehindStatus == GapStatus.NONE || (gapsInFront.Count() > 0 && gapsBehind.Count() > 0 && gapsInFront[0] < gapsBehind[0]));

                Boolean playGapBehind = !playGapInFront && gapBehindStatus != GapStatus.NONE;

                if (playGapInFront && sectorsSinceLastReport >= sectorsUntilNextReport)
                {
                    sectorsSinceLastReport = 0;
                    // here we report on gaps semi-randomly, we'll see how this sounds...
                    sectorsUntilNextReport = rand.Next(3, 7);
                    TimeSpan gapInFront = TimeSpan.FromMilliseconds(gapsInFront[0] * 1000);
                    Boolean readGap = gapInFront.Seconds > 0 || gapInFront.Milliseconds > 50;
                    switch (gapInFrontStatus)
                    {
                        case GapStatus.INCREASING:
                            if (readGap)
                            {
                                audioPlayer.queueClip(QueuedMessage.compoundMessageIdentifier + "Timings/gap_in_front", 
                                    new QueuedMessage(folderGapInFrontIncreasing, folderSeconds, gapInFront, 0, this));
                            }                            
                            lastGapInFrontReport = GapStatus.INCREASING;
                            gapInFrontAtLastReport = gapsInFront[0];
                            break;
                        case GapStatus.DECREASING:
                            if (readGap)
                            {
                                audioPlayer.queueClip(QueuedMessage.compoundMessageIdentifier + "Timings/gap_in_front", 
                                    new QueuedMessage(folderGapInFrontDecreasing, folderSeconds, gapInFront, 0, this));
                            }
                            lastGapInFrontReport = GapStatus.DECREASING;
                            gapInFrontAtLastReport = gapsInFront[0];
                            break;
                        case GapStatus.CLOSE:
                            audioPlayer.queueClip(folderBeingHeldUp, 0, this);
                            lastGapInFrontReport = GapStatus.CLOSE;
                            gapInFrontAtLastReport = gapsInFront[0];
                            break;
                    }
                }
                if (playGapBehind && sectorsSinceLastReport > sectorsUntilNextReport)
                {
                    sectorsSinceLastReport = 0;
                    sectorsUntilNextReport = rand.Next(3, 7);
                    TimeSpan gapBehind = TimeSpan.FromMilliseconds(gapsBehind[0] * 1000);
                    Boolean readGap = gapBehind.Seconds > 0 || gapBehind.Milliseconds > 50;
                    switch (gapBehindStatus)
                    {
                        case GapStatus.INCREASING:
                            if (readGap)
                            {
                                audioPlayer.queueClip(QueuedMessage.compoundMessageIdentifier + "Timings/gap_behind",
                                    new QueuedMessage(folderGapBehindIncreasing, folderSeconds, gapBehind, 0, this));
                            }
                            lastGapBehindReport = GapStatus.INCREASING;
                            gapBehindAtLastReport = gapsBehind[0];
                            break;
                        case GapStatus.DECREASING:
                            if (readGap)
                            {
                                audioPlayer.queueClip(QueuedMessage.compoundMessageIdentifier + "Timings/gap_behind",
                                    new QueuedMessage(folderGapBehindDecreasing, folderSeconds, gapBehind, 0, this));
                            }
                            lastGapBehindReport = GapStatus.DECREASING;
                            gapBehindAtLastReport = gapsBehind[0];
                            break;
                        case GapStatus.CLOSE:
                            audioPlayer.queueClip(folderBeingPressured, 0, this);
                            lastGapBehindReport = GapStatus.CLOSE;
                            gapBehindAtLastReport = gapsBehind[0];
                            break;
                    }
                }
            }
        }

        private GapStatus getGapStatus(List<float> gaps, float lastReportedGap)
        {
            // if we have less than 3 gaps in the list, or the last gap is too big, or the change in the gap is too big,
            // we don't want to report anything

            // when comparing gaps round to 1 decimal place
            if (gaps.Count < 3 || gaps[0] <= 0 || gaps[1] <= 0 || gaps[2] <= 0 || gaps[0] > 20 || Math.Abs(gaps[0] - gaps[1]) > 5)
            {
                return GapStatus.NONE;
            }
            else if (gaps[0] < 0.5 && gaps[1] < 0.5)
            {
                // this car has been close for 2 sectors
                return GapStatus.CLOSE;
            }
            if ((lastReportedGap == -1 || Math.Round(gaps[0], 1) > Math.Round(lastReportedGap)) &&
                Math.Round(gaps[0], 1) > Math.Round(gaps[1], 1) && Math.Round(gaps[1], 1) > Math.Round(gaps[2], 1))
            {
                return GapStatus.INCREASING;
            }
            else if ((lastReportedGap == -1 || Math.Round(gaps[0], 1) < Math.Round(lastReportedGap)) &&
                Math.Round(gaps[0], 1) < Math.Round(gaps[1], 1) && Math.Round(gaps[1], 1) < Math.Round(gaps[2], 1))
            {
                return GapStatus.DECREASING;
            }
            else
            {
                return GapStatus.NONE;
            }
        }

        public override void respond(String voiceMessage)
        {
            Boolean haveData = false;
            if ((voiceMessage.Contains(SpeechRecogniser.GAP_IN_FRONT) || 
                voiceMessage.Contains(SpeechRecogniser.GAP_AHEAD)) &&
                currentGapInFront != -1)
            {
                if (CommonData.isLeading && CommonData.isRaceRunning)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(Position.folderLeading, new QueuedMessage(0, this));
                    audioPlayer.closeChannel();
                    haveData = true;
                }
                else if (currentGapInFront < 60)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(QueuedMessage.compoundMessageIdentifier + "Timings/gaps",
                    new QueuedMessage(null, folderSeconds,
                        TimeSpan.FromMilliseconds(currentGapInFront * 1000), 0, this));
                    audioPlayer.closeChannel();
                    haveData = true;
                }
                else
                {
                    Console.WriteLine("Unable to read gap as it's more than 59 seconds");
                }
            }
            else if (voiceMessage.Contains(SpeechRecogniser.GAP_BEHIND) &&
                currentGapBehind != -1)
            {
                if (CommonData.isLast && CommonData.isRaceRunning)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(Position.folderLast, new QueuedMessage(0, this));
                    audioPlayer.closeChannel();
                    haveData = true;
                }
                else if (currentGapBehind < 60)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(QueuedMessage.compoundMessageIdentifier + "Timings/gaps",
                    new QueuedMessage(null, folderSeconds,
                        TimeSpan.FromMilliseconds(currentGapBehind * 1000), 0, this));
                    audioPlayer.closeChannel();
                    haveData = true;
                }
                else
                {
                    Console.WriteLine("Unable to read gap as it's more than 59 seconds");
                }
            }
            if (!haveData)
            {
                audioPlayer.openChannel();
                audioPlayer.playClipImmediately(AudioPlayer.folderNoData, new QueuedMessage(0, this));
                audioPlayer.closeChannel();
            }
        }

        private enum GapStatus
        {
            CLOSE, INCREASING, DECREASING, NONE
        }
    }
}

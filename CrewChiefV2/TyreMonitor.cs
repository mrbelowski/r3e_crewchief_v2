using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CrewChiefV2.Data;

namespace CrewChiefV2.Events
{
    class TyreMonitor : AbstractEvent
    {
        private String folderHotLeftFront = "tyre_monitor/hot_left_front";
        private String folderHotLeftRear = "tyre_monitor/hot_left_rear";
        private String folderHotRightFront = "tyre_monitor/hot_right_front";
        private String folderHotRightRear = "tyre_monitor/hot_right_rear";
        private String folderHotFronts = "tyre_monitor/hot_fronts";
        private String folderHotRears = "tyre_monitor/hot_rears";
        private String folderHotLefts = "tyre_monitor/hot_lefts";
        private String folderHotRights = "tyre_monitor/hot_rights";
        private String folderHotAllRound = "tyre_monitor/hot_all_round";
        private String folderGoodTemps = "tyre_monitor/good_temps";

        private String folderKnackeredLeftFront = "tyre_monitor/knackered_left_front";
        private String folderKnackeredLeftRear = "tyre_monitor/knackered_left_rear";
        private String folderKnackeredRightFront = "tyre_monitor/knackered_right_front";
        private String folderKnackeredRightRear = "tyre_monitor/knackered_right_rear";
        private String folderKnackeredFronts = "tyre_monitor/knackered_fronts";
        private String folderKnackeredRears = "tyre_monitor/knackered_rears";
        private String folderKnackeredLefts = "tyre_monitor/knackered_lefts";
        private String folderKnackeredRights = "tyre_monitor/knackered_rights";
        private String folderKnackeredAllRound = "tyre_monitor/knackered_all_round";
        private String folderGoodWear = "tyre_monitor/good_wear";

        private String folderWornLeftFront = "tyre_monitor/worn_left_front";
        private String folderWornLeftRear = "tyre_monitor/worn_left_rear";
        private String folderWornRightFront = "tyre_monitor/worn_right_front";
        private String folderWornRightRear = "tyre_monitor/worn_right_rear";
        private String folderWornFronts = "tyre_monitor/worn_fronts";
        private String folderWornRears = "tyre_monitor/worn_rears";
        private String folderWornLefts = "tyre_monitor/worn_lefts";
        private String folderWornRights = "tyre_monitor/worn_rights";
        private String folderWornAllRound = "tyre_monitor/worn_all_round";


        private static float maxColdTemp = UserSettings.GetUserSettings().getFloat("max_cold_tyre_temp");
        private static float maxGoodTemp = UserSettings.GetUserSettings().getFloat("max_good_tyre_temp");
        private static Boolean enableTyreTempWarnings = UserSettings.GetUserSettings().getBoolean("enable_tyre_temp_warnings");
        private static Boolean enableTyreWearWarnings = UserSettings.GetUserSettings().getBoolean("enable_tyre_wear_warnings");

        private int tyreTempMessageDelay = 0;

        private int lapsIntoSessionBeforeTempMessage = 2;

        private TyreTemps lastLapTyreTemps;
        private TyreTemps thisLapTyreTemps;

        private TyreTempStatus lastReportedStatus;

        private Boolean checkedTempsAtSector3;

        // -1 means we only check at the end of the lap
        private int checkAtSector = -1;

        // tyre wear - 0 is new, 1 or more is knackered
        public float leftFrontWear;
        public float rightFrontWear;
        public float leftRearWear;
        public float rightRearWear;
        private float newTyreWearValue = 1f;

        // This will change when S3 sort out tyre wear...
        // this is the % damage the tyre can have before it's knackered - in the 
        // current game, damage level <90% means the tyre is effectly dead
        private float maxTyreWearBeforeKnackered = 0.1f;

        private float knackeredTyreThreshold = 1f;
        private float warningTyreThreshold = 0.5f;

        private TyreWearStatus lastReportedKnackeredTyreStatus;
        private TyreWearStatus lastReportedWornTyreStatus;

        private Boolean reportedTyreWearForCurrentPitEntry;

        public TyreMonitor(AudioPlayer audioPlayer)
        {
            this.audioPlayer = audioPlayer;
        }

        public override void clearState()
        {
            lastLapTyreTemps = null;
            thisLapTyreTemps = null;
            lastReportedStatus = TyreTempStatus.NO_DATA;
            lastReportedKnackeredTyreStatus = TyreWearStatus.NOT_TRIGGERED;
            lastReportedWornTyreStatus = TyreWearStatus.NOT_TRIGGERED;
            checkedTempsAtSector3 = false;
            leftFrontWear = 0;
            rightFrontWear = 0;
            leftRearWear = 0;
            rightRearWear = 0;
            reportedTyreWearForCurrentPitEntry = false;
        }

        public override bool isClipStillValid(string eventSubType)
        {
            return CommonData.isSessionRunning;
        }

        private void checkTemps(TyreTemps tyreTempsToCheck)
        {
            // only give a message if we've completed more than the minimum laps here
            if (tyreTempsToCheck != null)
            {
                tyreTempsToCheck.displayAverages();
                TyreTempStatus tempsStatus = tyreTempsToCheck.getAverageTempStatus();
                if (tempsStatus != lastReportedStatus)
                {
                    String messageFolder = getMessage(tempsStatus);
                    if (messageFolder != null)
                    {
                        Console.WriteLine("Reporting tyre temp status: " + tempsStatus);
                        audioPlayer.queueClip(messageFolder, tyreTempMessageDelay, this);
                    }
                    lastReportedStatus = tempsStatus;
                }
                else
                {
                    Console.WriteLine("No tyre temp status change: " + tempsStatus);
                }
            }
        }

        override protected void triggerInternal(Shared lastState, Shared currentState)
        {
            if (CommonData.isSessionRunning)
            {
                if (currentState.TireWearActive == 1)
                {
                    leftFrontWear = (newTyreWearValue - currentState.CarDamage.TireFrontLeft) / maxTyreWearBeforeKnackered;
                    rightFrontWear = (newTyreWearValue - currentState.CarDamage.TireFrontRight) / maxTyreWearBeforeKnackered;
                    leftRearWear = (newTyreWearValue - currentState.CarDamage.TireRearLeft) / maxTyreWearBeforeKnackered;
                    rightRearWear = (newTyreWearValue - currentState.CarDamage.TireRearRight) / maxTyreWearBeforeKnackered;

                    if (CommonData.isPittingInRace)
                    {
                        if (enableTyreWearWarnings && !reportedTyreWearForCurrentPitEntry)
                        {
                            playTyreWearMessages(true, true);
                            reportedTyreWearForCurrentPitEntry = true;
                        }
                    }
                    else
                    {
                        reportedTyreWearForCurrentPitEntry = false;
                    }
                }
                if (CommonData.isNewLap)
                {
                    lastLapTyreTemps = thisLapTyreTemps;    // this might still be null
                    thisLapTyreTemps = new TyreTemps();
                    updateTyreTemps(currentState, thisLapTyreTemps);
                    if (!CommonData.isPittingInRace && enableTyreTempWarnings && !checkedTempsAtSector3 && currentState.CompletedLaps >= lapsIntoSessionBeforeTempMessage)
                    {
                        checkTemps(lastLapTyreTemps);
                    }
                    checkedTempsAtSector3 = false;
                    if (!CommonData.isPittingInRace && enableTyreWearWarnings && currentState.TireWearActive == 1)
                    {
                        playTyreWearMessages(true, false);
                    }
                }
                else
                {
                    if (thisLapTyreTemps == null)
                    {
                        thisLapTyreTemps = new TyreTemps();
                    }
                    updateTyreTemps(currentState, thisLapTyreTemps);
                    if (enableTyreTempWarnings && checkAtSector > 0 && CommonData.isNewSector && CommonData.currentLapSector == checkAtSector)
                    {
                        checkedTempsAtSector3 = true;
                        if (!CommonData.isPittingInRace && currentState.CompletedLaps >= lapsIntoSessionBeforeTempMessage)
                        {
                            checkTemps(thisLapTyreTemps);
                        }
                    }
                }
            }
        }

        public override void respond(string voiceMessage)
        {
            if (voiceMessage.Contains(SpeechRecogniser.TYRE_TEMPS))
            {
                Boolean gotData = false;
                if (thisLapTyreTemps != null)
                {
                    TyreTempStatus status = thisLapTyreTemps.getCurrentTempStatus();
                    String messageFolder = getMessage(status);
                    if (messageFolder != null)
                    {
                        Console.WriteLine("Tyre temp status is: " + status);
                        thisLapTyreTemps.displayCurrent();
                        gotData = true;
                        audioPlayer.playClipImmediately(messageFolder, new QueuedMessage(0, this));
                        audioPlayer.closeChannel();
                    }
                }
                if (!gotData)
                {
                    audioPlayer.playClipImmediately(AudioPlayer.folderNoData, new QueuedMessage(0, this));
                    audioPlayer.closeChannel();
                }
            }
            else if (voiceMessage.Contains(SpeechRecogniser.TYRE_WEAR))
            {
                playTyreWearMessages(false, true);
            }
        }

        private void playTyreWearMessages(Boolean isQueuedMessage, Boolean playGoodWearMessage)
        {
            TyreWearStatus knackeredTyres = getKnackeredTyreWearStatus();
            TyreWearStatus wornTyres = getWornTyreWearStatus();
            if (knackeredTyres == TyreWearStatus.NOT_TRIGGERED && wornTyres == TyreWearStatus.NOT_TRIGGERED)
            {
                if (playGoodWearMessage)
                {
                    if (isQueuedMessage)
                    {
                        audioPlayer.queueClip(folderGoodWear, 0, this);
                    }
                    else
                    {
                        audioPlayer.playClipImmediately(folderGoodWear, new QueuedMessage(0, this));
                    }
                }
            }
            else
            {
                lastReportedKnackeredTyreStatus = knackeredTyres;
                lastReportedWornTyreStatus = wornTyres;
                reportTyreWearStatus(knackeredTyres, isQueuedMessage);
                reportTyreWearStatus(wornTyres, isQueuedMessage);
            }
        }

        private TyreWearStatus getKnackeredTyreWearStatus()
        {
            if (leftFrontWear >= knackeredTyreThreshold && rightFrontWear >= knackeredTyreThreshold &&
                    leftRearWear >= knackeredTyreThreshold && rightRearWear >= knackeredTyreThreshold)
            {
                // all knackered
                return TyreWearStatus.KNACKERED_ALL_ROUND;
            }
            else if (leftFrontWear >= knackeredTyreThreshold && rightFrontWear >= knackeredTyreThreshold)
            {
                // knackered fronts
                return TyreWearStatus.KNACKERED_FRONTS;
            }
            else if (leftRearWear >= knackeredTyreThreshold && rightRearWear >= knackeredTyreThreshold)
            {
                // knackered rears
                return TyreWearStatus.KNACKERED_REARS;
            }
            else if (leftFrontWear >= knackeredTyreThreshold && leftRearWear >= knackeredTyreThreshold)
            {
                // knackered lefts
                return TyreWearStatus.KNACKERED_LEFTS;
            }
            else if (rightFrontWear >= knackeredTyreThreshold && rightRearWear >= knackeredTyreThreshold)
            {
                // knackered rights
                return TyreWearStatus.KNACKERED_RIGHTS;
            }
            else if (leftFrontWear >= knackeredTyreThreshold)
            {
                // knackered left front
                return TyreWearStatus.KNACKERED_LEFT_FRONT;
            }
            else if (leftRearWear >= knackeredTyreThreshold)
            {
                // knackered left rear
                return TyreWearStatus.KNACKERED_LEFT_REAR;
            }
            else if (rightFrontWear >= knackeredTyreThreshold)
            {
                // knackered right front
                return TyreWearStatus.KNACKERED_RIGHT_FRONT;
            }
            else if (rightRearWear >= knackeredTyreThreshold)
            {
                // knackered right rear
                return TyreWearStatus.KNACKERED_RIGHT_REAR;
            }
            else
            {
                return TyreWearStatus.NOT_TRIGGERED;
            }
        }

        private TyreWearStatus getWornTyreWearStatus()
        {
            if (leftFrontWear >= warningTyreThreshold && leftFrontWear < knackeredTyreThreshold &&
                rightFrontWear >= warningTyreThreshold && rightFrontWear < knackeredTyreThreshold &&
                leftRearWear >= warningTyreThreshold && leftRearWear < knackeredTyreThreshold &&
                rightRearWear >= warningTyreThreshold && rightRearWear < knackeredTyreThreshold)
            {
                // all worn
                return TyreWearStatus.WORN_ALL_ROUND;
            }
            else if (leftFrontWear >= warningTyreThreshold && leftFrontWear < knackeredTyreThreshold &&
                rightFrontWear >= warningTyreThreshold && rightFrontWear < knackeredTyreThreshold)
            {
                // worn fronts
                return TyreWearStatus.WORN_FRONTS;
            }
            else if (leftRearWear >= warningTyreThreshold && leftRearWear < knackeredTyreThreshold &&
                rightRearWear >= warningTyreThreshold && rightRearWear < knackeredTyreThreshold)
            {
                // worn rears
                return TyreWearStatus.WORN_REARS;
            }
            else if (leftFrontWear >= warningTyreThreshold && leftFrontWear < knackeredTyreThreshold &&
                leftRearWear >= warningTyreThreshold && leftRearWear < knackeredTyreThreshold)
            {
                // worn lefts
                return TyreWearStatus.WORN_LEFTS;
            }
            else if (rightFrontWear >= warningTyreThreshold && rightFrontWear < knackeredTyreThreshold &&
                rightRearWear >= warningTyreThreshold && rightRearWear < knackeredTyreThreshold)
            {
                // worn rights
                return TyreWearStatus.WORN_RIGHTS;
            }
            else if (leftFrontWear >= warningTyreThreshold && leftFrontWear < knackeredTyreThreshold)
            {
                // worn left front
                return TyreWearStatus.WORN_LEFT_FRONT;
            }
            else if (leftRearWear >= warningTyreThreshold && leftRearWear < knackeredTyreThreshold)
            {
                // worn left rear
                return TyreWearStatus.WORN_LEFT_REAR;
            }
            else if (rightFrontWear >= warningTyreThreshold && rightFrontWear < knackeredTyreThreshold)
            {
                // worn right front
                return TyreWearStatus.WORN_RIGHT_FRONT;
            }
            else if (rightRearWear >= warningTyreThreshold && rightRearWear < knackeredTyreThreshold)
            {
                // worn right rear
                return TyreWearStatus.WORN_RIGHT_REAR;
            }
            else
            {
                return TyreWearStatus.NOT_TRIGGERED;
            }
        }

        private void reportTyreWearStatus(TyreWearStatus tyreWearStatus, Boolean isQueuedMessage)
        {
            String clipToPlay = null;
            switch (tyreWearStatus)
            {
                case TyreWearStatus.KNACKERED_ALL_ROUND:
                    clipToPlay = folderKnackeredAllRound;
                    break;
                case TyreWearStatus.KNACKERED_FRONTS:
                    clipToPlay = folderKnackeredFronts;
                    break;
                case TyreWearStatus.KNACKERED_REARS:
                    clipToPlay = folderKnackeredRears;
                    break;
                case TyreWearStatus.KNACKERED_LEFTS:
                    clipToPlay = folderKnackeredLefts;
                    break;
                case TyreWearStatus.KNACKERED_RIGHTS:
                    clipToPlay = folderKnackeredRights;
                    break;
                case TyreWearStatus.KNACKERED_LEFT_FRONT:
                    clipToPlay = folderKnackeredLeftFront;
                    break;
                case TyreWearStatus.KNACKERED_LEFT_REAR:
                    clipToPlay = folderKnackeredLeftRear;
                    break;
                case TyreWearStatus.KNACKERED_RIGHT_FRONT:
                    clipToPlay = folderKnackeredRightFront;
                    break;
                case TyreWearStatus.KNACKERED_RIGHT_REAR:
                    clipToPlay = folderKnackeredRightRear;
                    break;
                case TyreWearStatus.WORN_ALL_ROUND:
                    clipToPlay = folderWornAllRound;
                    break;
                case TyreWearStatus.WORN_FRONTS:
                    clipToPlay = folderWornFronts;
                    break;
                case TyreWearStatus.WORN_REARS:
                    clipToPlay = folderWornRears;
                    break;
                case TyreWearStatus.WORN_LEFTS:
                    clipToPlay = folderWornLefts;
                    break;
                case TyreWearStatus.WORN_RIGHTS:
                    clipToPlay = folderWornRights;
                    break;
                case TyreWearStatus.WORN_LEFT_FRONT:
                    clipToPlay = folderWornLeftFront;
                    break;
                case TyreWearStatus.WORN_LEFT_REAR:
                    clipToPlay = folderWornLeftRear;
                    break;
                case TyreWearStatus.WORN_RIGHT_FRONT:
                    clipToPlay = folderWornRightFront;
                    break;
                case TyreWearStatus.WORN_RIGHT_REAR:
                    clipToPlay = folderWornRightRear;
                    break;
            }
            if (clipToPlay != null)
            {
                if (isQueuedMessage)
                {
                    audioPlayer.queueClip(clipToPlay, 0, this);
                }
                else
                {
                    audioPlayer.playClipImmediately(clipToPlay, new QueuedMessage(0, this));
                    audioPlayer.closeChannel();
                }
            }
        }

        private String getMessage(TyreTempStatus tempStatus)
        {
            switch (tempStatus)
            {
                case TyreTempStatus.GOOD:
                    return folderGoodTemps;
                case TyreTempStatus.HOT_ALL_ROUND:
                    return folderHotAllRound;
                case TyreTempStatus.HOT_FRONTS:
                    return folderHotFronts;
                case TyreTempStatus.HOT_REARS:
                    return folderHotRears;
                case TyreTempStatus.HOT_LEFTS:
                    return folderHotLefts;
                case TyreTempStatus.HOT_RIGHTS:
                    return folderHotRights;
                case TyreTempStatus.HOT_LEFT_FRONT:
                    return folderHotLeftFront;
                case TyreTempStatus.HOT_LEFT_REAR:
                    return folderHotLeftRear;
                case TyreTempStatus.HOT_RIGHT_FRONT:
                    return folderHotRightFront;
                case TyreTempStatus.HOT_RIGHT_REAR:
                    return folderHotRightRear;
            }
            return null;
        }

        private void updateTyreTemps(Shared data, TyreTemps tyreTemps)
        {
            tyreTemps.addSample((data.TireTemp.FrontLeft_Left + data.TireTemp.FrontLeft_Center + data.TireTemp.FrontLeft_Right) / 3,
                (data.TireTemp.FrontRight_Left + data.TireTemp.FrontRight_Center + data.TireTemp.FrontRight_Right) / 3,
                (data.TireTemp.RearLeft_Left + data.TireTemp.RearLeft_Center + data.TireTemp.RearLeft_Right) / 3,
                (data.TireTemp.RearRight_Left + data.TireTemp.RearRight_Center + data.TireTemp.RearRight_Right) / 3);
        }

        private class TyreTemps
        {
            // these are for the average temp over a single lap
            private float totalLeftFrontTemp = 0;
            private float totalRightFrontTemp = 0;
            private float totalLeftRearTemp = 0;
            private float totalRightRearTemp = 0;

            // these are the instantaneous tyre temps
            public float currentLeftFrontTemp = 0;
            public float currentRightFrontTemp = 0;
            public float currentLeftRearTemp = 0;
            public float currentRightRearTemp = 0;

            private int tyreTempSamples = 0;

            public TyreTemps()
            {

            }
            public void displayAverages()
            {
                Console.WriteLine("Average temps: " + getAverageTempStatus() + "\nleft front: " + getLeftFrontAverage() + " right front: " + getRightFrontAverage() +
                    "\nleft rear: " + getLeftRearAverage() + " right rear: " + getRightRearAverage());
            }
            public void displayCurrent()
            {
                Console.WriteLine("Current temps: " + getCurrentTempStatus() + "\nleft front: " + currentLeftFrontTemp + " right front: " + currentRightFrontTemp +
                    "\nleft rear: " + currentLeftRearTemp + " right rear: " + currentRightRearTemp);
            }
            public void addSample(float leftFrontTemp, float rightFrontTemp, float leftRearTemp, float rightRearTemp)
            {
                tyreTempSamples++;
                totalLeftFrontTemp += leftFrontTemp;
                totalRightFrontTemp += rightFrontTemp;
                totalLeftRearTemp += leftRearTemp;
                totalRightRearTemp += rightRearTemp;

                currentLeftFrontTemp = leftFrontTemp;
                currentRightFrontTemp = rightFrontTemp;
                currentLeftRearTemp = leftRearTemp;
                currentRightRearTemp = rightRearTemp;
            }
            public float getLeftFrontAverage()
            {
                if (tyreTempSamples == 0)
                {
                    return 0;
                }
                return totalLeftFrontTemp / tyreTempSamples;
            }
            public float getLeftRearAverage()
            {
                if (tyreTempSamples == 0)
                {
                    return 0;
                }
                return totalLeftRearTemp / tyreTempSamples;
            }
            public float getRightFrontAverage()
            {
                if (tyreTempSamples == 0)
                {
                    return 0;
                }
                return totalRightFrontTemp / tyreTempSamples;
            }
            public float getRightRearAverage()
            {
                if (tyreTempSamples == 0)
                {
                    return 0;
                }
                return totalRightRearTemp / tyreTempSamples;
            }

            public TyreTempStatus getAverageTempStatus()
            {
                return getStatus(getLeftFrontAverage(), getRightFrontAverage(), getLeftRearAverage(), getRightRearAverage());
            }

            public TyreTempStatus getCurrentTempStatus()
            {
                return getStatus(currentLeftFrontTemp, currentRightFrontTemp, currentLeftRearTemp, currentRightRearTemp);
            }

            private TyreTempStatus getStatus(float leftFrontTemp, float rightFrontTemp, float leftRearTemp, float rightRearTemp)
            {
                if (leftFrontTemp < maxColdTemp && leftRearTemp < maxColdTemp &&
                    rightFrontTemp < maxColdTemp && rightRearTemp < maxColdTemp)
                {
                    return TyreTempStatus.COLD;
                }
                if (leftFrontTemp > maxGoodTemp && leftRearTemp > maxGoodTemp &&
                    rightFrontTemp > maxGoodTemp && rightRearTemp > maxGoodTemp)
                {
                    return TyreTempStatus.HOT_ALL_ROUND;
                }
                else if (leftFrontTemp > maxGoodTemp && rightFrontTemp > maxGoodTemp)
                {
                    return TyreTempStatus.HOT_FRONTS;
                }
                else if (leftRearTemp > maxGoodTemp && rightRearTemp > maxGoodTemp)
                {
                    return TyreTempStatus.HOT_REARS;
                }
                else if (leftFrontTemp > maxGoodTemp && leftRearTemp > maxGoodTemp)
                {
                    return TyreTempStatus.HOT_LEFTS;
                }
                else if (rightFrontTemp > maxGoodTemp && rightRearTemp > maxGoodTemp)
                {
                    return TyreTempStatus.HOT_RIGHTS;
                }
                else if (leftFrontTemp > maxGoodTemp)
                {
                    return TyreTempStatus.HOT_LEFT_FRONT;
                }
                else if (leftRearTemp > maxGoodTemp)
                {
                    return TyreTempStatus.HOT_LEFT_REAR;
                }
                else if (rightFrontTemp > maxGoodTemp)
                {
                    return TyreTempStatus.HOT_RIGHT_FRONT;
                }
                else if (rightRearTemp > maxGoodTemp)
                {
                    return TyreTempStatus.HOT_RIGHT_REAR;
                }
                else
                {
                    return TyreTempStatus.GOOD;
                }
            }
        }

        private enum TyreTempStatus
        {
            HOT_LEFT_FRONT, HOT_RIGHT_FRONT, HOT_LEFT_REAR, HOT_RIGHT_REAR,
            HOT_FRONTS, HOT_REARS, HOT_LEFTS, HOT_RIGHTS, HOT_ALL_ROUND, GOOD, COLD, NO_DATA
        }

        private enum TyreWearStatus
        {
            KNACKERED_LEFT_FRONT, KNACKERED_RIGHT_FRONT, KNACKERED_LEFT_REAR, KNACKERED_RIGHT_REAR,
            KNACKERED_FRONTS, KNACKERED_REARS, KNACKERED_LEFTS, KNACKERED_RIGHTS, KNACKERED_ALL_ROUND,
            WORN_LEFT_FRONT, WORN_RIGHT_FRONT, WORN_LEFT_REAR, WORN_RIGHT_REAR,
            WORN_FRONTS, WORN_REARS, WORN_LEFTS, WORN_RIGHTS, WORN_ALL_ROUND, NOT_TRIGGERED
        }
    }
}

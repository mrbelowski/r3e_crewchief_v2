using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CrewChiefV2.Data;

namespace CrewChiefV2.Events
{
    class TyreTempMonitor : AbstractEvent
    {
        private String folderHotLeftFront = "tyre_temp_monitor/hot_left_front";
        private String folderHotLeftRear = "tyre_temp_monitor/hot_left_rear";
        private String folderHotRightFront = "tyre_temp_monitor/hot_right_front";
        private String folderHotRightRear = "tyre_temp_monitor/hot_right_rear";
        private String folderHotFronts = "tyre_temp_monitor/hot_fronts";
        private String folderHotRears = "tyre_temp_monitor/hot_rears";
        private String folderHotLefts = "tyre_temp_monitor/hot_lefts";
        private String folderHotRights = "tyre_temp_monitor/hot_rights";
        private String folderHotAllRound = "tyre_temp_monitor/hot_all_round";
        private String folderGoodTemps = "tyre_temp_monitor/good_temps";

        private static float maxColdTemp = UserSettings.GetUserSettings().getFloat("max_cold_tyre_temp");
        private static float maxGoodTemp = UserSettings.GetUserSettings().getFloat("max_good_tyre_temp");

        // play these messages 10 seconds after crossing the line
        private int tyreTempMessageDelay = 10;

        private int lapsIntoSessionBeforeTempMessage = 2;

        private TyreTemps lastLapTyreTemps;
        private TyreTemps thisLapTyreTemps;

        private TyreTempStatus lastReportedStatus;

        public TyreTempMonitor(AudioPlayer audioPlayer)
        {
            this.audioPlayer = audioPlayer;
        }

        public override void clearState()
        {
            lastLapTyreTemps = null;
            thisLapTyreTemps = null;
            lastReportedStatus = TyreTempStatus.NO_DATA;
        }

        public override bool isClipStillValid(string eventSubType)
        {
            return CommonData.isSessionRunning;
        }

        override protected void triggerInternal(Shared lastState, Shared currentState)
        {
            if (CommonData.isSessionRunning)
            {
                if (CommonData.isNewLap)
                {
                    lastLapTyreTemps = thisLapTyreTemps;    // this might still be null
                    thisLapTyreTemps = new TyreTemps();
                    updateTyreTemps(currentState, thisLapTyreTemps);
                    // only give a message if we've completed more than the minimum laps here
                    if (lastLapTyreTemps != null && currentState.CompletedLaps >= lapsIntoSessionBeforeTempMessage)
                    {
                        lastLapTyreTemps.display();
                        TyreTempStatus lastLapTempsStatus = lastLapTyreTemps.getStatus();
                        if (lastLapTempsStatus != lastReportedStatus)
                        {
                            String messageFolder = getMessage(lastLapTempsStatus);
                            if (messageFolder != null)
                            {
                                Console.WriteLine("Reporting tyre temp status for the completed lap: " + lastLapTempsStatus);
                                audioPlayer.queueClip(messageFolder, tyreTempMessageDelay, this);
                            }
                            lastReportedStatus = lastLapTempsStatus;
                        }
                        else
                        {
                            Console.WriteLine("No tyre temp status change: " + lastLapTempsStatus);
                        }
                    }
                }
                else
                {
                    if (thisLapTyreTemps == null)
                    {
                        thisLapTyreTemps = new TyreTemps();
                    }
                    updateTyreTemps(currentState, thisLapTyreTemps); 
                }
            }
        }

        public override void respond(string voiceMessage)
        {
            Boolean gotData = false;
            if (thisLapTyreTemps != null)
            {
                TyreTempStatus status = thisLapTyreTemps.getStatus();
                String messageFolder = getMessage(status);
                if (messageFolder != null)
                {
                    Console.WriteLine("Tyre temp status is: " + status);
                    thisLapTyreTemps.display();
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
            // these are the average temp over a single lap
            private float totalLeftFrontTemp = 0;
            private float totalRightFrontTemp = 0;
            private float totalLeftRearTemp = 0;
            private float totalRightRearTemp = 0;
            private int tyreTempSamples = 0;
            public TyreTemps()
            {

            }
            public void display()
            {
                Console.WriteLine("Temps status: " + getStatus() + "\nleft front: " + getLeftFrontAverage() + " right front: " + getRightFrontAverage() +
                    "\nleft rear: " + getLeftRearAverage() + " right rear: " + getRightRearAverage());
            }
            public void addSample(float leftFrontTemp, float rightFrontTemp, float leftRearTemp, float rightRearTemp)
            {
                tyreTempSamples++;
                totalLeftFrontTemp += leftFrontTemp;
                totalRightFrontTemp += rightFrontTemp;
                totalLeftRearTemp += leftRearTemp;
                totalRightRearTemp += rightRearTemp;
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
            public TyreTempStatus getStatus()
            {
                if (getLeftFrontAverage() < maxColdTemp && getLeftRearAverage() < maxColdTemp &&
                    getRightFrontAverage() < maxColdTemp && getRightRearAverage() < maxColdTemp)
                {
                    return TyreTempStatus.COLD;
                }
                if (getLeftFrontAverage() > maxGoodTemp && getLeftRearAverage() > maxGoodTemp &&
                    getRightFrontAverage() > maxGoodTemp && getRightRearAverage() > maxGoodTemp)
                {
                    return TyreTempStatus.HOT_ALL_ROUND;
                }
                else if (getLeftFrontAverage() > maxGoodTemp && getRightFrontAverage() > maxGoodTemp)
                {
                    return TyreTempStatus.HOT_FRONTS;
                }
                else if (getLeftRearAverage() > maxGoodTemp && getRightRearAverage() > maxGoodTemp)
                {
                    return TyreTempStatus.HOT_REARS;
                }
                else if (getLeftFrontAverage() > maxGoodTemp && getLeftRearAverage() > maxGoodTemp)
                {
                    return TyreTempStatus.HOT_LEFTS;
                }
                else if (getRightFrontAverage() > maxGoodTemp && getRightRearAverage() > maxGoodTemp)
                {
                    return TyreTempStatus.HOT_RIGHTS;
                }
                else if (getLeftFrontAverage() > maxGoodTemp)
                {
                    return TyreTempStatus.HOT_LEFT_FRONT;
                }
                else if (getLeftRearAverage() > maxGoodTemp)
                {
                    return TyreTempStatus.HOT_LEFT_REAR;
                }
                else if (getRightFrontAverage() > maxGoodTemp)
                {
                    return TyreTempStatus.HOT_RIGHT_FRONT;
                }
                else if (getRightRearAverage() > maxGoodTemp)
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

    }
}

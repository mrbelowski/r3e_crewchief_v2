﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CrewChiefV2.Data;

// Oil temps are typically 1 or 2 units (I'm assuming celcius) higher than water temps. Typical temps while racing tend to be
// mid - high 50s, with some in-traffic running this creeps up to the mid 60s. To get it into the 
// 70s you have to really try. Any higher requires you to sit by the side of the road bouncing off the
// rev limiter. Doing this I've been able to get to 110 without blowing up (I got bored). With temps in the
// 80s, by the end of a single lap at racing speed they're back into the 60s.
//
// I think the cool down effect of the radiator is the underlying issue here - it's far too strong. 
// The oil temp does lag behind the water temp, which is correct, but I think it should lag 
// more (i.e. it should take longer for the oil to cool) and the oil should heat up more relative to the water. 
// 
// I'd expect to be seeing water temperatures in the 80s for 'normal' running, with this getting well into the 
// 90s or 100s in traffic. The oil temps should be 100+, maybe hitting 125 or more when the water's also hot.
// 
// To work around this I take a 'baseline' temp for oil and water - this is the average temperature between 3
// and 5 minutes of the session. I then look at differences between this baseline and the current temperature, allowing
// a configurable 'max above baseline' for each. Assuming the base line temps are sensible (say, 85 for water 105 for oil), 
// then anthing over 95 for water and 120 for oil is 'bad' - the numbers in the config reflect this

namespace CrewChiefV2.Events
{
    class EngineMonitor : AbstractEvent
    {
        private String folderAllClear = "engine_monitor/all_clear";
        private String folderHotWater = "engine_monitor/hot_water";
        private String folderHotOil = "engine_monitor/hot_oil";
        private String folderHotOilAndWater = "engine_monitor/hot_oil_and_water";

        private static float maxSafeWaterTempOverBaseline = UserSettings.GetUserSettings().getFloat("max_safe_water_temp_over_baseline");
        private static float maxSafeOilTempOverBaseline = UserSettings.GetUserSettings().getFloat("max_safe_oil_temp_over_baseline");
        private static Boolean logTemps = UserSettings.GetUserSettings().getBoolean("log_temps");

        EngineStatus lastStatusMessage;

        EngineData engineData;

        // record engine data for 60 seconds then report changes
        double statusMonitorWindowLength = 60;

        double gameTimeAtLastStatusCheck;

        Boolean gotBaseline;

        int baselineSamples;

        // record the average temperature between minutes 3 and 5
        double baselineStartSeconds = 180;

        double baselineFinishSeconds = 300;

        float baselineOilTemp;

        float baselineWaterTemp;

        public EngineMonitor(AudioPlayer audioPlayer)
        {
            this.audioPlayer = audioPlayer;
        }

        public override void clearState()
        {
            lastStatusMessage = EngineStatus.ALL_CLEAR;
            engineData = new EngineData();
            gameTimeAtLastStatusCheck = 0;
            gotBaseline = false;
            baselineSamples = 0;
            baselineOilTemp = 0;
            baselineWaterTemp = 0;
        }

        public override bool isClipStillValid(string eventSubType)
        {
            return CommonData.isSessionRunning &&
                !((LapCounter)CrewChief.getEvent("LapCounter")).playedFinished;
        }

        override protected void triggerInternal(Shared lastState, Shared currentState)
        {
            if (CommonData.isRaceRunning)
            { 
                if (engineData == null)
                {
                    clearState();
                }
                if (!gotBaseline)
                {
                    if (currentState.Player.GameSimulationTime > baselineStartSeconds && currentState.Player.GameSimulationTime < baselineFinishSeconds)
                    {
                        baselineSamples++;
                        baselineWaterTemp += currentState.EngineWaterTemp;
                        baselineOilTemp += currentState.EngineOilTemp;
                    }
                    else if (currentState.Player.GameSimulationTime >= baselineFinishSeconds && baselineSamples > 0)
                    {
                        gotBaseline = true;
                        baselineOilTemp = baselineOilTemp / baselineSamples;
                        baselineWaterTemp = baselineWaterTemp / baselineSamples;
                        Console.WriteLine("Got baseline engine temps, water = " + baselineWaterTemp + ", oil = " + baselineOilTemp);
                    }
                }
                else
                {
                    if (currentState.Player.GameSimulationTime > gameTimeAtLastStatusCheck + statusMonitorWindowLength)
                    {
                        EngineStatus currentEngineStatus = engineData.getEngineStatus(baselineOilTemp, baselineWaterTemp);
                        if (currentEngineStatus != lastStatusMessage)
                        {
                            switch (currentEngineStatus)
                            {
                                case EngineStatus.ALL_CLEAR:
                                    lastStatusMessage = currentEngineStatus;
                                    audioPlayer.queueClip(folderAllClear, 0, this);
                                    break;
                                case EngineStatus.HOT_OIL:
                                    // don't play this if the last message was about hot oil *and* water - wait for 'all clear'
                                    if (lastStatusMessage != EngineStatus.HOT_OIL_AND_WATER)
                                    {
                                        lastStatusMessage = currentEngineStatus;
                                        audioPlayer.queueClip(folderHotOil, 0, this);
                                    }
                                    break;
                                case EngineStatus.HOT_WATER:
                                    // don't play this if the last message was about hot oil *and* water - wait for 'all clear'
                                    if (lastStatusMessage != EngineStatus.HOT_OIL_AND_WATER)
                                    {
                                        lastStatusMessage = currentEngineStatus;
                                        audioPlayer.queueClip(folderHotWater, 0, this);
                                    }
                                    break;
                                case EngineStatus.HOT_OIL_AND_WATER:
                                    lastStatusMessage = currentEngineStatus;
                                    audioPlayer.queueClip(folderHotOilAndWater, 0, this);
                                    break;
                            }
                        }
                        gameTimeAtLastStatusCheck = currentState.Player.GameSimulationTime;
                        engineData = new EngineData();
                    }
                    engineData.addSample(currentState);
                    if (logTemps)
                    {
                        Console.WriteLine(currentState.EngineWaterTemp + ", " + currentState.EngineOilTemp + ", " + currentState.EngineOilPressure);
                    }
                }
            }
        }

        private class EngineData
        {
            private int samples;
            private float oilTemp;
            private float waterTemp;
            private float oilPressure;
            public EngineData()
            {
                this.samples = 0;
                this.oilPressure = 0;
                this.oilTemp = 0;
                this.waterTemp = 0;
            }
            public void addSample(Shared currentData)
            {
                this.samples++;
                this.oilTemp += currentData.EngineOilTemp;
                this.waterTemp += currentData.EngineWaterTemp;
                this.oilPressure += currentData.EngineOilPressure;
            }
            public EngineStatus getEngineStatus(float baselineOilTemp, float baselineWaterTemp)
            {
                // TODO: detect a sudden drop in oil pressure without triggering false positives caused by stalling the engine
                float averageOilTemp = oilTemp / samples;
                float averageWaterTemp = waterTemp / samples;
                float averageOilPressure = oilPressure / samples;
                if (averageOilTemp > baselineOilTemp + maxSafeOilTempOverBaseline && averageWaterTemp > baselineWaterTemp + maxSafeWaterTempOverBaseline)
                {
                    return EngineStatus.HOT_OIL_AND_WATER;
                }
                else if (averageWaterTemp > baselineWaterTemp + maxSafeWaterTempOverBaseline)
                {
                    return EngineStatus.HOT_WATER;
                }
                else if (averageOilTemp > baselineOilTemp + maxSafeOilTempOverBaseline)
                {
                    return EngineStatus.HOT_OIL;
                }
                else
                {
                    return EngineStatus.ALL_CLEAR;
                }
                // low oil pressure not implemented
            }
        }

        private enum EngineStatus
        {
            ALL_CLEAR, HOT_OIL, HOT_WATER, HOT_OIL_AND_WATER
        }
    }
}

﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CrewChiefV2.Data;

namespace CrewChiefV2.Events
{
    class Fuel : AbstractEvent
    {
        private String folderOneLapEstimate = "fuel/one_lap_fuel";

        private String folderTwoLapsEstimate = "fuel/two_laps_fuel";

        private String folderThreeLapsEstimate = "fuel/three_laps_fuel";

        private String folderFourLapsEstimate = "fuel/four_laps_fuel";

        private String folderHalfDistanceGoodFuel = "fuel/half_distance_good_fuel";

        private String folderHalfDistanceLowFuel = "fuel/half_distance_low_fuel";

        private String folderHalfTankWarning = "fuel/half_tank_warning";

        private String folderTenMinutesFuel = "fuel/ten_minutes_fuel";

        private String folderTwoMinutesFuel = "fuel/two_minutes_fuel";

        private String folderFiveMinutesFuel = "fuel/five_minutes_fuel";

        private String folderMinutesRemaining = "fuel/minutes_remaining";

        private String folderLapsRemaining = "fuel/laps_remaining";

        private String folderWeEstimate = "fuel/we_estimate";

        private String folderPlentyOfFuel = "fuel/plenty_of_fuel";

        private float averageUsagePerLap;

        private float averageUsagePerMinute;

        // fuel in tank 15 seconds after game start
        private float fuelAfter15Seconds;

        private int halfDistance;

        private float halfTime;

        private Boolean playedHalfTankWarning;

        private Boolean initialised;

        private Boolean playedHalfTimeFuelEstimate;

        private int fuelUseWindowLength = 3;

        private List<float> fuelUseWindow;

        private double gameTimeAtLastFuelWindowUpdate;

        private Boolean playedTwoMinutesRemaining;

        private Boolean playedFiveMinutesRemaining;

        private Boolean playedTenMinutesRemaining;

        private Boolean fuelUseActive;

        // check fuel use every 2 minutes
        private int fuelUseSampleTime = 2;

        private float currentFuel;

        private Boolean enableFuelMessages = UserSettings.GetUserSettings().getBoolean("enable_fuel_messages");

        public Fuel(AudioPlayer audioPlayer)
        {
            this.audioPlayer = audioPlayer;
        }

        public override void clearState()
        {
            fuelAfter15Seconds = 0;
            averageUsagePerLap = 0;
            halfDistance = 0;
            playedHalfTankWarning = false;
            initialised = false;
            halfTime = 0;
            playedHalfTimeFuelEstimate = false;
            fuelUseWindow = new List<float>();
            gameTimeAtLastFuelWindowUpdate = 0;
            averageUsagePerMinute = 0;
            playedFiveMinutesRemaining = false;
            playedTenMinutesRemaining = false;
            playedTwoMinutesRemaining = false;
            currentFuel = -1;
            fuelUseActive = false;
        }

        public override bool isClipStillValid(string eventSubType)
        {
            return CommonData.isSessionRunning &&
                !((LapCounter)CrewChief.getEvent("LapCounter")).playedFinished;
        }

        override protected void triggerInternal(Shared lastState, Shared currentState)
        {
            if (CommonData.isRaceRunning && currentState.FuelUseActive == 1)
            {
                fuelUseActive = true;
                currentFuel = currentState.FuelLeft;
                // To get the initial fuel, wait for 15 seconds
                if (!initialised && currentState.Player.GameSimulationTime > 15)
                {
                    fuelUseWindow = new List<float>();
                    fuelAfter15Seconds = currentState.FuelLeft;
                    fuelUseWindow.Add(fuelAfter15Seconds);
                    gameTimeAtLastFuelWindowUpdate = currentState.Player.GameSimulationTime;
                    Console.WriteLine("Fuel after 15s = " + fuelAfter15Seconds);
                    initialised = true;
                    if (currentState.NumberOfLaps > 0)
                    {
                        halfDistance = currentState.NumberOfLaps / 2;
                    }
                    else
                    {
                        halfTime = CommonData.raceSessionLength / 2;
                        Console.WriteLine("Half time = " + halfTime);
                    }
                }
                if (CommonData.isNewLap && initialised && currentState.CompletedLaps > 0 && currentState.NumberOfLaps > 0)
                {
                    // completed a lap, so store the fuel left at this point:
                    fuelUseWindow.Insert(0, currentState.FuelLeft);
                    // if we've got fuelUseWindowLength + 1 samples (note we initialise the window data with fuelAt15Seconds so we always
                    // have one extra), get the average difference between each pair of values

                    // only do this if we have a full window of data + one extra start point
                    if (fuelUseWindow.Count > fuelUseWindowLength)
                    {
                        averageUsagePerLap = 0;
                        for (int i = 0; i < fuelUseWindowLength - 1; i++)
                        {
                            averageUsagePerLap += (fuelUseWindow[i + 1] - fuelUseWindow[i]);
                        }
                        averageUsagePerLap = averageUsagePerLap / fuelUseWindowLength;
                    }
                    else
                    {
                        averageUsagePerLap = (fuelAfter15Seconds - currentState.FuelLeft) / currentState.CompletedLaps;
                    }
                    int estimatedFuelLapsLeft = (int)Math.Floor(currentState.FuelLeft / averageUsagePerLap);
                    if (enableFuelMessages && currentState.CompletedLaps == halfDistance)
                    {
                        if (estimatedFuelLapsLeft < halfDistance && currentState.FuelLeft / fuelAfter15Seconds < 0.6)
                        {
                            audioPlayer.queueClip(folderHalfDistanceLowFuel, 0, this);
                        }
                        else
                        {
                            audioPlayer.queueClip(folderHalfDistanceGoodFuel, 0, this);
                        }
                    }
                    else if (enableFuelMessages && estimatedFuelLapsLeft == 4)
                    {
                        Console.WriteLine("4 laps fuel left, starting fuel = " + fuelAfter15Seconds +
                                ", current fuel = " + currentState.FuelLeft + ", usage per lap = " + averageUsagePerLap);
                        audioPlayer.queueClip(folderFourLapsEstimate, 0, this);
                    }
                    else if (enableFuelMessages && estimatedFuelLapsLeft == 3)
                    {
                        Console.WriteLine("3 laps fuel left, starting fuel = " + fuelAfter15Seconds +
                            ", current fuel = " + currentState.FuelLeft + ", usage per lap = " + averageUsagePerLap);
                        audioPlayer.queueClip(folderThreeLapsEstimate, 0, this);
                    }
                    else if (enableFuelMessages && estimatedFuelLapsLeft == 2)
                    {
                        Console.WriteLine("2 laps fuel left, starting fuel = " + fuelAfter15Seconds +
                            ", current fuel = " + currentState.FuelLeft + ", usage per lap = " + averageUsagePerLap);
                        audioPlayer.queueClip(folderTwoLapsEstimate, 0, this);
                    }
                    else if (enableFuelMessages && estimatedFuelLapsLeft == 1)
                    {
                        Console.WriteLine("1 lap fuel left, starting fuel = " + fuelAfter15Seconds +
                            ", current fuel = " + currentState.FuelLeft + ", usage per lap = " + averageUsagePerLap);
                        audioPlayer.queueClip(folderOneLapEstimate, 0, this);
                    }
                }
                else if(enableFuelMessages && initialised && currentState.NumberOfLaps < 0 && !playedHalfTimeFuelEstimate &&
                    currentState.SessionTimeRemaining <= halfTime && currentState.SessionTimeRemaining > halfTime - 30 &&
                    averageUsagePerMinute > 0)
                {
                    Console.WriteLine("Half race distance. Fuel in tank = " + currentState.FuelLeft + ", average usage per minute = " + averageUsagePerMinute);
                    playedHalfTimeFuelEstimate = true;
                    if (averageUsagePerMinute * halfTime / 60 > currentState.FuelLeft
                        && currentState.FuelLeft / fuelAfter15Seconds < 0.6)
                    {
                        audioPlayer.queueClip(folderHalfDistanceLowFuel, 0, this);
                    }
                    else
                    {
                        audioPlayer.queueClip(folderHalfDistanceGoodFuel, 0, this);
                    }
                }
                else if (initialised && currentState.NumberOfLaps < 0 && currentState.Player.GameSimulationTime > gameTimeAtLastFuelWindowUpdate + (60 * fuelUseSampleTime))
                {
                    // it's 2 minutes since the last fuel window check
                    gameTimeAtLastFuelWindowUpdate = currentState.Player.GameSimulationTime;
                    fuelUseWindow.Insert(0, currentState.FuelLeft);
                    // if we've got fuelUseWindowLength + 1 samples (note we initialise the window data with fuelAt15Seconds so we always
                    // have one extra), get the average difference between each pair of values

                    // only do this if we have a full window of data + one extra start point
                    if (fuelUseWindow.Count > fuelUseWindowLength)
                    {
                        averageUsagePerMinute = 0;
                        for (int i = 0; i < fuelUseWindowLength - 1; i++)
                        {
                            averageUsagePerMinute += (fuelUseWindow[i + 1] - fuelUseWindow[i]);
                        }
                        averageUsagePerMinute = averageUsagePerMinute / (fuelUseWindowLength * fuelUseSampleTime);
                    }
                    else
                    {
                        averageUsagePerMinute = 60 * (fuelAfter15Seconds - currentState.FuelLeft) / (float)gameTimeAtLastFuelWindowUpdate;
                    }
                    int estimatedFuelMinutesLeft = (int)Math.Floor(currentState.FuelLeft / averageUsagePerMinute);

                    if (enableFuelMessages && currentState.FuelLeft / averageUsagePerMinute < 2 && !playedTwoMinutesRemaining)
                    {
                        playedTwoMinutesRemaining = true;
                        playedFiveMinutesRemaining = true;
                        playedTenMinutesRemaining = true;
                        audioPlayer.queueClip(folderTwoMinutesFuel, 0, this);
                    }
                    else if (enableFuelMessages && currentState.FuelLeft / averageUsagePerMinute < 5 && !playedFiveMinutesRemaining)
                    {
                        playedFiveMinutesRemaining = true;
                        playedTenMinutesRemaining = true;
                        audioPlayer.queueClip(folderFiveMinutesFuel, 0, this);
                    }
                    else if (enableFuelMessages && currentState.FuelLeft / averageUsagePerMinute < 10 && !playedTenMinutesRemaining)
                    {
                        playedTenMinutesRemaining = true;
                        audioPlayer.queueClip(folderTenMinutesFuel, 0, this);
                    }
                }
                else if (enableFuelMessages && initialised && !playedHalfTankWarning && currentState.FuelLeft / fuelAfter15Seconds <= 0.50)
                {
                    // warning message for fuel left - these play as soon as the fuel reaches 1/2 tank left
                    playedHalfTankWarning = true;
                    audioPlayer.queueClip(folderHalfTankWarning, 0, this);
                }
            }
        }

        public override void respond(String voiceMessage)
        {
            Boolean haveData = false;
            if (initialised && currentFuel > -1)
            {
                if (averageUsagePerLap > 0)
                {
                    int lapsOfFuelLeft = (int)Math.Floor(currentFuel / averageUsagePerLap);
                    if (lapsOfFuelLeft > 60)
                    {
                        audioPlayer.openChannel();
                        audioPlayer.playClipImmediately(folderPlentyOfFuel, new QueuedMessage(0, this));
                        audioPlayer.closeChannel();
                    }
                    else
                    {
                        List<String> messages = new List<String>();
                        messages.Add(folderWeEstimate);
                        messages.Add(QueuedMessage.folderNameNumbersStub + lapsOfFuelLeft);
                        messages.Add(folderLapsRemaining);
                        audioPlayer.openChannel();
                        audioPlayer.playClipImmediately(QueuedMessage.compoundMessageIdentifier + "Fuel/estimate",
                            new QueuedMessage(messages, 0, this));
                        audioPlayer.closeChannel();
                    }                    
                    haveData = true;
                }
                else if (averageUsagePerMinute > 0)
                {
                    int minutesOfFuelLeft = (int)Math.Floor(currentFuel / averageUsagePerMinute);
                    if (minutesOfFuelLeft > 60) {
                        audioPlayer.openChannel();
                        audioPlayer.playClipImmediately(folderPlentyOfFuel, new QueuedMessage(0, this));
                        audioPlayer.closeChannel();
                    }
                    else 
                    {
                        List<String> messages = new List<String>();
                        messages.Add(folderWeEstimate);
                        messages.Add(QueuedMessage.folderNameNumbersStub + minutesOfFuelLeft);
                        messages.Add(folderMinutesRemaining);
                        audioPlayer.openChannel();
                        audioPlayer.playClipImmediately(QueuedMessage.compoundMessageIdentifier + "Fuel/estimate",
                            new QueuedMessage(messages, 0, this));
                        audioPlayer.closeChannel();
                    }                    
                    haveData = true;
                }
            }
            if (!haveData)
            {
                audioPlayer.openChannel();
                if (!fuelUseActive)
                {
                    audioPlayer.playClipImmediately(folderPlentyOfFuel, new QueuedMessage(0, this));
                }
                else
                {
                    audioPlayer.playClipImmediately(AudioPlayer.folderNoData, new QueuedMessage(0, this));
                }
                audioPlayer.closeChannel();
            }
        }
    }
}

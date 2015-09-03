using CrewChiefV2.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CrewChiefV2
{
    /**
     * Holds data used by all events. This is updated once per tick 
     */
    class CommonData
    {
        public static Boolean racingSameCarInFront;

        public static Boolean racingSameCarBehind;

        public static Boolean isNewLap;

        public static Boolean isNewSector;

        public static Boolean isNew;

        public static Boolean isRaceRunning;

        public static Boolean isQualifyRunning;

        public static Boolean isSessionRunning;

        public static Boolean isHotLapping;

        public static Boolean isLast;

        public static Boolean isLeading;

        public static float raceSessionLength;

        public static int minSessionLengthMinutes = 4;

        // note this will be -1 if we don't actually know what sector we're in
        public static int currentLapSector;

        public static Boolean sessionLengthSet;

        private static Boolean crossedLine;

        public static Boolean leaderHasFinishedRace;

        public static Boolean isPittingInRace;

        public static Boolean isInLap;

        public static Boolean isOutLap;

        public static int lapCountWhenEnteredPits;

        public static int raceStartPosition;

        public static int completedLaps;

        public static void clearState()
        {
            isNew = true;
            currentLapSector = -1;
            raceSessionLength = -1;
            isLast = false;
            isLeading = false;
            sessionLengthSet = false;
            racingSameCarInFront = false;
            racingSameCarBehind = false;
            isNewLap = false;
            isNewSector = false;
            isRaceRunning = false;
            isSessionRunning = false;
            isQualifyRunning = false;
            crossedLine = false;
            leaderHasFinishedRace = false;
            isPittingInRace = false;
            isInLap = false;
            isOutLap = false;
            lapCountWhenEnteredPits = -1;
            raceStartPosition = -1;
            isHotLapping = false;
            completedLaps = 0;
        }

        public static void setCommonStateData(Shared lastState, Shared currentState)
        {
            // only say it's a new lap if we crossed the line on the *previous* update
            isNewLap = isNew || crossedLine;
            if (isNewLap)
            {
                crossedLine = false;
            }
            else
            {
                crossedLine = currentState.CompletedLaps > 0 && currentState.CompletedLaps == completedLaps + 1;
                if (crossedLine)
                {
                    completedLaps = currentState.CompletedLaps;
                }                
            }
           
            if (currentState.SessionType == (int)Constant.Session.Race)
            {
                if (lastState.SessionPhase == (int)Constant.SessionPhase.Green && currentState.SessionPhase == (int)Constant.SessionPhase.Checkered)
                {
                    leaderHasFinishedRace = true;
                }
                if (leaderHasFinishedRace && crossedLine)
                {
                    isRaceRunning = false;
                    Console.WriteLine("Race finished, current position = " + currentState.Position + " laps completed = " + currentState.CompletedLaps);                    
                }
                else
                {
                    // looks weird, but the session doesn't end when the leader finishes. If it's green or checkered and we've not 
                    // crossed the line, the session is running. The session will be over when we cross the line, or when the phase gets
                    // set to 7 (Terminated)
                    isRaceRunning = currentState.SessionPhase == (int)Constant.SessionPhase.Green ||
                        currentState.SessionPhase == (int)Constant.SessionPhase.Checkered;
                }
                isSessionRunning = isRaceRunning;

                isPittingInRace = currentState.Player.GameSimulationTime > 60 && isRaceRunning &&
                    currentState.ControlType == (int)Constant.Control.AI && !leaderHasFinishedRace;
                if (isPittingInRace && currentState.CompletedLaps > lapCountWhenEnteredPits && !isInLap && !isOutLap)
                {
                    lapCountWhenEnteredPits = currentState.CompletedLaps;
                    isInLap = true;
                }

                isOutLap = currentState.CompletedLaps > 0 && currentState.CompletedLaps == lapCountWhenEnteredPits + 1;
                if (isOutLap && isInLap)
                {
                    isInLap = false;
                }
            }
            else
            {
                isSessionRunning = currentState.SessionPhase == (int)Constant.SessionPhase.Green;
                isQualifyRunning = isSessionRunning && currentState.SessionType == (int)Constant.Session.Qualify;
                // yuk... 1 or 2 cars in qual => hot lapping - one for the player, one for the ghost :(
                isHotLapping = currentState.SessionType == (int)Constant.Session.Qualify && currentState.NumCars <= 2;
            }   

            if (isNewLap)
            {
                Console.WriteLine("New lap, session state is " + currentState.SessionPhase + 
                    ", completedLaps = " + currentState.CompletedLaps + ", position = " + currentState.Position);
            }

            int lastSector = currentLapSector;
            if (isNewLap)
            {
                currentLapSector = 1;
            }
            else if (currentLapSector == 1 &&
                lastState.SectorTimeDeltaSelf.Sector1 != currentState.SectorTimeDeltaSelf.Sector1)
            {
                currentLapSector = 2;
            }
            else if (currentLapSector == 2 &&
                lastState.SectorTimeDeltaSelf.Sector2 != currentState.SectorTimeDeltaSelf.Sector2)
            {
                currentLapSector = 3;
            }
            isNewSector = currentLapSector != lastSector;

            isLast = currentState.Position == currentState.NumCars;
            isLeading = currentState.Position == 1;

            if (!sessionLengthSet && isRaceRunning &&
                currentState.SessionTimeRemaining > 0 && lastState.SessionTimeRemaining > 0 &&
                currentState.SessionTimeRemaining < lastState.SessionTimeRemaining)
            {
                // the session has started
                // round to the nearest minute
                TimeSpan sessionTimespan = TimeSpan.FromSeconds(currentState.SessionTimeRemaining + 10);
                raceSessionLength = sessionTimespan.Minutes * 60;
                if (raceSessionLength > minSessionLengthMinutes)
                {
                    // if the session length is < minSessionLengthMInutes, ignore it
                    Console.WriteLine("setting race session length to " + (raceSessionLength / 60));
                    sessionLengthSet = true;                    
                }               
            }

            if (isRaceRunning)
            {
                if (lastState.NumCars == currentState.NumCars)
                {
                    racingSameCarInFront = lastState.Position == currentState.Position;
                    racingSameCarBehind = lastState.Position == currentState.Position;
                }
                else
                {
                    // someone's dropped out of the race so see if it's the car immediately in front or behind
                    if (currentState.Position == 1)
                    {
                        racingSameCarInFront = false;
                    }
                    if (currentState.Position == currentState.NumCars)
                    {
                        racingSameCarBehind = false;
                    }
                    if (currentState.Position > 1)
                    {
                        // we're not first. We don't care what position we're in here (2 or more cars could have
                        // dropped out) - we just want to know if the car immediately in front or behind as dropped out.
                        // To test this we see if the gap has changed by more than the time interval - if the car in front 
                        // has stopped completely we'd catch him in a single time interval. If the gap change is larger than
                        // a single time interval he must have disappeared. He might still have dropped out, but the next 
                        // car is very close to us - can't detect this but it shouldn't be a major issue.
                        racingSameCarInFront = Math.Abs(currentState.TimeDeltaFront - lastState.TimeDeltaFront) * 1000 <
                            CrewChief._timeInterval.Milliseconds;
                    }
                    if (currentState.Position < currentState.NumCars)
                    {
                        racingSameCarBehind = Math.Abs(currentState.TimeDeltaBehind - lastState.TimeDeltaBehind) * 1000 <
                            CrewChief._timeInterval.Milliseconds;
                    }
                }
            }
        }
    }
}

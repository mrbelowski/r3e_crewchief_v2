using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

/**
 * Holds all the data collected from the memory mapped file for the current tick
 */
namespace CrewChiefV2
{
    enum SessionType
    {
        Unavailable, Practice, Qualify, Race, HotLap
    }
    enum SessionPhase
    {
        Unavailable, Garage, Gridwalk, Formation, Countdown, Green, Checkered, Finished
    }

    class TransmissionData
    {
        // -2 = no data
        // -1 = reverse,
        //  0 = neutral
        //  1 = first gear
        // (... up to 7th)
        public Int32 Gear;

        public Single TransmissionDamage;
    }

    class EngineData
    {
        // Engine speed
        // Unit: Radians per second (rad/s)
        public Single EngineRps;

        // Maximum engine speed
        // Unit: Radians per second (rad/s)
        public Single MaxEngineRps;

        // Unit: Kelvin (K)
        public Single EngineWaterTemp;

        // Unit: Kelvin (K)
        public Single EngineOilTemp;

        // Unit: Kilopascals (KPa)
        public Single EngineOilPressure;
    }

    class SessionData
    {
        public Int32 EventIndex;

        public SessionType SessionType;

        public SessionPhase SessionPhase;

        public Int32 SessionIteration;
    }

    class FuelData
    {
        // Unit: Kilopascals (KPa)
        public Single FuelPressure;

        // Current amount of fuel in the tank(s)
        // Unit: Liters (l)
        public Single FuelLeft;

        // Maximum capacity of fuel tank(s)
        // Unit: Liters (l)
        public Single FuelCapacity;
    }

    class GameStateData
    {
        EngineData engineData;

        TransmissionData transmissionData;

        FuelData fuelData;
        
        // Unit: Meter per second (m/s)
        public Single CarSpeed;

        // Total number of laps in the race, or -1 if player is not in race mode (practice, test mode, etc.)
        public Int32 NumberOfLaps;

        // How many laps the player has completed. If this value is 6, the player is on his 7th lap. -1 = n/a
        public Int32 CompletedLaps;

        // Unit: Seconds (-1.0 = none)
        public Single LapTimeBest;

        // Unit: Seconds (-1.0 = none)
        public Single LapTimePrevious;

        // Unit: Seconds (-1.0 = none)
        public Single LapTimeCurrent;

        // Current position (1 = first place)
        public Int32 Position;

        // Number of cars (including the player) in the race
        public Int32 NumCars;



        
        // Number of penalties pending for the player
        public Int32 NumPenalties;
        
        // -1 = no data for DRS
        //  0 = not available
        //  1 = available
        public Int32 DrsAvailable;

        // -1 = no data for DRS
        //  0 = not engaged
        //  1 = engaged
        public Int32 DrsEngaged;
        
       

        // ...
        public Int32 ControlType;

        // ...
        public Single ThrottlePedal;

        // ...
        public Single BrakePedal;

        // ...
        public Single ClutchPedal;

        // ...
        public Single BrakeBias;

        // ...
        public Int32 TireWearActive;

        // ...
        public Int32 TireType;

        // -1 = no data
        //  0 = not active
        //  1 = active
        public Int32 FuelUseActive;

        // ...
        public Single SessionTimeRemaining;

        // ...
        public Single LapTimeBestLeader;

        // ...
        public Single LapTimeBestLeaderClass;

        // ...
        public Single LapTimeDeltaSelf;

        // ...
        public Single LapTimeDeltaLeader;

        // ...
        public Single LapTimeDeltaLeaderClass;

        // ...
        public Single TimeDeltaFront;

        // ...
        public Single TimeDeltaBehind;

        // ...
        public Int32 PitWindowStatus;

        // The minute/lap into which you're allowed/obligated to pit
        // Unit: Minutes in time-based sessions, otherwise lap
        public Int32 PitWindowStart;

        // The minute/lap into which you can/should pit
        // Unit: Minutes in time based sessions, otherwise lap
        public Int32 PitWindowEnd;

        // Total number of cut track warnings
        public Int32 CutTrackWarnings;
    }
}

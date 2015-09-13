using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CrewChiefV2.GameState;

/**
 * Maps memory mapped file to a local game-agnostic representation.
 */
namespace CrewChiefV2.PCars
{
    class PCarsGameStateMapper : GameStateMapper
    {
        private static uint expectedVersion = 5;

        private float trivialDamageThreshold = 0.1f;
        private float minorDamageThreshold = 0.3f;
        private float severeDamageThreshold = 0.7f;
        private float destroyedDamageThreshold = 0.99f;

        private float scrubbedTyreWearPercent = 5f;
        private float minorTyreWearPercent = 30f;
        private float majorTyreWearPercent = 50f;
        private float wornOutTyreWearPercent = 90f;    

        private GameStateData currentGameState = null;

        private GameStateData previousGameState = null;

        private TimeSpan minimumSessionParticipationTime = TimeSpan.FromSeconds(6);

        public void versionCheck(Object memoryMappedFileStruct)
        {
            uint currentVersion = ((pCarsAPIStruct)memoryMappedFileStruct).mVersion;
            if (currentVersion != expectedVersion)
            {
                throw new SharedMemoryReadException("Expected shared data version " + expectedVersion + " but got version " + currentVersion);
            }
        }
        
        /**
         * Creates session data which are valid for the entire session (even if this session has multiple iterations).
         * Note that we may need to update these constants during a session if something happens in that session which 
         * changes its run time, or whatever.
         */
        public SessionConstants getSessionConstants(Object memoryMappedFileStruct)
        {
            pCarsAPIStruct shared = (pCarsAPIStruct)memoryMappedFileStruct;
            SessionConstants sessionConstants = new SessionConstants();            
            // zero indexed in our local data but 1 indexed in R3E
            sessionConstants.SessionType = mapToSessionType(shared.mSessionState);
            if (shared.mEventTimeRemaining > 0)
            {
                sessionConstants.SessionRunTime = shared.mEventTimeRemaining;
            }
            sessionConstants.SessionNumberOfLaps = (int)shared.mLapsInEvent;
            return sessionConstants;
        }

        public void mapToGameStateData(Object memoryMappedFileStruct, SessionConstants sessionConstants)
        {            
            previousGameState = currentGameState;
            currentGameState = new GameStateData();
            pCarsAPIStruct shared = (pCarsAPIStruct)memoryMappedFileStruct;
            
            if (shared.mViewedParticipantIndex > -1)
            {
                pCarsAPIParticipantStruct viewedParticipant = shared.mParticipantData[shared.mViewedParticipantIndex];
                if (sessionConstants != null)
                {
                    currentGameState.SessionData.SessionPhase = mapToSessionPhase(sessionConstants.SessionType, shared.mSessionState, shared.mRaceState);
                    if (sessionConstants.SessionRunTime > 0)
                    {
                        currentGameState.SessionData.SessionRunningTime = sessionConstants.SessionRunTime - shared.mEventTimeRemaining;
                    }
                    else
                    {
                        currentGameState.SessionData.SessionRunningTime = (float)(DateTime.Now - sessionConstants.SessionStartTime).TotalSeconds;
                    }
                }
                
                // session phase - if the phase has changed we'll need to update the session constants
                SessionPhase lastSessionPhase = SessionPhase.Unavailable;
                float lastSessionRunningTime = 0;
                if (previousGameState != null)
                {
                    lastSessionPhase = previousGameState.SessionData.SessionPhase;
                    lastSessionRunningTime = previousGameState.SessionData.SessionRunningTime;
                }
                if ((lastSessionPhase != currentGameState.SessionData.SessionPhase && (lastSessionPhase == SessionPhase.Unavailable || lastSessionPhase == SessionPhase.Finished)) ||
                    lastSessionRunningTime > currentGameState.SessionData.SessionRunningTime)
                {
                    Console.WriteLine("New session");
                    currentGameState.SessionData.IsNewSession = true;        
            
                    // new session phase so collect up the opponent data
                    // Opponent data
                    int opponentSlotId = 0;
                    foreach (pCarsAPIParticipantStruct participantStruct in shared.mParticipantData)
                    {
                        if (participantStruct.mIsActive)
                        {
                            if (shared.mViewedParticipantIndex != opponentSlotId)
                            {
                                if (currentGameState.OpponentData.ContainsKey(opponentSlotId))
                                {
                                    upateOpponentData(currentGameState.OpponentData[opponentSlotId], participantStruct.mRacePosition, participantStruct.mCurrentLap,
                                        participantStruct.mCurrentSector, participantStruct.mCurrentLapDistance, false);
                                }
                                else
                                {
                                    currentGameState.OpponentData.Add(opponentSlotId, createOpponentData(participantStruct));
                                }
                            }
                            opponentSlotId++;
                        }
                    }
                    Console.WriteLine("Got driver names:");
                    Console.WriteLine(String.Join("; ", currentGameState.getOpponentLastNames()));
                }
                
                //------------------- Session data ---------------------------
                currentGameState.SessionData.Position = (int)viewedParticipant.mRacePosition;
                currentGameState.SessionData.CompletedLaps = (int)viewedParticipant.mLapsCompleted;
                currentGameState.SessionData.SectorNumber = (int)viewedParticipant.mCurrentSector;
                if (previousGameState == null || currentGameState.SessionData.SectorNumber != previousGameState.SessionData.SectorNumber)
                {
                    currentGameState.SessionData.IsNewSector = true;
                }               
                currentGameState.SessionData.CompletedLaps = (int)viewedParticipant.mLapsCompleted;
                currentGameState.SessionData.Position = (int)viewedParticipant.mRacePosition;
                currentGameState.SessionData.NumCars = shared.mNumParticipants;
                currentGameState.SessionData.CurrentLapIsValid = !shared.mLapInvalidated;
                
                currentGameState.SessionData.IsNewLap = previousGameState == null || viewedParticipant.mLapsCompleted == previousGameState.SessionData.CompletedLaps - 1;
                if (currentGameState.SessionData.IsNewLap)
                {
                    currentGameState.SessionData.PreviousLapWasValid = previousGameState != null && previousGameState.SessionData.CurrentLapIsValid;
                }
                else if (previousGameState != null)
                {
                    currentGameState.SessionData.PreviousLapWasValid = previousGameState.SessionData.PreviousLapWasValid;
                }
                currentGameState.SessionData.IsNewSector = previousGameState == null || viewedParticipant.mCurrentSector != previousGameState.SessionData.SectorNumber;
                currentGameState.SessionData.SectorNumber = (int)viewedParticipant.mCurrentSector;

                currentGameState.SessionData.IsRacingSameCarBehind = previousGameState != null && previousGameState.getOpponentIdBehind() == currentGameState.getOpponentIdBehind();
                currentGameState.SessionData.IsRacingSameCarInFront = previousGameState != null && previousGameState.getOpponentIdInFront() == currentGameState.getOpponentIdInFront();

                currentGameState.SessionData.LapTimeBest = shared.mPersonalFastestLapTime;
                currentGameState.SessionData.LapTimeBestLeader = shared.mSessionFastestLapTime;
                currentGameState.SessionData.LapTimePrevious = shared.mLastLapTime;
                currentGameState.SessionData.LapTimeCurrent = shared.mCurrentTime;
                currentGameState.SessionData.LapTimeDeltaSelf = shared.mLastLapTime - shared.mSessionFastestLapTime;
                currentGameState.SessionData.LapTimeDeltaLeader = shared.mLastLapTime - shared.mSessionFastestLapTime; // is this appropriate?
                currentGameState.SessionData.TimeDeltaBehind = shared.mSplitTimeBehind;
                currentGameState.SessionData.TimeDeltaFront = shared.mSplitTimeAhead;
                // is this right??
                currentGameState.SessionData.LeaderHasFinishedRace = shared.mHighestFlagColour == (int) eFlagColors.FLAG_COLOUR_CHEQUERED;
                

                //TODO...
                currentGameState.SessionData.HasParticipatedInPreviousSession = false;


                currentGameState.PitData.InPitlane = shared.mPitMode == (int)ePitMode.PIT_MODE_DRIVING_INTO_PITS ||
                    shared.mPitMode == (int)ePitMode.PIT_MODE_IN_PIT ||
                    shared.mPitMode == (int)ePitMode.PIT_MODE_DRIVING_OUT_OF_PITS ||
                    shared.mPitMode == (int)ePitMode.PIT_MODE_IN_GARAGE;
                currentGameState.PitData.IsAtPitExit = previousGameState != null && previousGameState.PitData.InPitlane && !currentGameState.PitData.InPitlane;
                if (currentGameState.PitData.IsAtPitExit)
                {
                    int lapCount = currentGameState.SessionData.CompletedLaps - 1;
                    if (lapCount < 0)
                    {
                        lapCount = 0;
                    }
                    currentGameState.PitData.LapCountWhenLastEnteredPits = lapCount;
                }
                else if (previousGameState != null)
                {
                    currentGameState.PitData.LapCountWhenLastEnteredPits = previousGameState.PitData.LapCountWhenLastEnteredPits;
                }

                if (shared.mPitMode == (int)ePitMode.PIT_MODE_DRIVING_INTO_PITS)
                {
                    currentGameState.PitData.OnInLap = true; 
                    currentGameState.PitData.OnOutLap = false;
                }
                else if (shared.mPitMode == (int)ePitMode.PIT_MODE_DRIVING_OUT_OF_PITS)
                {
                    currentGameState.PitData.OnInLap = false;
                    currentGameState.PitData.OnOutLap = true;
                }
                else if (currentGameState.SessionData.IsNewLap)
                {
                    currentGameState.PitData.OnInLap = false;
                    currentGameState.PitData.OnOutLap = false;
                }
                else if (previousGameState != null)
                {
                    currentGameState.PitData.OnInLap = previousGameState.PitData.OnInLap;
                    currentGameState.PitData.OnOutLap = previousGameState.PitData.OnOutLap;
                }
                
                currentGameState.CarDamageData.DamageEnabled = true;    // no way to tell if it's disabled from the shared memory
                currentGameState.CarDamageData.OverallAeroDamage = mapToDamageLevel(shared.mAeroDamage);
                currentGameState.CarDamageData.OverallEngineDamage = mapToDamageLevel(shared.mEngineDamage);
                currentGameState.CarDamageData.OverallTransmissionDamage = DamageLevel.UNKNOWN;
                currentGameState.CarDamageData.LeftFrontSuspensionDamage = mapToDamageLevel(shared.mSuspensionDamage[0]);
                currentGameState.CarDamageData.RightFrontSuspensionDamage = mapToDamageLevel(shared.mSuspensionDamage[1]);
                currentGameState.CarDamageData.LeftRearSuspensionDamage = mapToDamageLevel(shared.mSuspensionDamage[2]);
                currentGameState.CarDamageData.RightRearSuspensionDamage = mapToDamageLevel(shared.mSuspensionDamage[3]);

                currentGameState.EngineData.EngineOilPressure = shared.mOilPressureKPa; // todo: units
                currentGameState.EngineData.EngineOilTemp = shared.mOilTempCelsius;
                currentGameState.EngineData.EngineWaterTemp = shared.mWaterTempCelsius;
                currentGameState.EngineData.EngineRpm = shared.mRPM;
                currentGameState.EngineData.MaxEngineRpm = shared.mMaxRPM;

                currentGameState.FuelData.FuelCapacity = shared.mFuelCapacity;
                currentGameState.FuelData.FuelLeft = shared.mFuelLevel;
                currentGameState.FuelData.FuelPressure = shared.mFuelPressureKPa;
                currentGameState.FuelData.FuelUseActive = true;         // no way to tell if it's disabled

                currentGameState.PenaltiesData.HasDriveThrough = shared.mPitSchedule == (int)ePitSchedule.PIT_SCHEDULE_DRIVE_THROUGH;
                currentGameState.PenaltiesData.HasStopAndGo = shared.mPitSchedule == (int)ePitSchedule.PIT_SCHEDULE_STOP_GO;

                currentGameState.PositionAndMotionData.CarSpeed = shared.mSpeed;
                currentGameState.PositionAndMotionData.DistanceRoundTrack = viewedParticipant.mCurrentLapDistance;

                //------------------------ Tyre data -----------------------          
                currentGameState.TyreData.HasMatchedTyreTypes = true;
                currentGameState.TyreData.TireWearActive = true;
                TyreType tyreType = TyreType.Unknown;

                currentGameState.TyreData.FrontLeft_CenterTemp = shared.mTyreTreadTemp[0] - 273;
                currentGameState.TyreData.FrontLeft_LeftTemp = shared.mTyreTreadTemp[0] - 273;
                currentGameState.TyreData.FrontLeft_RightTemp = shared.mTyreTreadTemp[0] - 273;
                currentGameState.TyreData.FrontLeftTyreType = tyreType;
                currentGameState.TyreData.FrontLeftPressure = -1; // not in the block
                currentGameState.TyreData.FrontLeftPercentWear = shared.mTyreWear[0] * 100;
                currentGameState.TyreData.FrontLeftCondition = getTyreCondition(currentGameState.TyreData.FrontLeftPercentWear);

                currentGameState.TyreData.FrontRight_CenterTemp = shared.mTyreTreadTemp[1] - 273;
                currentGameState.TyreData.FrontRight_LeftTemp = shared.mTyreTreadTemp[1] - 273;
                currentGameState.TyreData.FrontRight_RightTemp = shared.mTyreTreadTemp[1] - 273;
                currentGameState.TyreData.FrontRightTyreType = tyreType;
                currentGameState.TyreData.FrontRightPressure = -1; // not in the block
                currentGameState.TyreData.FrontRightPercentWear = shared.mTyreWear[1] * 100;
                currentGameState.TyreData.FrontRightCondition = getTyreCondition(currentGameState.TyreData.FrontRightPercentWear);

                currentGameState.TyreData.RearLeft_CenterTemp = shared.mTyreTreadTemp[2] - 273;
                currentGameState.TyreData.RearLeft_LeftTemp = shared.mTyreTreadTemp[2] - 273;
                currentGameState.TyreData.RearLeft_RightTemp = shared.mTyreTreadTemp[2] - 273;
                currentGameState.TyreData.RearLeftTyreType = tyreType;
                currentGameState.TyreData.RearLeftPressure = -1; // not in the block
                currentGameState.TyreData.RearLeftPercentWear = shared.mTyreWear[2] * 100;
                currentGameState.TyreData.RearLeftCondition = getTyreCondition(currentGameState.TyreData.RearLeftPercentWear);

                currentGameState.TyreData.RearRight_CenterTemp = shared.mTyreTreadTemp[3] - 273;
                currentGameState.TyreData.RearRight_LeftTemp = shared.mTyreTreadTemp[3] - 273;
                currentGameState.TyreData.RearRight_RightTemp = shared.mTyreTreadTemp[3] - 273;
                currentGameState.TyreData.RearRightTyreType = tyreType;
                currentGameState.TyreData.RearRightPressure = -1; // not in the block
                currentGameState.TyreData.RearRightPercentWear = shared.mTyreWear[3] * 100;
                currentGameState.TyreData.RearRightCondition = getTyreCondition(currentGameState.TyreData.RearRightPercentWear);
            }
        }

        private DamageLevel mapToDamageLevel(float damage)
        {
            if (damage >= destroyedDamageThreshold)
            {
                return DamageLevel.DESTROYED;
            } 
            else if (damage >= severeDamageThreshold)
            {
                return DamageLevel.MAJOR;
            } 
            else if (damage >= minorDamageThreshold)
            {
                return DamageLevel.MINOR;
            } 
            else if (damage >= trivialDamageThreshold)
            {
                return DamageLevel.TRIVIAL;
            } 
            else
            {
                return DamageLevel.NONE;
            }
        }

        private void upateOpponentData(OpponentData opponentData, uint position, uint completedLaps, uint sector, float distanceRoundTrack, Boolean isPitting)
        {
            opponentData.IsPitting = isPitting;
            opponentData.Position = (int)position;
            opponentData.SectorNumber = (int)sector;
            opponentData.DistanceRoundTrack = distanceRoundTrack;
            opponentData.CompletedLaps = (int)completedLaps;
        }

        private OpponentData createOpponentData(pCarsAPIParticipantStruct participantStruct)
        {
            OpponentData opponentData = new OpponentData();
            opponentData.DistanceRoundTrack = participantStruct.mCurrentLapDistance;
            String driverName = participantStruct.mName;
            String[] names = driverName.Split(' ');
            if (names.Length == 1) {
                opponentData.DriverFirstName = names[0];
                opponentData.DriverLastName = names[0];
            }
            else if (names.Length == 2) {
                opponentData.DriverFirstName = names[0];
                opponentData.DriverLastName = names[1];
            }
            else if (names.Length > 2) {
                // this is going to fail badly when the first name has a space in it. But we either fail
                // for names like "john paul smith", or fail for names like "dick van dyke", can't work both ways
                opponentData.DriverFirstName = driverName.Substring(0, driverName.IndexOf(" "));
                opponentData.DriverLastName = driverName.Substring(driverName.IndexOf(" ") + 1);
            }
            opponentData.Position = (int)participantStruct.mRacePosition;
            opponentData.CompletedLaps = (int)participantStruct.mLapsCompleted;
            opponentData.SectorNumber = (int)participantStruct.mCurrentSector;
            return opponentData;
        }

        /*
         * Race state changes - start race, skip practice to end of session, then into race:
         * 
         * pre race practice initial - sessionState = SESSION_TEST, raceState = not started 
         * pre race practice after pit exit - sessionState = SESSION_TEST, raceState = racing
         * skip to end - sessionState = SESSION_TEST, raceState = not started 
         * load race - sessionState = NO_SESSION, raceState = not started 
         * grid walk - sessionState = SESSION_RACE, raceState = racing
         * 
         * TODO: other session types. The "SESSION_TEST" above is actually the warmup. Presumably
         * an event with prac -> qual -> warmup -> race would use SESSION_PRACTICE
         * */
        private SessionType mapToSessionType(uint sessionState)
        {
            if (sessionState == (uint)eSessionState.SESSION_RACE || sessionState == (uint)eSessionState.SESSION_FORMATIONLAP)
            {
                return SessionType.Race;
            }
            else if (sessionState == (uint)eSessionState.SESSION_PRACTICE || sessionState == (uint)eSessionState.SESSION_TEST)
            {
                return SessionType.Practice;
            } 
            else if (sessionState == (uint)eSessionState.SESSION_QUALIFY)
            {
                return SessionType.Qualify;
            }
            else if (sessionState == (uint)eSessionState.SESSION_TIME_ATTACK)
            {
                return SessionType.HotLap;
            }
            else
            {
                return SessionType.Unavailable;
            }
        }

        private SessionPhase mapToSessionPhase(SessionType sessionType, uint sessionState, uint raceState)
        {
            if (sessionType == SessionType.Race)
            {
                if (raceState == (uint)eRaceState.RACESTATE_NOT_STARTED)
                {
                    if (sessionState == (uint)eSessionState.SESSION_FORMATIONLAP)
                    {
                        return SessionPhase.Formation;
                    }
                    else
                    {
                        return SessionPhase.Countdown;
                    }
                }
                else if (raceState == (uint)eRaceState.RACESTATE_RACING)
                {
                    return SessionPhase.Green;
                }
                else if (raceState == (uint)eRaceState.RACESTATE_FINISHED ||
                    raceState == (uint)eRaceState.RACESTATE_DNF ||
                    raceState == (uint)eRaceState.RACESTATE_DISQUALIFIED ||
                    raceState == (uint)eRaceState.RACESTATE_RETIRED)
                {
                    return SessionPhase.Checkered;
                }
                else if (raceState == (uint)eRaceState.RACESTATE_INVALID ||
                   raceState == (uint)eRaceState.RACESTATE_MAX)
                {
                    return SessionPhase.Finished;
                }
            }
            else if (sessionType == SessionType.Practice || sessionType == SessionType.Qualify)
            {
                if (raceState == (uint)eRaceState.RACESTATE_NOT_STARTED)
                {
                    return SessionPhase.Garage;
                } else if (raceState == (uint)eRaceState.RACESTATE_RACING)
                {
                    return SessionPhase.Green;
                }
                else if (raceState == (uint)eRaceState.RACESTATE_FINISHED ||
                   raceState == (uint)eRaceState.RACESTATE_DNF ||
                   raceState == (uint)eRaceState.RACESTATE_DISQUALIFIED ||
                   raceState == (uint)eRaceState.RACESTATE_RETIRED)
                {
                    return SessionPhase.Checkered;
                }
                else if (raceState == (uint)eRaceState.RACESTATE_INVALID ||
                   raceState == (uint)eRaceState.RACESTATE_MAX)
                {
                    return SessionPhase.Finished;
                } 
            }
            return SessionPhase.Unavailable;
        }

        public GameStateData getCurrentGameState()
        {
            return currentGameState;
        }

        public GameStateData getPreviousGameState()
        {
            return previousGameState;
        }

        private TyreCondition getTyreCondition(float percentWear)
        {
            if (percentWear <= -1)
            {
                return TyreCondition.UNKNOWN;
            }
            if (percentWear >= wornOutTyreWearPercent)
            {
                return TyreCondition.WORN_OUT;
            }
            else if (percentWear >= majorTyreWearPercent)
            {
                return TyreCondition.MAJOR_WEAR;
            }
            if (percentWear >= minorTyreWearPercent)
            {
                return TyreCondition.MINOR_WEAR;
            }
            if (percentWear >= scrubbedTyreWearPercent)
            {
                return TyreCondition.SCRUBBED;
            }
            else
            {
                return TyreCondition.NEW;
            }
        }
    }
}

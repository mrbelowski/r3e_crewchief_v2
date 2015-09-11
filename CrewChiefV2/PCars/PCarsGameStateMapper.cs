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

                //------------------- Session data ---------------------------
                currentGameState.SessionData.Position = (int)viewedParticipant.mRacePosition;
                currentGameState.SessionData.CompletedLaps = (int)viewedParticipant.mLapsCompleted;
                currentGameState.SessionData.SectorNumber = (int)viewedParticipant.mCurrentSector;
                if (previousGameState == null || currentGameState.SessionData.SectorNumber != previousGameState.SessionData.SectorNumber)
                {
                    currentGameState.SessionData.IsNewSector = true;
                }
                currentGameState.SessionData.SessionPhase = mapToSessionPhase(shared.mSessionState, shared.mRaceState);
                if (sessionConstants != null)
                {
                    if (sessionConstants.SessionRunTime > 0)
                    {
                        currentGameState.SessionData.SessionRunningTime = sessionConstants.SessionRunTime - shared.mEventTimeRemaining;
                    }
                    else
                    {
                        currentGameState.SessionData.SessionRunningTime = (float)(sessionConstants.SessionStartTime - DateTime.Now).TotalSeconds;
                    }
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

                //TODO...
                currentGameState.SessionData.HasParticipatedInPreviousSession = false;
                currentGameState.SessionData.IsNewSession = false;


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


                currentGameState.CarDamageData.DamageEnabled = true;
                currentGameState.CarDamageData.OverallAeroDamage = mapToDamageLevel(shared.mAeroDamage);
                currentGameState.CarDamageData.OverallEngineDamage = mapToDamageLevel(shared.mEngineDamage);
                currentGameState.CarDamageData.OverallTransmissionDamage = DamageLevel.UNKNOWN;
                currentGameState.CarDamageData.LeftFrontSuspensionDamage = mapToDamageLevel(shared.mSuspensionDamage[0]);
                currentGameState.CarDamageData.RightFrontSuspensionDamage = mapToDamageLevel(shared.mSuspensionDamage[1]);
                currentGameState.CarDamageData.LeftRearSuspensionDamage = mapToDamageLevel(shared.mSuspensionDamage[2]);
                currentGameState.CarDamageData.RightRearSuspensionDamage = mapToDamageLevel(shared.mSuspensionDamage[3]);
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

        private SessionPhase mapToSessionPhase(uint sessionState, uint raceState)
        {
            if (raceState == (uint)eRaceState.RACESTATE_NOT_STARTED)
            {
                if (sessionState == (uint)eSessionState.SESSION_FORMATIONLAP)
                {
                    return SessionPhase.Formation;
                } else 
                {
                    return SessionPhase.Countdown;
                }
            }
            else if (raceState == (uint)eRaceState.RACESTATE_RACING)
            {
                return SessionPhase.Green;
            }
            else
            {
                return SessionPhase.Unavailable;
            }
        }

        public GameStateData getCurrentGameState()
        {
            return currentGameState;
        }

        public GameStateData getPreviousGameState()
        {
            return previousGameState;
        }
    }
}

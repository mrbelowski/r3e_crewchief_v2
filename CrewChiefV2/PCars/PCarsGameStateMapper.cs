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
        private GameStateData currentGameState = null;

        private GameStateData previousGameState = null;

        private TimeSpan minimumSessionParticipationTime = TimeSpan.FromSeconds(6);
        
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
            return sessionConstants;
        }

        public void mapToGameStateData(Object memoryMappedFileStruct, SessionConstants sessionConstants)
        {
            previousGameState = currentGameState;
            currentGameState = new GameStateData();
            pCarsAPIStruct shared = (pCarsAPIStruct)memoryMappedFileStruct;
            foreach (pCarsAPIParticipantStruct playerData in shared.mParticipantData)
            {
                if (playerData.mIsActive)
                {
                    // this is the current player?
                    currentGameState.SessionData.Position = (int)playerData.mRacePosition;
                    currentGameState.SessionData.CompletedLaps = (int)playerData.mLapsCompleted;
                    currentGameState.SessionData.SectorNumber = (int)playerData.mCurrentSector;
                    if (previousGameState == null || currentGameState.SessionData.SectorNumber != previousGameState.SessionData.SectorNumber)
                    {
                        currentGameState.SessionData.IsNewSector = true;
                    }
                }
            }
            currentGameState.SessionData.SessionPhase = mapToSessionPhase(shared.mSessionState, shared.mRaceState);
            if (sessionConstants != null)
            {
                currentGameState.SessionData.SessionRunningTime = (float)(DateTime.Now - sessionConstants.SessionStartTime).TotalSeconds;
            }
        }

        private SessionType mapToSessionType(uint sessionState)
        {
            if (sessionState == (uint)eSessionState.SESSION_RACE)
            {
                return SessionType.Race;
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

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
            
            return sessionConstants;
        }

        public void mapToGameStateData(Object memoryMappedFileStruct)
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

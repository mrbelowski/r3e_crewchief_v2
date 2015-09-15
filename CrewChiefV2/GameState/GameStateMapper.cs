using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CrewChiefV2.GameState
{
    interface GameStateMapper
    {
        void mapToGameStateData(Object memoryMappedFileStruct, SessionConstants sessionConstants, Boolean isNewSession);

        SessionConstants getSessionConstants(Object memoryMappedFileStruct);

        Boolean isSessionFinished(Object memoryMappedFileStruct, SessionConstants currentSessionConstants, GameStateData currentGameState);

        void versionCheck(Object memoryMappedFileStruct);

        void discardCurrentGameState();

        GameStateData getCurrentGameState();

        GameStateData getPreviousGameState();
    }
}

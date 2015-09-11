using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CrewChiefV2.GameState
{
    interface GameStateMapper
    {
        void mapToGameStateData(Object memoryMappedFileStruct, SessionConstants sessionConstants);

        SessionConstants getSessionConstants(Object memoryMappedFileStruct);

        void versionCheck(Object memoryMappedFileStruct);

        GameStateData getCurrentGameState();

        GameStateData getPreviousGameState();
    }
}

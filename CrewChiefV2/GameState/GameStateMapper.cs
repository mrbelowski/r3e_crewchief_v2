﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CrewChiefV2.GameState
{
    interface GameStateMapper
    {
        void mapToGameStateData(Object memoryMappedFileStruct);

        SessionConstants getSessionConstants(Object memoryMappedFileStruct);

        GameStateData getCurrentGameState();

        GameStateData getPreviousGameState();
    }
}

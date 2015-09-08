using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

/**
 * Maps memory mapped file to a local game-agnostic representation.
 */
namespace CrewChiefV2
{
    class R3EGameStateMapper : GameStateMapper
    {
        public GameStateData mapToGameStateData(Object memoryMappedFileStruct)
        {
            Data.Shared shared = (Data.Shared)memoryMappedFileStruct;

        }
    }
}

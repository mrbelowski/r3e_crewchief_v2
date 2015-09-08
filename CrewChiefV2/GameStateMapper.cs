using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CrewChiefV2
{
    interface GameStateMapper
    {
        GameStateData mapToGameStateData(Object memoryMappedFileStruct);
    }
}

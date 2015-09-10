using CrewChiefV2.GameState;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CrewChiefV2
{
    public enum GameEnum
    {
        RACE_ROOM, PCARS_64BIT, PCARS_32BIT
    }
    class GameDefinition
    {
        public static GameDefinition pCars64Bit = new GameDefinition(GameEnum.PCARS_64BIT, "Project Cars (64 bit)", "pCARS64",
            "CrewChiefV2.PCars.PCarsSharedMemoryReader", "CrewChiefV2.PCars.PCarsGameStateMapper");
        public static GameDefinition pCars32Bit = new GameDefinition(GameEnum.PCARS_32BIT, "Project Cars (32 bit)", "pCARS32",
            "CrewChiefV2.PCars.PCarsSharedMemoryReader", "CrewChiefV2.PCars.PCarsGameStateMapper");
        public static GameDefinition raceRoom = new GameDefinition(GameEnum.RACE_ROOM, "Race Room", "RRRE",
            "CrewChiefV2.RaceRoom.R3ESharedMemoryReader", "CrewChiefV2.RaceRoom.R3EGameStateMapper");        

        public GameEnum gameEnum;
        public String friendlyName;
        public String processName;
        private String sharedMemoryLoaderName;
        private String gameStateMapperName;

        public GameDefinition(GameEnum gameEnum, String friendlyName, String processName, String sharedMemoryLoaderName, String gameStateMapperName)
        {
            this.gameEnum = gameEnum;
            this.friendlyName = friendlyName;
            this.processName = processName;
            this.sharedMemoryLoaderName = sharedMemoryLoaderName;
            this.gameStateMapperName = gameStateMapperName;
        }

        public SharedMemoryLoader getSharedMemoryLoader()
        {
            return (SharedMemoryLoader)Activator.CreateInstance(Type.GetType(sharedMemoryLoaderName));
        }

        public GameStateMapper getGameStateMapper()
        {
            return (GameStateMapper)Activator.CreateInstance(Type.GetType(gameStateMapperName));
        }
    }
}

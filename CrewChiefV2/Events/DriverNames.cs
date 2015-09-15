using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CrewChiefV2.RaceRoom.RaceRoomData;
using System.Threading;
using CrewChiefV2.GameState;

namespace CrewChiefV2.Events
{
    class DriverNames : AbstractEvent
    {
        public static String folderNameStub = "driver_names/";

        private SessionConstants sessionConstants;
        private GameStateData currentGameState;

        public DriverNames(AudioPlayer audioPlayer)
        {
            this.audioPlayer = audioPlayer;
        }

        public override void clearState()
        {
            currentGameState = null;
        }

        public override bool isMessageStillValid(string eventSubType, GameStateData currentGameState, SessionConstants sessionConstants)
        {
            return true;
        }

        override protected void triggerInternal(GameStateData previousGameState, GameStateData currentGameState, SessionConstants sessionConstants)
        {
            this.sessionConstants = sessionConstants;
            this.currentGameState = currentGameState;
        }
        
        public override void respond(String voiceMessage)
        {
            // todo: replace this grotty string manipulation crap
            Boolean foundDriver = false;
            if (currentGameState != null)
            {
                foreach (KeyValuePair<int, OpponentData> entry in currentGameState.OpponentData)
                {
                    if (voiceMessage.Contains(entry.Value.DriverLastName))
                    {
                        Console.WriteLine("Got opponent name, " + entry.Value.DriverLastName);
                        int position = entry.Value.Position;
                        audioPlayer.openChannel();
                        audioPlayer.playClipImmediately(Position.folderStub + position, new QueuedMessage(0, null));
                        audioPlayer.closeChannel();
                        foundDriver = true;
                        break;
                    }
                }
                if (!foundDriver)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(AudioPlayer.folderNoData, new QueuedMessage(0, null));
                    audioPlayer.closeChannel();
                }
            }            
        }
    }
}

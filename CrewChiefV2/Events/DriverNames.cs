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

            // todo: more questions and responses for opponent drivers
            Boolean foundDriver = false;
            if (currentGameState != null)
            {
                if (voiceMessage.StartsWith(SpeechRecogniser.WHERE_IS))
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
                }
                else if (voiceMessage.StartsWith(SpeechRecogniser.WHOS_BEHIND) && !currentGameState.isLast())
                {
                    OpponentData opponent = currentGameState.getOpponentAtPosition(currentGameState.SessionData.Position + 1);
                    if (audioPlayer.hasDriverName(opponent.DriverLastName))
                    {
                        audioPlayer.openChannel();
                        audioPlayer.playClipImmediately(QueuedMessage.driverNameIdentifier + opponent.DriverLastName, new QueuedMessage(0, null));
                        audioPlayer.closeChannel();
                        foundDriver = true;
                    }
                }
                else if (voiceMessage.StartsWith(SpeechRecogniser.WHOS_IN_FRONT) && currentGameState.SessionData.Position > 1)
                {
                    OpponentData opponent = currentGameState.getOpponentAtPosition(currentGameState.SessionData.Position - 1);
                    if (audioPlayer.hasDriverName(opponent.DriverLastName))
                    {
                        audioPlayer.openChannel();
                        audioPlayer.playClipImmediately(QueuedMessage.driverNameIdentifier + opponent.DriverLastName, new QueuedMessage(0, null));
                        audioPlayer.closeChannel();
                        foundDriver = true;
                    }
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

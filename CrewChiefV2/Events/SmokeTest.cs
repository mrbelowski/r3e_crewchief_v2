using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CrewChiefV2.RaceRoomData;
using System.Threading;
using CrewChiefV2.GameState;

namespace CrewChiefV2.Events
{
    class SmokeTest : AbstractEvent
    {
        private String folderTest = "radio_check/test";

        public SmokeTest(AudioPlayer audioPlayer)
        {
            this.audioPlayer = audioPlayer;
        }

        public override void clearState()
        {
        }

        public override bool isClipStillValid(string eventSubType, GameStateData currentGameState, SessionConstants sessionConstants)
        {
            return true;
        }

        override protected void triggerInternal(GameStateData previousGameState, GameStateData currentGameState, SessionConstants sessionConstants)
        {
            audioPlayer.queueClip(folderTest, 0, this);            
        }
    }
}

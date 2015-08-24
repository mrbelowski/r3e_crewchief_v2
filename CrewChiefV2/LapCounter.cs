using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CrewChiefV2.Data;

namespace CrewChiefV2.Events
{
    class LapCounter : AbstractEvent
    {
        private String folderGreenGreenGreen = "lap_counter/green_green_green";

        private String folderGetReady = "lap_counter/get_ready";

        private String folderLastLap = "lap_counter/last_lap";

        private String folderTwoLeft = "lap_counter/two_to_go";

        private String folderLastLapLeading = "lap_counter/last_lap_leading";

        private String folderLastLapTopThree = "lap_counter/last_lap_top_three";

        private String folderTwoLeftLeading = "lap_counter/two_to_go_leading";

        private String folderTwoLeftTopThree = "lap_counter/two_to_go_top_three";

        private String folderPodiumFinish = "lap_counter/podium_finish";

        private String folderWonRace = "lap_counter/won_race";

        private String folderFinishedRace = "lap_counter/finished_race";

        private String folderFinishedRaceLast = "lap_counter/finished_race_last";

        private String folderEndOfSession = "lap_counter/end_of_session";

        private String folderEndOfSessionPole = "lap_counter/end_of_session_pole";

        Boolean playedGreenGreenGreen;
        Boolean playedGetReady;

        public Boolean playedFinished;

        private DateTime lastFinishMessageTime = DateTime.MinValue;

        public LapCounter(AudioPlayer audioPlayer)
        {
            this.audioPlayer = audioPlayer;
        }

        public override void clearState()
        {
            playedGreenGreenGreen = false;
            playedGetReady = false;
            playedFinished = false;
        }

        public override bool isClipStillValid(string eventSubType)
        {
            return true;
        }

        override protected void triggerInternal(Shared lastState, Shared currentState)
        {
            if (!playedGetReady &&
                (currentState.SessionPhase == (int)Constant.SessionPhase.Countdown))
            {
                audioPlayer.openChannel();
                audioPlayer.playClipImmediately(folderGetReady, new QueuedMessage(0, this));
                playedGetReady = true;
                audioPlayer.closeChannel();
            }
            if (!playedGreenGreenGreen &&
                (lastState.SessionPhase == (int)Constant.SessionPhase.Countdown && currentState.SessionPhase == (int)Constant.SessionPhase.Green) ||
                (lastState.ControlType == (int)Constant.Control.AI && currentState.ControlType == (int)Constant.Control.Player &&
                currentState.Player.GameSimulationTime < 20))
            {
                audioPlayer.openChannel();
                audioPlayer.playClipImmediately(folderGreenGreenGreen, new QueuedMessage(0, this));
                audioPlayer.closeChannel();
                playedGreenGreenGreen = true;
            }
            if (!playedFinished && currentState.Player.GameSimulationTime > 60 && 
                (currentState.SessionType == (int)Constant.Session.Race && CommonData.leaderHasFinishedRace && !CommonData.isRaceRunning) ||
                (!CommonData.isSessionRunning && CommonData.isNewLap))
            {
                Console.WriteLine("Playing session finished message from LapCounter, session type = " + currentState.SessionType);
                Console.WriteLine("Session phase = " + currentState.SessionPhase);
                Console.WriteLine("Time remaining = " + currentState.SessionTimeRemaining);
                Console.WriteLine("leaderHasFinishedRace = " + CommonData.leaderHasFinishedRace + ", isRaceRunning = " + CommonData.isRaceRunning);
                Console.WriteLine("Newlap " + CommonData.isNewLap + "IsSessionRunning = " + CommonData.isSessionRunning);
                playFinishMessage(currentState.SessionType, currentState.Position, currentState.NumCars);
            }
            if (CommonData.isRaceRunning && CommonData.isNewLap && currentState.NumberOfLaps > 0)
            {
                // a new lap has been started in race mode
                Console.WriteLine("LapCounter event: position at lap " + currentState.CompletedLaps + " = " + currentState.Position);
                int position = currentState.Position;
                if (position < 1)
                {
                    Console.WriteLine("Position in current data block = " + position + " using position in previous data block " + lastState.Position);
                    position = lastState.Position;
                }
                if (currentState.CompletedLaps == currentState.NumberOfLaps - 1)
                {
                    if (currentState.Position == 1)
                    {
                        audioPlayer.queueClip(folderLastLapLeading, 0, this);
                    }
                    else if (currentState.Position < 4)
                    {
                        audioPlayer.queueClip(folderLastLapTopThree, 0, this);
                    }
                    else if (currentState.Position >= 4)
                    {
                        audioPlayer.queueClip(folderLastLap, 0, this, PearlsOfWisdom.PearlType.NEUTRAL, 0.5);
                    }
                    else if (currentState.Position >= 10)
                    {
                        audioPlayer.queueClip(folderLastLap, 0, this, PearlsOfWisdom.PearlType.BAD, 0.5);
                    }
                    else
                    {
                        Console.WriteLine("1 lap left but position is 0");
                    }
                }
                else if (currentState.CompletedLaps == currentState.NumberOfLaps - 2)
                {
                    if (currentState.Position == 1)
                    {
                        audioPlayer.queueClip(folderTwoLeftLeading, 0, this);
                    }
                    else if (currentState.Position < 4)
                    {
                        audioPlayer.queueClip(folderTwoLeftTopThree, 0, this);
                    }
                    else if (currentState.Position >= 4)
                    {
                        audioPlayer.queueClip(folderTwoLeft, 0, this, PearlsOfWisdom.PearlType.NEUTRAL, 0.5);
                    }
                    else if (currentState.Position >= 10)
                    {
                        audioPlayer.queueClip(folderTwoLeft, 0, this, PearlsOfWisdom.PearlType.BAD, 0.5);
                    }
                    else
                    {
                        Console.WriteLine("2 laps left but position is 0");
                    }
                }
            }
        }

        public void playFinishMessage(int sessionType, int position, int numCars)
        {
            if (!playedFinished && lastFinishMessageTime.Add(TimeSpan.FromSeconds(2)) < DateTime.Now)
            {
                lastFinishMessageTime = DateTime.Now;
                if (position < 1)
                {
                    Console.WriteLine("Race finished but position is < 1");
                }
                else if (sessionType == (int)Constant.Session.Race)
                {
                    Boolean isLast = position == numCars;
                    if (position == 1)
                    {
                        audioPlayer.queueClip(folderWonRace, 0, null);
                    }
                    else if (position < 4)
                    {
                        audioPlayer.queueClip(folderPodiumFinish, 0, null);
                    }
                    else if (position >= 4 && !isLast)
                    {
                        audioPlayer.queueClip(folderFinishedRace, 0, null);
                    }
                    else if (isLast)
                    {
                        audioPlayer.queueClip(folderFinishedRaceLast, 0, null);
                    }
                }
                else 
                {
                    if (sessionType == (int)Constant.Session.Qualify && position == 1)
                    {
                        audioPlayer.queueClip(folderEndOfSessionPole, 0, null);
                    }
                    else
                    {
                        audioPlayer.queueClip(folderEndOfSession, 0, null, PearlsOfWisdom.PearlType.NONE, 0);
                        audioPlayer.queueClip(Position.folderStub + position, 0, null);
                    }
                }                
                playedFinished = true;
            }            
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CrewChiefV2.Data;
using CrewChiefV2.GameState;

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

        private Boolean enableSessionEndMessages = UserSettings.GetUserSettings().getBoolean("enable_session_end_messages");

        protected override List<SessionPhase> applicableSessionPhases
        {
            get { return new List<SessionPhase> { SessionPhase.Countdown, SessionPhase.Formation, SessionPhase.Green, SessionPhase.Checkered, SessionPhase.Finished }; }
        }

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

        public override bool isClipStillValid(String eventSubType, GameStateData currentGameState, SessionConstants sessionConstants)
        {
            return applicableSessionPhases.Contains(currentGameState.SessionData.SessionPhase);
        }

        override protected void triggerInternal(GameStateData previousGameState, GameStateData currentGameState, SessionConstants sessionConstants)
        {
            if (!playedGetReady && sessionConstants.SessionType == SessionType.Race && currentGameState.SessionData.SessionPhase == SessionPhase.Countdown)
            {
                audioPlayer.openChannel();
                audioPlayer.playClipImmediately(folderGetReady, new QueuedMessage(0, this));
                playedGetReady = true;
                audioPlayer.closeChannel();
            }
            if (!playedGreenGreenGreen && sessionConstants.SessionType == SessionType.Race && 
                (currentGameState.SessionData.SessionPhase == SessionPhase.Green && 
                    (previousGameState.SessionData.SessionPhase == SessionPhase.Formation || 
                     previousGameState.SessionData.SessionPhase == SessionPhase.Countdown)))
            {
                audioPlayer.openChannel();
                audioPlayer.playClipImmediately(folderGreenGreenGreen, new QueuedMessage(0, this));
                audioPlayer.closeChannel();
                playedGreenGreenGreen = true;
            }
            if (!playedFinished && currentGameState.SessionData.SessionRunningTime > 60 && sessionConstants.SessionType == SessionType.Race && 
                currentGameState.SessionData.LeaderHasFinishedRace && currentGameState.SessionData.SessionPhase == SessionPhase.Finished)
            {
                playFinishMessage(sessionConstants.SessionType, currentGameState.SessionData.Position, currentGameState.SessionData.NumCars);
            }
            if (sessionConstants.SessionType == SessionType.Race && currentGameState.SessionData.IsNewLap && currentGameState.SessionData.CompletedLaps > 0)
            {
                // a new lap has been started in race mode
                int position = currentGameState.SessionData.Position;
                if (currentGameState.SessionData.CompletedLaps == sessionConstants.SessionNumberOfLaps - 1)
                {
                    if (position == 1)
                    {
                        audioPlayer.queueClip(folderLastLapLeading, 0, this);
                    }
                    else if (position < 4)
                    {
                        audioPlayer.queueClip(folderLastLapTopThree, 0, this);
                    }
                    else if (position >= 4)
                    {
                        audioPlayer.queueClip(folderLastLap, 0, this, PearlsOfWisdom.PearlType.NEUTRAL, 0.5);
                    }
                    else if (position >= 10)
                    {
                        audioPlayer.queueClip(folderLastLap, 0, this, PearlsOfWisdom.PearlType.BAD, 0.5);
                    }
                    else
                    {
                        Console.WriteLine("1 lap left but position is < 1");
                    }
                }
                else if (currentGameState.SessionData.CompletedLaps == sessionConstants.SessionNumberOfLaps - 2)
                {
                    if (position == 1)
                    {
                        audioPlayer.queueClip(folderTwoLeftLeading, 0, this);
                    }
                    else if (position < 4)
                    {
                        audioPlayer.queueClip(folderTwoLeftTopThree, 0, this);
                    }
                    else if (position >= 4)
                    {
                        audioPlayer.queueClip(folderTwoLeft, 0, this, PearlsOfWisdom.PearlType.NEUTRAL, 0.5);
                    }
                    else if (position >= 10)
                    {
                        audioPlayer.queueClip(folderTwoLeft, 0, this, PearlsOfWisdom.PearlType.BAD, 0.5);
                    }
                    else
                    {
                        Console.WriteLine("2 laps left but position is < 1");
                    }
                }
            }
        }

        public void playFinishMessage(SessionType sessionType, int position, int numCars)
        {
            if (enableSessionEndMessages && !playedFinished && lastFinishMessageTime.Add(TimeSpan.FromSeconds(2)) < DateTime.Now)
            {
                playedFinished = true;
                lastFinishMessageTime = DateTime.Now;
                if (position < 1)
                {
                    Console.WriteLine("Session finished but position is < 1");
                }
                else if (sessionType == SessionType.Race)
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
                        audioPlayer.queueClip(Position.folderStub + position, 0, null);
                        audioPlayer.queueClip(folderFinishedRace, 0, null);
                    }
                    else if (isLast)
                    {
                        audioPlayer.queueClip(folderFinishedRaceLast, 0, null);
                    }
                }
                else 
                {
                    if (sessionType == SessionType.Qualify && position == 1)
                    {
                        audioPlayer.queueClip(folderEndOfSessionPole, 0, null);
                    }
                    else
                    {
                        audioPlayer.queueClip(folderEndOfSession, 0, null, PearlsOfWisdom.PearlType.NONE, 0);
                        audioPlayer.queueClip(Position.folderStub + position, 0, null);
                    }
                }                
            }            
        }
    }
}

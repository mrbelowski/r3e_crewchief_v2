using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CrewChiefV2.Data;

namespace CrewChiefV2.Events
{
    class Position : AbstractEvent
    {
        public static String folderLeading = "position/leading";
        public static String folderPole = "position/pole";
        public static String folderStub = "position/p";
        public static String folderLast = "position/last";

        private String folderConsistentlyLast = "position/consistently_last";
        private String folderGoodStart = "position/good_start";
        private String folderOKStart = "position/ok_start";
        private String folderBadStart = "position/bad_start";
        private String folderTerribleStart = "position/terrible_start";

        private int currentPosition;

        private int previousPosition;

        private int lapNumberAtLastMessage;

        private Random rand = new Random();

        private int numberOfLapsInLastPlace;

        private Boolean playedRaceStartMessage;

        private Boolean enableRaceStartMessages = UserSettings.GetUserSettings().getBoolean("enable_race_start_messages");

        private Boolean enablePositionMessages = UserSettings.GetUserSettings().getBoolean("enable_position_messages");

        private int startMessageTime;

        public Position(AudioPlayer audioPlayer)
        {
            this.audioPlayer = audioPlayer;
        }

        public override void clearState()
        {
            previousPosition = 0;
            lapNumberAtLastMessage = 0;
            numberOfLapsInLastPlace = 0;
            playedRaceStartMessage = false;
            startMessageTime = new Random().Next(30, 50);
        }

        public override bool isClipStillValid(string eventSubType)
        {
            return CommonData.isSessionRunning && !CommonData.isPittingInRace &&
                !((LapCounter)CrewChief.getEvent("LapCounter")).playedFinished;
        }

        protected override void triggerInternal(Data.Shared lastState, Data.Shared currentState)
        {
            currentPosition = currentState.Position;
            if (previousPosition == 0 && currentState.Position > 0)
            {
                previousPosition = currentState.Position;
            }
            if (CommonData.isRaceRunning && enableRaceStartMessages && !playedRaceStartMessage && 
                currentState.Player.GameSimulationTime > startMessageTime)
            {
                playedRaceStartMessage = true;
                if (CommonData.isLast || CommonData.raceStartPosition + 1 < currentState.Position)
                {
                    audioPlayer.queueClip(folderBadStart, 0, this);
                }
                else if (currentState.Position == 1 || CommonData.raceStartPosition >= currentState.Position)
                {
                    audioPlayer.queueClip(folderGoodStart, 0, this);
                }
                else if (CommonData.raceStartPosition + 5 < currentState.Position)
                {
                    audioPlayer.queueClip(folderTerribleStart, 0, this);
                }                
                else if (new Random().NextDouble() > 0.6)
                {
                    // only play the OK start message sometimes
                    audioPlayer.queueClip(folderOKStart, 0, this);
                }
            }
            if (enablePositionMessages && CommonData.isNewLap && CommonData.isSessionRunning)
            {
                playedRaceStartMessage = true;
                if (CommonData.isLast)
                {
                    numberOfLapsInLastPlace++;
                }
                else
                {
                    numberOfLapsInLastPlace = 0;
                }
                if (previousPosition == 0 && currentState.Position > 0)
                {
                    previousPosition = currentState.Position;
                }
                else
                {
                    if (currentState.NumberOfLaps > lapNumberAtLastMessage + 3
                            || previousPosition != currentState.Position)
                    {
                        PearlsOfWisdom.PearlType pearlType = PearlsOfWisdom.PearlType.NONE;
                        float pearlLikelihood = 0.2f;
                        if (CommonData.isRaceRunning)
                        {
                            if (!CommonData.isLast && (previousPosition > currentState.Position + 5 ||
                                (previousPosition > currentState.Position && currentState.Position <= 5)))
                            {
                                pearlType = PearlsOfWisdom.PearlType.GOOD;
                                pearlLikelihood = 0.8f;
                            }
                            else if (!CommonData.isLast && previousPosition < currentState.Position && currentState.Position > 5)
                            {
                                // note that we don't play a pearl for being last - there's a special set of 
                                // insults reserved for this
                                pearlType = PearlsOfWisdom.PearlType.BAD;
                                pearlLikelihood = 0.5f;
                            }
                            else if (!CommonData.isLast)
                            {
                                pearlType = PearlsOfWisdom.PearlType.NEUTRAL;
                            }
                        }
                        if (currentState.Position == 1)
                        {
                            if (currentState.SessionType == (int)Constant.Session.Race)
                            {
                                audioPlayer.queueClip(folderLeading, 0, this, pearlType, pearlLikelihood);
                            }
                            else if (currentState.SessionType == (int)Constant.Session.Practice)
                            {
                                audioPlayer.queueClip(folderStub + 1, 0, this, pearlType, pearlLikelihood);
                            }
                            // no p1 for pole - this is in the laptime tracker (yuk)
                        }
                        else if (!CommonData.isLast)
                        {
                            audioPlayer.queueClip(folderStub + currentState.Position, 0, this, pearlType, pearlLikelihood);
                        }
                        else if (CommonData.isLast)
                        {
                            if (numberOfLapsInLastPlace > 3)
                            {
                                audioPlayer.queueClip(folderConsistentlyLast, 0, this, PearlsOfWisdom.PearlType.NONE, 0);
                            }
                            else
                            {
                                audioPlayer.queueClip(folderLast, 0, this, PearlsOfWisdom.PearlType.NONE, 0);
                            }
                        }
                        previousPosition = currentState.Position;
                        lapNumberAtLastMessage = currentState.NumberOfLaps;
                    }
                }
            }
        }
        public override void respond(String voiceMessage)
        {
            if (CommonData.isSessionRunning && voiceMessage.Contains(SpeechRecogniser.POSITION))
            {
                if (CommonData.isLast)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(folderLast, new QueuedMessage(0, this));
                    audioPlayer.closeChannel();
                }
                else if (CommonData.isRaceRunning && currentPosition == 1)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(folderLeading, new QueuedMessage(0, this));
                    audioPlayer.closeChannel();
                }
                else
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(folderStub + currentPosition, new QueuedMessage(0, this));
                    audioPlayer.closeChannel();
                }
            }
        }
    }
}

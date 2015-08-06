using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CrewChiefV2.Data;

namespace CrewChiefV2.Events
{
    class Penalties : AbstractEvent
    {
        // time (in seconds) to delay messages about penalty laps to go - 
        // we need this because the play might cross the start line while serving 
        // a penalty, so we should wait before telling them how many laps they have to serve it
        private int pitstopDelay = 20;

        private String folderNewPenaltyStopGo = "penalties/new_penalty_stopgo";

        private String folderNewPenaltyDriveThrough = "penalties/new_penalty_drivethrough";

        private String folderThreeLapsToServe = "penalties/penalty_three_laps_left";

        private String folderTwoLapsToServe = "penalties/penalty_two_laps_left";

        private String folderOneLapToServeStopGo = "penalties/penalty_one_lap_left_stopgo";

        private String folderOneLapToServeDriveThrough = "penalties/penalty_one_lap_left_drivethrough";

        private String folderDisqualified = "penalties/penalty_disqualified";

        private String folderPitNowStopGo = "penalties/pit_now_stop_go";

        private String folderPitNowDriveThrough = "penalties/pit_now_drive_through";

        private String folderTimePenalty = "penalties/time_penalty";

        private String folderCutTrackInRace = "penalties/cut_track_in_race";

        private String folderLapDeleted = "penalties/lap_deleted";

        private String folderCutTrackPracticeOrQual = "penalties/cut_track_in_prac_or_qual";

        // for voice requests
        private String folderYouStillHavePenalty = "penalties/you_still_have_a_penalty";

        private String folderYouHavePenalty = "penalties/you_have_a_penalty";

        private String folderPenaltyServed = "penalties/penalty_served";

        private String folderYouDontHaveAPenalty = "penalties/you_dont_have_a_penalty";


        private Boolean hasHadAPenalty;

        private int penaltyLap;

        private int lapsCompleted;

        private Boolean playedPitNow;

        private Boolean hasOutstandingPenalty = false;

        private Boolean playedTimePenaltyMessage;

        private int cutTrackWarningsCount;

        private TimeSpan cutTrackWarningFrequency = TimeSpan.FromSeconds(10);

        private Boolean playCutTrackWarnings = UserSettings.GetUserSettings().getBoolean("play_cut_track_warnings");

        private DateTime lastCutTrackWarningTime;

        public Penalties(AudioPlayer audioPlayer)
        {
            this.audioPlayer = audioPlayer;
        }

        public override void clearState()
        {
            clearPenaltyState();
            lastCutTrackWarningTime = DateTime.Now;
            cutTrackWarningsCount = 0;
            hasHadAPenalty = false;
        }

        private void clearPenaltyState()
        {
            penaltyLap = -1;
            lapsCompleted = -1;
            hasOutstandingPenalty = false;
            // edge case here: if a penalty is given and immediately served (slow down penalty), then
            // the player gets another within the next 20 seconds, the 'you have 3 laps to come in to serve'
            // message would be in the queue and would be made valid again, so would play. So we explicity 
            // remove this message from the queue
            audioPlayer.removeQueuedClip(folderThreeLapsToServe);
            playedPitNow = false;
            playedTimePenaltyMessage = false;
        }

        public override bool isClipStillValid(string eventSubType)
        {
            // when a new penalty is given we queue a 'three laps left to serve' message for 20 seconds in the future.
            // If, 20 seconds later, the player has started a new lap, this message is no longer valid so shouldn't be played
            if (eventSubType == folderThreeLapsToServe)
            {
                Console.WriteLine("checking penalty validity, pen lap = " + penaltyLap + ", completed =" + lapsCompleted);
                return hasOutstandingPenalty && lapsCompleted == penaltyLap && CommonData.isSessionRunning;
            }
            else if (eventSubType == folderCutTrackInRace) 
            {
                return !hasOutstandingPenalty && CommonData.isRaceStarted;
            }
            else if(eventSubType == folderCutTrackPracticeOrQual || eventSubType == folderLapDeleted)
            {
                return true;
            }
            else
            {
                return hasOutstandingPenalty && CommonData.isSessionRunning;
            }
        }

        private Boolean hasNewDriveThrough(Shared lastState, Shared currentState)
        {
            return currentState.Penalties.DriveThrough > lastState.Penalties.DriveThrough;
        }

        private Boolean hasNewStopGo(Shared lastState, Shared currentState)
        {
            return currentState.Penalties.StopAndGo > lastState.Penalties.StopAndGo;
        }

        private Boolean hasDriveThrough(Shared currentState)
        {
            return currentState.Penalties.DriveThrough > 0;
        }

        private Boolean hasStopGo(Shared currentState)
        {
            return currentState.Penalties.StopAndGo > 0;
        }

        private Boolean hasTimePenalty(Shared currentState)
        {
            return currentState.Penalties.TimeDeduction > 0;
        }

        override protected void triggerInternal(Shared lastState, Shared currentState)
        {
            if (CommonData.isRaceStarted && hasDriveThrough(currentState) || hasStopGo(currentState) || hasTimePenalty(currentState))
            {
                if (hasNewDriveThrough(lastState, currentState))
                {
                    lapsCompleted = currentState.CompletedLaps;
                    // this is a new penalty
                    audioPlayer.queueClip(folderNewPenaltyDriveThrough, 0, this);
                    // queue a '3 laps to serve penalty' message - this might not get played
                    audioPlayer.queueClip(folderThreeLapsToServe, 20, this);
                    // we don't already have a penalty
                    if (penaltyLap == -1 || !hasOutstandingPenalty)
                    {
                        penaltyLap = currentState.CompletedLaps;
                    }
                    hasOutstandingPenalty = true;
                    hasHadAPenalty = true;
                }
                else if (hasNewStopGo(lastState, currentState))
                {
                    lapsCompleted = currentState.CompletedLaps;
                    // this is a new penalty
                    audioPlayer.queueClip(folderNewPenaltyStopGo, 0, this);
                    // queue a '3 laps to serve penalty' message - this might not get played
                    audioPlayer.queueClip(folderThreeLapsToServe, 20, this);
                    // we don't already have a penalty
                    if (penaltyLap == -1 || !hasOutstandingPenalty)
                    {
                        penaltyLap = currentState.CompletedLaps;
                    }
                    hasOutstandingPenalty = true;
                    hasHadAPenalty = true;
                }
                else if (CommonData.isNewLap && (hasDriveThrough(currentState) || hasStopGo(currentState)))
                {
                    lapsCompleted = currentState.CompletedLaps;
                    // dodgy check here - if the player's car is being driven by the AI, assume we're pitting
                    if (lapsCompleted - penaltyLap == 3 && currentState.ControlType != (int)Constant.Control.AI)
                    {
                        // what if the player is actually serving his penalty at the time?? This simply won't work reliably
                        // Also, what if the player crosses the line while serving a slow-down penalty? A short delay (5 seconds)
                        // might help a little...
                        audioPlayer.queueClip(folderDisqualified, 5, this);
                    }
                    else if (lapsCompleted - penaltyLap == 2 && hasDriveThrough(currentState))
                    {
                        audioPlayer.queueClip(folderOneLapToServeDriveThrough, pitstopDelay, this);
                    }
                    else if (lapsCompleted - penaltyLap == 2 && hasStopGo(currentState))
                    {
                        audioPlayer.queueClip(folderOneLapToServeStopGo, pitstopDelay, this);
                    }
                    else if (lapsCompleted - penaltyLap == 1)
                    {
                        audioPlayer.queueClip(folderTwoLapsToServe, pitstopDelay, this);
                    }
                }
                else if (!playedPitNow && CommonData.currentLapSector == 3 && hasStopGo(currentState) && lapsCompleted - penaltyLap == 2)
                {
                    playedPitNow = true;
                    audioPlayer.queueClip(folderPitNowStopGo, 6, this);
                }
                else if (!playedPitNow && CommonData.currentLapSector == 3 && hasDriveThrough(currentState) && lapsCompleted - penaltyLap == 2)
                {
                    playedPitNow = true;
                    audioPlayer.queueClip(folderPitNowDriveThrough, 6, this);
                }
                else if (!playedTimePenaltyMessage && hasTimePenalty(currentState))
                {
                    playedTimePenaltyMessage = true;
                    audioPlayer.queueClip(folderTimePenalty, 0, this);
                }
            }
            else if (currentState.CarSpeed > 1 && playCutTrackWarnings && currentState.SessionType != (int)Constant.Session.Race &&
              currentState.LapTimeCurrent == -1 && lastState.LapTimeCurrent != -1)
            {
                cutTrackWarningsCount = currentState.CutTrackWarnings;
                DateTime now = DateTime.Now;
                if (currentState.ControlType != (int)Constant.Control.AI &&
                    lastCutTrackWarningTime.Add(cutTrackWarningFrequency) < now)
                {
                    lastCutTrackWarningTime = DateTime.Now;
                    audioPlayer.queueClip(folderLapDeleted, 2, this);
                    clearPenaltyState();
                }
            }
            else if (currentState.CarSpeed > 1 && playCutTrackWarnings && 
                currentState.CutTrackWarnings > cutTrackWarningsCount)
            {
                cutTrackWarningsCount = currentState.CutTrackWarnings;
                DateTime now = DateTime.Now;
                if (currentState.ControlType != (int)Constant.Control.AI && 
                    lastCutTrackWarningTime.Add(cutTrackWarningFrequency) < now)
                {
                    lastCutTrackWarningTime = now;
                    if (currentState.SessionType == (int)Constant.Session.Race)
                    {
                        audioPlayer.queueClip(folderCutTrackInRace, 2, this);
                    }
                    else
                    {
                        audioPlayer.queueClip(folderCutTrackPracticeOrQual, 2, this);
                    }
                    clearPenaltyState();
                }
            }            
            else
            {
                // TODO: this ain't right...
                clearPenaltyState();
            }
            if (CommonData.isRaceStarted && 
                (lastState.Penalties.DriveThrough > 0 && currentState.Penalties.DriveThrough < lastState.Penalties.DriveThrough) ||
                (lastState.Penalties.StopAndGo > 0 && currentState.Penalties.StopAndGo < lastState.Penalties.StopAndGo))
            {
                audioPlayer.queueClip(folderPenaltyServed, 0, null);
            }
        }

        public override void respond(string voiceMessage)
        {
            if (!hasHadAPenalty)
            {
                audioPlayer.playClipImmediately(folderYouDontHaveAPenalty, new QueuedMessage(0, null));
                return;
            }
            if (voiceMessage.Contains(SpeechRecogniser.DO_I_HAVE_A_PENALTY))
            {
                if (hasOutstandingPenalty) {
                    if (lapsCompleted - penaltyLap == 2) {
                        List<String> messages = new List<String>();
                        messages.Add(folderYouHavePenalty);
                        messages.Add(MandatoryPitStops.folderMandatoryPitStopsPitThisLap);
                        audioPlayer.playClipImmediately(QueuedMessage.compoundMessageIdentifier + "_youHaveAPenaltyBoxThisLap",
                            new QueuedMessage(messages, 0, null));
                    } else
                    {
                        audioPlayer.playClipImmediately(folderYouHavePenalty, new QueuedMessage(0, null));
                    }
                }
                else
                {
                    audioPlayer.playClipImmediately(folderYouDontHaveAPenalty, new QueuedMessage(0, null));
                }
            }
            else if (voiceMessage.Contains(SpeechRecogniser.HAVE_I_SERVED_MY_PENALTY))
            {
                if (hasOutstandingPenalty)
                {
                    List<String> messages = new List<String>();
                    messages.Add(AudioPlayer.folderNo);
                    messages.Add(folderYouStillHavePenalty);
                    if (lapsCompleted - penaltyLap == 2)
                    {
                        messages.Add(MandatoryPitStops.folderMandatoryPitStopsPitThisLap);
                    }
                    audioPlayer.playClipImmediately(QueuedMessage.compoundMessageIdentifier + "_noYouStillHaveAPenalty",
                        new QueuedMessage(messages, 0, null));
                }
                else
                {
                    List<String> messages = new List<String>();
                    messages.Add(AudioPlayer.folderYes);
                    messages.Add(folderPenaltyServed);
                    audioPlayer.playClipImmediately(QueuedMessage.compoundMessageIdentifier + "_yesYouServedYourPenalty",
                        new QueuedMessage(messages, 0, null));
                }
            } else if (voiceMessage.Contains(SpeechRecogniser.DO_I_STILL_HAVE_A_PENALTY))
            {
                if (hasOutstandingPenalty)
                {
                    List<String> messages = new List<String>();
                    messages.Add(AudioPlayer.folderYes);
                    messages.Add(folderYouStillHavePenalty);
                    if (lapsCompleted - penaltyLap == 2)
                    {
                        messages.Add(MandatoryPitStops.folderMandatoryPitStopsPitThisLap);
                    }
                    audioPlayer.playClipImmediately(QueuedMessage.compoundMessageIdentifier + "_yesYouStillHaveAPenalty",
                        new QueuedMessage(messages, 0, null));
                }
                else
                {
                    List<String> messages = new List<String>();
                    messages.Add(AudioPlayer.folderNo);
                    messages.Add(folderPenaltyServed);
                    audioPlayer.playClipImmediately(QueuedMessage.compoundMessageIdentifier + "_noYouServedYourPenalty",
                        new QueuedMessage(messages, 0, null));
                }                
            }
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CrewChiefV2.Data;
using System.Threading;

namespace CrewChiefV2.Events
{
    class Spotter : AbstractEvent
    {
        // if the audio player is in the middle of another message, this 'immediate' message will have to wait.
        // If it's older than 1000 milliseconds by the time the player's got round to playing it, it's expired
        private int clearMessageExpiresAfter = 2000;
        private int holdMessageExpiresAfter = 1000;

        private Boolean require2OverlapsForHold = UserSettings.GetUserSettings().getBoolean("require_2_overlaps_for_hold_message");

        private Boolean require2ClearsForClear = UserSettings.GetUserSettings().getBoolean("require_2_clears_for_clear_message");

        // how long is a car? we use 3.5 meters by default here. Too long and we'll get 'hold your line' messages
        // when we're clearly directly behind the car
        private float carLength = UserSettings.GetUserSettings().getFloat("spotter_car_length");

        // before saying 'clear', we need to be carLength + this value from the other car
        private float gapNeededForClear = UserSettings.GetUserSettings().getFloat("spotter_gap_for_clear");

        // don't play spotter messages if we're going < 10ms
        private float minSpeedForSpotterToOperate = UserSettings.GetUserSettings().getFloat("min_speed_for_spotter");

        // if the closing speed is > 5ms (about 12mph) then don't trigger spotter messages - 
        // this prevents them being triggered when passing stationary cars
        private float maxClosingSpeed = UserSettings.GetUserSettings().getFloat("max_closing_speed_for_spotter");

        // don't activate the spotter unless this many seconds have elapsed (race starts are messy)
        private int timeAfterRaceStartToActivate = UserSettings.GetUserSettings().getInt("time_after_race_start_for_spotter");

        // say "still there" every 3 seconds
        private TimeSpan repeatHoldFrequency = TimeSpan.FromSeconds(UserSettings.GetUserSettings().getInt("spotter_hold_repeat_frequency"));

        private Boolean spotterOnlyWhenBeingPassed = UserSettings.GetUserSettings().getBoolean("spotter_only_when_being_passed");

        private Boolean channelOpen;

        private String folderClear = "spotter/clear";
        private String folderHoldYourLine = "spotter/hold_your_line";
        private String folderStillThere = "spotter/still_there";

        // don't play 'clear' messages unless we've actually been clear for 0.5 seconds
        private TimeSpan clearMessageDelay = TimeSpan.FromMilliseconds(UserSettings.GetUserSettings().getInt("spotter_clear_delay"));
        private TimeSpan overlapMessageDelay = TimeSpan.FromMilliseconds(UserSettings.GetUserSettings().getInt("spotter_overlap_delay"));

        private DateTime timeOfLastHoldMessage;

        private DateTime timeWhenWeThinkWeAreClear;
        private DateTime timeWhenWeThinkWeAreOverlapping;

        private Boolean newlyClear = true;
        private Boolean newlyOverlapping = true;

        private Boolean enabled;

        private Boolean initialEnabledState;

        public Spotter(AudioPlayer audioPlayer, Boolean initialEnabledState)
        {
            this.audioPlayer = audioPlayer;
            this.enabled = initialEnabledState;
            this.initialEnabledState = initialEnabledState;
        }

        public override void clearState()
        {
            channelOpen = false;
            timeOfLastHoldMessage = DateTime.Now;
            newlyClear = true;
            newlyOverlapping = true;
            enabled = initialEnabledState;
        }

        public override bool isClipStillValid(string eventSubType)
        {
            return true;
        }

        override protected void triggerInternal(Shared lastState, Shared currentState)
        {
            float currentSpeed = currentState.CarSpeed;
            float previousSpeed = lastState.CarSpeed;
            if (enabled && CommonData.isRaceRunning &&
                currentState.Player.GameSimulationTime > timeAfterRaceStartToActivate &&
                currentState.ControlType == (int)Constant.Control.Player && currentSpeed > minSpeedForSpotterToOperate)
            {
                float deltaFront = Math.Abs(currentState.TimeDeltaFront);
                float deltaBehind = Math.Abs(currentState.TimeDeltaBehind);

                // if we think there's already a car along side, add a little to the car length so we're
                // sure it's gone before calling clear
                float carLengthToUse = carLength;
                if (channelOpen)
                {
                    carLengthToUse += gapNeededForClear;
                }

                // initialise to some large value and put the real value in here only if the
                // time gap suggests we're overlapping
                float closingSpeedInFront = 9999;
                float closingSpeedBehind = 9999;

                // if the delta is exactly zero assume it's noise - the delta appears to be zero when the 
                // opponent car crosses the line
                Boolean carAlongSideInFront = isValueValid(deltaFront) && carLengthToUse / currentSpeed > deltaFront;
                Boolean carAlongSideInFrontPrevious = isValueValid(lastState.TimeDeltaFront)
                    && carLengthToUse / previousSpeed > Math.Abs(lastState.TimeDeltaFront);
                Boolean carAlongSideBehind = isValueValid(deltaBehind) && carLengthToUse / currentSpeed > deltaBehind;
                Boolean carAlongSideBehindPrevious = isValueValid(lastState.TimeDeltaBehind)
                    && carLengthToUse / previousSpeed > Math.Abs(lastState.TimeDeltaBehind);

                // only say a car is overlapping if it's been overlapping for 2 game state updates
                // and the closing speed isn't too high

                // note we don't need to check the validity of the currentState.TimeDeltaFront -
                // carAlongSideInFront can only be true if that check's passed
                if (carAlongSideInFront && isValueValid(lastState.TimeDeltaFront))
                {
                    // check the closing speed before warning
                    closingSpeedInFront = getClosingSpeed(lastState, currentState, true);
                }
                if (carAlongSideBehind && isValueValid(lastState.TimeDeltaBehind))
                {
                    // check the closing speed before warning
                    closingSpeedBehind = getClosingSpeed(lastState, currentState, false);
                }

                DateTime now = DateTime.Now;

                // again, don't change state when the delta is zero - this is noise
                if (channelOpen && (!carAlongSideInFront && isValueValid(deltaFront)) && (!require2ClearsForClear || !carAlongSideInFrontPrevious) &&
                    (!carAlongSideBehind && isValueValid(deltaBehind)) && (!require2ClearsForClear || !carAlongSideBehindPrevious))
                {
                    // we're clear here, so when we next detect we're overlapping we know this must be
                    // a new overlap
                    newlyOverlapping = true;
                    if (newlyClear)
                    {
                        //Console.WriteLine("Waiting " + clearMessageDelay);
                        newlyClear = false;
                        timeWhenWeThinkWeAreClear = now;
                    }
                    else if (now > timeWhenWeThinkWeAreClear.Add(clearMessageDelay))
                    {
                        channelOpen = false;                        
                        QueuedMessage clearMessage = new QueuedMessage(0, this);
                        clearMessage.expiryTime = (DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond) + clearMessageExpiresAfter;
                        //audioPlayer.removeImmediateClip(folderStillThere);
                        // don't play this message if the channel's closed
                        if (audioPlayer.isChannelOpen())
                        {
                            Console.WriteLine("Queuing 'clear'");
                            audioPlayer.removeImmediateClip(folderStillThere);
                            audioPlayer.playClipImmediately(folderClear, clearMessage);                           
                            audioPlayer.closeChannel();
                        }
                        else
                        {
                            Console.WriteLine("Not playing clear message - channel is already closed");
                        }                       
                    }
                }
                else if ((carAlongSideInFront && (!require2OverlapsForHold || carAlongSideInFrontPrevious) && Math.Abs(closingSpeedInFront) < maxClosingSpeed) ||
                    (carAlongSideBehind && (!require2OverlapsForHold || carAlongSideBehindPrevious) && Math.Abs(closingSpeedBehind) < maxClosingSpeed))
                {
                    Boolean frontOverlapIsReducing = carAlongSideInFront && closingSpeedInFront > 0;
                    Boolean rearOverlapIsReducing = carAlongSideBehind && closingSpeedBehind > 0;
                    if (channelOpen && now > timeOfLastHoldMessage.Add(repeatHoldFrequency))
                    {
                        // channel's already open, still there
                        //Console.WriteLine("Still there...");
                        timeOfLastHoldMessage = now;                        
                        QueuedMessage stillThereMessage = new QueuedMessage(0, this);
                        stillThereMessage.expiryTime = (DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond) + holdMessageExpiresAfter;
                        //audioPlayer.removeImmediateClip(folderHoldYourLine);
                        //audioPlayer.removeImmediateClip(folderClear);
                        Console.WriteLine("Queuing 'still there'");
                        audioPlayer.playClipImmediately(folderStillThere, stillThereMessage);
                    }
                    else if (!channelOpen &&
                        (rearOverlapIsReducing || (frontOverlapIsReducing && !spotterOnlyWhenBeingPassed)))
                    {                        
                        // we're overlapping here, so when we next detect we're 'clear' we know this must be
                        // a new clear
                        newlyClear = true;
                        if (newlyOverlapping)
                        {
                            timeWhenWeThinkWeAreOverlapping = now;
                            newlyOverlapping = false;
                        }
                        else if (now > timeWhenWeThinkWeAreOverlapping.Add(overlapMessageDelay))
                        {                            
                            timeOfLastHoldMessage = now;
                            channelOpen = true;                            
                            audioPlayer.openChannel();
                            QueuedMessage holdMessage = new QueuedMessage(0, this);
                            holdMessage.expiryTime = (DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond) + holdMessageExpiresAfter;
                            //audioPlayer.removeImmediateClip(folderClear);
                            //audioPlayer.removeImmediateClip(folderStillThere);
                            Console.WriteLine("Queuing 'hold your line'");
                            audioPlayer.playClipImmediately(folderHoldYourLine, holdMessage);
                        }
                    }
                }
            }
            else if (channelOpen)
            {
                if (isValueValid(currentSpeed))
                {
                    Console.WriteLine("Closing open channel in spotter");
                    Console.WriteLine("CommonData.isRaceRunning = " + CommonData.isRaceRunning + 
                        "GameSimulationTime = " + currentState.Player.GameSimulationTime + 
                        "currentState.ControlType = " + currentState.ControlType + 
                        "currentSpeed = " + currentSpeed);
                    channelOpen = false;
                    audioPlayer.closeChannel();
                }                
            }
        }

        // get the closing speed (> 0 if we're getting closer, < 0 if we're getting further away)
        private float getClosingSpeed(Shared lastState, Shared currentState, Boolean front)
        {
            // note that we always use current speed here. This is because the data are noisy and the
            // gap and speed data occasionally contain incorrect small values. If this happens to the 
            // currentSpeed, we'll already have discarded the data in this iteration (currentSpeed < minSpotterSpeed).
            // If the either of the timeDeltas are very small we'll either interpret this as a very high closing speed 
            // or a negative closing speed, neither of which should trigger a 'hold your line' message.

            // We really should be using the speed from the lastState when calculating the gap at the
            // lastState, but the speed should (if the data are correct) be fairly similar
            float timeElapsed = (float)currentState.Player.GameSimulationTime - (float)lastState.Player.GameSimulationTime;
            if (front)
            {
                return ((Math.Abs(lastState.TimeDeltaFront) * currentState.CarSpeed) -
                    (Math.Abs(currentState.TimeDeltaFront) * currentState.CarSpeed)) / timeElapsed;
            }
            else
            {
                return ((Math.Abs(lastState.TimeDeltaBehind) * currentState.CarSpeed) -
                    (Math.Abs(currentState.TimeDeltaBehind) * currentState.CarSpeed)) / timeElapsed;
            }
        }

        private Boolean isValueValid(float value)
        {
            return value != 0f && value != -1f;
        }

        public void enableSpotter()
        {
            enabled = true;
            audioPlayer.playClipImmediately(AudioPlayer.folderEnableSpotter, new QueuedMessage(0, null));
            audioPlayer.closeChannel();
        }

        public void disableSpotter()
        {
            enabled = false;
            audioPlayer.playClipImmediately(AudioPlayer.folderDisableSpotter, new QueuedMessage(0, null));
            audioPlayer.closeChannel();
        }
    }
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CrewChiefV2.RaceRoom.RaceRoomData;
using System.Threading;
using CrewChiefV2.Events;

namespace CrewChiefV2.PCars
{
    class PCarsSpotter : Spotter
    {
        // if the audio player is in the middle of another message, this 'immediate' message will have to wait.
        // If it's older than 1000 milliseconds by the time the player's got round to playing it, it's expired
        private int clearMessageExpiresAfter = 2000;
        private int clearAllRoundMessageExpiresAfter = 2000;
        private int holdMessageExpiresAfter = 1000;
        private int inTheMiddleMessageExpiresAfter = 1000;

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

        private Boolean hasCarLeft;
        private Boolean hasCarRight;

        private float trackWidth = 10;

        private String folderClear = "spotter/clear";
        private String folderHoldYourLine = "spotter/hold_your_line";
        private String folderStillThere = "spotter/still_there";

        private String folderInTheMiddle = "spotter/in_the_middle";
        private String folderCarLeft = "spotter/car_left";
        private String folderCarRight = "spotter/car_right"; 
        private String folderClearLeft = "spotter/clear_left";
        private String folderClearRight = "spotter/clear_right";
        private String folderClearAllRound = "spotter/clear_all_round";

        // don't play 'clear' or 'hold' messages unless we've actually been clear or overlapping for some time
        private TimeSpan clearMessageDelay = TimeSpan.FromMilliseconds(UserSettings.GetUserSettings().getInt("spotter_clear_delay"));
        private TimeSpan overlapMessageDelay = TimeSpan.FromMilliseconds(UserSettings.GetUserSettings().getInt("spotter_overlap_delay"));

        private DateTime timeOfNextHoldMessage;

        private DateTime timeWhenWeCanSayClear;
        private DateTime timeWhenWeCanSayHold;

        private Boolean newlyClear = true;
        private Boolean newlyOverlapping = true;

        private Boolean enabled;

        private Boolean initialEnabledState;

        private DateTime timeWhenChannelShouldBeClosed;

        private TimeSpan timeToWaitBeforeClosingChannelLeftOpen = TimeSpan.FromMilliseconds(500);

        // this is -1 * the time taken to travel 1 car length at the minimum spotter speed
        private float biggestAllowedNegativeTimeDelta;

        private Boolean channelLeftOpenTimerStarted = false;

        private DateTime timeWhenWeveHadEnoughUnusableData;

        private TimeSpan maxTimeToKeepChannelOpenWhileReceivingUnusableData = TimeSpan.FromSeconds(2);

        private Boolean lastSpotterDataIsUsable;

        private AudioPlayer audioPlayer;

        private Boolean hasCompletedOneSector;

        private enum Side {
            right, left, none
        }

        public PCarsSpotter(AudioPlayer audioPlayer, Boolean initialEnabledState)
        {
            this.audioPlayer = audioPlayer;
            this.enabled = initialEnabledState;
            this.initialEnabledState = initialEnabledState;
        }

        public void clearState()
        {
            hasCarLeft = false;
            hasCarRight = false;
            timeOfNextHoldMessage = DateTime.Now.Add(repeatHoldFrequency);
            timeWhenWeveHadEnoughUnusableData = DateTime.Now;
            timeWhenChannelShouldBeClosed = DateTime.Now;
            channelLeftOpenTimerStarted = false;
            hasCompletedOneSector = true;
        }

        public void trigger(Object lastStateObj, Object currentStateObj)
        {
            pCarsAPIStruct lastState = (pCarsAPIStruct)lastStateObj;
            pCarsAPIStruct currentState = (pCarsAPIStruct)currentStateObj;
            DateTime now = DateTime.Now;

            float currentSpeed = currentState.mSpeed;
            float previousSpeed = lastState.mSpeed;
            if (enabled && currentState.mParticipantData.Count() > 1 && currentState.mViewedParticipantIndex >= 0)
            {
                pCarsAPIParticipantStruct playerData = currentState.mParticipantData[currentState.mViewedParticipantIndex];
                if (!hasCompletedOneSector && playerData.mCurrentSector > 1) {
                    hasCompletedOneSector = true;
                }
                if (enabled && hasCompletedOneSector && currentSpeed > minSpeedForSpotterToOperate)
                {
                    int carsOnLeft = 0;
                    int carsOnRight = 0;
                    for (int i = 0; i < currentState.mParticipantData.Count(); i++)
                    {
                        if (carsOnLeft >= 1 && carsOnRight >= 1)
                        {
                            // stop processing - we already know there's a car on both sides
                            break;
                        }
                        if (i != currentState.mViewedParticipantIndex)
                        {
                            //Console.WriteLine("speed = "+ currentState.mSpeed + " time ahead = " + currentState.mSplitTimeAhead + " time behind = " + currentState.mSplitTimeBehind);
                            pCarsAPIParticipantStruct opponentData = currentState.mParticipantData[i];
                            if (opponentData.mWorldPosition[0] != 0 && opponentData.mWorldPosition[2] != 0)
                            {
                                Side side = getSide(currentState.mOrientation[1], playerData.mWorldPosition, opponentData.mWorldPosition);
                                if (side == Side.left)
                                {
                                    carsOnLeft++;
                                }
                                else if (side == Side.right)
                                {
                                    carsOnRight++;
                                }
                            }                            
                        }                        
                    }
                    playMessage(carsOnLeft, carsOnRight, now);
                    hasCarLeft = carsOnLeft > 0;
                    hasCarRight = carsOnRight > 0;
                }
                else if (hasCarLeft || hasCarRight)
                {
                    if (!channelLeftOpenTimerStarted)
                    {
                        timeWhenChannelShouldBeClosed = now.Add(timeToWaitBeforeClosingChannelLeftOpen);
                        channelLeftOpenTimerStarted = true;
                    }
                    if (now > timeWhenChannelShouldBeClosed)
                    {
                        Console.WriteLine("Closing channel left open in spotter");
                        timeWhenChannelShouldBeClosed = DateTime.MaxValue;
                        hasCarLeft = false;
                        hasCarRight = false;
                        audioPlayer.closeChannel();
                        channelLeftOpenTimerStarted = false;
                    }
                }
            }            
        }

        private void playMessage(int carsOnLeftCount, int carsOnRightCount, DateTime now) 
        {
            if (carsOnLeftCount == 0 && carsOnRightCount == 0 && hasCarLeft && hasCarRight)
            {
                Console.WriteLine("clear all round");
                // just gone clear all round
                audioPlayer.holdOpenChannel(true);
                QueuedMessage clearAllRoundMessage = new QueuedMessage(0, null);
                clearAllRoundMessage.expiryTime = (DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond) + clearAllRoundMessageExpiresAfter;
                audioPlayer.playClipImmediately(folderClearAllRound, clearAllRoundMessage);
                audioPlayer.closeChannel();
            }
            else if (carsOnLeftCount == 0 && hasCarLeft && 
                ((carsOnRightCount == 0 && !hasCarRight) || 
                (carsOnRightCount > 0 && hasCarRight)))
            {
                Console.WriteLine("clear left");
                // just gone clear on the left - might still be a car right
                audioPlayer.holdOpenChannel(true);
                QueuedMessage clearLeftMessage = new QueuedMessage(0, null);
                clearLeftMessage.expiryTime = (DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond) + clearMessageExpiresAfter;
                audioPlayer.playClipImmediately(folderClearLeft, clearLeftMessage);
                audioPlayer.closeChannel();
            }
            else if (carsOnRightCount == 0 && hasCarRight &&
                ((carsOnLeftCount == 0 && !hasCarLeft) ||
                (carsOnLeftCount > 0 && hasCarLeft)))
            {
                Console.WriteLine("clear right");
                // just gone clear on the right - might still be a car left
                audioPlayer.holdOpenChannel(true);
                QueuedMessage clearRightMessage = new QueuedMessage(0, null);
                clearRightMessage.expiryTime = (DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond) + clearMessageExpiresAfter;
                audioPlayer.playClipImmediately(folderClearRight, clearRightMessage);
                audioPlayer.closeChannel();
            }
            else if (carsOnLeftCount > 0 && carsOnRightCount > 0 && (!hasCarLeft || !hasCarRight))
            {
                // new 'in the middle'
                Console.WriteLine("3 wide");

                audioPlayer.holdOpenChannel(true);
                QueuedMessage inTheMiddleMessage = new QueuedMessage(0, null);
                inTheMiddleMessage.expiryTime = (DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond) + inTheMiddleMessageExpiresAfter;
                audioPlayer.playClipImmediately(folderInTheMiddle, inTheMiddleMessage);
            }
            else if (carsOnLeftCount > 0 && carsOnRightCount == 0 && !hasCarLeft && !hasCarRight)
            {
                Console.WriteLine("car left");

                // new overlap on the left
                audioPlayer.holdOpenChannel(true);
                QueuedMessage carLeftMessage = new QueuedMessage(0, null);
                carLeftMessage.expiryTime = (DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond) + holdMessageExpiresAfter;
                audioPlayer.playClipImmediately(folderCarLeft, carLeftMessage);
            }
            else if (carsOnLeftCount == 0 && carsOnRightCount > 0 && !hasCarLeft && !hasCarRight)
            {
                Console.WriteLine("car right");

                // new overlap on the right
                audioPlayer.holdOpenChannel(true);
                QueuedMessage carRightMessage = new QueuedMessage(0, null);
                carRightMessage.expiryTime = (DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond) + holdMessageExpiresAfter;
                audioPlayer.playClipImmediately(folderCarRight, carRightMessage);
            }
            else if ((carsOnLeftCount > 0 || carsOnRightCount > 0) && now > timeOfNextHoldMessage)
            {
                Console.WriteLine("still there");
                QueuedMessage holdYourLineMessage = new QueuedMessage(0, null);
                holdYourLineMessage.expiryTime = (DateTime.Now.Ticks / TimeSpan.TicksPerMillisecond) + holdMessageExpiresAfter;
                audioPlayer.playClipImmediately(folderHoldYourLine, holdYourLineMessage);
            }

            timeOfNextHoldMessage = now.Add(repeatHoldFrequency);
        }

        private Side getSide(float playerRotation, float[] playerWorldPosition, float[] opponentWorldPosition)
        {
            float playerRotationDegrees;
            if (playerRotation > 0)
            {
                playerRotationDegrees = 360 - (playerRotation * 57.2958f);
            }
            else
            {
                playerRotationDegrees = -1 * playerRotation * 57.2958f;
            }
            float rawXCoordinate = opponentWorldPosition[0] - playerWorldPosition[0];
            float rawYCoordinate = opponentWorldPosition[2] - playerWorldPosition[2];
            // now transform the position by rotating the frame of reference to align it north-south. The player's car is at the origin pointing north.
            // We assume that both cars have similar orientations (or at least, any orientation difference isn't going to be relevant)
            float alignedXCoordinate = ((float)Math.Cos(playerRotation) * rawXCoordinate) + ((float)Math.Sin(playerRotation) * rawYCoordinate);
            float alignedYCoordinate = ((float)Math.Cos(playerRotation) * rawYCoordinate) - ((float)Math.Sin(playerRotation) * rawXCoordinate);
            
            if (Math.Abs(alignedYCoordinate) < carLength && Math.Abs(alignedXCoordinate) < trackWidth)
            {
                Console.WriteLine("opponent pos = " + opponentWorldPosition[0] + ", " + opponentWorldPosition[2] +
                    "player pos = " + playerWorldPosition[0] + ", " + playerWorldPosition[2]);
                Console.WriteLine("aligned pos = " + alignedXCoordinate + ", " + alignedYCoordinate);
                if (alignedXCoordinate > 0)
                {
                    return Side.right;
                }
                else
                {
                    return Side.left;
                }
            }
            else
            {
                return Side.none;
            }
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

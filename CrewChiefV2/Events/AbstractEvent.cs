﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CrewChiefV2.Data;
using CrewChiefV2.GameState;

namespace CrewChiefV2.Events
{
    abstract class AbstractEvent
    {
        protected AudioPlayer audioPlayer;

        protected PearlsOfWisdom pearlsOfWisdom;

        protected virtual List<SessionType> applicableSessionTypes 
        {
            get { return new List<SessionType> { SessionType.Practice, SessionType.Qualify, SessionType.Race }; }
        }

        protected virtual List<SessionPhase> applicableSessionPhases
        {
            get { return new List<SessionPhase> { SessionPhase.Green }; }
        }

        // this is called on each 'tick' - the event subtype should
        // place its logic in here including calls to audioPlayer.queueClip
        abstract protected void triggerInternal(GameStateData previousGameState, GameStateData currentGameState, SessionConstants sessionConstants);

        // reinitialise any state held by the event subtype
        public abstract void clearState();

        // generally the event subclass can just return true for this, but when a clip is played with
        // a non-zero delay it may be necessary to re-check that the clip is still valid against the current
        // state
        public virtual Boolean isClipStillValid(String eventSubType, GameStateData currentGameState, SessionConstants sessionConstants)
        {
            return isApplicableForCurrentSessionAndPhase(sessionConstants.SessionType, currentGameState.SessionData.SessionPhase);
        }

        public Boolean isApplicableForCurrentSessionAndPhase(SessionType sessionType, SessionPhase sessionPhase)
        {
            return applicableSessionPhases.Contains(sessionPhase) && applicableSessionTypes.Contains(sessionType);
        }

        public virtual void respond(String voiceMessage)
        {
            // no-op, override in the subclasses
        }

        public void setPearlsOfWisdom(PearlsOfWisdom pearlsOfWisdom)
        {
            this.pearlsOfWisdom = pearlsOfWisdom;
        }

        public void trigger(GameStateData previousGameState, GameStateData currentGameState, SessionConstants sessionConstants)
        {
            // common checks here?
            triggerInternal(previousGameState, currentGameState, sessionConstants);
        }
    }
}
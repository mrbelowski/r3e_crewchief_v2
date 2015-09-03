using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using CrewChiefV2.Data;

namespace CrewChiefV2.Events
{
    class DamageReporting : AbstractEvent
    {

        private String folderMinorTransmissionDamage = "damage_reporting/minor_transmission_damage";
        private String folderMinorEngineDamage = "damage_reporting/minor_engine_damage";
        private String folderMinorAeroDamage = "damage_reporting/minor_aero_damage";

        private String folderSevereTransmissionDamage = "damage_reporting/severe_transmission_damage";
        private String folderSevereEngineDamage = "damage_reporting/severe_engine_damage";
        private String folderSevereAeroDamage = "damage_reporting/severe_aero_damage";

        private String folderBustedTransmission = "damage_reporting/busted_transmission";
        private String folderBustedEngine = "damage_reporting/busted_engine";

        private String folderNoTransmissionDamage = "damage_reporting/no_transmission_damage";
        private String folderNoEngineDamage = "damage_reporting/no_engine_damage";
        private String folderNoAeroDamage = "damage_reporting/no_aero_damage";
        private String folderJustAScratch = "damage_reporting/trivial_aero_damage";

        Boolean playedMinorTransmissionDamage;
        Boolean playedMinorEngineDamage;
        Boolean playedMinorAeroDamage;
        Boolean playedSevereTransmissionDamage;
        Boolean playedSevereEngineDamage;
        Boolean playedSevereAeroDamage;
        Boolean playedBustedTransmission;
        Boolean playedBustedEngine;

        float minorTransmissionDamageThreshold = 0.97f;
        float minorEngineDamageThreshold = 0.97f;
        float minorAeroDamageThreshold = 0.99f;
        float trivialAeroDamageThreshold = 0.9999f;

        float severeTransmissionDamageThreshold = 0.4f;
        float severeEngineDamageThreshold = 0.4f;
        float severeAeroDamageThreshold = 0.7f;

        float bustedTransmissionThreshold = 0.0f;
        float bustedEngineThreshold = 0.0f;

        float engineDamage = 1f;
        float trannyDamage = 1f;
        float aeroDamage = 1f;

        Boolean damageEnabled;

        public DamageReporting(AudioPlayer audioPlayer)
        {
            this.audioPlayer = audioPlayer;
            damageEnabled = false;
        }

        public override void clearState()
        {
            playedMinorTransmissionDamage = false; playedMinorEngineDamage = false; playedMinorAeroDamage = false; playedSevereAeroDamage = false;
            playedSevereTransmissionDamage = false; playedSevereEngineDamage = false; playedBustedTransmission = false; playedBustedEngine = false;
            engineDamage = 1;
            trannyDamage = 1;
            aeroDamage = 1;
        }

        public override bool isClipStillValid(string eventSubType)
        {
            return CommonData.isSessionRunning && 
                !((LapCounter)CrewChief.getEvent("LapCounter")).playedFinished;
        }

        override protected void triggerInternal(Shared lastState, Shared currentState)
        {
            if (!damageEnabled && currentState.CarDamage.Aerodynamics == 1 &&
                currentState.CarDamage.Transmission == 1 && currentState.CarDamage.Engine == 1)
            {
                Console.WriteLine("Damage is enabled...");
                damageEnabled = true;
            }
            // sanity check...
            if (damageEnabled && currentState.CarDamage.Aerodynamics == -1 &&
                currentState.CarDamage.Transmission == -1 && currentState.CarDamage.Engine == -1)
            {
                Console.WriteLine("Actually, damage is disabled...");
                damageEnabled = false;
                return;
            }
            if (damageEnabled)
            {
                aeroDamage = currentState.CarDamage.Aerodynamics;
                trannyDamage = currentState.CarDamage.Transmission;
                engineDamage = currentState.CarDamage.Engine;
                if (!playedBustedEngine && currentState.CarDamage.Engine <= bustedEngineThreshold)
                {
                    playedBustedEngine = true;
                    playedSevereEngineDamage = true;
                    playedMinorEngineDamage = true;
                    // if we've busted our engine, don't moan about other damage
                    playedBustedTransmission = true;
                    playedSevereTransmissionDamage = true;
                    playedMinorTransmissionDamage = true;
                    playedSevereAeroDamage = true;
                    playedMinorAeroDamage = true;
                    audioPlayer.queueClip(folderBustedEngine, 0, this);
                    audioPlayer.removeQueuedClip(folderSevereEngineDamage);
                }
                else if (!playedSevereEngineDamage && currentState.CarDamage.Engine <= severeEngineDamageThreshold)
                {
                    playedSevereEngineDamage = true;
                    playedMinorEngineDamage = true;
                    audioPlayer.queueClip(folderSevereEngineDamage, 5, this);
                    audioPlayer.removeQueuedClip(folderMinorEngineDamage);
                }
                else if (!playedMinorEngineDamage && currentState.CarDamage.Engine <= minorEngineDamageThreshold)
                {
                    playedMinorEngineDamage = true;
                    audioPlayer.queueClip(folderMinorEngineDamage, 5, this);
                }

                if (!playedBustedTransmission && currentState.CarDamage.Transmission <= bustedTransmissionThreshold)
                {
                    playedBustedTransmission = true;
                    playedSevereTransmissionDamage = true;
                    playedMinorTransmissionDamage = true;
                    // if we've busted out transmission, don't moan about aero
                    playedSevereAeroDamage = true;
                    playedMinorAeroDamage = true;
                    audioPlayer.queueClip(folderBustedTransmission, 5, this);
                    audioPlayer.removeQueuedClip(folderSevereTransmissionDamage);
                }
                else if (!playedSevereTransmissionDamage && currentState.CarDamage.Transmission <= severeTransmissionDamageThreshold)
                {
                    playedSevereTransmissionDamage = true;
                    playedMinorTransmissionDamage = true;
                    audioPlayer.queueClip(folderSevereTransmissionDamage, 5, this);
                    audioPlayer.removeQueuedClip(folderMinorTransmissionDamage);
                }
                else if (!playedMinorTransmissionDamage && currentState.CarDamage.Transmission <= minorTransmissionDamageThreshold)
                {
                    playedMinorTransmissionDamage = true;
                    audioPlayer.queueClip(folderMinorTransmissionDamage, 5, this);
                }

                if (!playedSevereAeroDamage && currentState.CarDamage.Aerodynamics <= severeAeroDamageThreshold)
                {
                    playedSevereAeroDamage = true;
                    playedMinorAeroDamage = true;
                    audioPlayer.queueClip(folderSevereAeroDamage, 5, this);
                    audioPlayer.removeQueuedClip(folderSevereAeroDamage);
                }
                else if (!playedMinorAeroDamage && currentState.CarDamage.Aerodynamics <= minorAeroDamageThreshold)
                {
                    playedMinorAeroDamage = true;
                    audioPlayer.queueClip(folderMinorAeroDamage, 5, this);
                }
            }
        }

        public override void respond(String voiceMessage)
        {
            if (voiceMessage.Contains(SpeechRecogniser.AERO) || voiceMessage.Contains(SpeechRecogniser.BODY_WORK))
            {
                Console.WriteLine("Aero damage = " + aeroDamage);
                if (aeroDamage == 1 || aeroDamage == -1)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(folderNoAeroDamage, new QueuedMessage(0, null));
                    audioPlayer.closeChannel();
                }
                else if (aeroDamage <= severeAeroDamageThreshold)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(folderSevereAeroDamage, new QueuedMessage(0, null));
                    audioPlayer.closeChannel();
                }
                else if (aeroDamage <= minorAeroDamageThreshold)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(folderMinorAeroDamage, new QueuedMessage(0, null));
                }
                else if (aeroDamage <= trivialAeroDamageThreshold)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(folderJustAScratch, new QueuedMessage(0, null));
                    audioPlayer.closeChannel();
                }
            }
            if (voiceMessage.Contains(SpeechRecogniser.TRANSMISSION))
            {
                if (trannyDamage == 1 || trannyDamage == -1)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(folderNoTransmissionDamage, new QueuedMessage(0, null));
                    audioPlayer.closeChannel();
                }
                else if (trannyDamage <= bustedTransmissionThreshold)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(folderBustedTransmission, new QueuedMessage(0, null));
                    audioPlayer.closeChannel();
                }
                else if (trannyDamage <= severeTransmissionDamageThreshold)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(folderSevereTransmissionDamage, new QueuedMessage(0, null));
                    audioPlayer.closeChannel();
                }
                else if (trannyDamage <= minorTransmissionDamageThreshold)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(folderMinorTransmissionDamage, new QueuedMessage(0, null));
                    audioPlayer.closeChannel();
                }
            }
            if (voiceMessage.Contains(SpeechRecogniser.ENGINE))
            {
                if (engineDamage == 1 || engineDamage == -1)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(folderNoEngineDamage, new QueuedMessage(0, null));
                    audioPlayer.closeChannel();
                }
                else if (engineDamage <= bustedEngineThreshold)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(folderBustedEngine, new QueuedMessage(0, null));
                    audioPlayer.closeChannel();
                }
                else if (engineDamage <= severeEngineDamageThreshold)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(folderSevereEngineDamage, new QueuedMessage(0, null));
                    audioPlayer.closeChannel();
                }
                else if (engineDamage <= minorEngineDamageThreshold)
                {
                    audioPlayer.openChannel();
                    audioPlayer.playClipImmediately(folderMinorEngineDamage, new QueuedMessage(0, null));
                    audioPlayer.closeChannel();
                }
            }
        }
    }
}

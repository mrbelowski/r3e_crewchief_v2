using Microsoft.Speech.Recognition;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CrewChiefV2.Events;

namespace CrewChiefV2
{
    class SpeechRecogniser
    {
        private SpeechRecognitionEngine sre;

        private String location = UserSettings.GetUserSettings().getString("speech_recognition_location");

        // externalise these?
        public static String FUEL = "fuel";
        public static String TYRE_WEAR = "tyre wear";
        public static String TYRE_TEMPS = "tyre temps";
        public static String AERO = "aero";
        public static String TRANSMISSION = "transmission";
        public static String ENGINE = "engine";
        public static String PACE = "pace";
        public static String GAP_IN_FRONT = "gap in front";
        public static String GAP_AHEAD = "gap ahead";
        public static String GAP_BEHIND = "gap behind";
        public static String LAST_LAP_TIME = "last lap time";
        public static String LAP_TIME = "lap time";
        public static String LAST_LAP = "last lap";
        public static String POSITION = "position";

        private static String KEEP_QUIET = "keep quiet";
        private static String SHUT_UP = "shut up";
        private static String I_KNOW_WHAT_IM_DOING = "I know what I'm doing";
        private static String LEAVE_ME_ALONE = "leave me alone";        

        private static String KEEP_ME_UPDATED = "keep me updated";
        private static String KEEP_ME_INFORMED = "keep me informed";
        private static String KEEP_ME_POSTED = "keep me posted";

        private static String HOW_LONGS_LEFT = "how long's left";
        private static String HOW_MANY_LAPS_LEFT = "how many laps left";
        private static String HOW_MANY_LAPS_TO_GO = "how many laps to go";

        private static String SPOT = "spot";
        private static String DONT_SPOT = "don't spot";

        private float confidenceLimit = 0.5f;

        private CrewChief crewChief;

        public Boolean initialised = false;

        public SpeechRecogniser(CrewChief crewChief)
        {
            this.crewChief = crewChief;
        }

        public void initialiseSpeechEngine()
        {
            initialised = false;
            System.Globalization.CultureInfo cultureInfo = null;
            try
            {
                cultureInfo = new System.Globalization.CultureInfo(location);
            }
            catch (Exception e)
            {
                Console.WriteLine("Unable to initialise culture info object for location " + location +
                    ". Check that MSSpeech_SR_" + location + "_TELE.msi is installed");
                Console.WriteLine("Exception message: " + e.Message);
                return;
            }
            try
            {
                this.sre = new SpeechRecognitionEngine(cultureInfo);
            }
            catch (Exception e)
            {
                Console.WriteLine("Unable to initialise speech recognition engine, check that SpeechPlatformRuntime.msi is installed");
                Console.WriteLine("Exception message: " + e.Message);
                return;
            }
            
            sre.SetInputToDefaultAudioDevice();
            Choices info1 = new Choices();
            info1.Add(new string[] { FUEL, TYRE_WEAR, TYRE_TEMPS, AERO, TRANSMISSION, ENGINE, PACE });
            GrammarBuilder gb1 = new GrammarBuilder("how is my");
            gb1.Append(info1);
            Grammar g1 = new Grammar(gb1);

            Choices info2 = new Choices();
            info2.Add(new string[] { GAP_IN_FRONT, GAP_AHEAD, GAP_BEHIND, LAST_LAP, LAP_TIME, LAST_LAP_TIME, POSITION });
            GrammarBuilder gb2 = new GrammarBuilder("what's my");
            gb2.Append(info2);
            Grammar g2 = new Grammar(gb2);

            Choices info3 = new Choices();
            info3.Add(new string[] { KEEP_QUIET, SHUT_UP, I_KNOW_WHAT_IM_DOING, LEAVE_ME_ALONE });
            GrammarBuilder gb3 = new GrammarBuilder();
            gb3.Append(info3);
            Grammar g3 = new Grammar(gb3);

            Choices info4 = new Choices();
            info4.Add(new string[] { KEEP_ME_INFORMED, KEEP_ME_POSTED, KEEP_ME_UPDATED });
            GrammarBuilder gb4 = new GrammarBuilder();
            gb4.Append(info4);
            Grammar g4 = new Grammar(gb4);

            Choices info5 = new Choices();
            info5.Add(new string[] { HOW_LONGS_LEFT, HOW_MANY_LAPS_LEFT, HOW_MANY_LAPS_TO_GO });
            GrammarBuilder gb5 = new GrammarBuilder();
            gb5.Append(info5);
            Grammar g5 = new Grammar(gb5);

            Choices info6 = new Choices();
            info6.Add(new string[] { SPOT, DONT_SPOT });
            GrammarBuilder gb6 = new GrammarBuilder();
            gb6.Append(info6);
            Grammar g6 = new Grammar(gb6);

            sre.LoadGrammar(g1);
            sre.LoadGrammar(g2);
            sre.LoadGrammar(g3);
            sre.LoadGrammar(g4);
            sre.LoadGrammar(g5);
            sre.LoadGrammar(g6);
            sre.SpeechRecognized += new EventHandler<SpeechRecognizedEventArgs>(sre_SpeechRecognized);
            initialised = true;
        }

        void sre_SpeechRecognized(object sender, SpeechRecognizedEventArgs e)
        {
            Console.WriteLine("recognised : " + e.Result.Text + " confidence = " + e.Result.Confidence);
            if (e.Result.Confidence > confidenceLimit)
            {
                AbstractEvent abstractEvent = getEventForSpeech(e.Result.Text);
                if (abstractEvent != null)
                {
                    abstractEvent.respond(e.Result.Text);
                }
            }
            else
            {
                crewChief.youWot();
            }
        }

        public void recognizeAsync()
        {
            sre.RecognizeAsyncCancel();
            sre.RecognizeAsync();
        }

        public void recognizeAsyncCancel()
        {
            sre.RecognizeAsyncCancel();
        }

        private AbstractEvent getEventForSpeech(String recognisedSpeech)
        {
            if (recognisedSpeech.Contains(DONT_SPOT))
            {
                crewChief.disableSpotter();
            }
            else if (recognisedSpeech.Contains(SPOT))
            {
                crewChief.enableSpotter();
            }
            else if (recognisedSpeech.Contains(KEEP_QUIET) ||
                recognisedSpeech.Contains(SHUT_UP) ||
                recognisedSpeech.Contains(I_KNOW_WHAT_IM_DOING) ||
                recognisedSpeech.Contains(LEAVE_ME_ALONE))
            {
                crewChief.enableKeepQuietMode();
            }
            else if (recognisedSpeech.Contains(KEEP_ME_UPDATED) ||
                recognisedSpeech.Contains(KEEP_ME_POSTED) ||
                recognisedSpeech.Contains(KEEP_ME_INFORMED))
            {
                crewChief.disableKeepQuietMode();
            }
            else if (recognisedSpeech.Contains(FUEL))
            {
                return CrewChief.getEvent("Fuel");
            }
            else if (recognisedSpeech.Contains(GAP_IN_FRONT) ||
                recognisedSpeech.Contains(GAP_AHEAD) ||
                recognisedSpeech.Contains(GAP_BEHIND))
            {
                return CrewChief.getEvent("Timings");
            }
            else if (recognisedSpeech.Contains(POSITION))
            {
                return CrewChief.getEvent("Position");
            }
            else if (recognisedSpeech.Contains(LAST_LAP_TIME) ||
                recognisedSpeech.Contains(LAP_TIME) ||
                recognisedSpeech.Contains(LAST_LAP))
            {
                return CrewChief.getEvent("LapTimes");
            }
            else if (recognisedSpeech.Contains(TYRE_TEMPS))
            {
                return CrewChief.getEvent("TyreTempMonitor");
            }
            else if (recognisedSpeech.Contains(HOW_LONGS_LEFT) || 
                recognisedSpeech.Contains(HOW_MANY_LAPS_TO_GO) ||
                recognisedSpeech.Contains(HOW_MANY_LAPS_LEFT))
            {
                return CrewChief.getEvent("RaceTime");
            }
            return null;
        }
    }
}

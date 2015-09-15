using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

/**
 * Holds data which won't change for the duration of a session.
 */
namespace CrewChiefV2.GameState
{
    class SessionConstants
    {
        public SessionType SessionType = SessionType.Unavailable;

        public DateTime SessionStartTime = DateTime.Now;

        // in minutes, 0 if this session is a fixed number of laps rather than a fixed time.
        public float SessionRunTime = 0;

        public int SessionNumberOfLaps = 0;

        public int SessionStartPosition = 0;

        public int NumCarsAtStartOfSession = 0;

        public String TrackName = null;

        public String TrackLayout = null;

        public float TrackLength = 0;

        // race number in ongoing championship (zero indexed)
        public int EventIndex = 0;

        // zero indexed - you multi iteration sessions like DTM qual
        public int SessionIteration = 0;

        // TODO: will this always be an Integer?
        public int PitWindowStart = 0;

        // The minute/lap into which you can/should pit
        // Unit: Minutes in time based sessions, otherwise lap
        public int PitWindowEnd = 0;

        public Boolean HasMandatoryPitStop = false;

        public void display()
        {
            Console.WriteLine("Laps in session = " + SessionNumberOfLaps);
            Console.WriteLine("Time in session = " + SessionRunTime);
            Console.WriteLine("Session type = " + SessionType);
            Console.WriteLine("Session start time = " + SessionStartTime);
            Console.WriteLine("Has mandatory stop = " + HasMandatoryPitStop);
            Console.WriteLine("Mandatory stop window start = " + PitWindowStart);
            Console.WriteLine("Mandatory stop window end = " + PitWindowEnd);
        }
    }
}

using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;

/**
 * Utility class to ease some of the pain of creating a vast driver name folder set
 */
namespace CrewChiefV2
{
    class DriveNameHelper
    {
        private static Dictionary<String, String> nameToPhonetic = new Dictionary<String, String>();

        private static String folder = @"C:\projects\crewchief_c_sharp\CrewChiefV2\CrewChiefV2\sounds\driver_names";

        private static void readNamesToPhoneticsFile()
        {
            int counter = 0;
            string line;
            StreamReader file = new StreamReader(folder + @"\names.txt");
            while ((line = file.ReadLine()) != null)
            {
                String[] split = line.Split(new char[] {':'});
                if (!nameToPhonetic.ContainsKey(split[0].Trim()))
                {
                    String phonetic = "";
                    if (split.Length == 2)
                    {
                        phonetic = split[1].Trim();
                    }
                    nameToPhonetic.Add(split[0].Trim(), phonetic);
                }
                counter++;
            }
            file.Close();
        }

        public static List<String> getPhoneticDriverNames(List<String> driverNames)
        {
            readNamesToPhoneticsFile();
            List<String> phoneticNames = new List<String>();
            foreach (String driverName in driverNames)
            {
                String phoneticName = driverName;
                if (nameToPhonetic.ContainsKey(driverName) && nameToPhonetic[driverName].Length > 0)
                {
                    phoneticName = nameToPhonetic[driverName];
                    Console.WriteLine("Using phonetic " + phoneticName + " for driver name " + driverName);
                }
                if (!phoneticNames.Contains(phoneticName))
                {
                    phoneticNames.Add(phoneticName);
                }
            }
            return phoneticNames;
        }
    }
}

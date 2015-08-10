using System;
using System.Diagnostics;

namespace CrewChiefV2
{
    public class Utilities
    {
        public static Single RpsToRpm(Single rps)
        {
            return rps * (60 / (2 * (Single)Math.PI));
        }

        public static Single MpsToKph(Single mps)
        {
            return mps * 3.6f;
        }

        public static bool IsRrreRunning()
        {
            return Process.GetProcessesByName("RRRE").Length > 0;
        }

        public static void runRrre()
        {
            String launchExe = UserSettings.GetUserSettings().getString("r3e_launch_exe");
            if (launchExe.Contains(" "))
            {
                if (!launchExe.StartsWith("\""))
                {
                    launchExe = "\"" + launchExe;
                }
                if (!launchExe.EndsWith("\""))
                {
                    launchExe = launchExe + "\"";
                }
            }
            String launchParams = UserSettings.GetUserSettings().getString("r3e_launch_params");
            Console.WriteLine("Attempting to run R3E using " + launchExe + " "  + launchParams);
            using (Process process = new Process())
            {
               ProcessStartInfo startInfo = new ProcessStartInfo(launchExe);
               startInfo.Arguments = launchParams;
               process.StartInfo = startInfo;
               process.Start();
            }
        }
    }
}
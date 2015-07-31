using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CrewChiefV2
{
    class UserSettings
    {
        public String[] editableBooleanProperties = new String[] { "use_sweary_messages", "enable_spotter"};
        public String[] editableIntProperties = new String[] { "update_interval", "minimum_time_between_pearls_of_wisdom" };
        public String[] editableFloatProperties = new String[] {"background_volume", "spotter_car_length" };
        public String[] editableStringProperties = new String[] {"sound_files_path" };

        private UserSettings()
        {

        }

        private static readonly UserSettings _userSettings = new UserSettings();

        private Boolean propertiesUpdated = false;

        public static UserSettings GetUserSettings()
        {
            return _userSettings;
        }

        public String getString(String name)
        {
            return (String)Properties.Settings.Default[name];
        }

        public float getFloat(String name)
        {
            return (float) Properties.Settings.Default[name];
        }

        public Boolean getBoolean(String name)
        {
            return (Boolean)Properties.Settings.Default[name];
        }

        public int getInt(String name)
        {
            return (int)Properties.Settings.Default[name];
        }

        public void setProperty(String name, Object value)
        {
            if (value != Properties.Settings.Default[name])
            {
                Properties.Settings.Default[name] = value;
                propertiesUpdated = true;
            }
        }

        public void saveUserSettings()
        {
            if (propertiesUpdated)
            {
                Properties.Settings.Default.Save();
            }
        }
    }
}

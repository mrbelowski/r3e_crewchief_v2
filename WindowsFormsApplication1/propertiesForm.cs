using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace CrewChiefV2
{
    public partial class PropertiesForm : Form
    {
        public PropertiesForm()
        {
            InitializeComponent();

            foreach (SettingsProperty strProp in UserSettings.GetUserSettings().getProperties(typeof(String)))
            {
                this.flowLayoutPanel1.Controls.Add(new StringPropertyControl(strProp.Name, strProp.Name,
                   UserSettings.GetUserSettings().getString(strProp.Name)));
            }
            foreach (SettingsProperty boolProp in UserSettings.GetUserSettings().getProperties(typeof(Boolean)))
            {
                this.flowLayoutPanel1.Controls.Add(new BooleanPropertyControl(boolProp.Name, boolProp.Name, 
                    UserSettings.GetUserSettings().getBoolean(boolProp.Name)));
            }
            foreach (SettingsProperty floatProp in UserSettings.GetUserSettings().getProperties(typeof(float)))
            {
                this.flowLayoutPanel1.Controls.Add(new FloatPropertyControl(floatProp.Name, floatProp.Name, 
                    UserSettings.GetUserSettings().getFloat(floatProp.Name)));
            }
            foreach (SettingsProperty intProp in UserSettings.GetUserSettings().getProperties(typeof(int)))
            {
                this.flowLayoutPanel1.Controls.Add(new IntPropertyControl(intProp.Name, intProp.Name, 
                    UserSettings.GetUserSettings().getInt(intProp.Name)));
            }
        }
        public void save()
        {
            foreach (var control in this.flowLayoutPanel1.Controls)
            {
                if (control.GetType() == typeof(BooleanPropertyControl))
                {
                    BooleanPropertyControl booleanControl = (BooleanPropertyControl)control;
                    UserSettings.GetUserSettings().setProperty(booleanControl.propertyId, 
                        booleanControl.getValue());
                }
                if (control.GetType() == typeof(StringPropertyControl))
                {
                    StringPropertyControl stringControl = (StringPropertyControl)control;
                    UserSettings.GetUserSettings().setProperty(stringControl.propertyId, 
                        stringControl.getValue());
                }
                if (control.GetType() == typeof(FloatPropertyControl))
                {
                    FloatPropertyControl floatControl = (FloatPropertyControl)control;
                    UserSettings.GetUserSettings().setProperty(floatControl.propertyId,
                        floatControl.getValue());
                }
                if (control.GetType() == typeof(IntPropertyControl))
                {
                    IntPropertyControl intControl = (IntPropertyControl)control;
                    UserSettings.GetUserSettings().setProperty(intControl.propertyId,
                        intControl.getValue());
                }
            }
            UserSettings.GetUserSettings().saveUserSettings();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            save();
        }
    }
}

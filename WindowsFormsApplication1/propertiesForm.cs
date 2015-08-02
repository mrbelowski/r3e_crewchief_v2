﻿using System;
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
        System.Windows.Forms.Form parent;
        public PropertiesForm(System.Windows.Forms.Form parent)
        {
            this.parent = parent;
            InitializeComponent();
            if (System.Diagnostics.Debugger.IsAttached) {
                this.button1.Text = "Save (manual restart required)";
            }

            foreach (SettingsProperty strProp in UserSettings.GetUserSettings().getProperties(typeof(String)))
            {
                this.stringPropertiesLayout.Controls.Add(new StringPropertyControl(strProp.Name, strProp.Name + " (text)",
                   UserSettings.GetUserSettings().getString(strProp.Name), (String) strProp.DefaultValue));
            }
            foreach (SettingsProperty boolProp in UserSettings.GetUserSettings().getProperties(typeof(Boolean)))
            {
                Boolean defaultValue;
                Boolean.TryParse((String) boolProp.DefaultValue, out defaultValue);
                this.booleanPropertiesLayout.Controls.Add(new BooleanPropertyControl(boolProp.Name, boolProp.Name + " (boolean)", 
                    UserSettings.GetUserSettings().getBoolean(boolProp.Name), defaultValue));
            }
            foreach (SettingsProperty floatProp in UserSettings.GetUserSettings().getProperties(typeof(float)))
            {
                float defaultValue;
                float.TryParse((String)floatProp.DefaultValue, out defaultValue);
                this.floatPropertiesLayout.Controls.Add(new FloatPropertyControl(floatProp.Name, floatProp.Name + " (real number)", 
                    UserSettings.GetUserSettings().getFloat(floatProp.Name), defaultValue));
            }
            foreach (SettingsProperty intProp in UserSettings.GetUserSettings().getProperties(typeof(int)))
            {
                int defaultValue;
                int.TryParse((String) intProp.DefaultValue, out defaultValue);
                this.integerPropertiesLayout.Controls.Add(new IntPropertyControl(intProp.Name, intProp.Name + " (whole number)", 
                    UserSettings.GetUserSettings().getInt(intProp.Name), defaultValue));
            }
        }
        public void save()
        {
            foreach (StringPropertyControl stringControl in this.stringPropertiesLayout.Controls)
            {
                UserSettings.GetUserSettings().setProperty(stringControl.propertyId, 
                    stringControl.getValue());
            }
            foreach  (IntPropertyControl intControl in this.integerPropertiesLayout.Controls)
            {
                UserSettings.GetUserSettings().setProperty(intControl.propertyId,
                    intControl.getValue());
            }
            foreach (FloatPropertyControl floatControl in this.floatPropertiesLayout.Controls)
            {
                UserSettings.GetUserSettings().setProperty(floatControl.propertyId,
                    floatControl.getValue());
            }
            foreach (BooleanPropertyControl booleanControl in this.booleanPropertiesLayout.Controls)
            {
                UserSettings.GetUserSettings().setProperty(booleanControl.propertyId, 
                    booleanControl.getValue());
            }                
            UserSettings.GetUserSettings().saveUserSettings();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            save();
            if (!System.Diagnostics.Debugger.IsAttached)
            {
                System.Diagnostics.Process.Start(Application.ExecutablePath); // to start new instance of application
                parent.Close(); //to turn off current app
            }
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void flowLayoutPanel3_Paint(object sender, PaintEventArgs e)
        {

        }

        private void flowLayoutPanel4_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }
    }
}
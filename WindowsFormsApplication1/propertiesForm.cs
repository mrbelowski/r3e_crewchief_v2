using System;
using System.Collections.Generic;
using System.ComponentModel;
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
            foreach (String strProp in UserSettings.GetUserSettings().editableStringProperties)
            {
                this.flowLayoutPanel1.Controls.Add(new StringPropertyControl(strProp, strProp, 
                    UserSettings.GetUserSettings().getString(strProp)));
            }
            foreach (String boolProp in UserSettings.GetUserSettings().editableBooleanProperties)
            {
                this.flowLayoutPanel1.Controls.Add(new BooleanPropertyControl(boolProp, boolProp, 
                    UserSettings.GetUserSettings().getBoolean(boolProp)));
            }
            foreach (String floatProp in UserSettings.GetUserSettings().editableFloatProperties)
            {
                this.flowLayoutPanel1.Controls.Add(new FloatPropertyControl(floatProp, floatProp, 
                    UserSettings.GetUserSettings().getFloat(floatProp)));
            }
            foreach (String intProp in UserSettings.GetUserSettings().editableIntProperties)
            {
                this.flowLayoutPanel1.Controls.Add(new IntPropertyControl(intProp, intProp, 
                    UserSettings.GetUserSettings().getInt(intProp)));
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

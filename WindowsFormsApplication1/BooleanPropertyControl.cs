using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace CrewChiefV2
{
    public partial class BooleanPropertyControl : UserControl
    {
        public String propertyId;
        public Boolean defaultValue;
        public BooleanPropertyControl(String propertyId, String label, Boolean value, Boolean defaultValue, String helpText)
        {
            InitializeComponent();
            this.propertyId = propertyId;
            this.checkBox1.Text = label;
            this.checkBox1.Checked = value;
            this.defaultValue = defaultValue;
            this.toolTip1.SetToolTip(this.checkBox1, helpText);
        }
        public Boolean getValue()
        {
            return this.checkBox1.Checked;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.checkBox1.Checked = defaultValue;
        }
    }
}

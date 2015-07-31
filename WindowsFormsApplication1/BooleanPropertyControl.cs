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
        public BooleanPropertyControl(String propertyId, String label, Boolean value)
        {
            InitializeComponent();
            this.propertyId = propertyId;
            this.checkBox1.Text = label;
            this.checkBox1.Checked = value;
        }
        public Boolean getValue()
        {
            return this.checkBox1.Checked;
        }
    }
}

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
    public partial class StringPropertyControl : UserControl
    {
        public String propertyId;
        public StringPropertyControl(String propertyId, String label, String currentValue)
        {
            InitializeComponent();
            this.propertyId = propertyId;
            this.label1.Text = label;
            this.textBox1.Text = currentValue;
        }
        public String getValue()
        {
            return this.textBox1.Text;
        }
    }
}

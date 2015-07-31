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
    public partial class FloatPropertyControl : UserControl
    {
        public String propertyId;
        public float originalValue;
        public FloatPropertyControl (String propertyId, String label, float value)
        {
            InitializeComponent();
            this.propertyId = propertyId;
            this.label1.Text = label;
            this.originalValue = value;
            this.textBox1.Text = value.ToString();
        }
        public float getValue()
        {
            float newVal;
            if (float.TryParse(this.textBox1.Text, out newVal))
            {
                originalValue = newVal;
                return newVal;
            }
            else
            {
                return originalValue;
            }
        }
    }
}

namespace CrewChiefV2
{
    partial class PropertiesForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.button1 = new System.Windows.Forms.Button();
            this.stringPropertiesLayout = new System.Windows.Forms.FlowLayoutPanel();
            this.booleanPropertiesLayout = new System.Windows.Forms.FlowLayoutPanel();
            this.integerPropertiesLayout = new System.Windows.Forms.FlowLayoutPanel();
            this.floatPropertiesLayout = new System.Windows.Forms.FlowLayoutPanel();
            this.SuspendLayout();
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(12, 604);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(185, 40);
            this.button1.TabIndex = 1;
            this.button1.Text = "Save and restart";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // stringPropertiesLayout
            // 
            this.stringPropertiesLayout.AutoSize = true;
            this.stringPropertiesLayout.Location = new System.Drawing.Point(12, 12);
            this.stringPropertiesLayout.MaximumSize = new System.Drawing.Size(1135, 90);
            this.stringPropertiesLayout.Name = "stringPropertiesLayout";
            this.stringPropertiesLayout.Size = new System.Drawing.Size(1135, 75);
            this.stringPropertiesLayout.TabIndex = 2;
            // 
            // booleanPropertiesLayout
            // 
            this.booleanPropertiesLayout.AutoSize = true;
            this.booleanPropertiesLayout.Location = new System.Drawing.Point(12, 96);
            this.booleanPropertiesLayout.MaximumSize = new System.Drawing.Size(1135, 170);
            this.booleanPropertiesLayout.Name = "booleanPropertiesLayout";
            this.booleanPropertiesLayout.Size = new System.Drawing.Size(1135, 156);
            this.booleanPropertiesLayout.TabIndex = 4;
            // 
            // integerPropertiesLayout
            // 
            this.integerPropertiesLayout.AutoSize = true;
            this.integerPropertiesLayout.Location = new System.Drawing.Point(12, 261);
            this.integerPropertiesLayout.MaximumSize = new System.Drawing.Size(1135, 180);
            this.integerPropertiesLayout.Name = "integerPropertiesLayout";
            this.integerPropertiesLayout.Size = new System.Drawing.Size(1135, 166);
            this.integerPropertiesLayout.TabIndex = 6;
            this.integerPropertiesLayout.Paint += new System.Windows.Forms.PaintEventHandler(this.flowLayoutPanel3_Paint);
            // 
            // floatPropertiesLayout
            // 
            this.floatPropertiesLayout.AutoSize = true;
            this.floatPropertiesLayout.Location = new System.Drawing.Point(12, 436);
            this.floatPropertiesLayout.MaximumSize = new System.Drawing.Size(1135, 160);
            this.floatPropertiesLayout.Name = "floatPropertiesLayout";
            this.floatPropertiesLayout.Size = new System.Drawing.Size(1135, 160);
            this.floatPropertiesLayout.TabIndex = 8;
            this.floatPropertiesLayout.Paint += new System.Windows.Forms.PaintEventHandler(this.flowLayoutPanel4_Paint);
            // 
            // PropertiesForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.AutoScroll = true;
            this.ClientSize = new System.Drawing.Size(1183, 652);
            this.Controls.Add(this.floatPropertiesLayout);
            this.Controls.Add(this.integerPropertiesLayout);
            this.Controls.Add(this.booleanPropertiesLayout);
            this.Controls.Add(this.stringPropertiesLayout);
            this.Controls.Add(this.button1);
            this.Name = "PropertiesForm";
            this.Text = "properties_form";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.FlowLayoutPanel stringPropertiesLayout;
        private System.Windows.Forms.FlowLayoutPanel booleanPropertiesLayout;
        private System.Windows.Forms.FlowLayoutPanel integerPropertiesLayout;
        private System.Windows.Forms.FlowLayoutPanel floatPropertiesLayout;
    }
}
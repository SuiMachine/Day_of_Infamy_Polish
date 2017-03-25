namespace SuisVPK
{
    partial class FileLineCheck
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
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.B_BrowseTranslation = new System.Windows.Forms.Button();
            this.TB_Source = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.TB_OriginalFiles = new System.Windows.Forms.TextBox();
            this.B_BrowseOriginalFolder = new System.Windows.Forms.Button();
            this.B_SaveLocations = new System.Windows.Forms.Button();
            this.B_Check = new System.Windows.Forms.Button();
            this.RB_Results = new System.Windows.Forms.RichTextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.TB_PostFix = new System.Windows.Forms.TextBox();
            this.tableLayoutPanel1.SuspendLayout();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 1;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle());
            this.tableLayoutPanel1.Controls.Add(this.panel1, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.RB_Results, 0, 1);
            this.tableLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 0);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 2;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Absolute, 89F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 100F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(491, 335);
            this.tableLayoutPanel1.TabIndex = 0;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.TB_PostFix);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.B_Check);
            this.panel1.Controls.Add(this.B_SaveLocations);
            this.panel1.Controls.Add(this.B_BrowseOriginalFolder);
            this.panel1.Controls.Add(this.TB_OriginalFiles);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.B_BrowseTranslation);
            this.panel1.Controls.Add(this.TB_Source);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel1.Location = new System.Drawing.Point(3, 3);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(485, 83);
            this.panel1.TabIndex = 0;
            // 
            // B_BrowseTranslation
            // 
            this.B_BrowseTranslation.Location = new System.Drawing.Point(447, 27);
            this.B_BrowseTranslation.Name = "B_BrowseTranslation";
            this.B_BrowseTranslation.Size = new System.Drawing.Size(28, 23);
            this.B_BrowseTranslation.TabIndex = 2;
            this.B_BrowseTranslation.Text = "...";
            this.B_BrowseTranslation.UseVisualStyleBackColor = true;
            this.B_BrowseTranslation.Click += new System.EventHandler(this.B_BrowseTranslation_Click);
            // 
            // TB_Source
            // 
            this.TB_Source.Location = new System.Drawing.Point(104, 29);
            this.TB_Source.Name = "TB_Source";
            this.TB_Source.Size = new System.Drawing.Size(337, 20);
            this.TB_Source.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(3, 32);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(83, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Translation files:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(3, 6);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(93, 13);
            this.label2.TabIndex = 3;
            this.label2.Text = "Compare to (orig.):";
            // 
            // TB_OriginalFiles
            // 
            this.TB_OriginalFiles.Location = new System.Drawing.Point(104, 3);
            this.TB_OriginalFiles.Name = "TB_OriginalFiles";
            this.TB_OriginalFiles.Size = new System.Drawing.Size(337, 20);
            this.TB_OriginalFiles.TabIndex = 4;
            // 
            // B_BrowseOriginalFolder
            // 
            this.B_BrowseOriginalFolder.Location = new System.Drawing.Point(447, 1);
            this.B_BrowseOriginalFolder.Name = "B_BrowseOriginalFolder";
            this.B_BrowseOriginalFolder.Size = new System.Drawing.Size(28, 23);
            this.B_BrowseOriginalFolder.TabIndex = 5;
            this.B_BrowseOriginalFolder.Text = "...";
            this.B_BrowseOriginalFolder.UseVisualStyleBackColor = true;
            this.B_BrowseOriginalFolder.Click += new System.EventHandler(this.B_BrowseOriginalFolder_Click);
            // 
            // B_SaveLocations
            // 
            this.B_SaveLocations.Location = new System.Drawing.Point(287, 53);
            this.B_SaveLocations.Name = "B_SaveLocations";
            this.B_SaveLocations.Size = new System.Drawing.Size(91, 23);
            this.B_SaveLocations.TabIndex = 6;
            this.B_SaveLocations.Text = "Save Settings";
            this.B_SaveLocations.UseVisualStyleBackColor = true;
            this.B_SaveLocations.Click += new System.EventHandler(this.B_SaveLocations_Click);
            // 
            // B_Check
            // 
            this.B_Check.Location = new System.Drawing.Point(384, 53);
            this.B_Check.Name = "B_Check";
            this.B_Check.Size = new System.Drawing.Size(91, 23);
            this.B_Check.TabIndex = 7;
            this.B_Check.Text = "Check";
            this.B_Check.UseVisualStyleBackColor = true;
            this.B_Check.Click += new System.EventHandler(this.B_Check_Click);
            // 
            // RB_Results
            // 
            this.RB_Results.Dock = System.Windows.Forms.DockStyle.Fill;
            this.RB_Results.Location = new System.Drawing.Point(3, 92);
            this.RB_Results.Name = "RB_Results";
            this.RB_Results.Size = new System.Drawing.Size(485, 240);
            this.RB_Results.TabIndex = 1;
            this.RB_Results.Text = "";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(3, 58);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(90, 13);
            this.label3.TabIndex = 8;
            this.label3.Text = "Tranlation postfix:";
            // 
            // TB_PostFix
            // 
            this.TB_PostFix.Location = new System.Drawing.Point(104, 55);
            this.TB_PostFix.Name = "TB_PostFix";
            this.TB_PostFix.Size = new System.Drawing.Size(177, 20);
            this.TB_PostFix.TabIndex = 9;
            // 
            // FileLineCheck
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(491, 335);
            this.Controls.Add(this.tableLayoutPanel1);
            this.Name = "FileLineCheck";
            this.Text = "FileLineCheck";
            this.tableLayoutPanel1.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button B_BrowseTranslation;
        private System.Windows.Forms.TextBox TB_Source;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button B_Check;
        private System.Windows.Forms.Button B_SaveLocations;
        private System.Windows.Forms.Button B_BrowseOriginalFolder;
        private System.Windows.Forms.TextBox TB_OriginalFiles;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.RichTextBox RB_Results;
        private System.Windows.Forms.TextBox TB_PostFix;
        private System.Windows.Forms.Label label3;
    }
}
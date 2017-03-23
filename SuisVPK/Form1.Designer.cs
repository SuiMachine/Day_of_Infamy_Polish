﻿namespace SuisVPK
{
    partial class Form1
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
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.TB_DevToolsPath = new System.Windows.Forms.TextBox();
            this.b_devpath_set = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.B_Watch = new System.Windows.Forms.Button();
            this.label2 = new System.Windows.Forms.Label();
            this.B_SetWorkFolder = new System.Windows.Forms.Button();
            this.TB_WorkFolder = new System.Windows.Forms.TextBox();
            this.minizedIcon = new System.Windows.Forms.NotifyIcon(this.components);
            this.SuspendLayout();
            // 
            // TB_DevToolsPath
            // 
            this.TB_DevToolsPath.Location = new System.Drawing.Point(97, 12);
            this.TB_DevToolsPath.Name = "TB_DevToolsPath";
            this.TB_DevToolsPath.Size = new System.Drawing.Size(272, 20);
            this.TB_DevToolsPath.TabIndex = 0;
            // 
            // b_devpath_set
            // 
            this.b_devpath_set.Location = new System.Drawing.Point(375, 10);
            this.b_devpath_set.Name = "b_devpath_set";
            this.b_devpath_set.Size = new System.Drawing.Size(75, 23);
            this.b_devpath_set.TabIndex = 1;
            this.b_devpath_set.Text = "Set";
            this.b_devpath_set.UseVisualStyleBackColor = true;
            this.b_devpath_set.Click += new System.EventHandler(this.b_devpath_set_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(7, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(84, 13);
            this.label1.TabIndex = 2;
            this.label1.Text = "Dev Tools Path:";
            // 
            // B_Watch
            // 
            this.B_Watch.Location = new System.Drawing.Point(184, 64);
            this.B_Watch.Name = "B_Watch";
            this.B_Watch.Size = new System.Drawing.Size(75, 23);
            this.B_Watch.TabIndex = 6;
            this.B_Watch.Text = "Watch";
            this.B_Watch.UseVisualStyleBackColor = true;
            this.B_Watch.Click += new System.EventHandler(this.B_Watch_Click);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(7, 41);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(68, 13);
            this.label2.TabIndex = 9;
            this.label2.Text = "Work Folder:";
            // 
            // B_SetWorkFolder
            // 
            this.B_SetWorkFolder.Location = new System.Drawing.Point(375, 36);
            this.B_SetWorkFolder.Name = "B_SetWorkFolder";
            this.B_SetWorkFolder.Size = new System.Drawing.Size(75, 23);
            this.B_SetWorkFolder.TabIndex = 8;
            this.B_SetWorkFolder.Text = "Set";
            this.B_SetWorkFolder.UseVisualStyleBackColor = true;
            this.B_SetWorkFolder.Click += new System.EventHandler(this.B_SetWorkFolder_Click);
            // 
            // TB_WorkFolder
            // 
            this.TB_WorkFolder.Location = new System.Drawing.Point(97, 38);
            this.TB_WorkFolder.Name = "TB_WorkFolder";
            this.TB_WorkFolder.Size = new System.Drawing.Size(272, 20);
            this.TB_WorkFolder.TabIndex = 7;
            // 
            // minizedIcon
            // 
            this.minizedIcon.Icon = ((System.Drawing.Icon)(resources.GetObject("minizedIcon.Icon")));
            this.minizedIcon.Text = "SuicideMachine\'s VPK Helper";
            this.minizedIcon.Visible = true;
            this.minizedIcon.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.minizedIcon_MouseDoubleClick);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(460, 95);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.B_SetWorkFolder);
            this.Controls.Add(this.TB_WorkFolder);
            this.Controls.Add(this.B_Watch);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.b_devpath_set);
            this.Controls.Add(this.TB_DevToolsPath);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "Form1";
            this.Text = "SuicideMachine\'s VPK Helper";
            this.Resize += new System.EventHandler(this.Form1_Resize);
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox TB_DevToolsPath;
        private System.Windows.Forms.Button b_devpath_set;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button B_Watch;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button B_SetWorkFolder;
        private System.Windows.Forms.TextBox TB_WorkFolder;
        private System.Windows.Forms.NotifyIcon minizedIcon;
    }
}


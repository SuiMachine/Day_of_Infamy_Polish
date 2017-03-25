namespace SuisVPK
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
            this.toolbarContexMenu = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.updateFilelistAndVPKToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cancelToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.label3 = new System.Windows.Forms.Label();
            this.TB_SetModDir = new System.Windows.Forms.Button();
            this.TB_ModDir = new System.Windows.Forms.TextBox();
            this.B_OpenChecker = new System.Windows.Forms.Button();
            this.toolbarContexMenu.SuspendLayout();
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
            this.B_Watch.Location = new System.Drawing.Point(144, 90);
            this.B_Watch.Name = "B_Watch";
            this.B_Watch.Size = new System.Drawing.Size(111, 23);
            this.B_Watch.TabIndex = 6;
            this.B_Watch.Text = "Watch for changes";
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
            this.minizedIcon.ContextMenuStrip = this.toolbarContexMenu;
            this.minizedIcon.Icon = ((System.Drawing.Icon)(resources.GetObject("minizedIcon.Icon")));
            this.minizedIcon.Text = "SuicideMachine\'s VPK Helper";
            this.minizedIcon.Visible = true;
            this.minizedIcon.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler(this.minizedIcon_MouseDoubleClick);
            // 
            // toolbarContexMenu
            // 
            this.toolbarContexMenu.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.updateFilelistAndVPKToolStripMenuItem,
            this.cancelToolStripMenuItem,
            this.exitToolStripMenuItem});
            this.toolbarContexMenu.Name = "toolbarContexMenu";
            this.toolbarContexMenu.Size = new System.Drawing.Size(194, 70);
            // 
            // updateFilelistAndVPKToolStripMenuItem
            // 
            this.updateFilelistAndVPKToolStripMenuItem.Name = "updateFilelistAndVPKToolStripMenuItem";
            this.updateFilelistAndVPKToolStripMenuItem.Size = new System.Drawing.Size(193, 22);
            this.updateFilelistAndVPKToolStripMenuItem.Text = "Update filelist and VPK";
            this.updateFilelistAndVPKToolStripMenuItem.Click += new System.EventHandler(this.updateFilelistAndVPKToolStripMenuItem_Click);
            // 
            // cancelToolStripMenuItem
            // 
            this.cancelToolStripMenuItem.Name = "cancelToolStripMenuItem";
            this.cancelToolStripMenuItem.Size = new System.Drawing.Size(193, 22);
            this.cancelToolStripMenuItem.Text = "Cancel";
            // 
            // exitToolStripMenuItem
            // 
            this.exitToolStripMenuItem.Name = "exitToolStripMenuItem";
            this.exitToolStripMenuItem.Size = new System.Drawing.Size(193, 22);
            this.exitToolStripMenuItem.Text = "Exit";
            this.exitToolStripMenuItem.Click += new System.EventHandler(this.exitToolStripMenuItem_Click);
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(7, 67);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(45, 13);
            this.label3.TabIndex = 12;
            this.label3.Text = "Mod dir:";
            // 
            // TB_SetModDir
            // 
            this.TB_SetModDir.Location = new System.Drawing.Point(375, 62);
            this.TB_SetModDir.Name = "TB_SetModDir";
            this.TB_SetModDir.Size = new System.Drawing.Size(75, 23);
            this.TB_SetModDir.TabIndex = 11;
            this.TB_SetModDir.Text = "Set";
            this.TB_SetModDir.UseVisualStyleBackColor = true;
            this.TB_SetModDir.Click += new System.EventHandler(this.TB_SetModDir_Click);
            // 
            // TB_ModDir
            // 
            this.TB_ModDir.Location = new System.Drawing.Point(97, 64);
            this.TB_ModDir.Name = "TB_ModDir";
            this.TB_ModDir.Size = new System.Drawing.Size(272, 20);
            this.TB_ModDir.TabIndex = 10;
            // 
            // B_OpenChecker
            // 
            this.B_OpenChecker.Location = new System.Drawing.Point(10, 90);
            this.B_OpenChecker.Name = "B_OpenChecker";
            this.B_OpenChecker.Size = new System.Drawing.Size(128, 23);
            this.B_OpenChecker.TabIndex = 13;
            this.B_OpenChecker.Text = "Missing lines checking";
            this.B_OpenChecker.UseVisualStyleBackColor = true;
            this.B_OpenChecker.Click += new System.EventHandler(this.B_OpenChecker_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(460, 120);
            this.Controls.Add(this.B_OpenChecker);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.TB_SetModDir);
            this.Controls.Add(this.TB_ModDir);
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
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.Form1_FormClosing);
            this.Resize += new System.EventHandler(this.Form1_Resize);
            this.toolbarContexMenu.ResumeLayout(false);
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
        private System.Windows.Forms.ContextMenuStrip toolbarContexMenu;
        private System.Windows.Forms.ToolStripMenuItem updateFilelistAndVPKToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cancelToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button TB_SetModDir;
        private System.Windows.Forms.TextBox TB_ModDir;
        private System.Windows.Forms.Button B_OpenChecker;
    }
}


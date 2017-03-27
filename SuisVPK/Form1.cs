using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using System.Diagnostics;

namespace SuisVPK
{
    public partial class Form1 : Form
    {
        Timer timerCheck = new Timer();
        Dictionary<string, DateTime> fileDictionary = new Dictionary<string, DateTime>();
        ContextMenu contexTooltipMenu = new ContextMenu();
        public ConfigFile configFileRef = new ConfigFile();

        const string vpk_exe = "vpk.exe";
        const string vpk_args = "";

        public Form1()
        {
            InitializeComponent();
            configFileRef = new ConfigFile();
            updateConfigInformation();

            contexTooltipMenu.MenuItems.Add("Update file list and VPK");
            contexTooltipMenu.MenuItems.Add("Cancel");
            contexTooltipMenu.MenuItems.Add("Exit");
        }

        #region ButtonEvents
        private void b_devpath_set_Click(object sender, EventArgs e)
        {
            if (Directory.Exists(TB_DevToolsPath.Text) && File.Exists(Path.Combine(TB_DevToolsPath.Text, vpk_exe)))
            {
                configFileRef.vpk_location = TB_DevToolsPath.Text;
                configFileRef.saveSettings();
            }
            else
                MessageBox.Show("Selected folder doesn't seem to have vpk.exe in it. Please, choose the correct folder.", "Error", MessageBoxButtons.OK, MessageBoxIcon.Warning);
        }

        private void B_SetWorkFolder_Click(object sender, EventArgs e)
        {
            if (Directory.Exists(TB_WorkFolder.Text))
            {
                configFileRef.workDirectory = TB_WorkFolder.Text;
            }
            configFileRef.saveSettings();
        }

        private void B_Watch_Click(object sender, EventArgs e)
        {

            if(configFileRef .vpk_location!= "" && Directory.Exists(configFileRef.vpk_location) && configFileRef.workDirectory != "" && Directory.Exists(configFileRef.workDirectory))
            {
                fileDictionary.Clear();
                createList();
                this.WindowState = FormWindowState.Minimized;

                timerCheck.Tick += TimerCheck_Tick;
                timerCheck.Interval = 3000;
                timerCheck.Start();
            }
        }

        private void createList()
        {
            string[] Directories = Directory.GetDirectories(configFileRef.workDirectory, "*", SearchOption.AllDirectories);
            List<string> files = new List<string>();

            foreach (string directory in Directories)
            {
                string[] tempFiles = Directory.GetFiles(directory);
                foreach (string file in tempFiles)
                {
                    files.Add(file);
                }
            }
            string[] final_files = Directory.GetFiles(configFileRef.workDirectory);
            foreach (string file in final_files)
            {
                files.Add(file);
            }

            foreach(string file in files)
            {
                FileInfo f = new FileInfo(file);
                fileDictionary.Add(file, f.LastWriteTimeUtc);
                Debug.WriteLine(file + "   " + f.LastWriteTimeUtc.ToShortTimeString());
            }

        }
        #endregion

        private void TimerCheck_Tick(object sender, EventArgs e)
        {
            //Debug.WriteLine("Timer check tick");
            if(processIsntRunning() && filesAreDifferent())
            {
                rebuildVPK();
            }
        }

        private bool processIsntRunning()
        {
            Process[] process = Process.GetProcessesByName(configFileRef.processName);
            if (process.Length == 0)
                return true;
            else
                return false;
        }

        private void rebuildVPK()
        {
            //Debug.WriteLine("Files are different. Reubilding...");
            Process proc = new Process();
            proc.StartInfo.WorkingDirectory = configFileRef.vpk_location;
            proc.StartInfo.FileName = vpk_exe;
            proc.StartInfo.Arguments = String.Format("{0} {1}", vpk_args, configFileRef.workDirectory);
            proc.Start();
            proc.WaitForExit();
            //Debug.WriteLine("Done.");

            DirectoryInfo d = new DirectoryInfo(configFileRef.workDirectory);


            string fileName = d.Name + ".vpk";
            string from = Path.Combine(Directory.GetParent(configFileRef.workDirectory).FullName, Path.Combine(Directory.GetParent(configFileRef.workDirectory).FullName, fileName));
            string to = Path.Combine(Directory.GetParent(configFileRef.vpk_location).FullName, configFileRef.modDir, "custom", fileName);
            if (File.Exists(to))
                File.Delete(to);
            File.Copy(from, to);
        }

        private bool filesAreDifferent()
        {
            foreach(string file in fileDictionary.Keys)
            {
                FileInfo f = new FileInfo(file);
                if(!f.Exists)
                {
                    fileDictionary.Remove(file);
                    return true;
                }
                else if(f.LastWriteTimeUtc != fileDictionary[file])
                {
                    fileDictionary[file] = f.LastWriteTimeUtc;
                    return true;
                }
            }
            return false;
        }

        private void Form1_Resize(object sender, EventArgs e)
        {
            if (this.WindowState == FormWindowState.Minimized)
            {
                minizedIcon.Visible = true;
                this.Hide();
            }
            else if (this.WindowState == FormWindowState.Normal)
            {
                minizedIcon.Visible = false;
                timerCheck.Stop();
            }
        }

        private void minizedIcon_MouseDoubleClick(object sender, MouseEventArgs e)
        {
            this.Show();
            this.WindowState = FormWindowState.Normal;
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void updateFilelistAndVPKToolStripMenuItem_Click(object sender, EventArgs e)
        {
            fileDictionary.Clear();
            createList();
            rebuildVPK();
        }

        private void TB_SetModDir_Click(object sender, EventArgs e)
        {
            if(TB_ModDir.Text != "")
            {
                configFileRef.modDir = TB_ModDir.Text;
                configFileRef.saveSettings();
            }
        }

        private void B_OpenChecker_Click(object sender, EventArgs e)
        {
            FileLineCheck flc = new FileLineCheck(configFileRef);
            flc.ShowDialog();
            updateConfigInformation();
            flc.Dispose();
        }

        private void updateConfigInformation()
        {
            TB_DevToolsPath.Text = configFileRef.vpk_location;
            TB_WorkFolder.Text = configFileRef.workDirectory;
            TB_ModDir.Text = configFileRef.modDir;
            TB_ProcessName.Text = configFileRef.processName;
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (minizedIcon.Visible)
            {
                minizedIcon.Visible = false;
                minizedIcon.Dispose();
            }
        }

        private void B_SetProcessName_Click(object sender, EventArgs e)
        {
            if(TB_ProcessName.Text != "")
            {
                configFileRef.processName = TB_ProcessName.Text;
                configFileRef.saveSettings();
            }
        }
    }
}

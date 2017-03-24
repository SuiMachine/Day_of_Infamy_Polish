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

        const string settingsFile = "confg.cfg";

        string workDirectory = "";

        string vpk_location = "";
        const string vpk_exe = "vpk.exe";
        const string vpk_args = "";

        public Form1()
        {
            InitializeComponent();
            if (File.Exists(settingsFile))
                loadSettings();

            contexTooltipMenu.MenuItems.Add("Update file list and VPK");
            contexTooltipMenu.MenuItems.Add("Cancel");
            contexTooltipMenu.MenuItems.Add("Exit");
        }

        #region ButtonEvents
        private void b_devpath_set_Click(object sender, EventArgs e)
        {
            if(Directory.Exists(TB_DevToolsPath.Text) && File.Exists(Path.Combine(TB_DevToolsPath.Text, vpk_exe)))
            {
                vpk_location = TB_DevToolsPath.Text;
            }
            saveSettings();
        }

        private void B_SetWorkFolder_Click(object sender, EventArgs e)
        {
            if (Directory.Exists(TB_WorkFolder.Text))
            {
                workDirectory = TB_WorkFolder.Text;
            }
            saveSettings();
        }

        private void B_Watch_Click(object sender, EventArgs e)
        {

            if(vpk_location!= "" && Directory.Exists(vpk_location) && workDirectory != "" && Directory.Exists(workDirectory))
            {
                fileDictionary.Clear();
                createList();
                this.WindowState = FormWindowState.Minimized;

                timerCheck.Tick += TimerCheck_Tick;
                timerCheck.Interval = 5000;
                timerCheck.Start();
            }
        }

        private void createList()
        {
            string[] Directories = Directory.GetDirectories(workDirectory, "*", SearchOption.AllDirectories);
            List<string> files = new List<string>();

            foreach (string directory in Directories)
            {
                string[] tempFiles = Directory.GetFiles(directory);
                foreach (string file in tempFiles)
                {
                    files.Add(file);
                }
            }
            string[] final_files = Directory.GetFiles(workDirectory);
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
            if(filesAreDifferent())
            {
                rebuildVPK();
            }
        }

        private void rebuildVPK()
        {
            //Debug.WriteLine("Files are different. Reubilding...");
            Process proc = new Process();
            proc.StartInfo.WorkingDirectory = vpk_location;
            proc.StartInfo.FileName = vpk_exe;
            proc.StartInfo.Arguments = String.Format("{0} {1}", vpk_args, workDirectory);
            proc.Start();
            proc.WaitForExit();
            //Debug.WriteLine("Done.");

            DirectoryInfo d = new DirectoryInfo(workDirectory);


            string fileName = d.Name + ".vpk";
            string from = Path.Combine(Directory.GetParent(workDirectory).FullName, Path.Combine(Directory.GetParent(workDirectory).FullName, fileName));
            string to = Path.Combine(Directory.GetParent(vpk_location).FullName, "doi", "custom", fileName);
            if (File.Exists(to))
                File.Delete(to);
            File.Move(from, to);
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

        #region SaveLoad
        private void loadSettings()
        {
            StreamReader SR = new StreamReader(settingsFile);
            string line = "";
            while ((line = SR.ReadLine()) != null)
            {
                if (line.StartsWith("WorkDir:"))
                {
                    line = line.Split(new char[] { ':' }, 2)[1];
                    workDirectory = line;
                }
                else if (line.StartsWith("VPKDir:"))
                {
                    line = line.Split(new char[] { ':' }, 2)[1];
                    vpk_location = line;
                }
            }
            TB_DevToolsPath.Text = vpk_location;
            TB_WorkFolder.Text = workDirectory;
            SR.Close();
            SR.Dispose();
        }

        private void saveSettings()
        {
            File.WriteAllText(settingsFile, "WorkDir:" + workDirectory + "\nVPKDir:" + vpk_location);
        }
        #endregion

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
    }
}

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
using System.Runtime.InteropServices;

namespace SuisVPK
{
    public partial class Form1 : Form
    {
		Timer timerCheck = new Timer();
        Dictionary<string, DateTime> fileDictionary = new Dictionary<string, DateTime>();
        ContextMenu contexTooltipMenu = new ContextMenu();
        public ConfigFile configFileRef = new ConfigFile();

        const string vpk_exe = "vpk.exe";
		const string cc_compiler = "captioncompiler.exe";

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

        #region FormEvents
        #region SetButtons
        private void B_devpath_set_Click(object sender, EventArgs e)
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

        private void B_SetProcessName_Click(object sender, EventArgs e)
        {
            if (TB_ProcessName.Text != "")
            {
                configFileRef.processName = TB_ProcessName.Text;
                configFileRef.saveSettings();
            }
        }

        private void B_SetModDir_Click(object sender, EventArgs e)
        {
            if (TB_ModDir.Text != "")
            {
                configFileRef.modDir = TB_ModDir.Text;
                configFileRef.saveSettings();
            }
        }
        private void B_SetUTF8Copy_Click(object sender, EventArgs e)
        {
            if (TB_UTF8CopyLocation.Text != "")
            {
                configFileRef.utf8CopyLocation = TB_UTF8CopyLocation.Text;
                configFileRef.saveSettings();
            }
        }
        private void CB_UTF8Enabled_CheckedChanged(object sender, EventArgs e)
        {
            configFileRef.useUTF8Copy = CB_UTF8Enabled.Checked;
            TB_UTF8CopyLocation.Enabled = configFileRef.useUTF8Copy;
        }

		private void CB_AlwaysCompileCaptions_CheckedChanged(object sender, EventArgs e)
		{
			configFileRef.alwaysCompileCaptions = CB_AlwaysCompileCaptions.Checked;
		}
		#endregion
		#region OtherButtons
		private void B_Watch_Click(object sender, EventArgs e)
        {

            if (configFileRef.vpk_location != "" && Directory.Exists(configFileRef.vpk_location) && configFileRef.workDirectory != "" && Directory.Exists(configFileRef.workDirectory))
            {
                fileDictionary.Clear();
                createList();
                this.WindowState = FormWindowState.Minimized;

                timerCheck.Tick += TimerCheck_Tick;
                timerCheck.Interval = 3000;
                timerCheck.Start();
            }
        }

        private void B_OpenChecker_Click(object sender, EventArgs e)
        {
            FileLineCheck flc = new FileLineCheck(configFileRef);
            flc.ShowDialog();
            updateConfigInformation();
            flc.Dispose();
        }
        #endregion
        #region FormBehaviour
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

        private void updateFilelistAndVPKToolStripMenuItem_Click(object sender, EventArgs e)
        {
            createList();
            rebuildVPK();
        }

        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void TimerCheck_Tick(object sender, EventArgs e)
        {
            if (processIsntRunning() && filesAreDifferent())
            {
                rebuildVPK();
            }
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (minizedIcon.Visible)
            {
                minizedIcon.Visible = false;
                minizedIcon.Dispose();
            }
			configFileRef.saveSettings();
		}
        #endregion
        #endregion

        private void createList()
        {
            //Create a tree/list of directories
            string[] Directories = Directory.GetDirectories(configFileRef.workDirectory, "*", SearchOption.AllDirectories);

            //Create empty list of files
            List<string> files = new List<string>();

            //Find all files in sub-directories
            foreach (string directory in Directories)
            {
                string[] tempFiles = Directory.GetFiles(directory);
                foreach (string file in tempFiles)
                {
                    files.Add(file);
                }
            }

            //Find all files in root directory
            string[] final_files = Directory.GetFiles(configFileRef.workDirectory);
            foreach (string file in final_files)
            {
                files.Add(file);
            }

            //Check modified date for each file and write it into a dictionary struct
            fileDictionary.Clear();
            foreach (string file in files)
            {
				//We don't care about compiled caption files - they will be taken care during VPK build
				if(!file.EndsWith(".dat"))
				{
					FileInfo f = new FileInfo(file);
					fileDictionary.Add(file, f.LastWriteTimeUtc);
				}
            }
        }

        /// <summary>
        /// Checks if game process isn't running to prevent updating VPK if game is running.
        /// </summary>
        /// <returns>True isn't running, false if it's running.</returns>
        private bool processIsntRunning()
        {
            Process[] process = Process.GetProcessesByName(configFileRef.processName);
            if (process.Length == 0)
                return true;
            else
                return false;
        }

        /// <summary>
        /// Rebuilds VPK file and moves it to a right location
        /// </summary>
        private void rebuildVPK()
        {
            if(configFileRef.useUTF8Copy)
                rebuildUTF8PreviewFiles();

			checkAndCompileCaptionFiles();


            Process proc = new Process();
            proc.StartInfo.WorkingDirectory = configFileRef.vpk_location;
            proc.StartInfo.FileName = vpk_exe;
            proc.StartInfo.Arguments = String.Format("{0} {1}", vpk_args, configFileRef.workDirectory);
            proc.Start();
            proc.WaitForExit();

            DirectoryInfo d = new DirectoryInfo(configFileRef.workDirectory);


            string fileName = d.Name + ".vpk";
            string from = Path.Combine(Directory.GetParent(configFileRef.workDirectory).FullName, Path.Combine(Directory.GetParent(configFileRef.workDirectory).FullName, fileName));
            string to = Path.Combine(Directory.GetParent(configFileRef.vpk_location).FullName, configFileRef.modDir, "custom", fileName);
            if (File.Exists(to))
                File.Delete(to);
            File.Copy(from, to);
        }

		private void checkAndCompileCaptionFiles()
		{
			foreach (var fileInf in fileDictionary)
			{
				string fileName = Path.GetFileName(fileInf.Key);
				if(fileName.EndsWith(".txt") &&					
					(fileName.StartsWith("subtitles_") || fileName.StartsWith("closecaption_")))
				{
					FileInfo f = new FileInfo(fileInf.Key);
					if(f.LastWriteTimeUtc != fileInf.Value || configFileRef.alwaysCompileCaptions)
					{
						string gameDestination = Path.Combine(Directory.GetParent(configFileRef.vpk_location).ToString(), "doi", "resource");
						string resultFileName = Path.GetFileNameWithoutExtension(fileName) + ".dat";

						File.Copy(fileInf.Key, Path.Combine(gameDestination, fileName), true);
						Process proc = new Process();
						proc.StartInfo.WorkingDirectory = Path.Combine(Directory.GetParent(configFileRef.vpk_location).ToString(), "doi");
						proc.StartInfo.FileName = Path.Combine(configFileRef.vpk_location, cc_compiler);
						proc.StartInfo.Arguments = fileName;
						proc.StartInfo.UseShellExecute = false;
						proc.EnableRaisingEvents = true;
						proc.Start();
						proc.WaitForExit();



						if (File.Exists(Path.Combine(gameDestination, resultFileName)))
						{
							if (File.Exists(Path.Combine(configFileRef.workDirectory, "resource", resultFileName)))
								File.Delete(Path.Combine(configFileRef.workDirectory, "resource", resultFileName));
							File.Move(Path.Combine(gameDestination, resultFileName), Path.Combine(configFileRef.workDirectory, "resource", resultFileName));
						}
					}
				}
			}
		}

		/// <summary>
		/// Builds a list of files from a translation directory, reads them and saves them as UTF-8 in seperate directory
		/// </summary>
		private void rebuildUTF8PreviewFiles()
        {
            //Pretty much a copy of the other thing, except this one works with local variables related to utf8 copy directory
            string[] Directories = Directory.GetDirectories(configFileRef.utf8CopyLocation, "*", SearchOption.AllDirectories);

            Dictionary<string, DateTime> utf8Files = new Dictionary<string, DateTime>();
            //only want a dictionary built, rest is not needed  
            {
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

                int pathLenght = configFileRef.utf8CopyLocation.Length;
                foreach (string file in files)
                {
                    FileInfo f = new FileInfo(file);
                    utf8Files.Add(absolutePathToRelative(file, configFileRef.utf8CopyLocation), f.LastWriteTimeUtc);
                }
            }

            Dictionary<string, DateTime> relativeFilePaths = new Dictionary<string, DateTime>();
            foreach (var element in fileDictionary)
            {
                relativeFilePaths.Add(absolutePathToRelative(element.Key, configFileRef.workDirectory), element.Value);
            }

            List<string> filesToCopy = new List<string>();
            foreach(var element in relativeFilePaths)
            {
                if(element.Key.EndsWith(".txt"))
                {
                    if (utf8Files.ContainsKey(element.Key))
                    {
                        if (utf8Files[element.Key] != element.Value)
                            filesToCopy.Add(element.Key);
                    }
                    else
                        filesToCopy.Add(element.Key);
                }
            }

            //Create directory paths
            foreach(string file in filesToCopy)
            {
                string dirPath = Directory.GetParent(Path.Combine(configFileRef.utf8CopyLocation, file)).FullName;
                if (!Directory.Exists(dirPath))
                {
                    Directory.CreateDirectory(dirPath);
                }
            }

            //Read text files and save them
            foreach(string file in filesToCopy)
            {
                string text = FileLineCheck.convertTextFromUCS2(File.ReadAllBytes(Path.Combine(configFileRef.workDirectory, file)));
                File.WriteAllText(Path.Combine(configFileRef.utf8CopyLocation, file), text, Encoding.UTF8);
            }
        }

        /// <summary>
        /// Converts an absolute path to relative one.
        /// </summary>
        /// <param name="file_path">Absolute file path to a file</param>
        /// <param name="directory_path">Directory path.</param>
        /// <returns>Relative path as a string.</returns>
        private string absolutePathToRelative(string file_path, string directory_path)
        {
            return file_path.Substring(directory_path.Length + 1, file_path.Length - directory_path.Length-1);
        }

        /// <summary>
        /// Checks if the file has been modified.
        /// </summary>
        /// <returns>True if were modified, false if weren't.</returns>
        private bool filesAreDifferent()
        {
            foreach(string file in fileDictionary.Keys)
            {
                FileInfo f = new FileInfo(file);
                if(!f.Exists)
                {
                    createList();
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

        /// <summary>
        /// Updates displayed information with the ones from ConfigFile class.
        /// </summary>
        private void updateConfigInformation()
        {
            TB_DevToolsPath.Text = configFileRef.vpk_location;
            TB_WorkFolder.Text = configFileRef.workDirectory;
            TB_ModDir.Text = configFileRef.modDir;
            TB_ProcessName.Text = configFileRef.processName;

            CB_UTF8Enabled.Checked = configFileRef.useUTF8Copy;
            TB_UTF8CopyLocation.Enabled = configFileRef.useUTF8Copy;
            TB_UTF8CopyLocation.Text = configFileRef.utf8CopyLocation;
			CB_AlwaysCompileCaptions.Checked = configFileRef.alwaysCompileCaptions;

        }
	}
}

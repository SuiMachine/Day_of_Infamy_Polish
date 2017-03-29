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
    public partial class FileLineCheck : Form
    {
        private ConfigFile config = null;

        public static string[] convertLinesFromUCS2(byte[] array)
        {
            string text = Encoding.Unicode.GetString(array);
            string[] lines = text.Split('\n');
            return lines;
        }

        public static string convertTextFromUCS2(byte[] array)
        {
            return Encoding.Unicode.GetString(array);
        }


        public FileLineCheck(ConfigFile configFileRef)
        {
            InitializeComponent();
            config = configFileRef;

            TB_Source.Text = config.workDirectory;
            TB_OriginalFiles.Text = config.originalLocalizationLocation;
            TB_PostFix.Text = config.postFix;
        }

        private void B_BrowseTranslation_Click(object sender, EventArgs e)
        {
            FolderBrowserDialog fbd = new FolderBrowserDialog();
            DialogResult result = fbd.ShowDialog();
            if(result == DialogResult.OK)
            {
                TB_Source.Text = fbd.SelectedPath;
            }

        }

        private void B_BrowseOriginalFolder_Click(object sender, EventArgs e)
        {
            FolderBrowserDialog fbd = new FolderBrowserDialog();
            DialogResult result = fbd.ShowDialog();
            if (result == DialogResult.OK)
            {
                TB_OriginalFiles.Text = fbd.SelectedPath;
            }
        }

        private void B_SaveLocations_Click(object sender, EventArgs e)
        {
            config.workDirectory = TB_Source.Text;
            config.originalLocalizationLocation = TB_OriginalFiles.Text;
            config.postFix = TB_PostFix.Text;
            config.saveSettings();
        }

        private void B_Check_Click(object sender, EventArgs e)
        {
            RB_Results.Clear();
            List<string> files = createList();
            foreach(string file in files)
            {
                RB_Results.Text += compareFiles(file);
            }
        }

        private string compareFiles(string file)
        {
            string orgFile = Path.Combine(config.originalLocalizationLocation, file);
            file = file.Replace("english", config.postFix);
            string traFile = Path.Combine(config.workDirectory, file);

            string output = "### " + file + "###\n";

            if (!File.Exists(traFile))
            {
                output += "! TRANSLATION FILE DOESN'T EXIST !\n\n";
                return output;
            }


            string[] orgLines = convertLinesFromUCS2(File.ReadAllBytes(orgFile));
            string[] traLines = convertLinesFromUCS2(File.ReadAllBytes(traFile));

            output += compareVariableNames(orgLines, traLines);

            output += "\n\n";
            return output;
        }

        private string compareVariableNames(string[] orgFile, string[] traLines)
        {
            string[] varsOrg = getVariableNames(orgFile);
            string[] varsTra = getVariableNames(traLines);

            string missingVariablesList = "";
            foreach(string variable in varsOrg)
            {
                if(!varsTra.Contains(variable))
                {
                    missingVariablesList += variable + "\n";
                }
            }
            return missingVariablesList;

        }

        private string[] getVariableNames(string[] file)
        {
            List<string> variableNames = new List<string>();

            for (int i = 0; i < file.Length; i++)
            {
                string line = file[i];

                if (line == "" || line.StartsWith("//"))
                    continue;

                int startLoc = -1;
                int endLoc = -1;


                startLoc = line.IndexOf('\"');
                if (startLoc >= 0)
                {
                    if (line.Contains("radial_moving_to_objective_subtitle_cp"))
                        System.Threading.Thread.Sleep(1);

                    endLoc = findEndVarName(startLoc, line);
                    if (endLoc > 0)
                    {
                        variableNames.Add(line.Substring(startLoc, endLoc-1));
                    }
                }
            }
            return variableNames.ToArray();

        }

        char[] forbiddenCharactersForString = {' ', '\'', '/', '\\' };

        private int findEndVarName(int startLoc, string line)
        {
            for(int i = startLoc+1; i<line.Length; i++)
            {
                Debug.WriteLineIf(line.Contains("radial_moving_to_objective_subtitle_cp"), line[i]);
                char temp = line[i];
                if (forbiddenCharactersForString.Contains(temp) )
                {
                    return -1;
                }
                else if(temp == '\"')
                {
                    return i;
                }
            }
            return -1;
        }

        private List<string> createList()
        {
            string[] Directories = Directory.GetDirectories(config.originalLocalizationLocation, "*", SearchOption.AllDirectories);
            List<string> files = new List<string>();
            int pathLenght = config.originalLocalizationLocation.Length;

            foreach (string directory in Directories)
            {

                string[] tempFiles = Directory.GetFiles(directory);
                foreach (string file in tempFiles)
                {
                    if (file.EndsWith(".txt"))
                    {
                        string addFile = file.Remove(0, pathLenght+1);
                        files.Add(addFile);
                    }

                }
            }
            string[] final_files = Directory.GetFiles(config.originalLocalizationLocation);
            foreach (string file in final_files)
            {
                if(file.EndsWith(".txt"))
                {
                    string addFile = file.Remove(0, pathLenght+1);
                    files.Add(addFile);
                }
            }

            foreach(string file in files)
            {
                Debug.WriteLine(file);
            }
            return files;
        }
    }
}

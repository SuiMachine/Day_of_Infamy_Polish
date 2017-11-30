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

namespace SuisVPK
{
    public partial class FileLineCheck : Form
    {
        private ConfigFile config = null;

        /// <summary>
        /// Used to convert a byte array if UCS-2 Little Endian to a array of string lines.
        /// </summary>
        /// <param name="array">Text as byte array (usually read by File.ReadAllBytes)</param>
        /// <returns>Text as a string array</returns>
        public static string[] convertLinesFromUCS2(byte[] array)
        {
            string text = Encoding.Unicode.GetString(array);
            string[] lines = text.Split('\n');
            return lines;
        }

        /// <summary>
        /// Used to convert a byte array if UCS-2 Little Endian to one long string.
        /// </summary>
        /// <param name="array">Text as byte array (usually read by File.ReadAllBytes)</param>
        /// <returns>Text as a string</returns>
        public static string convertTextFromUCS2(byte[] array)
        {
            return Encoding.Unicode.GetString(array);
        }

        /// <summary>
        /// Main constructor for the window class.
        /// </summary>
        /// <param name="configFileRef">A ConfigFile object to be used a s a reference.</param>
        public FileLineCheck(ConfigFile configFileRef)
        {
            InitializeComponent();
            config = configFileRef;

            TB_Source.Text = config.workDirectory;
            TB_OriginalFiles.Text = config.originalLocalizationLocation;
            TB_PostFix.Text = config.postFix;
        }


        #region FormEvents
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
#endregion

        /// <summary>
        /// Used to compare two files. The files have to have the same relative path.
        /// </summary>
        /// <param name="file">A relative file path</param>
        /// <returns></returns>
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

            output += orgFile.Contains("subtitle") ? CompareVariableNames(orgLines, traLines, true) : CompareVariableNames(orgLines, traLines);

            output += "\n\n";
            return output;
        }

        /// <summary>
        /// Compares variable names from arrays.
        /// </summary>
        /// <param name="orgFile">Variable arrays from original language file.</param>
        /// <param name="traLines">Variable arrays from a translated file.</param>
        /// <returns>A string listing which variables are missing in translated file.</returns>
        private string CompareVariableNames(string[] orgFile, string[] traLines, bool isCaptionFile = false)
        {
            string[] varsOrg = GetVariableNames(orgFile, isCaptionFile);
            string[] varsTra = GetVariableNames(traLines, isCaptionFile);

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

        /// <summary>
        /// Gets names of variables from a text file... for the most part.
        /// </summary>
        /// <param name="file">Filepath to a file that is to be read.</param>
        /// <returns></returns>
        private string[] GetVariableNames(string[] file, bool isCaption)
        {
            List<string> variableNames = new List<string>();

            if(isCaption)
            {
                file = StripValveCaptionLayer(file);
                file = StripValveCaptionLayer(file);
                for(int i = 0; i < file.Length; i++)
                {
                    string line = file[i];
                    line = line.Trim(new char[] { '\t', ' ' });

                    if(line == "" || line.StartsWith("//"))
                        continue;

                    int startLoc = -1;
                    int endLoc = -1;


                    startLoc = line.IndexOf('\"');
                    if(startLoc >= 0)
                    {
                        endLoc = line.Substring(startLoc + 1).IndexOf('\"') - (startLoc);
                        if(endLoc > 0)
                        {
                            variableNames.Add(line.Substring(startLoc +1, endLoc));
                        }
                    }
                }
                return variableNames.ToArray();
            }
            else
            {
                for(int i = 0; i < file.Length; i++)
                {
                    string line = file[i];

                    if(line == "" || line.StartsWith("//"))
                        continue;

                    int startLoc = -1;
                    int endLoc = -1;


                    startLoc = line.IndexOf('\"');
                    if(startLoc >= 0)
                    {
                        endLoc = findEndVarName(startLoc, line);
                        if(endLoc > 0)
                        {
                            variableNames.Add(line.Substring(startLoc, endLoc - 1));
                        }
                    }
                }
                return variableNames.ToArray();
            }
        }

        char[] forbiddenCharactersForString = {' ', '\'', '/', '\\' };

        private string[] StripValveCaptionLayer(string[] linesArray)
        {
            int startLoc = -1;
            int endLoc = -1;
            for(int i = 0; i < linesArray.Length; i++)
            {
                if(linesArray[i].Contains("{"))
                {
                    startLoc = i +1;
                    break;
                }
            }

            for(int i = linesArray.Length - 1; i > 0; i--)
            {
                if(linesArray[i].Contains("}"))
                {
                    endLoc = i;
                    break;
                }
            }

            if(startLoc == -1 || endLoc == -1)
                throw new Exception("WTF, MAN!");

            return (linesArray.Skip(startLoc).Take(endLoc - startLoc)).ToArray();
        }

        /// <summary>
        /// Usually finds a position of closing quotation mark.... usually.
        /// </summary>
        /// <param name="startLoc">Location of a first quotation mark</param>
        /// <param name="line">Line to find closing quotation mark in</param>
        /// <returns>Index of closing quotation mark or -1 if it has none.</returns>
        private int findEndVarName(int startLoc, string line)
        {
            for(int i = startLoc+1; i<line.Length; i++)
            {
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

        /// <summary>
        /// Creates a list of files in a directory with original language files.
        /// </summary>
        /// <returns>A list of txt files</returns>
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
            return files;
        }
    }
}

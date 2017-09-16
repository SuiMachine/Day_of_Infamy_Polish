using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SuisVPK
{
    public class ConfigFile
    {
        const string settingsFile = "confg.cfg";
        public string workDirectory { get; set; }
        public string modDir { get; set; }
        public string vpk_location { get; set; }
        public string originalLocalizationLocation { get; set; }
        public string postFix { get; set; }

        public string processName { get; set; }

        public bool useUTF8Copy { get; set; }
        public string utf8CopyLocation { get; set; }

		public bool alwaysCompileCaptions { get; set; }


		public ConfigFile()
        {
            if (File.Exists(settingsFile))
                loadSettings();
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
                else if (line.StartsWith("ModDir:"))
                {
                    line = line.Split(new char[] { ':' }, 2)[1];
                    modDir = line;
                }
                else if (line.StartsWith("OriginalLocalizationLocation:"))
                {
                    line = line.Split(new char[] { ':' }, 2)[1];
                    originalLocalizationLocation = line;
                }
                else if (line.StartsWith("Postfix:"))
                {
                    line = line.Split(new char[] { ':' }, 2)[1];
                    postFix = line;
                }
                else if (line.StartsWith("ProcessName:"))
                {
                    line = line.Split(new char[] { ':' }, 2)[1];
                    processName = line;
                }
                else if (line.StartsWith("UseUTF8Copy:"))
                {
                    useUTF8Copy = parseBool(line.Split(new char[] { ':' }, 2)[1], false);
                }
                else if (line.StartsWith("UTF8CopyLocation:"))
                {
                    line = line.Split(new char[] { ':' }, 2)[1];
                    utf8CopyLocation = line;
                }
				else if (line.StartsWith("AlwaysCompileCaptions:"))
				{
					alwaysCompileCaptions = parseBool(line.Split(new char[] { ':' }, 2)[1], false);
				}
			}
            SR.Close();
            SR.Dispose();
        }

        private bool parseBool(string text, bool defaultValue = false)
        {
            bool val = defaultValue;
            if(bool.TryParse(text, out val))
            {
                return val;
            }
            else
                return defaultValue;
        }

        public void saveSettings()
        {
			File.WriteAllText(settingsFile, "WorkDir:" + workDirectory
				+ "\nVPKDir:" + vpk_location
				+ "\nModDir:" + modDir
				+ "\nOriginalLocalizationLocation:" + originalLocalizationLocation
				+ "\nPostfix:" + postFix
				+ "\nProcessName:" + processName
				+ "\n\nUseUTF8Copy:" + useUTF8Copy.ToString()
				+ "\nAlwaysCompileCaptions:" + alwaysCompileCaptions.ToString()
				+ "\nUTF8CopyLocation:" + utf8CopyLocation
                );
        }
        #endregion
    }
}

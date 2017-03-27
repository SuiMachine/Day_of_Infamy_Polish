﻿using System;
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
            }
            SR.Close();
            SR.Dispose();
        }

        public void saveSettings()
        {
            File.WriteAllText(settingsFile, "WorkDir:" + workDirectory
                + "\nVPKDir:" + vpk_location
                + "\nModDir:" + modDir
                + "\nOriginalLocalizationLocation:" + originalLocalizationLocation
                + "\nPostfix:" + postFix
                );
        }
        #endregion
    }
}
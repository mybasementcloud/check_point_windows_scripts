# check_point_windows_scripts

# SmartConsole/SmartDashboard Configuration Backup Script:

Backup user profile based SmartConsole settings for R80, R80.10, and R80.20, R80.30, R80.40, and R80.50, backup registry for R77.30, R80, R80.10, R80.20, R80.30, R80.40, and R81.

Use this before uninstalling SmartConsole to backup settings for user.

## To restore settings:
1.)	Backup SmartConsole configuration settings (run script)

  You might want to zip the directories under "%USERPROFILE%\appdata\local\Check Point\SmartConsole\" where R80 and later keep their user specific SmartConsole settings on disk, versus just the registry keys used in pre-R80.x versions like R77.30.
  R81 also puts non-volatile (not apparently deleted during upgrade of SmartConsole) data into "%USERPROFILE%\appdata\local\Check Point\R81\" which also is now collected and should be zipped for safe keeping, just in case.
  
2.)	Uninstall SmartConsole version

3.)	If asked to reboot, check “%programfiles(x86)%\CheckPoint\SmartConsole” for whether version folder exists, if yes, delete--then ignore the reboot statement.

4.)	Install SmartConsole application

5.)	[Optional] Launch SmartConsole and enter Demo mode (cloud demo)

6.)	[Optional] Once cloud demo SmartConsole is fully up and visible, exit the cloud demo SmartConsole

7.)	Restore SmartConsole configuration

  a.	Execute registry key(s) for the version installed

  b.	Restore files to local user profile location

8.)	Start SmartConsole again, all settings should be good

## Supports versions:
- R77.30 - Registry
- R80    - Registry, User Profile data (Check Point\SmartConsole)
- R80.10 - Registry, User Profile data (Check Point\SmartConsole)
- R80.20 - Registry, User Profile data (Check Point\SmartConsole)
- R80.30 - Registry, User Profile data (Check Point\SmartConsole)
- R80.40 - Registry, User Profile data (Check Point\SmartConsole)
- R81    - Registry, User Profile data (Check Point, and Check Point\SmartConsole)

### Updated 
- 2020-10-25:  Updated _Common scripts to version v 03.00.00.000
- 2020-10-22:  Added Support for R81 and adjusted to the change in also collecting files in "%USERPROFILE%\appdata\local\Check Point\R81\".  Updated to latest _COMMON script versions used
- 2020-03-31:  Added R80.30 - R80.50 support

# Check Point SmartConsole Missing Shortcuts script

This script creates the shortcuts for SmartConsole Applications that are not created by default.

NOTE:  This script must be "RUN AS ADMINISTRATOR" since it needs to write to %PROGRAMDATA% Folder for the Windows Start Menu.

The script can be run with a command line parameter for the desired SmartConsole version, which is checked before execution with the user.  If the script does not find the requisite required folders for that SmartConsole version it will quit and display log details on exit.  The script will create a subfolder to the existing SmartConsole version folder called "Tools (Manually Added)" to distinguish between what is created by the script and what was there already.  Uninstallation or upgrade of SmartConsole does not remove these scripts and they must be deleted manually.

Command Line parameter 1 :  SmartConsole version to create shortcuts for.
Currently test version options:  R80|R80.10|R80.20|R80.30|R80.40|R81

The following Shortcuts are created:
- Check Point Log Viewer [SmartView Tracker] <SmartConsole Version>
- GuiDBedit <SmartConsole Version>
- mgmt_cli <SmartConsole Version>
- SmartDashboard <SmartConsole Version>
- SmartEvent [AnalyzerClient] <SmartConsole Version>
- SmartProvisioning LSM <SmartConsole Version>
- SmartUpdate <SmartConsole Version>
- SmartViewMonitor <SmartConsole Version>

### Updated 
- 2021-03-29:  Updated Check Point SmartConsole Missing Shortcuts to 3.1.0 with fixes
- 2020-10-25:  Updated _Common scripts to version v 03.00.00.000
- 2020-10-25:  Corrected some display issues related to information sent to console versus log file
- 2020-10-24:  Script added to the GitHub repository at initial release version

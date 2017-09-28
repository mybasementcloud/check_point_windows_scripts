# check_point_windows_scripts

SmartConsole/SmartDashboard Configuration Backup Script:

Backup user profile based SmartConsole settings for R80 and R80.10, backup registry for R77.30, R80, R80.10.  
Use this before uninstalling SmartConsole to backup settings for user.  

To restore settings:
1.)	Backup SmartConsole configuration settings (run script)

  You might want to zip the directories under "%USERPROFILE%\appdata\local\Check Point\SmartConsole\" where R80 and R80.10 keep their user specific SmartConsole settings on disk, versus just the registry keys used in pre-R80.x versions like R77.30.
  
2.)	Uninstall SmartConsole version

3.)	If asked to reboot, check “%programfiles(x86)%\CheckPoint\SmartConsole” for whether version folder exists, if yes, delete--then ignore reboot.

4.)	Install SmartConsole application

5.)	Launch SmartConsole and enter Demo mode (cloud demo)

6.)	Once cloud demo SmartConsole is fully up and visible, exit the cloud demo SmartConsole

7.)	Restore SmartConsole configuration

  a.	Execute registry key(s)

  b.	Restore files to local user profile location

8.)	Start SmartConsole again, all settings should be good


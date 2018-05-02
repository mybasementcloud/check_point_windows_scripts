@ECHO OFF
@echo.

SET DATESCRIPT=SUFFIXDATE.vbs
del /F/Q "%TEMP%\datepath.cmd"

"%SystemRoot%\System32\cscript" "%DATESCRIPT%"

call "%TEMP%\datepath.cmd"

REM ECHO PATH_SUFFIX_DATE     = %PATH_SUFFIX_DATE%
REM ECHO PATH_SUFFIX_DATEDASH = %PATH_SUFFIX_DATEDASH%
REM ECHO PATH_SUFFIX_TIME     = %PATH_SUFFIX_TIME%
REM ECHO PATH_SUFFIX_DTG      = %PATH_SUFFIX_DTG%
REM ECHO PATH_SUFFIX_DTGDASH  = %PATH_SUFFIX_DTGDASH%
REM pause

del /F/Q "%TEMP%\datepath.cmd"
SET DATESCRIPT=

SET FILEEDITOR=%WINDOWS%\notepad.exe

SET DIR_WORKTEMP=%TEMP%
SET DATETIMEGRP=%PATH_SUFFIX_DTGDASH%
SET DTG_TZ_DST=CDT
SET DTG_TZ_NOTDST=CST

set ISITDST=Y
set /p ISITDST=Is it currently Daylight Savings Time? (Y/N) 

if /i "%ISITDST%"=="N" (
	SET DATETIMEGRP=%PATH_SUFFIX_DTGDASH%%DTG_TZ_NOTDST%
) ELSE (
	SET DATETIMEGRP=%PATH_SUFFIX_DTGDASH%%DTG_TZ_DST%
)

set /p ENTERDATETIMEGRP=Enter DTG: (%DATETIMEGRP% YYYY-MM-DD-HHMMtzn)^>
if not "%ENTERDATETIMEGRP%"=="" set DATETIMEGRP=%ENTERDATETIMEGRP%
set ENTERDATETIMEGRP=

SET LOGFILE=%DIR_WORKTEMP%\log_Backup_CP_SC_Settings_%DATETIMEGRP%.log

echo.
echo "Copy console settings in "%LOCALAPPDATA%" to .BAK folder"
echo.

echo. > "%LOGFILE%"
echo "Copy console settings in "%LOCALAPPDATA%" to .BAK folder" >> "%LOGFILE%"
echo. >> "%LOGFILE%"

set SOURCEFOLDER=%LOCALAPPDATA%\Check Point\SmartConsole
set TARGETFOLDER=%USERPROFILE%\Check Point\Settings Backup\SmartConsole

if not exist "%TARGETFOLDER%" mkdir "%TARGETFOLDER%"

if exist "%SOURCEFOLDER%\R80" xcopy "%SOURCEFOLDER%\R80" "%SOURCEFOLDER%\R80.BAK\" /S/V/E/Y >> "%LOGFILE%"
if exist "%SOURCEFOLDER%\R80.10" xcopy "%SOURCEFOLDER%\R80.10" "%SOURCEFOLDER%\R80.10.BAK\" /S/V/E/Y >> "%LOGFILE%"
if exist "%SOURCEFOLDER%\R80.20" xcopy "%SOURCEFOLDER%\R80.20" "%SOURCEFOLDER%\R80.20.BAK\" /S/V/E/Y >> "%LOGFILE%"

if exist "%SOURCEFOLDER%\R80" xcopy "%SOURCEFOLDER%\R80" "%TARGETFOLDER%\R80.BAK\" /S/V/E/Y >> "%LOGFILE%"
if exist "%SOURCEFOLDER%\R80.10" xcopy "%SOURCEFOLDER%\R80.10" "%TARGETFOLDER%\R80.10.BAK\" /S/V/E/Y >> "%LOGFILE%"
if exist "%SOURCEFOLDER%\R80.20" xcopy "%SOURCEFOLDER%\R80.20" "%TARGETFOLDER%\R80.20.BAK\" /S/V/E/Y >> "%LOGFILE%"

if not exist "%TARGETFOLDER%\registry" mkdir "%TARGETFOLDER%\registry"

reg export "HKEY_CURRENT_USER\Software\CheckPoint\Management Clients" "%TARGETFOLDER%\registry\reg_cp_mgmt_clients_all.reg" /Y >> "%LOGFILE%"
reg export "HKEY_CURRENT_USER\Software\CheckPoint\Management Clients\6.4.3" "%TARGETFOLDER%\registry\reg_cp_mgmt_clients_R77.30.reg" /Y >> "%LOGFILE%"
if exist "%SOURCEFOLDER%\R80" reg export "HKEY_CURRENT_USER\Software\CheckPoint\Management Clients\6.4.8" "%TARGETFOLDER%\registry\reg_cp_mgmt_clients_R80.reg" /Y >> "%LOGFILE%"
if exist "%SOURCEFOLDER%\R80.10" reg export "HKEY_CURRENT_USER\Software\CheckPoint\Management Clients\6.5.1" "%TARGETFOLDER%\registry\reg_cp_mgmt_clients_R80.10.reg" /Y >> "%LOGFILE%"
if exist "%SOURCEFOLDER%\R80.20" reg export "HKEY_CURRENT_USER\Software\CheckPoint\Management Clients\6.5.9" "%TARGETFOLDER%\registry\reg_cp_mgmt_clients_R80.20.reg" /Y >> "%LOGFILE%"

dir "%TARGETFOLDER%" >> "%LOGFILE%"
dir "%TARGETFOLDER%\registry" >> "%LOGFILE%"


pause

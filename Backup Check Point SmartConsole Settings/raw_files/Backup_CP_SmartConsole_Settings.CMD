@ECHO OFF
REM
REM Script     :  Backup Check Point SmartConsole Settings Configuration for host to central repository for backup
REM Version    :  02.01.00
REM Date       :  2020-01-14
REM

SET _LOCALSCRIPTNAME=Backup_CP_SC_Settings
SET _LOCALSCRIPTDATE=2020-01-14
SET _LOCALSCRIPTTIME=0930CST
SET _LOCALSCRIPTVERSION=02.01.00
SET _LOCALSCRIPTREVISION=000


@ECHO.
@ECHO =====================================================================================
@ECHO =====================================================================================
@ECHO Script Name:  %_LOCALSCRIPTNAME%
@ECHO DATE:  %_LOCALSCRIPTDATE%  TIME:  %_LOCALSCRIPTTIME%
@ECHO VERSION:  %_LOCALSCRIPTVERSION%  REVISION:  %_LOCALSCRIPTREVISION%
@ECHO =====================================================================================
@ECHO.
@ECHO.


GOTO :STARTSCRIPT

REM =====================================================================================
REM =====================================================================================
REM =====================================================================================
REM START OF SUBROUTINES
REM =====================================================================================
REM =====================================================================================


REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE:  sub_CLEANUPLOCALVARS  :  
REM -------------------------------------------------------------------------------------

:sub_CLEANUPLOCALVARS

REM * -------------------------------------------------------------------------
REM * CLEAN UP Local Variables
REM * -------------------------------------------------------------------------

SET "_localLOGFILE="
SET "_remoteLOGFILE="

SET "FILEEDITOR="
SET "DATETIMEGRP="

SET "_scriptTempWORKDIR="
SET "_tempLOGFILE="
SET "DATETIMEGRP="
SET "_HOST_NAME="
SET "_JUSTDOIT="

SET "SOURCEFOLDERROOT="
SET "SOURCEFOLDER_MGMT_CLI="
SET "SOURCEFOLDER_SMARTCONSOLE="
SET "SOURCEREGKEY="

SET "INSTALLEDPROGRAMFILES="
SET "INSTALLEDFOLDER="
SET "INSTALLEDPATHROOT="
SET "INSTALLEDPATH="

SET "TARGETFOLDERROOT="
SET "TARGETFOLDER_MGMT_CLI="
SET "TARGETFOLDER_SMARTCONSOLE="
SET "TARGETFOLDERREG="
SET "TARGETREGDUMPNAMEPREFIX="
SET "TARGETREGDUMPFQFP="


EXIT /B 0

REM -------------------------------------------------------------------------------------
REM SUBROUTINE IMPLEMENTATION ELEMENTS : sub_CLEANUPLOCALVARS
REM -------------------------------------------------------------------------------------

REM CALL :sub_CLEANUPLOCALVARS

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE: sub_CLEANUPLOCALVARS
REM -------------------------------------------------------------------------------------
REM =====================================================================================


REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE:  sub_CLEANUPRESULTVARS  :  
REM -------------------------------------------------------------------------------------

:sub_CLEANUPRESULTVARS

REM * -------------------------------------------------------------------------
REM * Variables we want to keep for use by the callers
REM * -------------------------------------------------------------------------


EXIT /B 0

REM -------------------------------------------------------------------------------------
REM SUBROUTINE IMPLEMENTATION ELEMENTS : sub_CLEANUPRESULTVARS
REM -------------------------------------------------------------------------------------

REM CALL :sub_CLEANUPRESULTVARS

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE: sub_CLEANUPRESULTVARS
REM -------------------------------------------------------------------------------------
REM =====================================================================================


REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE:  sub_CLEANUPLOCALSTANDARDVARS  :  Clear Local Standard Variables
REM -------------------------------------------------------------------------------------

:sub_CLEANUPLOCALSTANDARDVARS

REM * -------------------------------------------------------------------------
REM * CLEAN UP Local Standard Variables
REM * -------------------------------------------------------------------------

SET "_LOCALSCRIPTNAME="
SET "_LOCALSCRIPTDATE="
SET "_LOCALSCRIPTTIME="
SET "_LOCALSCRIPTVERSION="
SET "_LOCALSCRIPTREVISION="

SET "_scriptLOGSDIR="
SET "_scriptLOGSPATH="
SET "_scriptLOGSFILE="


EXIT /B 0

REM -------------------------------------------------------------------------------------
REM SUBROUTINE IMPLEMENTATION ELEMENTS : sub_CLEANUPLOCALSTANDARDVARS
REM -------------------------------------------------------------------------------------

REM CALL :sub_CLEANUPLOCALSTANDARDVARS

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE: sub_CLEANUPLOCALSTANDARDVARS
REM -------------------------------------------------------------------------------------
REM =====================================================================================


REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE:  sub_SetTextFileEditorValue  :  Purpose/Description
REM -------------------------------------------------------------------------------------

:sub_SetTextFileEditorValue

REM * -------------------------------------------------------------------------
REM * CodeSnipet :  Set Text File Editor value
REM * -------------------------------------------------------------------------

SET "FILEEDITOR="

IF EXIST "%ProgramFiles%\Just Great Software\EditPad Pro 8\EditPadPro8.exe" GOTO :HAVEEDITPADPRO8
IF EXIST "%ProgramFiles%\Just Great Software\EditPad Lite 8\EditPadLite8.exe" GOTO :HAVEEDITPADLITE8
IF EXIST "%ProgramFiles%\Just Great Software\EditPad Lite 7\EditPadLite7.exe" GOTO :HAVEEDITPADLITE7
SET FILEEDITOR=%windir%\NOTEPAD.EXE
GOTO :EDITORISSET

:HAVEEDITPADPRO8
SET FILEEDITOR=%ProgramFiles%\Just Great Software\EditPad Pro 8\EditPadPro8.exe
GOTO :EDITORISSET

:HAVEEDITPADLITE8
SET FILEEDITOR=%ProgramFiles%\Just Great Software\EditPad Lite 8\EditPadLite8.exe
GOTO :EDITORISSET

:HAVEEDITPADLITE7
SET FILEEDITOR=%ProgramFiles%\Just Great Software\EditPad Lite 7\EditPadLite7.exe
GOTO :EDITORISSET

:EDITORISSET
REM START /MAX "%FILEEDITOR%" "%_scriptLOGFQPN%"

REM * -------------------------------------------------------------------------
REM * -------------------------------------------------------------------------

EXIT /B 0

REM * -----------------------------------------------------------------------------------
REM * SUBROUTINE IMPLEMENTATION ELEMENTS :  sub_SetTextFileEditorValue
REM * -----------------------------------------------------------------------------------

REM CALL :sub_SetTextFileEditorValue

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE:
REM -------------------------------------------------------------------------------------
REM =====================================================================================


REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE:  sub_CLEARCONFIGSCRIPTPATHSVARS  :  Clear sub_CONFIGSCRIPTPATHS Working Variables
REM -------------------------------------------------------------------------------------

:sub_CLEARCONFIGSCRIPTPATHSVARS

REM * -------------------------------------------------------------------------
REM * Clear sub_CONFIGSCRIPTPATHS Working Variables
REM * -------------------------------------------------------------------------

SET "subroutinescriptname="
SET "subroutinescriptext="
SET "subroutinescriptfile="
SET "subroutinecommonpath=" 
SET "subroutinecommonfqpn=" 


EXIT /B 0

REM -------------------------------------------------------------------------------------
REM SUBROUTINE IMPLEMENTATION ELEMENTS : sub_CLEARCONFIGSCRIPTPATHSVARS
REM -------------------------------------------------------------------------------------

REM CALL :sub_CLEARCONFIGSCRIPTPATHSVARS

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE: sub_CLEARCONFIGSCRIPTPATHSVARS
REM -------------------------------------------------------------------------------------
REM =====================================================================================


REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE:  sub_CONFIGSCRIPTPATHS  :  Configure Script Paths
REM -------------------------------------------------------------------------------------

:sub_CONFIGSCRIPTPATHS

REM * -------------------------------------------------------------------------
REM * Subroutine Operations
REM * -------------------------------------------------------------------------

@ECHO. >> "%_scriptLOGFQPN%"
@ECHO ------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%"
@ECHO Subroutine sub_CONFIGSCRIPTPATHS Start >> "%_scriptLOGFQPN%"
@ECHO ------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

SET "subroutinecommonpath=" 
SET "subroutinecommonfqpn="
SET "ERRORRETURN=0"

SET "testthispath=.\_Common\__SUBROUTINES"
SET "testthisfqpn=%testthispath%\%subroutinescriptfile%"
IF EXIST "%testthisfqpn%" GOTO :SUBRTCMNPATHFOUND
IF NOT EXIST "%testthisfqpn%" @ECHO Did not find target path here:  %testthisfqpn% >> "%_scriptLOGFQPN%"

SET "testthispath=R:\_Common\__SUBROUTINES"
SET "testthisfqpn=%testthispath%\%subroutinescriptfile%"
IF EXIST "%testthisfqpn%" GOTO :SUBRTCMNPATHFOUND
IF NOT EXIST "%testthisfqpn%" @ECHO Did not find target path here:  %testthisfqpn% >> "%_scriptLOGFQPN%"

SET "testthispath=S:\Updates\Software\_Common\__SUBROUTINES"
SET "testthisfqpn=%testthispath%\%subroutinescriptfile%"
IF EXIST "%testthisfqpn%" GOTO :SUBRTCMNPATHFOUND
IF NOT EXIST "%testthisfqpn%" @ECHO Did not find target path here:  %testthisfqpn% >> "%_scriptLOGFQPN%"

SET "ERRORRETURN=100"
@ECHO Did not find target path ! >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"
GOTO :SUBRTCMNPATHSET

:SUBRTCMNPATHFOUND
@ECHO Found target path here:  %testthisfqpn% >> "%_scriptLOGFQPN%"
SET "subroutinecommonpath=%testthispath%"
SET "subroutinecommonfqpn=%testthisfqpn%"

:SUBRTCMNPATHSET

REM * -------------------------------------------------------------------------
REM * Log Current Values
REM * -------------------------------------------------------------------------

@ECHO. >> "%_scriptLOGFQPN%"
@ECHO subroutinescriptname   = %subroutinescriptname% >> "%_scriptLOGFQPN%"
@ECHO subroutinescriptext    = %subroutinescriptext% >> "%_scriptLOGFQPN%"
@ECHO subroutinescriptfile   = %subroutinescriptfile% >> "%_scriptLOGFQPN%"
@ECHO subroutinecommonpath   = %subroutinecommonpath% >> "%_scriptLOGFQPN%"
@ECHO subroutinecommonfqpn   = %subroutinecommonfqpn% >> "%_scriptLOGFQPN%"
@ECHO testthispath           = %testthispath% >> "%_scriptLOGFQPN%"
@ECHO testthisfqpn           = %testthisfqpn% >> "%_scriptLOGFQPN%"
@ECHO ERRORRETURN            = %ERRORRETURN% >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

@ECHO. >> "%_scriptLOGFQPN%"
@ECHO ------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%"
@ECHO Subroutine sub_CONFIGSCRIPTPATHS Finished >> "%_scriptLOGFQPN%"
@ECHO ------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

SET "testthispath="
SET "testthisfqpn="

EXIT /B %ERRORRETURN%

REM -------------------------------------------------------------------------------------
REM SUBROUTINE IMPLEMENTATION ELEMENTS : sub_CONFIGSCRIPTPATHS
REM -------------------------------------------------------------------------------------

REM SET "xSetParameter1="
REM CALL :sub_CONFIGSCRIPTPATHS

REM -------------------------------------------------------------------------------------
REM SUBROUTINE CLEANUP : sub_CONFIGSCRIPTPATHS
REM -------------------------------------------------------------------------------------

:cleanup_sub_CONFIGSCRIPTPATHS

@ECHO CLEAN UP sub_CONFIGSCRIPTPATHS

SET "subroutinecommonpath=" 
SET "subroutinecommonfqpn="
REM SET "ERRORRETURN="

SET "testthispath="
SET "testthisfqpn="

EXIT /B 0

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE: sub_CONFIGSCRIPTPATHS
REM -------------------------------------------------------------------------------------
REM =====================================================================================


REM =====================================================================================
REM =====================================================================================
REM END OF SUBROUTINES
REM =====================================================================================
REM =====================================================================================
REM =====================================================================================


:STARTSCRIPT

REM =====================================================================================
REM CLEAR MAIN LOCAL VARIABLES
REM =====================================================================================

CALL :sub_CLEANUPLOCALVARS

REM =====================================================================================
REM Configure Logging paths, folders, and files
REM =====================================================================================

REM SET _scriptLOGSDIR=C:\TEMP
SET _scriptLOGSDIR=%TEMP%
SET _scriptLOGSPATH=%_scriptLOGSDIR%
SET "_scriptLOGSFILE=%_LOCALSCRIPTNAME%.log"
SET "_scriptLOGFQPN=%_scriptLOGSPATH%\%_scriptLOGSFILE%"

IF NOT EXIST "%_scriptLOGSDIR%" MKDIR "%_scriptLOGSDIR%"
IF NOT EXIST "%_scriptLOGSPATH%" MKDIR "%_scriptLOGSPATH%"

@ECHO. > "%_scriptLOGFQPN%"

REM =====================================================================================
REM =====================================================================================

@ECHO ===================================================================================== >> "%_scriptLOGFQPN%"
@ECHO Script Name:  %_LOCALSCRIPTNAME% >> "%_scriptLOGFQPN%"
@ECHO DATE:  %_LOCALSCRIPTDATE%  TIME:  %_LOCALSCRIPTTIME% >> "%_scriptLOGFQPN%"
@ECHO VERSION:  %_LOCALSCRIPTVERSION%  REVISION:  %_LOCALSCRIPTREVISION% >> "%_scriptLOGFQPN%"
@ECHO ===================================================================================== >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

REM =====================================================================================
REM =====================================================================================

@ECHO _scriptLOGSDIR         ="%_scriptLOGSDIR%" >> "%_scriptLOGFQPN%"
@ECHO _scriptLOGSPATH        ="%_scriptLOGSPATH%" >> "%_scriptLOGFQPN%"
@ECHO _scriptLOGSFILE        ="%_scriptLOGSFILE%" >> "%_scriptLOGFQPN%"
@ECHO _scriptLOGFQPN         ="%_scriptLOGFQPN%" >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"


REM =====================================================================================
REM Configure Text File Editor value
REM =====================================================================================

CALL :sub_SetTextFileEditorValue

REM =====================================================================================
REM =====================================================================================


REM * ===================================================================================
REM * ===================================================================================
REM * CodeSnipet :  Set Date and Time Group values
REM * ===================================================================================
REM * ===================================================================================

GOTO :SETDTGTZSUFFIX

REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM -------------------------------------------------------------------------------------
REM START OF CODE SNIPET SUBROUTINES
REM -------------------------------------------------------------------------------------
REM -------------------------------------------------------------------------------------


REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE:  sub_CLEARDTGTZSUFFIXVARS  :  
REM -------------------------------------------------------------------------------------

:sub_CLEARDTGTZSUFFIXVARS

REM * -------------------------------------------------------------------------
REM * Variables we want to keep for use by the callers
REM * -------------------------------------------------------------------------

SET "_TZTYPE="
SET "_TZTIMEOFYEAR="
SET "_TZCURRENTNAME="
SET "_TZABR="
SET "_TZABRSTZ="
SET "_TZABRDTZ="
SET "_TZCURRENTNAMENOQUOTES="

SET "_DTTZ_SUFFIX_DATE="
SET "_DTTZ_SUFFIX_DATEDASH="
SET "_DTTZ_SUFFIX_TIME="
SET "_DTTZ_SUFFIX_DTG="
SET "_DTTZ_SUFFIX_DTGDASH="
SET "_DTTZ_SUFFIX_TIMETZ="
SET "_DTTZ_SUFFIX_DTGTZ="
SET "_DTTZ_SUFFIX_DTGTZDASH="


EXIT /B 0

REM -------------------------------------------------------------------------------------
REM SUBROUTINE IMPLEMENTATION ELEMENTS : sub_CLEARDTGTZSUFFIXVARS
REM -------------------------------------------------------------------------------------

REM CALL :sub_CLEARDTGTZSUFFIXVARS

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE: sub_CLEARDTGTZSUFFIXVARS
REM -------------------------------------------------------------------------------------
REM =====================================================================================


REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE:  sub_LOGDTGTZSUFFIXRESULTS  :  Log Results
REM -------------------------------------------------------------------------------------

:sub_LOGDTGTZSUFFIXRESULTS

REM * -------------------------------------------------------------------------
REM * Log Results
REM * -------------------------------------------------------------------------

@ECHO. >> "%_scriptLOGFQPN%"
@ECHO Time Zone value processing results: >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"
@ECHO _TZTIMEOFYEAR          = "%_TZTIMEOFYEAR%" >> "%_scriptLOGFQPN%"
@ECHO _TZTYPE                = "%_TZTYPE%" >> "%_scriptLOGFQPN%"
@ECHO _TZCURRENTNAME         = "%_TZCURRENTNAME%" >> "%_scriptLOGFQPN%"
@ECHO _TZABR                 = "%_TZABR%" >> "%_scriptLOGFQPN%"
@ECHO _TZABRSTZ              = "%_TZABRSTZ%" >> "%_scriptLOGFQPN%"
@ECHO _TZABRDTZ              = "%_TZABRDTZ%" >> "%_scriptLOGFQPN%"
@ECHO _TZCURRENTNAMENOQUOTES = "%_TZCURRENTNAMENOQUOTES%" >> "%_scriptLOGFQPN%"

@ECHO. >> "%_scriptLOGFQPN%"
@ECHO Date Time Time Zone suffix value results: >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"
@ECHO _DTTZ_SUFFIX_DATE      = "%_DTTZ_SUFFIX_DATE%" >> "%_scriptLOGFQPN%"
@ECHO _DTTZ_SUFFIX_DATEDASH  = "%_DTTZ_SUFFIX_DATEDASH%" >> "%_scriptLOGFQPN%"
@ECHO _DTTZ_SUFFIX_TIME      = "%_DTTZ_SUFFIX_TIME%" >> "%_scriptLOGFQPN%"
@ECHO _DTTZ_SUFFIX_DTG       = "%_DTTZ_SUFFIX_DTG%" >> "%_scriptLOGFQPN%"
@ECHO _DTTZ_SUFFIX_DTGDASH   = "%_DTTZ_SUFFIX_DTGDASH%" >> "%_scriptLOGFQPN%"
@ECHO _DTTZ_SUFFIX_TIMETZ    = "%_DTTZ_SUFFIX_TIMETZ%" >> "%_scriptLOGFQPN%"
@ECHO _DTTZ_SUFFIX_DTGTZ     = "%_DTTZ_SUFFIX_DTGTZ%" >> "%_scriptLOGFQPN%"
@ECHO _DTTZ_SUFFIX_DTGTZDASH = "%_DTTZ_SUFFIX_DTGTZDASH%" >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"


REM * -------------------------------------------------------------------------

EXIT /B 0

REM -------------------------------------------------------------------------------------
REM SUBROUTINE IMPLEMENTATION ELEMENTS : sub_LOGDTGTZSUFFIXRESULTS
REM -------------------------------------------------------------------------------------

REM CALL :sub_LOGDTGTZSUFFIXRESULTS

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE: sub_LOGDTGTZSUFFIXRESULTS
REM -------------------------------------------------------------------------------------
REM =====================================================================================


REM -------------------------------------------------------------------------------------
REM -------------------------------------------------------------------------------------
REM END OF CODE SNIPET SUBROUTINES
REM -------------------------------------------------------------------------------------
REM -------------------------------------------------------------------------------------
REM =====================================================================================


:SETDTGTZSUFFIX

CALL :sub_CLEARCONFIGSCRIPTPATHSVARS

REM * -------------------------------------------------------------------------
REM * Set Local Variables
REM * -------------------------------------------------------------------------

SET "subroutinescriptname=subroutine.Set_DTG_SUFFIX.COMPACT"
SET "subroutinescriptext=CMD"
SET "subroutinescriptfile=%subroutinescriptname%.%subroutinescriptext%"
SET "subroutinecommonpath=" 
SET "subroutinecommonfqpn=" 

REM * -------------------------------------------------------------------------
REM * Variables set by call
REM * -------------------------------------------------------------------------

CALL :sub_CLEARDTGTZSUFFIXVARS

REM * ===================================================================================
REM * Configure basic variables and set appropriate subroutine paths
REM * ===================================================================================

CALL :sub_CONFIGSCRIPTPATHS

REM * ===================================================================================
REM * Call the operational subroutine to set the required values
REM * ===================================================================================

IF NOT EXIST "%subroutinecommonpath%" GOTO :ERRNOCOMMONSUBROUTINESPATH
IF NOT EXIST "%subroutinecommonfqpn%" GOTO :ERRNOSUBROUTINESCRIPT

REM * -----------------------------------------------------------------------------------
REM * Protect Local Log File value _scriptLOGFQPN since that is used in the called subroutine
REM * -----------------------------------------------------------------------------------
SET "_localLOGFILE="
SET "_remoteLOGFILE="
SET "_localLOGFILE=%_scriptLOGFQPN%"

@ECHO ------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%"
@ECHO:Executing script "%subroutinecommonfqpn%" >> "%_scriptLOGFQPN%"
@ECHO ------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%"

CALL "%subroutinecommonfqpn%"

@ECHO ------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%"
@ECHO:Script "%subroutinecommonfqpn%" Completed >> "%_scriptLOGFQPN%"
@ECHO ------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%"

REM * -----------------------------------------------------------------------------------
REM * Restore Local Log File value _scriptLOGFQPN and retain remote subroutine _scriptLOGFQPN value
REM * -----------------------------------------------------------------------------------
SET "_remoteLOGFILE=%_scriptLOGFQPN%"
SET "_scriptLOGFQPN=%_localLOGFILE%"

REM * ===================================================================================
REM * Log the results
REM * ===================================================================================

CALL :sub_LOGDTGTZSUFFIXRESULTS


REM * =========================================================================
REM * =========================================================================


REM =====================================================================================
REM =====================================================================================
REM START MAIN OPERATIONS
REM =====================================================================================
REM =====================================================================================

REM =====================================================================================
REM =====================================================================================

@ECHO _scriptLOGSDIR         ="%_scriptLOGSDIR%" >> "%_scriptLOGFQPN%"
@ECHO _scriptLOGSPATH        ="%_scriptLOGSPATH%" >> "%_scriptLOGFQPN%"
@ECHO _scriptLOGSFILE        ="%_scriptLOGSFILE%" >> "%_scriptLOGFQPN%"
@ECHO _scriptLOGFQPN         ="%_scriptLOGFQPN%" >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

REM =====================================================================================
REM CONFIGURE STANDARD LOCAL VARIABLES
REM =====================================================================================

SET _scriptTempWORKDIR=%_scriptLOGSDIR%
SET "DATETIMEGRP=%_DTTZ_SUFFIX_DTGTZDASH%"
SET "_HOST_NAME=%COMPUTERNAME%"

SET "_JUSTDOIT="
REM CHECK IF WE ARE CLEANING UP AFTER OURSELVES
@ECHO Parameter 1 = %1 >> "%_scriptLOGFQPN%"
if "%~1"=="" GOTO :NOCALLPARM1
if %1=="--CLEANUP--" GOTO :CLEANUP_SUBROUTINES
IF %1=="--AUTO--" SET "_JUSTDOIT=TRUE"

:NOCALLPARM1

REM =====================================================================================
REM CONFIGURE LOCAL VARIABLES - UPDATED _scriptLOGFQPN
REM =====================================================================================

SET "_tempLOGFILE=%_scriptLOGFQPN%"
SET _scriptLOGSPATH=%_scriptLOGSDIR%
SET "_scriptLOGSFILE=log_%_LOCALSCRIPTNAME%_%DATETIMEGRP%.log"
SET "_scriptLOGFQPN=%_scriptLOGSPATH%\%_scriptLOGSFILE%"

@ECHO _scriptLOGSDIR         ="%_scriptLOGSDIR%" >> "%_scriptLOGFQPN%"
@ECHO _scriptLOGSPATH        ="%_scriptLOGSPATH%" >> "%_scriptLOGFQPN%"
@ECHO _scriptLOGSFILE        ="%_scriptLOGSFILE%" >> "%_scriptLOGFQPN%"
@ECHO _scriptLOGFQPN         ="%_scriptLOGFQPN%" >> "%_scriptLOGFQPN%"
@ECHO _tempLOGFILE           ="%_tempLOGFILE%" >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

TYPE "%_tempLOGFILE%" > "%_scriptLOGFQPN%"

REM =====================================================================================
REM CONFIGURE LOCAL VARIABLES
REM =====================================================================================

SET "SOURCEFOLDERROOT=%LOCALAPPDATA%\Check Point"
SET "SOURCEFOLDER_MGMT_CLI=%SOURCEFOLDERROOT%\mgmt_cli"
SET "SOURCEFOLDER_SMARTCONSOLE=%SOURCEFOLDERROOT%\SmartConsole"
SET "SOURCEREGKEY=HKEY_CURRENT_USER\Software\CheckPoint\Management Clients"

if /i "%PROCESSOR_ARCHITECTURE%"=="x86" SET "INSTALLEDPROGRAMFILES=%ProgramFiles%"
if /i "%PROCESSOR_ARCHITECTURE%"=="x64" SET "INSTALLEDPROGRAMFILES=%ProgramFiles(x86)%"
if /i "%PROCESSOR_ARCHITECTURE%"=="AMD64" SET "INSTALLEDPROGRAMFILES=%ProgramFiles(x86)%"

REM "C:\Program Files (x86)\CheckPoint\SmartConsole\R80.20"

SET "INSTALLEDFOLDER=SmartConsole"
SET "INSTALLEDPATHROOT=%INSTALLEDPROGRAMFILES%\%INSTALLEDFOLDER%"
SET "INSTALLEDPATH=%INSTALLEDPATHROOT%\"

SET "TARGETFOLDERROOT=%USERPROFILE%\Check Point\Settings Backup"
SET "TARGETFOLDER_MGMT_CLI=%TARGETFOLDERROOT%\mgmt_cli"
SET "TARGETFOLDER_SMARTCONSOLE=%TARGETFOLDERROOT%\SmartConsole"
SET "TARGETFOLDERREG=%TARGETFOLDER_SMARTCONSOLE%\registry"

REM SET "TARGETREGDUMPNAMEPREFIX=HKCU_SW_CP_Management-Clients"
SET "TARGETREGDUMPNAMEPREFIX=reg_cp_mgmt_clients"

REM =====================================================================================
REM LOG LOCAL VARIABLES
REM =====================================================================================

REM @ECHO. >> "%_scriptLOGFQPN%"
REM @ECHO _scriptLOGSDIR              ="%_scriptLOGSDIR%" >> "%_scriptLOGFQPN%"
REM @ECHO _scriptLOGSPATH             ="%_scriptLOGSPATH%" >> "%_scriptLOGFQPN%"
REM @ECHO _scriptLOGSFILE             ="%_scriptLOGSFILE%" >> "%_scriptLOGFQPN%"
REM @ECHO _scriptLOGFQPN              ="%_scriptLOGFQPN%" >> "%_scriptLOGFQPN%"
REM @ECHO _tempLOGFILE                ="%_tempLOGFILE%" >> "%_scriptLOGFQPN%"

@ECHO. >> "%_scriptLOGFQPN%"
@ECHO _scriptTempWORKDIR          ="%_scriptTempWORKDIR%" >> "%_scriptLOGFQPN%"
@ECHO DATETIMEGRP                 ="%DATETIMEGRP%" >> "%_scriptLOGFQPN%"
@ECHO _HOST_NAME                  ="%_HOST_NAME%" >> "%_scriptLOGFQPN%"
@ECHO _JUSTDOIT                   ="%_JUSTDOIT%" >> "%_scriptLOGFQPN%"

@ECHO. >> "%_scriptLOGFQPN%"
@ECHO SOURCEFOLDERROOT            ="%SOURCEFOLDERROOT%" >> "%_scriptLOGFQPN%"
@ECHO SOURCEFOLDER_MGMT_CLI       ="%SOURCEFOLDER_MGMT_CLI%" >> "%_scriptLOGFQPN%"
@ECHO SOURCEFOLDER_SMARTCONSOLE   ="%SOURCEFOLDER_SMARTCONSOLE%" >> "%_scriptLOGFQPN%"
@ECHO SOURCEREGKEY                ="%SOURCEREGKEY%" >> "%_scriptLOGFQPN%"

@ECHO INSTALLEDPROGRAMFILES       ="%INSTALLEDPROGRAMFILES%" >> "%_scriptLOGFQPN%"
@ECHO INSTALLEDFOLDER             ="%INSTALLEDFOLDER%" >> "%_scriptLOGFQPN%"
@ECHO INSTALLEDPATHROOT           ="%INSTALLEDPATHROOT%" >> "%_scriptLOGFQPN%"
@ECHO INSTALLEDPATH               ="%INSTALLEDPATH%" >> "%_scriptLOGFQPN%"

@ECHO TARGETFOLDERROOT            ="%TARGETFOLDERROOT%" >> "%_scriptLOGFQPN%"
@ECHO TARGETFOLDER_MGMT_CLI       ="%TARGETFOLDER_MGMT_CLI%" >> "%_scriptLOGFQPN%"
@ECHO TARGETFOLDER_SMARTCONSOLE   ="%TARGETFOLDER_SMARTCONSOLE%" >> "%_scriptLOGFQPN%"
@ECHO TARGETFOLDERREG             ="%TARGETFOLDERREG%" >> "%_scriptLOGFQPN%"

@ECHO TARGETREGDUMPNAMEPREFIX     ="%TARGETREGDUMPNAMEPREFIX%" >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

REM =====================================================================================
REM GET TO WHERE THE WORK IS DONE
REM =====================================================================================

REM PUSHD
REM CD /D "%_scriptTempWORKDIR%" 

REM PUSHD "%_scriptTempWORKDIR%" 

@ECHO Copy Check Point SmartConsole settings to "%TARGETFOLDER_SMARTCONSOLE%" folder
@ECHO.
@ECHO Copy Check Point SmartConsole settings to "%TARGETFOLDER_SMARTCONSOLE%" folder >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

REM =====================================================================================
REM CHANGE SOMETHING, ASK THE USER, UNLESS "--AUTO--"
REM =====================================================================================

IF "%_JUSTDOIT%"=="TRUE" GOTO :WEAREGOODTOGO

SET "ENTERDATETIMEGRP="
SET /p ENTERDATETIMEGRP=Check DTGtzn: (%DATETIMEGRP% YYYY-MM-DD-HHMMtzn)^>
IF NOT "%ENTERDATETIMEGRP%"=="" set "DATETIMEGRP=%ENTERDATETIMEGRP%"
SET "ENTERDATETIMEGRP="

SET "TARGETREGDUMPFQFP=%TARGETFOLDERREG%\%TARGETREGDUMPNAMEPREFIX%_%COMPUTERNAME%_%USERNAME%_%DATETIMEGRP%.reg"
@ECHO TARGETREGDUMPFQFP           ="%TARGETREGDUMPFQFP%" >> "%_scriptLOGFQPN%"


:WEAREGOODTOGO

REM =====================================================================================
REM DO THE THING WE NEED TO DO
REM =====================================================================================

GOTO :SKIPSUBS1

REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE:  sub_BackupSourceFolder  :  Purpose/Description
REM -------------------------------------------------------------------------------------

:sub_BackupSourceFolder

REM * %1 = VERSION

SET "_sublocalVERSION="
SET "_sublocalVERSION=%~1"

@ECHO. >> "%_scriptLOGFQPN%"
@ECHO ------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%"
@ECHO Subroutine sub_BackupSourceFolder Start >> "%_scriptLOGFQPN%"
@ECHO ------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

IF NOT EXIST "%SOURCEFOLDER_SMARTCONSOLE%\%_sublocalVERSION%" @ECHO No source folder for version %_sublocalVERSION% exists : "%SOURCEFOLDER_SMARTCONSOLE%\%_sublocalVERSION%" >> "%_scriptLOGFQPN%"
IF NOT EXIST "%SOURCEFOLDER_SMARTCONSOLE%\%_sublocalVERSION%" GOTO :DONEBCKSRCFLDR

@ECHO Source folder for version %_sublocalVERSION% found : "%SOURCEFOLDER_SMARTCONSOLE%\%_sublocalVERSION%" >> "%_scriptLOGFQPN%"

@ECHO. >> "%_scriptLOGFQPN%"
@ECHO Copy Source Folder "%SOURCEFOLDER_SMARTCONSOLE%\%_sublocalVERSION%" to local "%SOURCEFOLDER_SMARTCONSOLE%\%_sublocalVERSION%.BAK\" >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

XCOPY "%SOURCEFOLDER_SMARTCONSOLE%\%_sublocalVERSION%" "%SOURCEFOLDER_SMARTCONSOLE%\%_sublocalVERSION%.BAK\" /S/V/E/Y >> "%_scriptLOGFQPN%"

@ECHO. >> "%_scriptLOGFQPN%"
@ECHO Copy Source Folder "%SOURCEFOLDER_SMARTCONSOLE%\%_sublocalVERSION%" to target "%TARGETFOLDER_SMARTCONSOLE%\%_sublocalVERSION%.BAK\" >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

XCOPY "%SOURCEFOLDER_SMARTCONSOLE%\%_sublocalVERSION%" "%TARGETFOLDER_SMARTCONSOLE%\%_sublocalVERSION%.BAK\" /S/V/E/Y >> "%_scriptLOGFQPN%"

:DONEBCKSRCFLDR
@ECHO. >> "%_scriptLOGFQPN%"

@ECHO ------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%"
@ECHO Subroutine sub_BackupSourceFolder Finished >> "%_scriptLOGFQPN%"
@ECHO ------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

SET "_sublocalVERSION="

EXIT /B

REM * -----------------------------------------------------------------------------------
REM * 
REM * -----------------------------------------------------------------------------------

REM CALL :sub_BackupSourceFolder %parameter%

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE:
REM -------------------------------------------------------------------------------------
REM =====================================================================================


REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE:  sub_BackupSourceRegistry  :  Purpose/Description
REM -------------------------------------------------------------------------------------

:sub_BackupSourceRegistry

REM * %1 = VERSION
REM * %2 = Registry VERSION
REM * %3 = Registry Target File Prefix

SET "_sublocalVERSION="
SET "_sublocalREGVersion="
SET "_sublocalREGPREFIX="
SET "_sublocalSourceFolder="
SET "_sublocalSourceRegistry="
SET "_sublocalTargetRegFile="

SET "_sublocalVERSION=%~1"
SET "_sublocalREGVersion=%~2"
SET "_sublocalREGPREFIX=%~3"

SET "_sublocalSourceFolder=%SOURCEFOLDER_SMARTCONSOLE%\%_sublocalVERSION%"
SET "_sublocalSourceRegistry=%SOURCEREGKEY%\%_sublocalREGVersion%"
SET "_sublocalTargetRegFile=%TARGETFOLDER_SMARTCONSOLE%\registry\%_sublocalREGPREFIX%_%_sublocalVERSION%.reg"

@ECHO. >> "%_scriptLOGFQPN%"
@ECHO ------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%"
@ECHO Subroutine sub_BackupSourceRegistry Start >> "%_scriptLOGFQPN%"
@ECHO ------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

@ECHO Source version %_sublocalVERSION% export Registry" >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

@ECHO. >> "%_scriptLOGFQPN%"
IF "%_sublocalREGVersion%"=="R77.30" (
	@ECHO Export registry "%_sublocalSourceRegistry%" to "%_sublocalTargetRegFile%" >> "%_scriptLOGFQPN%"
	@ECHO. >> "%_scriptLOGFQPN%"
	REG EXPORT "%_sublocalSourceRegistry%" "%_sublocalTargetRegFile%" /Y >> "%_scriptLOGFQPN%"
) ELSE (
	IF EXIST "%_sublocalSourceFolder%" (
		@ECHO Export registry "%_sublocalSourceRegistry%" to "%_sublocalTargetRegFile%" >> "%_scriptLOGFQPN%"
		REG EXPORT "%_sublocalSourceRegistry%" "%_sublocalTargetRegFile%" /Y >> "%_scriptLOGFQPN%"
	) ELSE (
		@ECHO Version "%_sublocalREGVersion%" NOT INSTALLED! >> "%_scriptLOGFQPN%"
	)
	@ECHO. >> "%_scriptLOGFQPN%"
)

@ECHO ------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%"
@ECHO Subroutine sub_BackupSourceRegistry Finished >> "%_scriptLOGFQPN%"
@ECHO ------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

SET "_sublocalVERSION="
SET "_sublocalREGVersion="
SET "_sublocalREGPREFIX="
SET "_sublocalSourceFolder="
SET "_sublocalSourceRegistry="
SET "_sublocalTargetRegFile="

EXIT /B

REM * -----------------------------------------------------------------------------------
REM * 
REM * -----------------------------------------------------------------------------------

REM CALL :sub_BackupSourceRegistry %parameter%

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE:  sub_BackupSourceRegistry
REM -------------------------------------------------------------------------------------
REM =====================================================================================

:SKIPSUBS1

IF NOT EXIST "%TARGETFOLDER_SMARTCONSOLE%" MKDIR "%TARGETFOLDER_SMARTCONSOLE%" >> "%_scriptLOGFQPN%"
IF NOT EXIST "%TARGETFOLDERREG%" MKDIR "%TARGETFOLDERREG%" >> "%_scriptLOGFQPN%"

IF NOT EXIST "%SOURCEFOLDER_MGMT_CLI%" GOTO :NOMGMTCLIFOLDER
@ECHO. >> "%_scriptLOGFQPN%"
@ECHO Copy Check Point mgmt_cli.exe settings in "%LOCALAPPDATA%" to .BAK folder >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

IF NOT EXIST "%TARGETFOLDER_MGMT_CLI%" MKDIR "%TARGETFOLDER_MGMT_CLI%" >> "%_scriptLOGFQPN%"

XCOPY "%SOURCEFOLDER_MGMT_CLI%\*.*" "%TARGETFOLDER_MGMT_CLI%\" /S/V/E/Y >> "%_scriptLOGFQPN%"


:NOMGMTCLIFOLDER


@ECHO. >> "%_scriptLOGFQPN%"
@ECHO Copy Check Point SmartConsole settings in "%LOCALAPPDATA%" to .BAK folder >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

@ECHO. >> "%_scriptLOGFQPN%"

CALL :sub_BackupSourceFolder "R80"
CALL :sub_BackupSourceFolder "R80.10"
CALL :sub_BackupSourceFolder "R80.20"
CALL :sub_BackupSourceFolder "R80.30"
CALL :sub_BackupSourceFolder "R80.40"
CALL :sub_BackupSourceFolder "R80.50"

@ECHO. >> "%_scriptLOGFQPN%"
@ECHO Export Check Point SmartConsole registry settings to "%TARGETFOLDER_SMARTCONSOLE%\registry" folder >> "%_scriptLOGFQPN%"
@ECHO. >> "%_scriptLOGFQPN%"

REG EXPORT "%SOURCEREGKEY%" "%TARGETFOLDER_SMARTCONSOLE%\registry\%TARGETREGDUMPNAMEPREFIX%_all.reg" /Y >> "%_scriptLOGFQPN%"

SET "INSTALLEDPATH=%INSTALLEDPATHROOT%\R77.30"
@ECHO INSTALLEDPATH               ="%INSTALLEDPATH%" >> "%_scriptLOGFQPN%"
IF EXIST "%INSTALLEDPATH%" CALL :sub_BackupSourceRegistry "R77.30" "6.4.3" "%TARGETREGDUMPNAMEPREFIX%"

CALL :sub_BackupSourceRegistry "R80" "6.4.8" "%TARGETREGDUMPNAMEPREFIX%"
CALL :sub_BackupSourceRegistry "R80.10" "6.5.1" "%TARGETREGDUMPNAMEPREFIX%"
CALL :sub_BackupSourceRegistry "R80.20" "6.5.9" "%TARGETREGDUMPNAMEPREFIX%"
CALL :sub_BackupSourceRegistry "R80.30" "6.6.0" "%TARGETREGDUMPNAMEPREFIX%"
CALL :sub_BackupSourceRegistry "R80.40" "6.7.0" "%TARGETREGDUMPNAMEPREFIX%"
CALL :sub_BackupSourceRegistry "R80.50" "6.8.0" "%TARGETREGDUMPNAMEPREFIX%"

@ECHO. >> "%_scriptLOGFQPN%"
DIR "%TARGETFOLDER_SMARTCONSOLE%" >> "%_scriptLOGFQPN%"

@ECHO. >> "%_scriptLOGFQPN%"
DIR "%TARGETFOLDER_SMARTCONSOLE%"\registry" >> "%_scriptLOGFQPN%"

@ECHO. >> "%_scriptLOGFQPN%"


REM =====================================================================================
REM Show the logged results
REM =====================================================================================

START /MAX "%FILEEDITOR%" "%_scriptLOGFQPN%"
REM START /MAX "%FILEEDITOR%" "%TARGETREGDUMPFQFP%"

REM =====================================================================================
REM GET BACK TO WHERE WE STARTED
REM =====================================================================================

REM POPD

REM * =========================================================================
REM * =========================================================================


REM =====================================================================================
REM =====================================================================================
REM END MAIN OPERATIONS
REM =====================================================================================
REM =====================================================================================


@ECHO.
@ECHO Script Completed : %_LOCALSCRIPTNAME%
@ECHO Log File : "%_scriptLOGFQPN%"
@ECHO.


REM * =========================================================================
REM * =========================================================================
REM * Script Operational Cleanup before exit
REM * =========================================================================

REM * =========================================================================
REM * Variables we want to keep for use by the callers
REM * =========================================================================

REM CALL :sub_CLEANUPRESULTVARS

CALL :sub_CLEARDTGTZSUFFIXVARS

REM * =========================================================================
REM * CLEAN UP Local Variables
REM * =========================================================================

CALL :sub_CLEANUPLOCALVARS
CALL :sub_CLEARCONFIGSCRIPTPATHSVARS

REM * =========================================================================
REM * CLEAN UP Local Standard Variables
REM * =========================================================================

CALL :sub_CLEANUPLOCALSTANDARDVARS

REM * =========================================================================
REM * =========================================================================


REM *************************************************************************************
REM =====================================================================================
REM ALL DONE, EXIT BEFORE ERROR HANDLING
REM =====================================================================================
REM *************************************************************************************

EXIT /b %ERRORLEVEL%


REM *************************************************************************************
REM *************************************************************************************
REM START : Error Handling
REM *************************************************************************************
REM *************************************************************************************


REM -----------------------------------------------------------------
REM Execution Error:  Missing Common Subroutines Scripts path
REM -----------------------------------------------------------------
:ERRNOCOMMONSUBROUTINESPATH
@ECHO:
@ECHO: Execution Error:  Missing Common Subroutines Scripts path %subroutinecommonpath%
@ECHO:
SET ERRCRITICAL=COMMON_SUBROUTINES_SCRIPTS_PATH_NOT_FOUND
GOTO :ERRDONE


REM -----------------------------------------------------------------
REM Execution Error:  Missing Subroutine Script
REM -----------------------------------------------------------------
:ERRNOSUBROUTINESCRIPT
@ECHO:
@ECHO: Execution Error:  Missing Subroutine Script %subroutinecommonfqpn%
@ECHO:
SET ERRCRITICAL=SUBROUTINE_SCRIPT_NOT_FOUND
GOTO :ERRDONE


REM -----------------------------------------------------------------
REM Error:  Critical Error Already Set at Start
REM -----------------------------------------------------------------
:ERRCRITSET
@ECHO: Critical Error Set!  Critical Error = "ERRCRITICAL"
@ECHO:
GOTO :ERRDONE


REM -----------------------------------------------------------------
:ERRHANDLR


REM -----------------------------------------------------------------
:ERRDONE
@ECHO:
@ECHO: !!!!! Error Exit from Script %_LOCALSCRIPTNAME%, Error:  %ERRCRITICAL% >> "%_scriptLOGFQPN%"
@ECHO: !!!!! Error Exit from Script %_LOCALSCRIPTNAME%, Error:  %ERRCRITICAL% >> "%_scriptLOGFQPN%"
@ECHO: ! Log file location : "%_scriptLOGFQPN%" >> "%_scriptLOGFQPN%"
SET LOCALSCRIPTNAME=
@ECHO:
PAUSE
@ECHO: ... exiting...
@ECHO:

EXIT /b %ERRORLEVEL%

REM *************************************************************************************
REM *************************************************************************************
REM END : Error Handling
REM *************************************************************************************
REM *************************************************************************************

REM =====================================================================================
REM =====================================================================================
REM =====================================================================================
REM END OF CODE SNIPET FILE
REM =====================================================================================
REM =====================================================================================
REM =====================================================================================

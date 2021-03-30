@ECHO OFF
REM
REM Script     :  Generate missing SmartConsole Links for the defined version
REM
REM # (C) 2016-2020 Eric James Beasley, @mybasementcloud, https://github.com/mybasementcloud/
REM #
REM # ALL SCRIPTS ARE PROVIDED AS IS WITHOUT EXPRESS OR IMPLIED WARRANTY OF FUNCTION OR POTENTIAL FOR 
REM # DAMAGE Or ABUSE.  AUTHOR DOES NOT ACCEPT ANY RESPONSIBILITY FOR THE USE OF THESE SCRIPTS OR THE 
REM # RESULTS OF USING THESE SCRIPTS.  USING THESE SCRIPTS STIPULATES A CLEAR UNDERSTANDING OF RESPECTIVE
REM # TECHNOLOGIES AND UNDERLYING PROGRAMMING CONCEPTS AND STRUCTURES AND IMPLIES CORRECT IMPLEMENTATION
REM # OF RESPECTIVE BASELINE TECHNOLOGIES FOR PLATFORM UTILIZING THE SCRIPTS.  THIRD PARTY LIMITATIONS
REM # APPLY WITHIN THE SPECIFICS THEIR RESPECTIVE UTILIZATION AGREEMENTS AND LICENSES.  AUTHOR DOES NOT
REM # AUTHORIZE RESALE, LEASE, OR CHARGE FOR UTILIZATION OF THESE SCRIPTS BY ANY THIRD PARTY.
REM #
REM #

SET _LOCALSCRIPTNAME=CREATE_MISSING_SMARTCONSOLE_LINKS
SET _LOCALSCRIPTDATE=2021-03-29
SET _LOCALSCRIPTTIME=2155CDT
SET _LOCALSCRIPTVERSION=03.01.00
SET _LOCALSCRIPTREVISION=000


@ECHO:
@ECHO:=====================================================================================
@ECHO:=====================================================================================
@ECHO SCRIPT Name:  %_LOCALSCRIPTNAME%
@ECHO SCRIPT VERSION:  %_LOCALSCRIPTVERSION%  REVISION:  %_LOCALSCRIPTREVISION%  DATE:  %_LOCALSCRIPTDATE%  TIME:  %_LOCALSCRIPTTIME%
@ECHO SCRIPT CALLED     :  %0
@ECHO SCRIPT PARAMETERS :  %*
@ECHO:=====================================================================================
@ECHO:
@ECHO:


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
SET "FILEEDITORNAME="
SET "DATETIMEGRP="

SET "_JUSTDOIT="


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

SET "_HOST_NAME="


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
SET FILEEDITORNAME=NOTEPAD
SET FILEEDITOR=%windir%\NOTEPAD.EXE
GOTO :EDITORISSET

:HAVEEDITPADPRO8
SET FILEEDITORNAME=EditPad Pro 8
SET FILEEDITOR=%ProgramFiles%\Just Great Software\EditPad Pro 8\EditPadPro8.exe
GOTO :EDITORISSET

:HAVEEDITPADLITE8
SET FILEEDITORNAME=EditPad Lite 8
SET FILEEDITOR=%ProgramFiles%\Just Great Software\EditPad Lite 8\EditPadLite8.exe
GOTO :EDITORISSET

:HAVEEDITPADLITE7
SET FILEEDITORNAME=EditPad Lite 7
SET FILEEDITOR=%ProgramFiles%\Just Great Software\EditPad Lite 7\EditPadLite7.exe
GOTO :EDITORISSET

:EDITORISSET
REM START "%FILEEDITORNAME%" /MAX /B "%FILEEDITOR%" "%_scriptLOGFQPN%"

REM * -------------------------------------------------------------------------
REM * -------------------------------------------------------------------------

EXIT /B 0

REM * -----------------------------------------------------------------------------------
REM * SUBROUTINE IMPLEMENTATION ELEMENTS :  sub_SetTextFileEditorValue
REM * -----------------------------------------------------------------------------------

REM SET "FILEEDITORNAME="
REM SET "FILEEDITOR="
REM CALL :sub_SetTextFileEditorValue

REM START "%FILEEDITORNAME%" /MAX /B "%FILEEDITOR%" "%_scriptLOGFQPN%"

REM -------------------------------------------------------------------------------------
REM SUBROUTINE CLEANUP : sub_SetTextFileEditorValue
REM -------------------------------------------------------------------------------------

:cleanup_sub_SetTextFileEditorValue

@ECHO:CLEAN UP sub_SetTextFileEditorValue

SET "FILEEDITORNAME="
SET "FILEEDITOR="

EXIT /B 0

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

@ECHO: >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:Subroutine sub_CONFIGSCRIPTPATHS Start >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1

SET "subroutinecommonpath=" 
SET "subroutinecommonfqpn="
SET "ERRORRETURN=0"

SET "testthispath=.\_Common\__SUBROUTINES"
SET "testthisfqpn=%testthispath%\%subroutinescriptfile%"
IF EXIST "%testthisfqpn%" GOTO :SUBRTCMNPATHFOUND
IF NOT EXIST "%testthisfqpn%" @ECHO:Did not find target path here:  %testthisfqpn% >> "%_scriptLOGFQPN%" 2>>&1

SET "testthispath=R:\_Common\__SUBROUTINES"
SET "testthisfqpn=%testthispath%\%subroutinescriptfile%"
IF EXIST "%testthisfqpn%" GOTO :SUBRTCMNPATHFOUND
IF NOT EXIST "%testthisfqpn%" @ECHO:Did not find target path here:  %testthisfqpn% >> "%_scriptLOGFQPN%" 2>>&1

SET "testthispath=S:\Updates\Software\_Common\__SUBROUTINES"
SET "testthisfqpn=%testthispath%\%subroutinescriptfile%"
IF EXIST "%testthisfqpn%" GOTO :SUBRTCMNPATHFOUND
IF NOT EXIST "%testthisfqpn%" @ECHO:Did not find target path here:  %testthisfqpn% >> "%_scriptLOGFQPN%" 2>>&1

SET "ERRORRETURN=100"
@ECHO:Did not find target path ! >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1
GOTO :SUBRTCMNPATHSET

:SUBRTCMNPATHFOUND
@ECHO:Found target path here:  %testthisfqpn% >> "%_scriptLOGFQPN%" 2>>&1
SET "subroutinecommonpath=%testthispath%"
SET "subroutinecommonfqpn=%testthisfqpn%"

:SUBRTCMNPATHSET

REM * -------------------------------------------------------------------------
REM * Log Current Values
REM * -------------------------------------------------------------------------

@ECHO: >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:subroutinescriptname   = %subroutinescriptname% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:subroutinescriptext    = %subroutinescriptext% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:subroutinescriptfile   = %subroutinescriptfile% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:subroutinecommonpath   = %subroutinecommonpath% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:subroutinecommonfqpn   = %subroutinecommonfqpn% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:testthispath           = %testthispath% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:testthisfqpn           = %testthisfqpn% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:ERRORRETURN            = %ERRORRETURN% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1

@ECHO: >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:Subroutine sub_CONFIGSCRIPTPATHS Finished >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1

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

@ECHO:CLEAN UP sub_CONFIGSCRIPTPATHS

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

@ECHO: >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:Time Zone value processing results: >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_TZTIMEOFYEAR          = "%_TZTIMEOFYEAR%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_TZTYPE                = "%_TZTYPE%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_TZCURRENTNAME         = "%_TZCURRENTNAME%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_TZABR                 = "%_TZABR%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_TZABRSTZ              = "%_TZABRSTZ%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_TZABRDTZ              = "%_TZABRDTZ%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_TZCURRENTNAMENOQUOTES = "%_TZCURRENTNAMENOQUOTES%" >> "%_scriptLOGFQPN%" 2>>&1

@ECHO: >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:Date Time Time Zone suffix value results: >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_DTTZ_SUFFIX_DATE      = "%_DTTZ_SUFFIX_DATE%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_DTTZ_SUFFIX_DATEDASH  = "%_DTTZ_SUFFIX_DATEDASH%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_DTTZ_SUFFIX_TIME      = "%_DTTZ_SUFFIX_TIME%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_DTTZ_SUFFIX_DTG       = "%_DTTZ_SUFFIX_DTG%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_DTTZ_SUFFIX_DTGDASH   = "%_DTTZ_SUFFIX_DTGDASH%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_DTTZ_SUFFIX_TIMETZ    = "%_DTTZ_SUFFIX_TIMETZ%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_DTTZ_SUFFIX_DTGTZ     = "%_DTTZ_SUFFIX_DTGTZ%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_DTTZ_SUFFIX_DTGTZDASH = "%_DTTZ_SUFFIX_DTGTZDASH%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1


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

@ECHO: > "%_scriptLOGFQPN%"

REM =====================================================================================
REM =====================================================================================

@ECHO:===================================================================================== >> "%_scriptLOGFQPN%" 2>>&1
@ECHO SCRIPT Name:  %_LOCALSCRIPTNAME% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO SCRIPT VERSION:  %_LOCALSCRIPTVERSION%  REVISION:  %_LOCALSCRIPTREVISION%  DATE:  %_LOCALSCRIPTDATE%  TIME:  %_LOCALSCRIPTTIME% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO SCRIPT CALLED     :  %0 >> "%_scriptLOGFQPN%" 2>>&1
@ECHO SCRIPT PARAMETERS :  %* >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:===================================================================================== >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1

REM =====================================================================================
REM =====================================================================================

@ECHO:_scriptLOGSDIR         ="%_scriptLOGSDIR%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_scriptLOGSPATH        ="%_scriptLOGSPATH%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_scriptLOGSFILE        ="%_scriptLOGSFILE%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_scriptLOGFQPN         ="%_scriptLOGFQPN%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1


REM =====================================================================================
REM Configure Text File Editor value
REM =====================================================================================

CALL :sub_SetTextFileEditorValue

REM =====================================================================================
REM =====================================================================================


REM * ===================================================================================
REM * -----------------------------------------------------------------------------------
REM * START:  Set Date and Time Group values
REM * -----------------------------------------------------------------------------------

REM * -----------------------------------------------------------------------------------
REM * Variables for Script paths
REM * -----------------------------------------------------------------------------------

CALL :sub_CLEARCONFIGSCRIPTPATHSVARS

REM * -----------------------------------------------------------------------------------
REM * Set Local Variables for DTG_SUFFIX subroutine
REM * -----------------------------------------------------------------------------------

SET "subroutinescriptname=subroutine.Set_DTG_SUFFIX.COMPACT"
SET "subroutinescriptext=CMD"
SET "subroutinescriptfile=%subroutinescriptname%.%subroutinescriptext%"
SET "subroutinecommonpath="
SET "subroutinecommonfqpn="

REM * -----------------------------------------------------------------------------------
REM * Variables set by call to DTG_SUFFIX subroutine
REM * -----------------------------------------------------------------------------------

CALL :sub_CLEARDTGTZSUFFIXVARS

REM * -----------------------------------------------------------------------------------
REM * Configure basic variables and set appropriate subroutine paths
REM * -----------------------------------------------------------------------------------

CALL :sub_CONFIGSCRIPTPATHS

REM * -----------------------------------------------------------------------------------
REM * Call the operational subroutine to set the required values
REM * -----------------------------------------------------------------------------------

IF NOT EXIST "%subroutinecommonpath%" GOTO :ERRNOCOMMONSUBROUTINESPATH
IF NOT EXIST "%subroutinecommonfqpn%" GOTO :ERRNOSUBROUTINESCRIPT

REM * -----------------------------------------------------------------------------------
REM * Protect Local Log File value _scriptLOGFQPN since that is used in the called subroutine
REM * -----------------------------------------------------------------------------------

SET "_localLOGFILE="
SET "_remoteLOGFILE="
SET "_localLOGFILE=%_scriptLOGFQPN%"

@ECHO:------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:Executing script "%subroutinecommonfqpn%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1

CALL "%subroutinecommonfqpn%"

@ECHO:------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:Script "%subroutinecommonfqpn%" Completed >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1

REM * -----------------------------------------------------------------------------------
REM * Restore Local Log File value _scriptLOGFQPN and retain remote subroutine _scriptLOGFQPN value
REM * -----------------------------------------------------------------------------------

SET "_remoteLOGFILE=%_scriptLOGFQPN%"
SET "_scriptLOGFQPN=%_localLOGFILE%"

REM * -----------------------------------------------------------------------------------
REM * Log the results
REM * -----------------------------------------------------------------------------------

CALL :sub_LOGDTGTZSUFFIXRESULTS


REM * -----------------------------------------------------------------------------------
REM * END:  Set Date and Time Group values
REM * -----------------------------------------------------------------------------------
REM * ===================================================================================

REM =====================================================================================
REM =====================================================================================


REM =====================================================================================
REM =====================================================================================
REM START MAIN OPERATIONS
REM =====================================================================================
REM =====================================================================================

REM =====================================================================================
REM =====================================================================================

@ECHO:_scriptLOGSDIR         ="%_scriptLOGSDIR%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_scriptLOGSPATH        ="%_scriptLOGSPATH%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_scriptLOGSFILE        ="%_scriptLOGSFILE%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_scriptLOGFQPN         ="%_scriptLOGFQPN%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1

REM =====================================================================================
REM CONFIGURE STANDARD LOCAL VARIABLES
REM =====================================================================================

SET _scriptTempWORKDIR=%_scriptLOGSDIR%
SET "DATETIMEGRP=%_DTTZ_SUFFIX_DTGTZDASH%"
SET "_HOST_NAME=%COMPUTERNAME%"

SET "_JUSTDOIT="
REM CHECK IF WE ARE CLEANING UP AFTER OURSELVES
@ECHO:Parameter 1 = %1 >> "%_scriptLOGFQPN%" 2>>&1
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

@ECHO:_scriptLOGSDIR         ="%_scriptLOGSDIR%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_scriptLOGSPATH        ="%_scriptLOGSPATH%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_scriptLOGSFILE        ="%_scriptLOGSFILE%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_scriptLOGFQPN         ="%_scriptLOGFQPN%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:_tempLOGFILE           ="%_tempLOGFILE%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1

TYPE "%_tempLOGFILE%" > "%_scriptLOGFQPN%"

REM =====================================================================================
REM CONFIGURE LOCAL VARIABLES
REM =====================================================================================


GOTO :STARTOPERATIONS

REM =====================================================================================
REM =====================================================================================
REM =====================================================================================
REM START OF OPERATIONS SUBROUTINES
REM =====================================================================================
REM =====================================================================================

REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE:  sub_MakeFileLinkShortCut  :  Purpose/Description
REM -------------------------------------------------------------------------------------

:sub_MakeFileLinkShortCut

SET "_LINKTARGET=%~1"
SET "_LINKSOURCE=%~2"

@ECHO:------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: MakeFileLinkShortCut : >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: _LINKTARGET       : %_LINKTARGET% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: _LINKSOURCE       : %_LINKSOURCE% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1

@ECHO:-------------------------------------------------------------------------------------
@ECHO: MakeFileLinkShortCut :
@ECHO: _LINKTARGET       : %_LINKTARGET%
@ECHO: _LINKSOURCE       : %_LINKSOURCE%
@ECHO:-------------------------------------------------------------------------------------
@ECHO:

MKLINK "%_LINKTARGET%" "%_LINKSOURCE%" >> "%_scriptLOGFQPN%" 2>>&1

@ECHO: >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1

SET "_LINKTARGET="
SET "_LINKSOURCE="

EXIT /B

REM * -----------------------------------------------------------------------------------
REM * SUBROUTINE IMPLEMENTATION ELEMENTS :  sub_MakeFileLinkShortCut
REM * -----------------------------------------------------------------------------------

REM CALL :sub_MakeFileLinkShortCut "%_LINKTARGET%" "%_LINKSOURCE%"

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE:  sub_MakeFileLinkShortCut
REM -------------------------------------------------------------------------------------
REM =====================================================================================


REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE:  sub_MakeFileShortCutPowerShell  :  Purpose/Description
REM -------------------------------------------------------------------------------------

:sub_MakeFileShortCutPowerShell

SET "_LINKTARGET=%~1"
SET "_LINKSOURCE=%~2"
SET "_LINKWORKDIR=%~3"

SET "_LINKTARGET=%_LINKTARGET%.lnk"

@ECHO:------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: MakeFileLinkShortCut : >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: _LINKTARGET       : %_LINKTARGET% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: _LINKSOURCE       : %_LINKSOURCE% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: _LINKWORKDIR      : %_LINKWORKDIR% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1

@ECHO:-------------------------------------------------------------------------------------
@ECHO: MakeFileLinkShortCut :
@ECHO: _LINKTARGET       : %_LINKTARGET%
@ECHO: _LINKSOURCE       : %_LINKSOURCE%
@ECHO: _LINKWORKDIR      : %_LINKWORKDIR%
@ECHO:-------------------------------------------------------------------------------------
@ECHO:

REM MKLINK "%_LINKTARGET%" "%_LINKSOURCE%" >> "%_scriptLOGFQPN%" 2>>&1

REM set TARGET='D:\Temp'
REM set SHORTCUT='C:\Temp\test.lnk'
REM set PWS=powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile

REM Name             MemberType Definition                             
REM ----             ---------- ----------                             
REM Load             Method     void Load (string)                     
REM Save             Method     void Save ()                           
REM Arguments        Property   string Arguments () {get} {set}        
REM Description      Property   string Description () {get} {set}      
REM FullName         Property   string FullName () {get}               
REM Hotkey           Property   string Hotkey () {get} {set}           
REM IconLocation     Property   string IconLocation () {get} {set}     
REM RelativePath     Property   string RelativePath () {set}           
REM TargetPath       Property   string TargetPath () {get} {set}       
REM WindowStyle      Property   int WindowStyle () {get} {set}         
REM WorkingDirectory Property   string WorkingDirectory () {get} {set}

REM %PWS% -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut(%SHORTCUT%); $S.TargetPath = %TARGET%; $S.Save()"

%PWS% -Command "$ws = New-Object -ComObject WScript.Shell; $s = $ws.CreateShortcut('%_LINKTARGET%'); $S.TargetPath = '%_LINKSOURCE%'; $S.WorkingDirectory = '%_LINKWORKDIR%'; $S.Save()" >> "%_scriptLOGFQPN%" 2>>&1

@ECHO: >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1

SET "_LINKTARGET="
SET "_LINKSOURCE="
SET "_LINKWORKDIR="

EXIT /B

REM * -----------------------------------------------------------------------------------
REM * SUBROUTINE IMPLEMENTATION ELEMENTS :  sub_MakeFileShortCutPowerShell
REM * -----------------------------------------------------------------------------------

REM CALL :sub_MakeFileShortCutPowerShell "%_LINKTARGET%" "%_LINKSOURCE%" "%_LINKWORKDIR%"

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE:  sub_MakeFileShortCutPowerShell
REM -------------------------------------------------------------------------------------
REM =====================================================================================


REM =====================================================================================
REM =====================================================================================
REM END OF OPERATIONS SUBROUTINES
REM =====================================================================================
REM =====================================================================================
REM =====================================================================================

:STARTOPERATIONS


REM -----------------------------------------------------------------
REM Set new version
REM -----------------------------------------------------------------

SET CONSOLEVERSIONVALUE=R80.40

ECHO.
ECHO Paramter 1 = "%1"
ECHO.
ECHO. >> "%_scriptLOGFQPN%"
ECHO Paramter 1 = "%1" >> "%_scriptLOGFQPN%"
ECHO. >> "%_scriptLOGFQPN%"

REM ECHO ON

REM ----------------------------------------------------------------
REM Ask if this version is sufficient OK
REM ----------------------------------------------------------------
SET CHKCONSOLEVERSIONVALUE=%1
REM SET CHKCONSOLEVERSIONVALUE=%CONSOLEVERSIONVALUE%

IF "%CHKCONSOLEVERSIONVALUE%"=="" GOTO :CHANGESMCNSLSION

:ASKSMCNSLOK
SET OPT1=Y
ECHO.
ECHO SmartConsole Version to generate shortcuts for.  Validate SmartConsole version is OK as entered?  
ECHO   [Y]es is OK, [N]o or [C]hange to update value, [Q]uit Create Missing SmartConsole Links
ECHO.
SET /P OPT1=Use this SmartConsole Version (%CHKCONSOLEVERSIONVALUE%) [Y/N/C/Q] (%OPT1%) ^>
if /i "%OPT1%"=="Y" GOTO :SMCNSLISSET
if /i "%OPT1%"=="N" GOTO :CHANGESMCNSLSION
if /i "%OPT1%"=="C" GOTO :CHANGESMCNSLSION
if /i "%OPT1%"=="Q" GOTO :QUITNOW1
if "%OPT1%"=="" GOTO :SMCNSLISSET
GOTO :ASKSMCNSLOK

:CHANGESMCNSLSION
ECHO.
SET /P CHKCONSOLEVERSIONVALUE=Enter updated SmartConsole Version (%CHKCONSOLEVERSIONVALUE%) ^>
GOTO :ASKSMCNSLOK

:QUITNOW1
GOTO :SOURCENOTEXIST

:SMCNSLISSET

if "%CHKCONSOLEVERSIONVALUE%"=="" goto :NoParm2Set
SET CONSOLEVERSIONVALUE=%CHKCONSOLEVERSIONVALUE%

:NoParm2Set

ECHO.
ECHO SmartConsole Version Value = "%CONSOLEVERSIONVALUE%"
ECHO.
ECHO. >> "%_scriptLOGFQPN%"
ECHO SmartConsole Version Value = "%CONSOLEVERSIONVALUE%" >> "%_scriptLOGFQPN%"
ECHO. >> "%_scriptLOGFQPN%"

REM -----------------------------------------------------------------


SET "SMARTCONSOLEVERSION=%CONSOLEVERSIONVALUE%"

SET "SOURCEFOLDERROOT=C:\Program Files (x86)\CheckPoint\SmartConsole"
SET "SOURCEFOLDER=%SOURCEFOLDERROOT%\%SMARTCONSOLEVERSION%\PROGRAM"

SET "TARGETFOLDERROOT=%ProgramData%\Microsoft\Windows\Start Menu\Programs"
SET "TARGETFOLDERMAIN=%TARGETFOLDERROOT%\Check Point SmartConsole %SMARTCONSOLEVERSION%"
SET "TARGETFOLDER=%TARGETFOLDERMAIN%\Tools (Manually Added)"

set PWS=powershell.exe -ExecutionPolicy Bypass -NoLogo -NonInteractive -NoProfile


@ECHO:------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: SMARTCONSOLEVERSION         : %SMARTCONSOLEVERSION% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: SOURCEFOLDERROOT            : %SOURCEFOLDERROOT% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: SOURCEFOLDER                : %SOURCEFOLDER% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: TARGETFOLDERROOT            : %TARGETFOLDERROOT% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: TARGETFOLDERMAIN            : %TARGETFOLDERMAIN% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: TARGETFOLDER                : %TARGETFOLDER% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:------------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1

@ECHO:-------------------------------------------------------------------------------------
@ECHO: SMARTCONSOLEVERSION         : %SMARTCONSOLEVERSION%
@ECHO: SOURCEFOLDERROOT            : %SOURCEFOLDERROOT%
@ECHO: SOURCEFOLDER                : %SOURCEFOLDER%
@ECHO: TARGETFOLDERROOT            : %TARGETFOLDERROOT%
@ECHO: TARGETFOLDERMAIN            : %TARGETFOLDERMAIN%
@ECHO: TARGETFOLDER                : %TARGETFOLDER%
@ECHO:-------------------------------------------------------------------------------------
@ECHO:

IF EXIST "%SOURCEFOLDER%" GOTO :SOURCEEXISTOK

@ECHO:-------------------------------------------------------------------------------
@ECHO: !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
@ECHO: !!!!!
@ECHO: !!!!! Missing Source Folder = "%SOURCEFOLDER%" so exiting
@ECHO: !!!!!
@ECHO: !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
@ECHO:-------------------------------------------------------------------------------
@ECHO:
@ECHO:------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: !!!!! >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: !!!!! Missing Source Folder = "%SOURCEFOLDER%" so exiting >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: !!!!! >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:------------------------------------------------------------------------------- >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1

GOTO :SOURCENOTEXIST

:SOURCEEXISTOK

REM =====================================================================================
REM Make sure the target folder exist
REM =====================================================================================

IF NOT EXIST "%TARGETFOLDERMAIN%" MKDIR "%TARGETFOLDERMAIN%" >> "%_scriptLOGFQPN%" 2>>&1

REM =====================================================================================
REM These should already exist
REM =====================================================================================

REM CALL :sub_MakeFileLinkShortCut "%TARGETFOLDERMAIN%\SmartConsole %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\SmartConsole.exe"
REM CALL :sub_MakeFileLinkShortCut "%TARGETFOLDERMAIN%\SmartEndpoint %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\EndpointManager.exe"

REM CALL :sub_MakeFileShortCutPowerShell "%TARGETFOLDERMAIN%\SmartConsole %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\SmartConsole.exe" "%SOURCEFOLDER%"
REM CALL :sub_MakeFileShortCutPowerShell "%TARGETFOLDERMAIN%\SmartEndpoint %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\EndpointManager.exe" "%SOURCEFOLDER%"

DIR "%TARGETFOLDERMAIN%"
DIR "%TARGETFOLDERMAIN%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1

REM =====================================================================================
REM Make sure the target folder exist
REM =====================================================================================

IF NOT EXIST "%TARGETFOLDER%" MKDIR "%TARGETFOLDER%" >> "%_scriptLOGFQPN%" 2>>&1

REM =====================================================================================
REM These generally do not exist and are not created at installation
REM =====================================================================================

REM CALL :sub_MakeFileLinkShortCut "%TARGETFOLDER%\Check Point Log Viewer [SmartView Tracker] %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\CPlgv.exe"
REM CALL :sub_MakeFileLinkShortCut "%TARGETFOLDER%\GuiDBedit %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\GuiDBedit.exe"
REM CALL :sub_MakeFileLinkShortCut "%TARGETFOLDER%\mgmt_cli %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\mgmt_cli.exe"
REM CALL :sub_MakeFileLinkShortCut "%TARGETFOLDER%\SmartDashboard %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\FwPolicy.exe"
REM CALL :sub_MakeFileLinkShortCut "%TARGETFOLDER%\SmartEvent [AnalyzerClient] %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\AnalyzerClient.exe"
REM CALL :sub_MakeFileLinkShortCut "%TARGETFOLDER%\SmartProvisioning LSM %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\RoboManager.exe"
REM CALL :sub_MakeFileLinkShortCut "%TARGETFOLDER%\SmartUpdate %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\Provider.exe"
REM CALL :sub_MakeFileLinkShortCut "%TARGETFOLDER%\SmartViewMonitor %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\SmartViewMonitor.exe"

CALL :sub_MakeFileShortCutPowerShell "%TARGETFOLDER%\Check Point Log Viewer [SmartView Tracker] %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\CPlgv.exe" "%SOURCEFOLDER%"
CALL :sub_MakeFileShortCutPowerShell "%TARGETFOLDER%\GuiDBedit %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\GuiDBedit.exe" "%SOURCEFOLDER%"
CALL :sub_MakeFileShortCutPowerShell "%TARGETFOLDER%\mgmt_cli %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\mgmt_cli.exe" "%SOURCEFOLDER%"
CALL :sub_MakeFileShortCutPowerShell "%TARGETFOLDER%\SmartDashboard %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\FwPolicy.exe" "%SOURCEFOLDER%"
CALL :sub_MakeFileShortCutPowerShell "%TARGETFOLDER%\SmartEvent [AnalyzerClient] %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\AnalyzerClient.exe" "%SOURCEFOLDER%"
CALL :sub_MakeFileShortCutPowerShell "%TARGETFOLDER%\SmartProvisioning LSM %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\RoboManager.exe" "%SOURCEFOLDER%"
CALL :sub_MakeFileShortCutPowerShell "%TARGETFOLDER%\SmartUpdate %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\Provider.exe" "%SOURCEFOLDER%"
CALL :sub_MakeFileShortCutPowerShell "%TARGETFOLDER%\SmartViewMonitor %SMARTCONSOLEVERSION%" "%SOURCEFOLDER%\SmartViewMonitor.exe" "%SOURCEFOLDER%"

DIR "%TARGETFOLDER%"
DIR "%TARGETFOLDER%" >> "%_scriptLOGFQPN%" 2>>&1
@ECHO:
@ECHO: >> "%_scriptLOGFQPN%" 2>>&1

:SOURCENOTEXIST

REM * =========================================================================
REM * =========================================================================


REM =====================================================================================
REM Show the logged results
REM =====================================================================================

@ECHO:
@ECHO:Log File : "%_scriptLOGFQPN%"
@ECHO:Script Completed : %_LOCALSCRIPTNAME%
@ECHO:

PAUSE

START "%FILEEDITORNAME%" /MAX /B "%FILEEDITOR%" "%_scriptLOGFQPN%"


REM =====================================================================================
REM =====================================================================================
REM END MAIN OPERATIONS
REM =====================================================================================
REM =====================================================================================


REM * =========================================================================
REM * =========================================================================
REM * Script Operational Cleanup before exit
REM * =========================================================================

REM * =========================================================================
REM * Variables we want to keep for use by the callers
REM * =========================================================================

CALL :sub_CLEARCONFIGSCRIPTPATHSVARS
CALL :sub_CLEARDTGTZSUFFIXVARS
CALL :sub_CLEANUPRESULTVARS

REM * =========================================================================
REM * CLEAN UP Local Variables
REM * =========================================================================

CALL :sub_CLEANUPLOCALVARS

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
REM START : Help Handling
REM *************************************************************************************
REM *************************************************************************************


:HandleHelp

@ECHO:
@ECHO:-------------------------------------------------------------------------------
@ECHO:-------------------------------------------------------------------------------
@ECHO:HELP for Script : %0
@ECHO:-------------------------------------------------------------------------------
@ECHO:^>%0 [OPTIONS] [COMMANDS] [FOLDERS]
@ECHO:

REM  :000000000011111111122222222223333333333444444444455555555556666666666777777777788888888889
REM  :123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890

@ECHO: OPTIONS:
@ECHO:      Display Help                     /?^|/HELP^|-HELP^|--HELP
@ECHO:
@ECHO: COMMANDS:
@ECHO:
@ECHO: FOLDERS                : Folders provides ability to set specific folders
@ECHO:                        : to process.  Default is ".", so local path where
@ECHO:                        : executed.
@ECHO:
@ECHO:   NOTES                :
@ECHO:      X
@ECHO:

REM  :000000000011111111122222222223333333333444444444455555555556666666666777777777788888888889
REM  :123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890

EXIT /B

REM *************************************************************************************
REM *************************************************************************************
REM END : Help Handling
REM *************************************************************************************
REM *************************************************************************************


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
@ECHO: !!!!! Error Exit from Script %_LOCALSCRIPTNAME%, Error:  %ERRCRITICAL%
@ECHO: !!!!! Error Exit from Script %_LOCALSCRIPTNAME%, Error:  %ERRCRITICAL% >> "%_scriptLOGFQPN%" 2>>&1
@ECHO: ! Log file location : "%_scriptLOGFQPN%" >> "%_scriptLOGFQPN%" 2>>&1
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

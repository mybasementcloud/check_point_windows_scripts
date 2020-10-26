@ECHO OFF
REM
REM SUBROUTINE :  Set Date Time Group Suffix Elements
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

SET _LOCALSUBROUTINENAME=subroutine.Set_DTG_SUFFIX
SET _LOCALSUBROUTINEDATE=2020-10-25
SET _LOCALSUBROUTINETIME=1100CDT
SET _LOCALSUBROUTINEVERSION=03.00.00
SET _LOCALSUBROUTINEREVISION=000


REM @ECHO:
REM @ECHO:=====================================================================================
REM @ECHO:=====================================================================================
REM @ECHO Subroutine Name:  %_LOCALSUBROUTINENAME%
REM @ECHO Subroutine VERSION:  %_LOCALSUBROUTINEVERSION%  REVISION:  %_LOCALSUBROUTINEREVISION%  DATE:  %_LOCALSUBROUTINEDATE%  TIME:  %_LOCALSUBROUTINETIME%
REM @ECHO Subroutine CALLED     :  %0
REM @ECHO Subroutine PARAMETERS :  %*
REM @ECHO:=====================================================================================
REM @ECHO:
REM @ECHO:


REM CHECK IF WE ARE CLEANING UP AFTER OURSELVES
if "%~1"=="" GOTO :NOCALLPARM1
if %1=="--CLEANUP--" GOTO :CLEANUP_SUBROUTINES

:NOCALLPARM1
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

SET "_TZSTDNAME="
SET "_TZSTDSMONTH="
SET "_TZSTDSDAY="
SET "_TZDSTNAME="
SET "_TZDSTSMONTH="
SET "_TZDSTSDAY="

SET "_YEAR="
SET "_MONTH="
SET "_DAY="
SET "_HOUR="
SET "_MINUTE="

SET "_TZABRVALUE="


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

SET "_subroutineLOGSDIR="
SET "_subroutineLOGSPATH="
SET "_subroutineLOGSFILE="

SET "_LOCALSUBROUTINENAME="
SET "_LOCALSUBROUTINEDATE="
SET "_LOCALSUBROUTINETIME="
SET "_LOCALSUBROUTINEVERSION="
SET "_LOCALSUBROUTINEREVISION="

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
REM START SUBROUTINE:  sub_CLEANUPPROCESSTZLINEVARS  :  
REM -------------------------------------------------------------------------------------

:sub_CLEANUPPROCESSTZLINEVARS

REM * -------------------------------------------------------------------------
REM * Variables we want to keep for use by the callers
REM * -------------------------------------------------------------------------

SET "_TZSTDNAME="
SET "_TZSTDSMONTH="
SET "_TZSTDSDAY="
SET "_TZDSTNAME="
SET "_TZDSTSMONTH="
SET "_TZDSTSDAY="


EXIT /B 0

REM -------------------------------------------------------------------------------------
REM SUBROUTINE IMPLEMENTATION ELEMENTS : sub_CLEANUPPROCESSTZLINEVARS
REM -------------------------------------------------------------------------------------

REM CALL :sub_CLEANUPPROCESSTZLINEVARS

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE: sub_CLEANUPPROCESSTZLINEVARS
REM -------------------------------------------------------------------------------------
REM =====================================================================================


REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE:  sub_PROCESSTZLINE  :  Process Time Zone Data Line from W32TM /tz
REM -------------------------------------------------------------------------------------

:sub_PROCESSTZLINE

IF "%~1"=="" (
	ECHO Missing search file in parameter 1
	ECHO Missing search file in parameter 1 >> "%_subroutineLOGFQPN%"
	EXIT /B 255
)

@ECHO. >> "%_subroutineLOGFQPN%"
@ECHO Process Time Zone Line from W32TM /tz data >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"
@ECHO Parameter 01 = %1 >> "%_subroutineLOGFQPN%"
@ECHO Parameter 02 = %2 >> "%_subroutineLOGFQPN%"
@ECHO Parameter 03 = %3 >> "%_subroutineLOGFQPN%"
@ECHO Parameter 04 = %4 >> "%_subroutineLOGFQPN%"
@ECHO Parameter 05 = %5 >> "%_subroutineLOGFQPN%"
@ECHO Parameter 06 = %6 >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"

REM -------------------------------------------------------------------------------------
IF "%1"=="[Standard" GOTO :HANDLESTD
IF "%1"=="[Daylight" GOTO :HANDELDST

@ECHO Handle Other Lines >> "%_subroutineLOGFQPN%"

EXIT /B

REM -------------------------------------------------------------------------------------
:HANDLESTD
@ECHO Handle Standard >> "%_subroutineLOGFQPN%"
FOR /F "tokens=2 delims=:" %%G IN ('ECHO %2') DO SET "_TZSTDNAME=%%G"
FOR /F "tokens=3 delims=:" %%G IN ('ECHO %4') DO SET "_TZSTDSMONTH=%%G"
FOR /F "tokens=2 delims=:" %%G IN ('ECHO %5') DO SET "_TZSTDSDAY=%%G"
@ECHO. >> "%_subroutineLOGFQPN%"

EXIT /B

REM -------------------------------------------------------------------------------------
:HANDELDST
@ECHO Handle Daylight >> "%_subroutineLOGFQPN%"
FOR /F "tokens=2 delims=:" %%G IN ('ECHO %2') DO SET "_TZDSTNAME=%%G"
FOR /F "tokens=3 delims=:" %%G IN ('ECHO %4') DO SET "_TZDSTSMONTH=%%G"
FOR /F "tokens=2 delims=:" %%G IN ('ECHO %5') DO SET "_TZDSTSDAY=%%G"
@ECHO. >> "%_subroutineLOGFQPN%"

EXIT /B

REM -------------------------------------------------------------------------------------


REM -------------------------------------------------------------------------------------
REM SUBROUTINE IMPLEMENTATION ELEMENTS : sub_PROCESSTZLINE
REM -------------------------------------------------------------------------------------

REM CALL :sub_CLEANUPPROCESSTZLINEVARS
REM CALL :sub_PROCESSTZLINE %parameter%

REM -------------------------------------------------------------------------------------
REM SUBROUTINE CLEANUP : sub_PROCESSTZLINE
REM -------------------------------------------------------------------------------------

:cleanup_sub_PROCESSTZLINE

@ECHO CLEAN UP sub_PROCESSTZLINE

CALL :sub_CLEANUPPROCESSTZLINEVARS

EXIT /B 0

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE:  sub_PROCESSTZLINE
REM -------------------------------------------------------------------------------------
REM =====================================================================================


REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE:  sub_REMOVEQUOTESFROMPARM  :  Remove Quotes (") From Parameter
REM -------------------------------------------------------------------------------------

:sub_REMOVEQUOTESFROMPARM

SET "xPARMNOQUOTES="

IF "%~1"=="" (
	ECHO Missing search file in parameter 1
	ECHO Missing search file in parameter 1 >> "%_subroutineLOGFQPN%"
	EXIT /B 255
)

ECHO Parameter passed : %1 >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"

SET xPARMNOQUOTES=%~1

@ECHO Parameter details from Parameter : Original Parameter : %1 >> "%_subroutineLOGFQPN%"
@ECHO Parameter details from Parameter : xPARMNOQUOTES      : %xPARMNOQUOTES% >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"

EXIT /B

REM -------------------------------------------------------------------------------------
REM SUBROUTINE IMPLEMENTATION ELEMENTS : sub_REMOVEQUOTESFROMPARM
REM -------------------------------------------------------------------------------------

REM SET xPARMNOQUOTES=
REM CALL :sub_REMOVEQUOTESFROMPARM %parameter%

REM -------------------------------------------------------------------------------------
REM SUBROUTINE CLEANUP : sub_REMOVEQUOTESFROMPARM
REM -------------------------------------------------------------------------------------

:cleanup_sub_REMOVEQUOTESFROMPARM

@ECHO CLEAN UP sub_REMOVEQUOTESFROMPARM

SET "xPARMNOQUOTES="

EXIT /B 0

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE:  sub_REMOVEQUOTESFROMPARM
REM -------------------------------------------------------------------------------------
REM =====================================================================================


REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE:  sub_MAKETIMEZONEABBREVIATION  :  Make Time Zone Abbreviation from parameter
REM -------------------------------------------------------------------------------------

:sub_MAKETIMEZONEABBREVIATION

IF "%~1"=="" (
	ECHO Missing search file in parameter 1
	ECHO Missing search file in parameter 1 >> "%_subroutineLOGFQPN%"
	EXIT /B 255
)

SET "_NOQUOTES="
SET "_WORD1=" & SET "_WORD2=" & SET "_WORD3=" & SET "_WORD4=" & SET "_WORD5="
SET "_LTR1=" & SET "_LTR2=" & SET "_LTR3=" & SET "_LTR4=" & SET "_LTR5="

ECHO Parameter passed : %1 >> "%_subroutineLOGFQPN%"

SET _NOQUOTES=%~1

FOR /F "tokens=1,2,3,4,5" %%G IN ('ECHO %_NOQUOTES%') DO SET "_WORD1=%%G"& SET "_WORD2=%%H"& SET "_WORD3=%%I"& SET "_WORD4=%%J"& SET "_WORD5=%%K"

IF NOT "%_WORD1%"=="" SET "_LTR1=%_WORD1:~0,1%"
IF NOT "%_WORD2%"=="" SET "_LTR2=%_WORD2:~0,1%"
IF NOT "%_WORD3%"=="" SET "_LTR3=%_WORD3:~0,1%"
IF NOT "%_WORD4%"=="" SET "_LTR4=%_WORD4:~0,1%"
IF NOT "%_WORD5%"=="" SET "_LTR5=%_WORD5:~0,1%"

SET "_TZABRVALUE="
IF NOT "%_LTR1%"=="" SET "_TZABRVALUE=%_TZABRVALUE%%_LTR1%"
IF NOT "%_LTR2%"=="" SET "_TZABRVALUE=%_TZABRVALUE%%_LTR2%"
IF NOT "%_LTR3%"=="" SET "_TZABRVALUE=%_TZABRVALUE%%_LTR3%"
IF NOT "%_LTR4%"=="" SET "_TZABRVALUE=%_TZABRVALUE%%_LTR4%"
IF NOT "%_LTR5%"=="" SET "_TZABRVALUE=%_TZABRVALUE%%_LTR5%"

@ECHO Time Zone Abbreviation from Parameter : Original Parameter : %1 >> "%_subroutineLOGFQPN%"
@ECHO Time Zone Abbreviation from Parameter : _NOQUOTES          : %_NOQUOTES% >> "%_subroutineLOGFQPN%"
@ECHO Time Zone Abbreviation from Parameter : _TZABRVALUE        : %_TZABRVALUE% >> "%_subroutineLOGFQPN%"
@ECHO Time Zone Abbreviation from Parameter : _WORD1, _LTR1      : %_WORD1%, %_LTR1% >> "%_subroutineLOGFQPN%"
@ECHO Time Zone Abbreviation from Parameter : _WORD2, _LTR2      : %_WORD2%, %_LTR2% >> "%_subroutineLOGFQPN%"
@ECHO Time Zone Abbreviation from Parameter : _WORD3, _LTR3      : %_WORD3%, %_LTR3% >> "%_subroutineLOGFQPN%"
@ECHO Time Zone Abbreviation from Parameter : _WORD4, _LTR4      : %_WORD4%, %_LTR4% >> "%_subroutineLOGFQPN%"
@ECHO Time Zone Abbreviation from Parameter : _WORD5, _LTR5      : %_WORD5%, %_LTR5% >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"

SET "_NOQUOTES="
SET "_WORD1=" & SET "_WORD2=" & SET "_WORD3=" & SET "_WORD4=" & SET "_WORD5="
SET "_LTR1=" & SET "_LTR2=" & SET "_LTR3=" & SET "_LTR4=" & SET "_LTR5="

EXIT /B

REM -------------------------------------------------------------------------------------
REM SUBROUTINE IMPLEMENTATION ELEMENTS : sub_MAKETIMEZONEABBREVIATION
REM -------------------------------------------------------------------------------------

REM SET "_TZABR="
REM CALL :sub_MAKETIMEZONEABBREVIATION %parameter%

REM -------------------------------------------------------------------------------------
REM SUBROUTINE CLEANUP : sub_MAKETIMEZONEABBREVIATION
REM -------------------------------------------------------------------------------------

:cleanup_sub_MAKETIMEZONEABBREVIATION

@ECHO CLEAN UP sub_MAKETIMEZONEABBREVIATION

SET "_TZABRVALUE="
SET "_NOQUOTES="
SET "_WORD1=" & SET "_WORD2=" & SET "_WORD3=" & SET "_WORD4=" & SET "_WORD5="
SET "_LTR1=" & SET "_LTR2=" & SET "_LTR3=" & SET "_LTR4=" & SET "_LTR5="

EXIT /B 0

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE: sub_MAKETIMEZONEABBREVIATION
REM -------------------------------------------------------------------------------------
REM =====================================================================================


REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE:  sub_OUTPUTRESULTS  :  Output Results
REM -------------------------------------------------------------------------------------

:sub_OUTPUTRESULTS

REM * -------------------------------------------------------------------------
REM * Output Results
REM * -------------------------------------------------------------------------

@ECHO.
@ECHO Time Zone value processing results:
@ECHO.
@ECHO _TZTIMEOFYEAR          = "%_TZTIMEOFYEAR%"
@ECHO _TZTYPE                = "%_TZTYPE%"
@ECHO _TZCURRENTNAME         = "%_TZCURRENTNAME%"
@ECHO _TZABR                 = "%_TZABR%"
@ECHO _TZABRSTZ              = "%_TZABRSTZ%"
@ECHO _TZABRDTZ              = "%_TZABRDTZ%"
@ECHO _TZCURRENTNAMENOQUOTES = "%_TZCURRENTNAMENOQUOTES%"

@ECHO.
@ECHO Date Time Time Zone suffix value results:
@ECHO.
@ECHO _DTTZ_SUFFIX_DATE      = "%_DTTZ_SUFFIX_DATE%"
@ECHO _DTTZ_SUFFIX_DATEDASH  = "%_DTTZ_SUFFIX_DATEDASH%"
@ECHO _DTTZ_SUFFIX_TIME      = "%_DTTZ_SUFFIX_TIME%"
@ECHO _DTTZ_SUFFIX_DTG       = "%_DTTZ_SUFFIX_DTG%"
@ECHO _DTTZ_SUFFIX_DTGDASH   = "%_DTTZ_SUFFIX_DTGDASH%"
@ECHO _DTTZ_SUFFIX_TIMETZ    = "%_DTTZ_SUFFIX_TIMETZ%"
@ECHO _DTTZ_SUFFIX_DTGTZ     = "%_DTTZ_SUFFIX_DTGTZ%"
@ECHO _DTTZ_SUFFIX_DTGTZDASH = "%_DTTZ_SUFFIX_DTGTZDASH%"
@ECHO.


REM * -------------------------------------------------------------------------

EXIT /B 0

REM -------------------------------------------------------------------------------------
REM SUBROUTINE IMPLEMENTATION ELEMENTS : sub_OUTPUTRESULTS
REM -------------------------------------------------------------------------------------

REM CALL :sub_OUTPUTRESULTS

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE: sub_OUTPUTRESULTS
REM -------------------------------------------------------------------------------------
REM =====================================================================================


REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE:  sub_LOGRESULTS  :  Log Results
REM -------------------------------------------------------------------------------------

:sub_LOGRESULTS

REM * -------------------------------------------------------------------------
REM * Log Results
REM * -------------------------------------------------------------------------

@ECHO. >> "%_subroutineLOGFQPN%"
@ECHO Time Zone value processing results: >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"
@ECHO _TZTIMEOFYEAR          = "%_TZTIMEOFYEAR%" >> "%_subroutineLOGFQPN%"
@ECHO _TZTYPE                = "%_TZTYPE%" >> "%_subroutineLOGFQPN%"
@ECHO _TZCURRENTNAME         = "%_TZCURRENTNAME%" >> "%_subroutineLOGFQPN%"
@ECHO _TZABR                 = "%_TZABR%" >> "%_subroutineLOGFQPN%"
@ECHO _TZABRSTZ              = "%_TZABRSTZ%" >> "%_subroutineLOGFQPN%"
@ECHO _TZABRDTZ              = "%_TZABRDTZ%" >> "%_subroutineLOGFQPN%"
@ECHO _TZCURRENTNAMENOQUOTES = "%_TZCURRENTNAMENOQUOTES%" >> "%_subroutineLOGFQPN%"

@ECHO. >> "%_subroutineLOGFQPN%"
@ECHO Date Time Time Zone suffix value results: >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"
@ECHO _DTTZ_SUFFIX_DATE      = "%_DTTZ_SUFFIX_DATE%" >> "%_subroutineLOGFQPN%"
@ECHO _DTTZ_SUFFIX_DATEDASH  = "%_DTTZ_SUFFIX_DATEDASH%" >> "%_subroutineLOGFQPN%"
@ECHO _DTTZ_SUFFIX_TIME      = "%_DTTZ_SUFFIX_TIME%" >> "%_subroutineLOGFQPN%"
@ECHO _DTTZ_SUFFIX_DTG       = "%_DTTZ_SUFFIX_DTG%" >> "%_subroutineLOGFQPN%"
@ECHO _DTTZ_SUFFIX_DTGDASH   = "%_DTTZ_SUFFIX_DTGDASH%" >> "%_subroutineLOGFQPN%"
@ECHO _DTTZ_SUFFIX_TIMETZ    = "%_DTTZ_SUFFIX_TIMETZ%" >> "%_subroutineLOGFQPN%"
@ECHO _DTTZ_SUFFIX_DTGTZ     = "%_DTTZ_SUFFIX_DTGTZ%" >> "%_subroutineLOGFQPN%"
@ECHO _DTTZ_SUFFIX_DTGTZDASH = "%_DTTZ_SUFFIX_DTGTZDASH%" >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"


REM * -------------------------------------------------------------------------

EXIT /B 0

REM -------------------------------------------------------------------------------------
REM SUBROUTINE IMPLEMENTATION ELEMENTS : sub_LOGRESULTS
REM -------------------------------------------------------------------------------------

REM CALL :sub_LOGRESULTS

REM -------------------------------------------------------------------------------------
REM END SUBROUTINE: sub_LOGRESULTS
REM -------------------------------------------------------------------------------------
REM =====================================================================================


REM =====================================================================================
REM =====================================================================================
REM -------------------------------------------------------------------------------------
REM START SUBROUTINE CLEANUP  
REM -------------------------------------------------------------------------------------
REM -------------------------------------------------------------------------------------

:CLEANUP_SUBROUTINES

@ECHO Call CLEAN UP Subroutines

CALL :cleanup_sub_PROCESSTZLINE
CALL :cleanup_sub_REMOVEQUOTESFROMPARM
CALL :cleanup_sub_MAKETIMEZONEABBREVIATION

REM * -------------------------------------------------------------------------
REM * CLEAN UP Variables we wanted to keep for use by the callers
REM * -------------------------------------------------------------------------

@ECHO CLEAN UP Variables we wanted to keep for use by the callers

CALL :sub_CLEANUPRESULTVARS

REM * -------------------------------------------------------------------------
REM * CLEAN UP Local Variables
REM * -------------------------------------------------------------------------

@ECHO CLEAN UP Local Variables

CALL :sub_CLEANUPLOCALVARS

REM * -------------------------------------------------------------------------
REM * CLEAN UP Local Standard Variables
REM * -------------------------------------------------------------------------

@ECHO CLEAN UP Local Standard Variables

CALL :sub_CLEANUPLOCALSTANDARDVARS

REM -------------------------------------------------------------------------------------

EXIT /B 0

REM -------------------------------------------------------------------------------------
REM -------------------------------------------------------------------------------------
REM END SUBROUTINE CLEANUP  
REM -------------------------------------------------------------------------------------
REM =====================================================================================
REM =====================================================================================


REM =====================================================================================
REM =====================================================================================
REM END OF SUBROUTINES
REM =====================================================================================
REM =====================================================================================
REM =====================================================================================

:STARTSCRIPT

REM =====================================================================================
REM =====================================================================================
REM START SUBROUTINE MAIN OPERATIONS
REM =====================================================================================
REM =====================================================================================


REM * =========================================================================
REM * CLEAR Variables
REM * =========================================================================

CALL :sub_CLEANUPRESULTVARS
CALL :sub_CLEANUPLOCALVARS

REM * =========================================================================
REM * Handle Logging Variables, Folders, Paths, and Files
REM * =========================================================================

IF NOT "%_scriptLOGFQPN%"=="" GOTO :SETREMOTELOGGING

REM * -------------------------------------------------------------------------
:SETLOCALLOGGING

REM SET _subroutineLOGSDIR=C:\TEMP
SET _subroutineLOGSDIR=%TEMP%
SET _subroutineLOGSPATH=%_subroutineLOGSDIR%
SET "_subroutineLOGSFILE=%_LOCALSUBROUTINENAME%.log"
SET "_subroutineLOGFQPN=%_subroutineLOGSPATH%\%_subroutineLOGSFILE%"

IF NOT EXIST "%_subroutineLOGSDIR%" MKDIR "%_subroutineLOGSDIR%"
IF NOT EXIST "%_subroutineLOGSPATH%" MKDIR "%_subroutineLOGSPATH%"

@ECHO Logging to local log file : "%_subroutineLOGFQPN%"

@ECHO. > "%_subroutineLOGFQPN%"

GOTO :LOGGINGCONFIGURED

REM * -------------------------------------------------------------------------
:SETREMOTELOGGING

@ECHO Logging to calling script log file : "%_scriptLOGFQPN%"

SET _subroutineLOGSDIR=%_scriptLOGSDIR%
SET _subroutineLOGSPATH=%_scriptLOGSPATH%
SET "_subroutineLOGSFILE=%_scriptLOGSFILE"
SET "%_subroutineLOGFQPN%=%_scriptLOGFQPN%"

@ECHO. >> "%_subroutineLOGFQPN%"

REM * -------------------------------------------------------------------------
:LOGGINGCONFIGURED

@ECHO.

REM =====================================================================================
REM =====================================================================================

@ECHO ===================================================================================== >> "%_subroutineLOGFQPN%"
@ECHO CodeSnipet Script Name:  %_LOCALSUBROUTINENAME% >> "%_subroutineLOGFQPN%"
@ECHO DATE:  %_LOCALSUBROUTINEDATE%  TIME:  %_LOCALSUBROUTINETIME% >> "%_subroutineLOGFQPN%"
@ECHO VERSION:  %_LOCALSUBROUTINEVERSION%  REVISION:  %_LOCALSUBROUTINEREVISION% >> "%_subroutineLOGFQPN%"
@ECHO ===================================================================================== >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"

REM =====================================================================================
REM =====================================================================================

REM * ===================================================================================
REM * ===================================================================================
REM * Process Date and Time information from DATE /T and TIME /T Commands for local time
REM * ===================================================================================
REM * ===================================================================================

@ECHO DATE >> "%_subroutineLOGFQPN%"
DATE /T >> "%_subroutineLOGFQPN%"
FOR /F "tokens=1,2,3 delims=/" %%G IN ('DATE /T') DO SET "_YEAR=%%G"& SET "_MONTH=%%H"& SET "_DAY=%%I"
SET "_YEAR=%_YEAR:~0,4%"
SET "_MONTH=%_MONTH:~0,2%"
SET "_DAY=%_DAY:~0,2%"
@ECHO _YEAR   = "%_YEAR%" >> "%_subroutineLOGFQPN%"
@ECHO _MONTH  = "%_MONTH%" >> "%_subroutineLOGFQPN%"
@ECHO _DAY    = "%_DAY%" >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"

@ECHO TIME >> "%_subroutineLOGFQPN%"
TIME /T >> "%_subroutineLOGFQPN%"
FOR /F "tokens=1,2 delims=:" %%G IN ('TIME /T') DO SET "_HOUR=%%G"& SET "_MINUTE=%%H"
SET "_HOUR=%_HOUR:~0,2%"
SET "_MINUTE=%_MINUTE:~0,2%"
@ECHO _HOUR   = "%_HOUR%" >> "%_subroutineLOGFQPN%"
@ECHO _MINUTE = "%_MINUTE%" >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"

REM * ===================================================================================
REM * Example Configuration of Values from VBS script original
REM * ===================================================================================
REM * sDateValue = sYear & sMonth & sDay
REM * sDateValueDash = sYear & "-" & sMonth & "-" & sDay
REM * sTimeValue = sHour & sMinute
REM * sDateTimeGroup = sDateValue & "-" & sTimeValue
REM * sDateTimeGroupDash = sYear & "-" & sMonth & "-" & sDay & "-" & sHour & sMinute
REM * ===================================================================================

SET "_DTTZ_SUFFIX_DATE=%_YEAR%%_MONTH%%_DAY%"
SET "_DTTZ_SUFFIX_DATEDASH=%_YEAR%-%_MONTH%-%_DAY%"
SET "_DTTZ_SUFFIX_TIME=%_HOUR%%_MINUTE%"
SET "_DTTZ_SUFFIX_DTG=%_DTTZ_SUFFIX_DATE%-%_DTTZ_SUFFIX_TIME%"
SET "_DTTZ_SUFFIX_DTGDASH=%_DTTZ_SUFFIX_DATEDASH%-%_DTTZ_SUFFIX_TIME%"

@ECHO _DTTZ_SUFFIX_DATE      = "%_DTTZ_SUFFIX_DATE%" >> "%_subroutineLOGFQPN%"
@ECHO _DTTZ_SUFFIX_DATEDASH  = "%_DTTZ_SUFFIX_DATEDASH%" >> "%_subroutineLOGFQPN%"
@ECHO _DTTZ_SUFFIX_TIME      = "%_DTTZ_SUFFIX_TIME%" >> "%_subroutineLOGFQPN%"
@ECHO _DTTZ_SUFFIX_DTG       = "%_DTTZ_SUFFIX_DTG%" >> "%_subroutineLOGFQPN%"
@ECHO _DTTZ_SUFFIX_DTGDASH   = "%_DTTZ_SUFFIX_DTGDASH%" >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"
@ECHO ------------------------------------------------------------------------------------- >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"


REM * ===================================================================================
REM * ===================================================================================
REM * Process Time Zone information from W32TM /tz command
REM * ===================================================================================
REM * ===================================================================================

CALL :sub_CLEANUPPROCESSTZLINEVARS

@ECHO.
@ECHO TimeZone information W32TM /tz
@ECHO.
@ECHO. >> "%_subroutineLOGFQPN%"
@ECHO TimeZone information W32TM /tz >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"

@ECHO. >> "%_subroutineLOGFQPN%"
@ECHO W32TM /tz >> "%_subroutineLOGFQPN%"
W32TM /tz  >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"
@ECHO ------------------------------------------------------------------------------------- >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"
FOR /F "tokens=*" %%G IN ('W32TM /tz') DO CALL :sub_PROCESSTZLINE %%G
@ECHO. >> "%_subroutineLOGFQPN%"
@ECHO ------------------------------------------------------------------------------------- >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"

@ECHO Results for processing W32TM /tz Command: >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"
@ECHO Standard TZ >> "%_subroutineLOGFQPN%"
@ECHO _TZSTDNAME             =%_TZSTDNAME% >> "%_subroutineLOGFQPN%"
@ECHO _TZSTDSMONTH           =%_TZSTDSMONTH% >> "%_subroutineLOGFQPN%"
@ECHO _TZSTDSDAY             =%_TZSTDSDAY% >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"
@ECHO Daylight TZ >> "%_subroutineLOGFQPN%"
@ECHO _TZDSTNAME             =%_TZDSTNAME% >> "%_subroutineLOGFQPN%"
@ECHO _TZDSTSMONTH           =%_TZDSTSMONTH% >> "%_subroutineLOGFQPN%"
@ECHO _TZDSTSDAY             =%_TZDSTSDAY% >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"

@ECHO _YEAR                  ="%_YEAR%" >> "%_subroutineLOGFQPN%"
@ECHO _MONTH                 ="%_MONTH%" >> "%_subroutineLOGFQPN%"
@ECHO _DAY                   ="%_DAY%" >> "%_subroutineLOGFQPN%"
@ECHO _HOUR                  ="%_HOUR%" >> "%_subroutineLOGFQPN%"
@ECHO _MINUTE                ="%_MINUTE%" >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"

@ECHO. >> "%_subroutineLOGFQPN%"
@ECHO ------------------------------------------------------------------------------------- >> "%_subroutineLOGFQPN%"
@ECHO. >> "%_subroutineLOGFQPN%"
@ECHO Processing Time Zone Information >> "%_subroutineLOGFQPN%"
@ECHO Processing Time Zone Information
@ECHO. >> "%_subroutineLOGFQPN%"
@ECHO.

IF %_MONTH% LSS %_TZDSTSMONTH% SET "_TZTIMEOFYEAR=Before DST Start Month"&SET "_TZTYPE=STZ"&GOTO :TZTYPESET
IF %_MONTH% GTR %_TZSTDSMONTH% SET "_TZTIMEOFYEAR=After DST End Month"&SET "_TZTYPE=STZ"&GOTO :TZTYPESET
IF %_MONTH% EQU %_TZDSTSMONTH% ( SET "_TZTIMEOFYEAR=It is DST Start Month"&if %_DAY% GEQ %_TZDSTSDAY% ( SET "_TZTYPE=DTZ" ) ELSE ( SET "_TZTYPE=STZ" ) )
IF %_MONTH% GTR %_TZDSTSMONTH% (
	@ECHO After DST Start Month
	IF %_MONTH% LSS %_TZSTDSMONTH% SET "_TZTIMEOFYEAR=Before DST End Month"&SET "_TZTYPE=DTZ"
	IF %_MONTH% EQU %_TZSTDSMONTH% ( SET "_TZTIMEOFYEAR=It is DST End Month"&if %_DAY% LSS %_TZDSTSDAY% ( SET "_TZTYPE=DTZ" ) ELSE ( SET "_TZTYPE=STZ" ) )
	IF %_MONTH% GTR %_TZSTDSMONTH% SET "_TZTIMEOFYEAR=After DST End Month"&SET "_TZTYPE=STZ"
)

:TZTYPESET

@ECHO _TZTIMEOFYEAR          = "%_TZTIMEOFYEAR%" >> "%_subroutineLOGFQPN%"
@ECHO _TZTYPE                = "%_TZTYPE%" >> "%_subroutineLOGFQPN%"

IF %_TZTYPE%==STZ SET "_TZCURRENTNAME=%_TZSTDNAME%"
IF %_TZTYPE%==DTZ SET "_TZCURRENTNAME=%_TZDSTNAME%"

@ECHO _TZCURRENTNAME         = "%_TZCURRENTNAME%" >> "%_subroutineLOGFQPN%"

SET "_TZABRVALUE="
CALL :sub_MAKETIMEZONEABBREVIATION %_TZCURRENTNAME%
@ECHO _TZABRVALUE            = "%_TZABRVALUE%" >> "%_subroutineLOGFQPN%"
SET "_TZABR=%_TZABRVALUE%"
@ECHO _TZABR                 = "%_TZABR%" >> "%_subroutineLOGFQPN%"

SET "_TZABRVALUE="
CALL :sub_MAKETIMEZONEABBREVIATION %_TZSTDNAME%
@ECHO _TZABRVALUE            = "%_TZABRVALUE%" >> "%_subroutineLOGFQPN%"
SET "_TZABRSTZ=%_TZABRVALUE%"
@ECHO _TZABRSTZ              = "%_TZABRSTZ%" >> "%_subroutineLOGFQPN%"

SET "_TZABRVALUE="
CALL :sub_MAKETIMEZONEABBREVIATION %_TZDSTNAME%
@ECHO _TZABRVALUE            = "%_TZABRVALUE%" >> "%_subroutineLOGFQPN%"
SET "_TZABRDTZ=%_TZABRVALUE%"
@ECHO _TZABRDTZ              = "%_TZABRDTZ%" >> "%_subroutineLOGFQPN%"

SET "_TZABRVALUE="

SET "xPARMNOQUOTES="
SET "_TZCURRENTNAMENOQUOTES="
CALL :sub_REMOVEQUOTESFROMPARM %_TZCURRENTNAME%
SET "_TZCURRENTNAMENOQUOTES=%xPARMNOQUOTES%"
SET "xPARMNOQUOTES="

@ECHO _TZCURRENTNAMENOQUOTES = "%_TZCURRENTNAMENOQUOTES%" >> "%_subroutineLOGFQPN%"

@ECHO. >> "%_subroutineLOGFQPN%"

REM * ===================================================================================
REM * ===================================================================================
REM * Generate Date-Time-Group values with Time Zone and Without
REM * ===================================================================================
REM * ===================================================================================

SET "_DTTZ_SUFFIX_TIMETZ=%_HOUR%%_MINUTE%%_TZABR%"
SET "_DTTZ_SUFFIX_DTGTZ=%_DTTZ_SUFFIX_DATE%-%_DTTZ_SUFFIX_TIMETZ%"
SET "_DTTZ_SUFFIX_DTGTZDASH=%_DTTZ_SUFFIX_DATEDASH%-%_DTTZ_SUFFIX_TIMETZ%"


REM * ===================================================================================
REM * ===================================================================================
REM * Log the results
REM * ===================================================================================
REM * ===================================================================================

CALL :sub_LOGRESULTS


REM * ===================================================================================
REM * ===================================================================================
REM * Output the results
REM * ===================================================================================
REM * ===================================================================================

CALL :sub_OUTPUTRESULTS


REM * =========================================================================
REM * =========================================================================

PAUSE

IF EXIST "%FILEEDITOR%" (
	REM START /MAX "%FILEEDITOR%" "%_subroutineLOGFQPN%"
) ELSE (
	REM CLS
	TYPE "%_subroutineLOGFQPN%"
)

REM =====================================================================================
REM =====================================================================================
REM END OF SUBROUTINE MAIN OPERATIONS
REM =====================================================================================
REM =====================================================================================

@ECHO.
@ECHO Log File : "%_subroutineLOGFQPN%"
@ECHO Subroutine Completed : %_LOCALSUBROUTINENAME%
@ECHO.


REM * =========================================================================
REM * =========================================================================
REM * Script Operational Cleanup before exit
REM * =========================================================================

REM * =========================================================================
REM * Variables we want to keep for use by the callers
REM * =========================================================================

REM CALL :sub_CLEANUPRESULTVARS

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

EXIT /B

REM =====================================================================================
REM =====================================================================================
REM =====================================================================================
REM END OF SUBROUTINE FILE
REM =====================================================================================
REM =====================================================================================
REM =====================================================================================

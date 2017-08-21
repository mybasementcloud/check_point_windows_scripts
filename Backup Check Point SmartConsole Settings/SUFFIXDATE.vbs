'**********************************************************************************************************************
'
'	Script to set command line variable to current date.
'       The command line variables can not be set directly so this script so the script creates a file locally at the
'	current path location for further execution of a SET command by the calling script.
'
'       Version 4.0.0	201390304
'
'       Copyright (C) 2007-2013, Eric Beasley
'	Thanks to Mark Berg, Pointsec 	
'
'
'	All rights reserved.  
'	This resource kit tool is not supported by Check Point Software Technologies or Pointsec Mobile Technologies
'	and provided as is without warranty, guarantee of operation, or acceptance of liability for use.
'	Customer Modification authorized for customer use
'
'	Test String at command line
'	"%SystemRoot%\System32\cscript" SUFFIXDATE.vbs
'
'**********************************************************************************************************************

Option explicit

'on error resume next

'Globals
Dim objFSO	 	'as FileSystemObject
Dim objWshShell		'as Shell
Dim objWshSysEnv	'as System Env Var
Dim objWshSysEnvWrite	'as System Env Var

Dim tf

Dim fileTemp

Dim WshShell
Dim WshUserEnv
Dim WshProcEnv
Dim sDate
Dim sYear
Dim sMonth
Dim sDay
Dim sHour
Dim sMinute
Dim sTime
Dim spathname
Dim sDateValue
Dim sDateValueDash
Dim sTimeValue
Dim sDateTimeGroup
Dim sDateTimeGroupDash
main()

sub main()

	'FSO object
	Set objFSO = CreateObject("Scripting.FileSystemObject") 'This creates the FSO

	set objWshShell = WScript.CreateObject("WScript.Shell") 

	Set objWshSysEnv = objWshShell.Environment("PROCESS")
	fileTemp = objWshSysEnv("TEMP")
'	MsgBox("Temp File = " & fileTemp)

'	MsgBox("Start SUFFIXDATE.vbs")

	sDate = Now()
'	MsgBox("sDate = " & sDate)

	sYear = DatePart("yyyy", sDate)
	sMonth = DatePart("m", sDate)
	sDay = DatePart("d", sDate)

	If Len(sMonth) = 1 Then
		sMonth = "0" & sMonth
	End If

	If Len(sDay) = 1 Then
		sDay = "0" & sDay
	End If

	sHour = DatePart("h", sDate)
	sMinute = DatePart("n", sDate)

	If Len(sHour) = 1 Then
		sHour = "0" & sHour
	End If

	If Len(sMinute) = 1 Then
		sMinute = "0" & sMinute
	End If

	sDateValue = sYear & sMonth & sDay
	sDateValueDash = sYear & "-" & sMonth & "-" & sDay
	sTimeValue = sHour & sMinute
	sDateTimeGroup = sDateValue & "-" & sTimeValue
	sDateTimeGroupDash = sYear & "-" & sMonth & "-" & sDay & "-" & sHour & sMinute

'	MsgBox("DATE Value = " & sDateValue)
'	MsgBox("TIME Value = " & sTimeValue)
'	MsgBox("DTG Value = " & sDateTimeGroup)

	Set tf = objFSO.CreateTextFile(fileTemp & "\datepath.cmd", True)
	tf.WriteLine ("SET PATH_SUFFIX_DATE=" & sDateValue)
	tf.WriteLine ("SET PATH_SUFFIX_DATEDASH=" & sDateValueDash)
	tf.WriteLine ("SET PATH_SUFFIX_TIME=" & sTimeValue)
	tf.WriteLine ("SET PATH_SUFFIX_DTG=" & sDateTimeGroup)
	tf.WriteLine ("SET PATH_SUFFIX_DTGDASH=" & sDateTimeGroupDash)
	tf.Close

'	MsgBox("Finish SUFFIXDATE.vbs")

	'Close FSO and clean-up
	if not objFSO is nothing Then Set objFSO = nothing
	if not objWshSysEnv is nothing then SET objWshSysEnv = nothing
	if not objWSHShell is nothing then SET objWSHShell = nothing

end sub
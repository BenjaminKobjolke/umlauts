;
; AutoHotkey Version: 1.x
; Language:       English
; Platform:       Win9x/NT
; Author:         A.N.Other <myemail@nowhere.com>
;
; Script Function:
;	Template script (you can customize this template by editing "ShellNew\Template.ahk" in your Windows folder)
;

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#SingleInstance force
#Persistent ;Script nicht beenden nach der Auto-Execution-Section

SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2

Menu, tray, Icon , Umlauts.ico, 1
Menu, tray, NoStandard
Menu, tray, add  ; Creates a separator line.
Menu, tray, add, Reload  
Menu, tray, add, Exit
return


!1::
	Send, {F2}
return
!3::
	Send, !{F4}
return

!9::
	Sleep, 100
	Send, +{F10}
return


!u::
	;SendRaw, hase {ASC 0252} igel
	;SendInput .{ASC 0252}.
	Send, ü
return

^!u::
	;Send, {ASC 0220}
	Send, Ü
return

!a:: 
	Send,ä
return

^!a:: 
	;Send, {ASC 0196}
	Send, Ä
return

!o:: 
	;SendInput {ASC 0246}
	Send, ö
return

^!o:: 
	;Send, {ASC 0214}
	Send, Ö
return

!s:: 
	Send, ß
return


Reload:
	Reload
return 

Exit:
	ExitApp
return

if(!A_IsCompiled) {
	#y::
		;ControlGetText, output , SysListView321, 
		;ControlGet, output, Line, 1, SysListView321, - Notepad++
		Send ^s
		reload
	return
}

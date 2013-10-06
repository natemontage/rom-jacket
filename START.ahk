#NoEnv
#NoTrayicon
#Singleinstance force
DetectHiddenWindows, On
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, 2
Autotrim, off
sleep, 6000
DetectHiddenWindows, On
WinWait, ROM-JACKET
WinHide
WinWaitActive existing_users
 WinActivate
Loop
{
IfWinExist, ahk_class WindowClass_0  
   WinSet, AlwaysOnTop, on 
ifWinNotExist, ROM-JACKET
{
Process, Close, START.exe
}
}

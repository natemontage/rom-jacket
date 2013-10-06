DllCall("LoadLibrary", Str,"JoystickOEMName.dll")
Loop 4
FileAppend, % "" DllCall("JoystickOEMName\joystick_OEM_name",double,A_Index,"CDECL Str"),joyoemnames.ini
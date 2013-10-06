> getres.vbs ECHO '
>> getres.vbs ECHO.   Set objWMIService = GetObject("Winmgmts:\\.\root\cimv2") 
>> getres.vbs ECHO.    Set colItems = objWMIService.ExecQuery("Select * From Win32_DesktopMonitor where DeviceID = 'DesktopMonitor1'",,0) 
>> getres.vbs ECHO     For Each objItem in colItems 
>> getres.vbs ECHO.        intHorizontal = objItem.ScreenWidth 
>> getres.vbs ECHO.        intVertical = objItem.ScreenHeight 
>> getres.vbs ECHO     Next 
>> getres.vbs ECHO.    Const ForReading = 1 
>> getres.vbs ECHO.    Const ForWriting = 2 
>> getres.vbs ECHO.    Const ForAppending = 8
>> getres.vbs ECHO. Set objFSO = CreateObject("Scripting.FileSystemObject")
>> getres.vbs ECHO. Set objTextFile = objFSO.OpenTextFile("res.ini", ForAppending, True)
>> getres.vbs ECHO objTextFile.WriteLine(intHorizontal)
>> getres.vbs ECHO objTextFile.WriteLine(intVertical)

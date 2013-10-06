:JOYOEM
if not exist "JoystickOEMName.dll" "%SEVENZIP%" e -y "%GBC%\JOYOEMN.zip" -o"%GBC%" "JoystickOEMName.dll"
del /q joyoemnames.ini
"%GBC%\getjoy.exe" 
SET urlNthL=1
SET /A urlNthL -= 1
CALL :JOYOEMLGrab
GOTO :JOYOEMCONT
:JOYOEMLGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\joyoemnames.ini"') DO (
SET JOY1NAME=%%A
goto :EOF
)
:JOYOEMCONT
SET urlNthL=2
SET /A urlNthL -= 1
CALL :JOYOEML2Grab
GOTO :JOY2NAME
:JOYOEML2Grab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\joyoemnames.ini"') DO (
SET JOY2NAME=%%A
goto :EOF
)
:JOY2NAME

:JOYCHK
if exist "%PRGF%\Microsoft Xbox 360 Accessories\XBoxStat.exe" set X360EX=1
if exist "%PRGF%\MotioninJoy\ds3\DIFxAPI.dll" set PS3EX=1
if exist "%PRGX%\x360ce\x360ce.exe" set XBCEEX=1
if exist "%GBE%\%EMUZ%\x360ce\x360ce.exe" set XBCEEX=1

:XBJOYCHK
if "%XBJSET%"=="1" goto :PS3CHK
"%GBC%\wbox.exe" "joystick" "^###### JOYSTICK SETTINGS #####^^Select your joystick type^### 360 ###^XBox 360 Controller^^### PS3 ###^Playstion 3 Controller^^### Emulate ###^x360ce driver to emulate the XBox 360 Joystick.^^" "360;PS3;Emulate;Menu" 
if %ERRORLEVEL%==1 goto :xbjoyinst
if %ERRORLEVEL%==2 goto :PS3CHK
if %ERRORLEVEL%==3 goto :EMULATE
if %ERRORLEVEL%==4 goto :quitjoy
goto :quitjoy

:xbjoyinst
if "%X360EX%"=="1" goto :reinstxbx
goto :get_XBJOY

:reinstxbx
"%GBC%\wbox.exe" "reinstall" "Drivers appeared to be installed.^Reinstall Drivers for XBOX360 Joysticks?" "Yes;No" 
if %ERRORLEVEL%==1 goto :get_XBJOY
if %ERRORLEVEL%==2 goto :JOYCHK
goto :quitjoy

:get_XBJOY
cmd /c start "" "%GBC%\Wbusy.exe" "Installing" "Downloading/Installing XBox 360 Drivers"  /marquee
if "%ARPOP%"=="64" SET RLARCH=64
if "%ARPOP%"=="64" goto :xbjoyGET

:xbjoytst
%GBD%
cd "%GBC%"
SET urlNthL=2
SET /A urlNthL -= 1
CALL :rlnoyLGrab
GOTO :rlnoyCONT

:rlnoyLGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\ARCH.ini"') DO (
SET rlnoyURL=%%A
goto :EOF
)
:rlnoyCONT
if "%rlnoyURL%"=="" set RLARCH=32
if "%rlnoyURL%"=="64" set RLARCH=64

:xbjoyGET
SET urlNthL=57
SET /A urlNthL -= 1
CALL :xbjoyLGrab
GOTO :xbjoyCONT

:xbjoyLGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET xbjoyURL=%%A
goto :EOF
)

:xbjoyCONT
start /min /w "" "%GBC%\aria2c.exe" -continue=true --dir="%GBC%\net\%XBJOY%" "%MIR1%/%xbjoyURL%" "%MIR2%/%xbjoyURL%" "%MIR3%/%xbjoyURL%" "%MIR4%/%xbjoyURL%" "%MIR5%/%xbjoyURL%"
for %%A in ("%GBC%\net\%XBJOY%\*%RLARCH%Eng.exe") do set XBJOYXE=%%~A
for /f "delims=" %%a in ('dir /b "%XBJOYXE%"') do set XBJOYFILE=%%~a
if exist "%GBC%\net\%XBJOY%\%XBJOYFILE%" goto :instxbjoy
if "%XBJOYFILE%"=="" goto :noxbjoy
for /f "delims=" %%a in ('dir /b "%XBJOYXE%"') do set XBJOYFILE=%%~a

:instxbjoy
start /w "" "%GBC%\net\%XBJOY%\%XBJOYFILE%" /q:a
"%GBC%\Wbusy.exe" "Installing" "Installed" /Stop /timeout:1
goto :JOYCHK

:noxbjoy
"%GBC%\Wbusy.exe" "Installing" "...ERROR..." /Stop /timeout:1
"%GBC%\wbox.exe" "noxbjoydrv" "The Xbox360 Joystick Driver could not be found." "Download;Ignore" /DB=2 
if "%ERRORLEVEL%"=="1" goto :get_XBJOY
if "%ERRORLEVEL%"=="2" goto :JOYCHK
goto :quitjoy

:PS3CHK
if "%PS3EX%"=="1" goto :reinstps3
:PS3Joyinst
goto :get_PS3JOY

:reinstps3
"%GBC%\wbox.exe" "reinstall" "Drivers appeared to be installed.^Reinstall Drivers for PS3 Joysticks?" "Yes;No" 
if %ERRORLEVEL%==1 goto :get_PS3JOY
if %ERRORLEVEL%==2 goto :JOYCHK
goto :quitjoy

:get_PS3JOY
cmd /c start "" "%GBC%\Wbusy.exe" "Installing" "Downloading/Installing PS3 MotionInJoy Drivers"  /marquee
%GBD%
cd "%GBC%"
SET urlNthL=76
SET /A urlNthL -= 1
CALL :PS3JoyLGrab
GOTO :PS3JoyCONT

:PS3JoyLGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET PS3JoyURL=%%A
goto :EOF
)

:PS3JoyCONT
start /min /w "" "%GBC%\aria2c.exe" -continue=true --dir="%GBC%\net\%PS3JOY%" "%MIR1%/%PS3JoyURL%" "%MIR2%/%PS3JoyURL%" "%MIR3%/%PS3JoyURL%" "%MIR4%/%PS3JoyURL%" "%MIR5%/%PS3JoyURL%"
for %%A in ("%GBC%\net\%PS3JOY%\*.zip") do set PS3JOYXE=%%~A
for /f "delims=" %%a in ('dir /b "%PS3JOYXE%"') do set PS3JOYFILE=%%~a
"%SEVENZIP%" x -y "%GBC%\net\%PS3JOY%\%PS3JOYFILE%" -o"%GBC%\net\%PS3JOY%"
for %%A in ("%GBC%\net\%PS3JOY%\*.exe") do set PS3JOYI=%%~A
for /f "delims=" %%a in ('dir /b "%PS3JOYI%"') do set PS3JOYIFILE=%%~a
if exist "%GBC%\net\%PS3JOY%\%PS3JOYIFILE%" goto :instPS3Joy
if "%PS3JOYIFILE%"=="" goto :noPS3Joy

:instPS3Joy
start /w "" "%GBC%\net\%PS3JOY%\%PS3JOYI%" /silent
"%GBC%\Wbusy.exe" "Installing" "Installed" /Stop /timeout:1
goto :JOYCHK

:noPS3Joy
"%GBC%\Wbusy.exe" "Installing" "...ERROR..." /Stop /timeout:1
"%GBC%\wbox.exe" "noPS3Joydrv" "The PS3 Joystick Driver could not be found." "Download;Ignore" /DB=2 
if "%ERRORLEVEL%"=="1" goto :get_PS3JOY
if "%ERRORLEVEL%"=="2" goto :JOYCHK
goto :quitjoy

:F360
if "%XBCEEX%"=="1" goto :reinstxce
"%GBC%\wbox.exe" "fake360" "Install x360CE Drivers for XBox 360 Controller Emulation?" "Yes;No" 
if %ERRORLEVEL%==1 goto :get_XBCE
if %ERRORLEVEL%==2 goto :JOYCHK
goto :quitjoy

:get_XBCE
cmd /c start "" "%GBC%\Wbusy.exe" "Installing" "Downloading/Installing x360ce Drivers."  /marquee
%GBD%
cd "%GBC%"
SET urlNthL=95
SET /A urlNthL -= 1
CALL :XCEJoyLGrab
GOTO :XCEinstall

:XCEJoyLGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET XBCEURL=%%A
goto :EOF
)

:XCEinstall
start /min /w "" "%GBC%\aria2c.exe" -continue=true --dir="%GBC%\net\%XBCE%" "%MIR1%/%XBCEURL%" "%MIR2%/%XBCEURL%" "%MIR3%/%XBCEURL%" "%MIR4%/%XBCEURL%" "%MIR5%/%XBCEURL%"
for %%A in ("%GBC%\net\%XBCE%\*.7z") do set XBCEXE=%%~A
for /f "delims=" %%a in ('dir /b "%XBCEXE%"') do set XBCEFILE=%%~a
"%SEVENZIP%" x -y "%GBC%\net\%XBCE%\%XBCEFILE%" -o"%GBC%\net\%XBCE%"
for /f "delims=" %%a in ('dir /b "%XBCEI%"') do set XBCEIFILE=%%~a
if exist "%GBC%\net\%XBCE%\%XBCEIFILE%" goto :instXBCE
if "%XBCEIFILE%"=="" goto :noXBCE
"%GBC%\Wfolder.exe" "SET XCEINST=" "%GBE%\%EMUZ%" "Install x360ce Driver to:" /noquote > "%GBC%\xceinst.cmd"
call "%GBC%\xceinst.cmd"
if "%XCEINST%"=="" goto :quitjoy
"%SEVENZIP%" x -y "%GBC%\net\%XBCE%\%XBCEFILE%" -o"%XCEINST%\%XBCE%"
"%GBC%\Wbusy.exe" "Installing" "Installed" /Stop /timeout:1
goto :JOYCHK

:noXBCE
"%GBC%\Wbusy.exe" "Installing" "...ERROR..." /Stop /timeout:1
"%GBC%\wbox.exe" "noXBCEdrv" "The x360ce Joystick Driver could not be found." "Download;Ignore" /DB=2 
if "%ERRORLEVEL%"=="1" goto :get_XBCE
if "%ERRORLEVEL%"=="2" goto :JOYCHK
goto :quitjoy

:reinstxce
"%GBC%\wbox.exe" "x360ce" "The x360ce driver appears to be installed.^Would you like to reinstall it?" "Yes;No" /TM=2
if %ERRORLEVEL%==1 goto :get_XCE
if %ERRORLEVEL%==2 goto :JOYCHK
goto :quitjoy

:quitjoy
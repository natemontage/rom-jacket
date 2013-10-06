pushd "%GBC%"
del "%GBC%\rez.ini"
CALL "%GBC%\getrez.bat"
cscript "%GBC%\getres.vbs"
set urlNthL=1
SET /A urlNthL -= 1
CALL :RESX2_LGrab
GOTO :RESXAUTO
:RESX2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\res.ini"') DO (
SET RESX=%%A
goto :EOF
)
:RESXAUTO
set urlNthL=2
SET /A urlNthL -= 1
CALL :RESY2_LGrab
GOTO :SETRES
:RESY2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\res.ini"') DO (
SET RESY=%%A
goto :EOF
)

:SETRES
echo 1024x768>>"%GBC%\resolution.ini"
echo ---------->>"%GBC%\resolution.ini"
echo %RESX%x%RESY%>"%GBC%\resolution.ini"
echo 2048x1536>>"%GBC%\resolution.ini"
echo 1920x1200>>"%GBC%\resolution.ini"
echo 1920x1080>>"%GBC%\resolution.ini"
echo 1680x1080>>"%GBC%\resolution.ini"
echo 1600x1200>>"%GBC%\resolution.ini"
echo 1400x1050>>"%GBC%\resolution.ini"
echo 1440x900>>"%GBC%\resolution.ini"
echo 1366x768>>"%GBC%\resolution.ini"
echo 1280x1024>>"%GBC%\resolution.ini"
echo 1280x854>>"%GBC%\resolution.ini"
echo 1280x960>>"%GBC%\resolution.ini"
echo 1280x800>>"%GBC%\resolution.ini"
echo 1280x720>>"%GBC%\resolution.ini"
echo 1024x768>>"%GBC%\resolution.ini"
echo 800x600>>"%GBC%\resolution.ini"
echo 640x480>>"%GBC%\resolution.ini"

"%GBC%\Wselect.exe" "%GBC%\resolution.ini" "Select A Resolution" "set RESOLUTION=$item">"%GBC%\resolution.cmd"
if %errorlevel%==0 GOTO :EOF
CALL "%GBC%\resolution.cmd"
if "%RESOLUTION%"=="----------" goto :SETRES
for /f "tokens=1,2 delims=x" %%a in ("%RESOLUTION%") do (
set REZX=%%a
set REZY=%%b
)
echo %REZX%x%REZY%>"%GBC%\rez.ini"
popd
del /q "%GBC%\conExist.ini"
pushd "%GBC%"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do echo %%~a>>"%GBC%\conExist.ini"
IF "%ALLMETA%"=="1" goto :agetVideodrops
"%GBC%\wbox.exe" "vbackdrops" "^######NOTE######^^These are >10mgs each^" "Select;All" /DB=1 
if %ERRORLEVEL%==1 goto :getVideodrops
if %ERRORLEVEL%==2 goto :agetVideodrops
goto :videoscomplete

:agetVideodrops
for /f "tokens=* delims= " %%a in ('type "%GBC%\conExist.ini"') do echo %%~a>>"%GBC%\conExist.ini"
SET ALLMETA=1
:getVideodrops
SET urlNthL=79
SET /A urlNthL -= 1
CALL :VIDE2_LGrab
GOTO :VIDEAUTO

:VIDE2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET VIDEURL=%%A
goto :EOF
)

:VIDEAUTO
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
mkdir "%GBG%\%GAM%\%CONS%\%%~a\backdrops"
ATTRIB +H "%GBG%\%GAM%\%CONS%\%%~a\backdrops"
)

:GETDROPS
IF "%ALLMETA%"=="1"  goto :existingCon
"%GBC%\Wselect.exe" "%GBC%\conExist.ini" "Select A Console" "set VIDN=$item" > "%GBC%\conExists.cmd"
if %errorlevel%==0 GOTO :videoscomplete
CALL "%GBC%\conExists.cmd"
if "%VIDN%"=="" goto :videoscomplete
goto :getVideodrops

:existingCon
for /f "tokens=* delims= " %%a in ('type "%GBC%\conExist.ini"') do (
SET VIDN=%%~a
CALL :getVideodrops
)
IF "%ALLMETA%"=="1" start  "" "%GBC%\wbusy.exe" "videoget" "Complete" /Stop /timeout:1
goto :videoscomplete

:getVideodrops
mkdir "%GBC%\net\%VIDE%"
IF "%ALLMETA%" NEQ "1" start  "" "%GBC%\wbusy.exe" "videoget" "Downloading %VIDN% Video" /marquee
IF "%ALLMETA%" EQU "1" start  "" "%GBC%\wbusy.exe" "videoget" "Downloading ALL Videos" /marquee
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=4 --file-allocation=none --dir="%GBC%\net\%VIDE%" "%MIR7%/%VIDE%/%VIDN%/%VIDN%.mp4"  "%MIR8%/%VIDE%/%VIDN%/%VIDN%.mp4" "%MIR9%/%VIDE%/%VIDN%/%VIDN%.mp4" "%MIR10%/%VIDE%/%VIDN%/%VIDN%.mp4"
if not exist "%GBC%\net\%VIDE%\%VIDN%.mp4" start  "" "%GBC%\wbusy.exe" "videoget" "%VIDN% Video Not Found" /Stop /timeout:1
IF "%ALLMETA%" NEQ "1" start  "" "%GBC%\wbusy.exe" "videoget" "Complete" /Stop /timeout:1
IF "%ALLMETA%"=="1" exit /b
goto :GETDROPS


goto :videoscomplete
   
:videoscomplete
SET ALLMETA=
popd
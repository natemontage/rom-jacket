:XPDGLOBAL
if "%XPDG%"=="1" goto :XPDBEGIN
if "%XPDG%"=="0" goto :xpdkep

if "%JOYOV%"=="1" goto :XPDBEGIN
"%GBC%\wbox.exe" "Overwrite" "Overwrite existing xpadder profiles?" "Yes;No" /DB=1 /TM=20
if %ERRORLEVEL%==1 goto :XPDBEGIN
if %ERRORLEVEL%==2 goto :xpdkep
goto :cpexit


:xpdkep
SET XPDKP=1

:XPDBEGIN
start "" "%GBC%\wbusy.exe" "xpdcopy" "Creating Joystick Profiles" /marquee	
for /f "tokens=* delims= " %%a in ('type "%GBC%\conSelect.set"') do (
SET XPTMP=%%a
CALL :RNTMP
)
start "" "%GBC%\wbusy.exe" "xpdcopy" "Complete" /Stop /timeout:1
goto :cpexit

:RNTMP
if not exist "%GBG%\%GAM%\%CONS%\%XPTMP%" goto :cpexit
if "%XPDEF%"=="1" copy /Y "%GBC%\net\%XPROF%\%XPTMP%\*.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPTMP%"
if "%XPDBLNK%"=="1" copy /Y "%GBC%\net\%XPROF%\Other\*.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPTMP%"
if "%XPDEMU%"=="1" copy /Y "%GBC%\net\%XPROF%\EMU\%XPTMP%\*.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPTMP%"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%XPTMP%"') do (
SET XPDDIR=%%~a
CALL :COPYOVER
)
exit /b

:COPYOVER
SET XPDEXIST=
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%GBG%\%GAM%\%CONS%\%XPTMP%\*.xpadderprofile"') do (
SET XPDEXIST=%%~a
CALL :COPYXPD
)
exit /b

:COPYXPD
if "%XPDEXIST%" NEQ "" goto :xpdchk
goto :xpdcpy
:xpdchk
if "%XPDKP%"=="1" goto :cpexit
:xpdcpy
copy /Y "%GBG%\%GAM%\%CONS%\%XPTMP%\*.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPTMP%\%XPDDIR%"
:cpexit
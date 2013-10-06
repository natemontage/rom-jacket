%GBD%
start "" "%GBC%\wbusy.exe" "buildinglib" "Building the Advanced Launcher Library" /marquee
%GBD%
cd "%GBC%\net\%XBMC%\%ADVL%"
del /s /q "launchers.xml"
del /s /q "*.prt"
copy /Y "%LNCH%.xml.set" "%LNCH%.xml.prt"
type "%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml.Begin.set" >"%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml"
"%GBC%\fart.exe" "%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml" [GAMPTH] "%GBG%\%GAM%\%CONS%"
"%GBC%\fart.exe" "%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml" [IMAGE] "Folder.png"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
SET NWCON=%%~a
call "%GBC%\rndID.bat"
CALL :RNDGET
CALL :INJALXML
)
goto :launchcomplete

:RNDGET
REM SET urlNthL=1
REM SET /A urlNthL -= 1
REM FOR /F "tokens=*" %%a IN ('MORE /E +%urlNthL% "%GBC%\randnum.ini"') DO (
FOR /F "tokens=*" %%a IN ('type "%GBC%\randnum.ini"') DO (
SET RNDVAR=%%a
)
exit /b

:INJALXML
mkdir "%GBC%\net\%XBMC%\%ADVL%\%NWCON%"
copy /Y "%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml.prt" "%GBC%\net\%XBMC%\%ADVL%\%NWCON%\%NWCON%.xml.prt"
copy /Y "%GBC%\net\%XBMC%\%ADVL%\roms.xml.set" "%GBC%\net\%XBMC%\%ADVL%\roms.xml.prt"
pushd "%GBC%\net\%XBMC%\%ADVL%"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [RNDNUM] %RNDVAR%
popd
CALL "%GBC%\alAdd.bat"
exit /b

:launchcomplete
type "%GBC%\net\%XBMC%\%ADVL%\launchers.xml.End.set">>"%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml"
if "%ADV%"=="0" goto :builtalxml

if exist "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\plugin.program.advanced.launcher\%LNCH%.xml.orig" goto :createalxml
mkdir "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\plugin.program.advanced.launcher"
if exist "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\plugin.program.advanced.launcher\%LNCH%.xml" copy /Y "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\plugin.program.advanced.launcher\%LNCH%.xml" "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\plugin.program.advanced.launcher\%LNCH%.xml.orig"

:createalxml
copy /Y "%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml" "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\plugin.program.advanced.launcher\%LNCH%.xml"

:metaRename
CALL "%GBC%\metaRen.bat"

goto :builtalxml

:builtalxml
start "" "%GBC%\wbusy.exe" "buildinglib" "Complete" /Stop /timeout:1
"%GBC%\wbox.exe" "AdvancedLauncherConfig" "Advanced Launcher has been configured." "Continue" /TM=5
if %ERRORLEVEL%==1 goto :finishalbuild
goto :finishalbuild
:finishalbuild
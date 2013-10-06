:HYPERSPINGLOBAL
SET HYPSET=Locate
if "%HPN%" NEQ "[HPN]" SET HYPSET=Reset
SET HYPDWN=Download
if exist "%GBC%\net\%HYPS%\%HYPS%.7z" SET HYPDWN=Install
SET HYPNUM=2
if "%HYPSET%"=="Reset" set HYPNUM=1
"%GBC%\wbox.exe" "locateHS" "%HYPSET% the Hyperspin Directory?" "%HYPSET%;%HYPDWN%;MainMenu" /DB=%HYPNUM%
if %ERRORLEVEL%==1 goto :locatehs
if %ERRORLEVEL%==2 goto :%HYPDWN%HS
if %ERRORLEVEL%==3 goto :complete
goto :complete

:locatehs
for /f "delims=" %%a in ('Wfolder.exe "SET HPN=" "%PRGX%" "Where is the Hyperspin Folder:?  eg:''%PRGX%''" /noquote') do %%a
if "%HPN%"=="" goto :HYPERSPINGLOBAL
if not exist "%HPN%\HyperSpin.exe" goto :NOHSFOUND
goto :SETHSCHOICE

:NOHSFOUND
"%GBC%\wbox.exe" "nohsfound" "Hyperspin.exe was not found in %HPN%.^Continue anyway?" "Locate;Download;Quit" /DB=2
if %ERRORLEVEL%==1 goto :locatehs
if %ERRORLEVEL%==2 goto :DownloadHS
if %ERRORLEVEL%==3 goto :complete
goto :locatehs

:DownloadHS
CALL "%GBC%\getHyperspin.bat"
goto :InstallHS

:InstallHS
if not exist "%GBC%\net\%HYPS%\%HYPS%.7z" goto :NOHSFOUND
%GBD%
cd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET HPND=" "%GBE%\%EMUZ%" "Install hyperspin to:?  eg:''%GBE%\%EMUZ%''" /noquote') do %%a
if "%HPND%"=="" goto :RESOLUTION
for %%A in ("%HPND:*:=%") do set HPNdrv-ltr=%%~A
for %%A in ("%HPND:~0,2%\") do set HYPDIR=%%~A

:INSTALL
cmd /c start "" "%GBC%\Wbusy.exe" "InstHYPS" "Installing Hyperspin" /marquee
if "%HPNdrv-ltr%"=="\" do set HSP=%HPND:~0,2%
for %%A in ("%HPND%\%HYPS%") do set HPN=%%~A
"%SEVENZIP%" x -y "%GBC%\net\%HYPS%\%HYPSFILE%" -o"%HPN%"
if not exist "%HPN%\%HYPS%.exe" goto :NOHSFOUND
"%GBC%\fart.exe" "%HPN%\Settings\Settings.ini" [REZX] %REZX%
"%GBC%\fart.exe" "%HPN%\Settings\Settings.ini" [REZY] %REZY%
"%GBC%\fart.exe" "%HPN%\Settings\Main Menu.ini" [REZX5] %REZX5%
"%GBC%\fart.exe" "%HPN%\Settings\Main Menu.ini" [REZY9] %REZY9%

:SETHSCHOICE
call "%GBC%\setlocset.bat"
"%GBC%\Shortcut.exe" /F:"%DESKTOPDIR%\Hyperspin.lnk" /A:C /W:"%HPN%" /T:"%HPN%\%HYPS%.exe"
"%GBC%\fart.exe" "%HPN%\Settings\Main Menu.ini" [HYPS] "%HPN%"
"%GBC%\Wbusy.exe" "InstHYPS" "Complete." /Stop /timeout:1
"%GBC%\wbox.exe" "installed" "Hyperspin has been installed to %HPN%" "Okay" /DB=1 /TM=1
if %ERRORLEVEL%==1 goto :RESOLUTION
goto :RESOLUTION
:RESOLUTION
set HYPTRZ=
if exist "%GBC%\rez.ini" goto :INJREZ
goto :resetrez

:INJREZ
for /f "tokens=1,2 delims=x" %%a in ('type "%GBC%\rez.ini"') do (
set REZX=%%a
set REZY=%%b
)
"%GBC%\inifile.exe" "%HPN%\Settings\Settings.ini" "[P1 Controls]" Exit=8
"%GBC%\inifile.exe" "%HPN%\Settings\Settings.ini" [Resolution] Width=%REZX%
"%GBC%\inifile.exe" "%HPN%\Settings\Settings.ini" [Resolution] Height=%REZY%
"%GBC%\inifile.exe" "%HPN%\Settings\Main Menu.ini" [pointer] "x"=%REZX5%
"%GBC%\inifile.exe" "%HPN%\Settings\Main Menu.ini" [pointer] "y"=%REZY9%

"%GBC%\wbox.exe" "resetrez" "Would you like to reset the current resolution of Hyperspin?^%REZX% x %REZY%^" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :resetrez
if %ERRORLEVEL%==2 goto :continueres
goto :continueres

:resetrez
set HYPTRZ=1
CALL "%GBC%\ResolutionTest.bat"
"%GBC%\inifile.exe" "%HPN%\Settings\Settings.ini" [Resolution] Width=%REZX%
"%GBC%\inifile.exe" "%HPN%\Settings\Settings.ini" [Resolution] Height=%REZY%
"%GBC%\inifile.exe" "%HPN%\Settings\Main Menu.ini" [pointer] "x"=%REZX5%
"%GBC%\inifile.exe" "%HPN%\Settings\Main Menu.ini" [pointer] "y"=%REZY9%

:continueres
for /f "tokens=1,2 delims=x" %%a in ('type "%GBC%\rez.ini"') do (
set REZX=%%a
set REZY=%%b
)
"%GBC%\inifile.exe" "%HPN%\Settings\Settings.ini" [Resolution] Width=%REZX%
"%GBC%\inifile.exe" "%HPN%\Settings\Settings.ini" [Resolution] Height=%REZY%
"%GBC%\inifile.exe" "%HPN%\Settings\Main Menu.ini" [pointer] "x"=%REZX5%
"%GBC%\inifile.exe" "%HPN%\Settings\Main Menu.ini" [pointer] "y"=%REZY9%

:complete
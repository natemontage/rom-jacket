%GBD%
cd "%GBC%"
:generate_xbmcxml
if "%AUTOCONFIGURE%"=="1" goto :xbmcxml_begin
if exist "%PRGX%\%XBMC%\%XBMC%.exe" SET XBM=1
if exist "%PRGX%\%XBMC%\%XBMC%.exe" "%GBC%\fart.exe" "locset.ini" "[XBM]" "1"
if "%XBM%"=="1" goto :xbmcxml_begin
if "%XBM%"=="0" goto :no_xbmc
if "%ADV%"=="1" goto :xbmcxml_begin
if "%ADV%"=="0" goto :no_advl
if "%RCB%"=="1" goto :xbmcxml_begin
if "%RCB%"=="0" goto :no_rcb
if not exist "%PRGX%\%XBMC%" goto :no_xbmc

:xbmcxml_begin
"%GBC%\wbox.exe" "PluginChoice" "^Choose a plugin to configure.^" "Rom_Collection_Browser;Advanced_Launcher;MainMenu" /BW=200
if %ERRORLEVEL%==1 goto :generate_rcb
if %ERRORLEVEL%==2 goto :generate_advl
if %ERRORLEVEL%==2 goto :finxbmc
goto :finxbmc

:generate_advl
if not exist "%USERPROFILE%\AppData\Roaming\XBMC\addons\plugin.program.advanced.launcher\addon.xml" goto :no_advl
"%GBC%\wbox.exe" "AdvancedLauncher" "Would you like to configure Advanced Launcher for XBMC?" "Yes;MainMenu" /DB=1
if %ERRORLEVEL%==1 goto :advl_config
if %ERRORLEVEL%==2 goto :generate_xbmcxml
goto :finxbmc

:no_xbmc
start "" "%GBC%\wbusy.exe" "INSTXBMC" "XBMC not installed" /Stop /Timeout:1
"%GBC%\wbox.exe" "NO_XBMC" "XBMC was not found." "Download;Locate;Menu" /DB=1
if %ERRORLEVEL%==1 goto :get_xbmc
if %ERRORLEVEL%==2 goto :locate_xbmc
if %ERRORLEVEL%==3 goto :finxbmc
goto :finxbmc

:locate_xbmc
for /f "delims=" %%a in ('Wfolder.exe "SET XBC=" "%PRGX%" "Where is the XBMC Folder:?  eg:''%PRGX%''" /noquote') do %%a
if "%XBC%"=="" goto :bypass_xbmc
if not exist "%XBC%\xbmc.exe" goto :no_xbmc
goto :SETXBCCHOICE

:SETXBCCHOICE
call "%GBC%\setlocset.bat"
"%GBC%\Shortcut.exe" /F:"%DESKTOPDIR%\%XBMC%.lnk" /A:C /W:"%XBC%" /T:"%XBC%\%XBMC%.exe"
"%GBC%\Wbusy.exe" "InstXBMC" "Complete." /Stop /timeout:1
"%GBC%\wbox.exe" "installed" "Hyperspin has been installed to %XBC%" "Okay" /DB=1 /TM=1
goto :XBMC_complete

:bypass_xbmc
set XBM=0
goto :xbmcxml_begin

:get_xbmc
start "" "%GBC%\wbusy.exe" "INSTXBMC" "Installing XBMC" /marquee
call "%GBC%\getXBMC.bat"
if "%XBMCFILE%"=="" goto :no_xbmc
"%GBC%\net\%XBMC%\%XBMCFILE%" /S
if not exist "%PRGX%\%XBMC%\%XBMC%.exe" goto :no_xbmc
for %%A in ("%PRGX%") do set XBC=%%~A
"%GBC%\Shortcut.exe" /F:"%DESKTOPDIR%\%XBMC%.lnk" /A:C /W:"%XBC%" /T:"%PRGX%\%XBMC%\%XBMC%.exe"
start "" "%GBC%\wbusy.exe" "INSTXBMC" "XBMC Installed" /Stop /timeout:1
:XBMC_complete
SET XBM=1
"%GBC%\fart.exe" "locset.ini" "[XBM]" "1"
goto :generate_xbmcxml

:no_advl
set ADV=0
"%GBC%\wbox.exe" "NO_AdvL" "Advanced Launcher was not found." "Download;Menu"
if %ERRORLEVEL%==1 goto :install_advl
if %ERRORLEVEL%==2 goto :generate_xbmcxml
goto :finxbmc

:install_advl
call "%GBC%\getADVL.bat"
"%SEVENZIP%" x -y "%GBC%\net\%XBMC%\%ADVL%\%ADVLFILE%" -o"%USERPROFILE%\AppData\Roaming\XBMC\addons"
if not exist "%USERPROFILE%\AppData\Roaming\XBMC\addons\plugin.program.advanced.launcher\addon.xml" goto :no_advl
set ADV=1
"%GBC%\fart.exe" "locset.ini" "[ADV]" "1"
goto :cfg_advl

:advl_config
:cfg_advl
CALL "%GBC%\buildXBMCAL.bat"
goto :generate_xbmcxml

:generate_rcb
if not exist "%USERPROFILE%\AppData\Roaming\XBMC\addons\script.games.rom.collection.browser\addon.xml" goto :no_rcb
"%GBC%\wbox.exe" "RCB" "Would you like to configure Rom Collection Browser for XBMC?" "Yes;MainMenu" /DB=1
if %ERRORLEVEL%==1 goto :rcb_config
if %ERRORLEVEL%==2 goto :generate_xbmcxml
goto :finxbmc

:no_rcb
SET RCB=0
"%GBC%\wbox.exe" "NO_RCB" "Rom Collection Browser was not found." "Download;Menu"
if %ERRORLEVEL%==1 goto :install_rcb
if %ERRORLEVEL%==2 goto :generate_xbmcxml
goto :generate_xbmcxml

:install_rcb
call "%GBC%\getRCBRWS.bat"
"%SEVENZIP%" x -y "%GBC%\net\%XBMC%\%RCBRWS%\%RCBRWSFILE%" -o"%USERPROFILE%\AppData\Roaming\XBMC\addons"
"%SEVENZIP%" x -y "%GBC%\net\%XBMC%\%RCBRWS%\%RCBRWS2FILE%" -o"%USERPROFILE%\AppData\Roaming\XBMC\addons"
if not exist "%USERPROFILE%\AppData\Roaming\XBMC\addons\script.games.rom.collection.browser\addon.xml" goto :no_rcb
set RCB=1
"%GBC%\fart.exe" "locset.ini" "[RCB]" "1"
goto :cfg_rcb

:rcb_config
:cfg_rcb
CALL "%GBC%\buildXBMCRCB.bat"
goto :generate_xbmcxml
:finxbmc
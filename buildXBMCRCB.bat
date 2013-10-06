cmd /c start "" "%GBC%\Wbusy.exe" "CONFIGRCB" "Configuring Rom-Collection-Browser"  /marquee
%GBD%
cd "%GBC%\net\%XBMC%\%RCBRWS%"
del /s /q "config.xml"
del /s /q "*.prt"
copy /Y config.xml.set config.xml.prt
type "%GBC%\net\%XBMC%\%RCBRWS%\config.xml.Begin.set" >"%GBC%\net\%XBMC%\%RCBRWS%\config.xml"
set /A EMUCNT=0
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
set CONSRCB=%%a
CALL "%GBC%\rcbAdd.bat"
)
type "%GBC%\net\%XBMC%\%RCBRWS%\config.xml.End.set">>"%GBC%\net\%XBMC%\%RCBRWS%\config.xml"
if "%RCB%"=="0" goto :builtrcbxml

if exist "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\script.games.rom.collection.browser\MyGames.db.orig" del /q "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\script.games.rom.collection.browser\MyGames.db"
if exist "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\script.games.rom.collection.browser\MyGames.db" move /Y "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\script.games.rom.collection.browser\MyGames.db" "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\script.games.rom.collection.browser\MyGames.db.orig"
if exist "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\script.games.rom.collection.browser\config.xml.orig" goto :creatercbxml
if exist "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\script.games.rom.collection.browser\config.xml" copy /Y "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\script.games.rom.collection.browser\config.xml" "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\script.games.rom.collection.browser\config.xml.orig"
if exist "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\script.games.rom.collection.browser\settings.xml" copy /Y "%USERPROFILE%\AppData\Roaming\XBMC\addons\script.games.rom.collection.browser\resources\settings.xml" "%USERPROFILE%\AppData\Roaming\XBMC\addons\script.games.rom.collection.browser\resources\settings.xml.orig"
:creatercbxml
mkdir "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\script.games.rom.collection.browser"
copy /Y "%GBC%\net\%XBMC%\%RCBRWS%\config.xml" "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\script.games.rom.collection.browser\config.xml"
copy /Y "%GBC%\net\%XBMC%\%RCBRWS%\settings.xml" "%USERPROFILE%\AppData\Roaming\XBMC\addons\script.games.rom.collection.browser\resources\settings.xml"
goto :builtrcbxml
:builtrcbxml
if "%ALLMETA%" NEQ "1" start "" "%GBC%\wbusy.exe" "CONFIGRCB" "Complete" /Stop /timeout:1
"%GBC%\wbox.exe" "RCBConfig" "Would you like to enable RCB to scrape game data on startup?^#     This may cause slow startup times   #^" "Yes;No" /DB=1 /TM=25
if %ERRORLEVEL%==1 goto :SOSON
if %ERRORLEVEL%==2 goto :SOSOFF

:SOSON
"%GBC%\fart.exe" "%USERPROFILE%\AppData\Roaming\XBMC\addons\script.games.rom.collection.browser\resources\settings.xml" [SOS] true
goto :finishrcbbuild
:SOSOFF
"%GBC%\fart.exe" "%USERPROFILE%\AppData\Roaming\XBMC\addons\script.games.rom.collection.browser\resources\settings.xml" [SOS] false
goto :finishrcbbuild


:finishrcbbuild
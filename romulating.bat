:BEGINROMULATE
%GBD%
cd "%GBC%"
SET ROMIN=
SET GGOFF=
SET GGON=
SET DLGM=
set BATWBD=
set CFGWBD=
set JOYWBD=
set JOYON=JOYS
set BATON=BATS
set CFGBON=CFGS
set NDONE=None%NN%
set NN=
set RNS=None
SET BATWBD=[ ] Launchers :
SET JOYWBD=[ ] Joystick Profiles :
SET CFGWBD=[ ] Emulator Configuration Files :
:CFGCHK
set CFGALLG=1
if "%INDVALL%"=="1" goto :ROMRC
if not exist "%GBC%\copy.ini" goto :endromluate
:ROMRC
"%GBC%\wbox.exe" "romulatingRC" "#######################^CONFIGURATION STATUS^#######################^%BATWBD%^%JOYWBD%^%CFGWBD%^^Would you like to overwrite existing RoM-Jacket Library components?^^Launchers^Only Launchers will be overwritten^^Config^Only Emulator-Configuration files will be overwritten.^^Joy^Only Joystick-profiles will be overwritten.^^ALL^Launchers, Joystick-Profiles, Emulator-Configuration files will be overwritten." "Launchers;Config;Joy;ALL;%NDONE%" /AL /DB=5 /BW=75
if %ERRORLEVEL%==1 goto :%BATON%
if %ERRORLEVEL%==2 goto :%CFGBON%
if %ERRORLEVEL%==3 goto :%JOYON%
if %ERRORLEVEL%==4 goto :ALL
if %ERRORLEVEL%==5 goto :%NDONE%
if %ERRORLEVEL%==6 goto :%RNS%
goto :endromulate

:BATS
set BATOV=1
set BATON=BATZ
set BATWBD=[X] Launchers : OVERWRITE
set NN=;Done
set RNS=Reset
set NDONE=Done;%RNS%
goto :CFGCHK

:BATZ
set BATOV=
set BATON=BATS
set BATWBD=[ ] Launchers :
set NN=;Done
set RNS=Reset
set NDONE=Done;%RNS%
goto :CFGCHK

:CFGS
set :CFGOV=1
set CFGBON=CFGZ
set CFGWBD=[X] Emulator Configuration files :  OVERWRITE
set NN=;Done
set RNS=Reset
set NDONE=Done;%RNS%
goto :CFGCHK

:CFGZ
set :CFGOV=
set CFGBON=CFGS
set CFGWBD=[ ] Emulator Configuration files :
set NN=;Done
set RNS=Reset
set NDONE=Done;%RNS%
goto :CFGCHK


:JOYS
set JOYOV=1
set JOYON=JOYZ
set JOYWBD=[X] Joystick Profiles : OVERWRITE
set NN=;Done
set RNS=Reset
set NDONE=Done;%RNS%
goto :CFGCHK

:JOYZ
set JOYOV=
set JOYON=JOYS
set JOYWBD=[ ] Joystick Profiles :
set NN=;Done
set RNS=Reset
set NDONE=Done;%RNS%
goto :CFGCHK

:ALL
SET CFGOV=1
set BATOV=1
set JOYOV=1
goto :CONSOLIDATIONS

:RESET
set NDONE=Done
set NN=
SET CFGOV=
set BATOV=
set JOYOV=
goto :BEGINROMULATE

:NONE
SET CFGOV=
set BATOV=
set JOYOV=

:DONE

:CONSOLIDATIONS
"%GBC%\wbox.exe" "FolderTest" "################^#ROM-DIRECTORY NAMES#^##################^^#########^#Consolidate#^#########^^Groups roms and Shortens Folder-Name to the base-name.^^#########^#Individuate#^#########^^Each rom gets it's own folder name.^^" "Consolidate;Individuate;Help" /DB=2 /BW=120 /TM=10
if %ERRORLEVEL%==1 goto :CSD
if %ERRORLEVEL%==2 goto :IND
if %ERRORLEVEL%==3 goto :HLP
goto :endromulate

:HLP
"%GBC%\docs\select.html"
wbox "opening" "Help is opening" "OK" /TM=3
if %ERRORLEVEL%==1 goto :CONSOLIDATIONS
goto :CONSOLIDATIONS

:CSD
SET DLGM=1
goto :PERG

:IND
SET DLGM=0
goto :PERG

:PERG
"%GBC%\wbox.exe" "pergame" "Would you like to enable^''per-game''^configurations?" "Per-Game;Global" /DB=1
if %ERRORLEVEL%==1 goto :GGON
if %ERRORLEVEL%==2 goto :GGOFF
goto :endromulate

:GGON
SET XFG=1
set PERGM=1
SET GGON=1
goto :XPDCHK

:GGOFF
set XFG=0
set PERGM=0
SET GGOFF=1
goto :XPDCHK

:XPDCHK
if "%XPADDER%"=="DISABLED" goto :CFGALL
if "%XPADDER%"=="[XPD]" goto :CFGALL
"%GBC%\wbox.exe" "Overwrite" "Overwrite existing xpadder profiles?" "Yes;No" /DB=1 /TM=20
if %ERRORLEVEL%==1 goto :XPDBEGIN
if %ERRORLEVEL%==2 goto :xpdkep
goto :endromulate

:XPDBEGIN
set XPDG=1
goto :CFGALL

:xpdkep
set XPDG=0
goto :CFGALL

:CFGALL
if "%PERGM%"=="0" goto :NOCONFIG
"%GBC%\wbox.exe" "reconfig" "^Would you like to generate new configuration files for all consoles?^"  "Yes;No" /DB=1
if %ERRORLEVEL%==1 goto :RECONFIG
if %ERRORLEVEL%==2 goto :NOCONFIG
goto :endromulate

:NOCONFIG
set RECONF=
goto :INTEGRATIONS

:RECONFIG
SET RECONF=1
goto :INTEGRATIONS

:INTEGRATIONS
if "%ALLCONSOLES%"=="1" goto :injLaunch
start "" "%GBC%\wbusy.exe" "romulating" "Checking your RJ-Sort-Folder^" /marquee
for /f  "delims=" %%c in ('dir /b /a-h /s "%GBG%\%ROMJ%"') do echo.%%~nxc>>"%GBC%\copy.ini"
"%GBC%\wbusy.exe" "romulating" "Indexed" /Stop /timeout:1
for %%R in ("%GBC%\copy.ini") do if "%%~zR" equ "" goto :injLaunch
for %%R in ("%GBC%\copy.ini") do if %%~zR equ 0 goto :injLaunch

CALL "%GBC%\sortingLoose.bat"
"%GBC%\wbox.exe" "Library Config" "^^#########################^        LIBRARY CONFIGURATION^#########################^^^^^    re/Create:^^      After adding more roms to the RJ-Sort-Folder.^^^    Process:^^      Create Launchers/joystick profiles for all roms^^^" "re/Create;Process;MainMenu" /AL /DB=2 /BW=200
if %ERRORLEVEL%==1 goto :BEGINROMULATE
if %ERRORLEVEL%==2 goto :injectLaunchers
if %ERRORLEVEL%==3 goto :cleanupromulating
goto :endromulate

:injLaunch
:injectLaunchers
CALL "%GBC%\unsort.bat">>"%GBC%\logs\unsort.log"
start "" "%GBC%\wbusy.exe" "romulating" "Preparing Library" /marquee
CALL "%GBC%\hidemeta.bat"
"%GBC%\wbusy.exe" "romulating" "...CONFIG..." /Stop /timeout:1 
CALL "%GBC%\GenerateGameLibrary.bat"
CALL "%GBC%\deleteEmpty.bat"


:PROCL
start "" "%GBC%\wbusy.exe" "romulating" "Processing Launchers" /marquee
CALL "%GBC%\InjectLaunchers.bat"
if "%CUSTOMEMU%"=="1" CALL "%GBC%\custEmu.bat"
if "%CUSTOMEMU%"=="1" CALL "%GBC%\generateCustomLaunchers.bat"
CALL "%GBC%\moveVideoMeta.bat"
CALL "%GBC%\GenerateGameLaunchers.bat"
CALL "%GBC%\extensionProc.bat"
start "" "%GBC%\wbusy.exe" "romulating" "Processed" /Stop /timeout:1
if "%XPADDER%"=="DISABLED" goto :cleanupromulating
CALL "%GBC%\cleanup.bat"
CALL "%GBC%\deleteEmpty.bat"
:xpdprc
"%SEVENZIP%" x -y "%GBC%\net\%XPROF%\%XPROF%.zip" -o"%GBC%\net\%XPROF%"
CALL "%GBC%\generateXpadderProfiles.bat"
if "%xpdskp%"=="0" CALL "%GBC%\customGenerateXpadderProfiles.bat"
start "" "%GBC%\wbusy.exe" "romulating" "Copying Joystick Profiles" /marquee
%GBD%
if "%MBR%"=="0" goto :cleanupromulating
CALL "%GBC%\copyGameBrowserInjection.bat"

:cleanupromulating
start "" "%GBC%\wbusy.exe" "romulating" "Cleaning Up" /marquee
CALL "%GBC%\cleanup.bat"
CALL "%GBC%\deleteEmpty.bat"
start "" "%GBC%\wbusy.exe" "romulating" "Complete" /Stop /timeout:3
SET FIRSTRUN=0
CALL "%GBC%\emulatorcheck.bat"
for %%R in ("%GBC%\toInstall.ini") do if %%~zR leq 29 goto :METAUNHIDE
CALL "%GBC%\toInstall.bat"

:METAUNHIDE
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
SET GLR=%%~a
CALL :UNHIDE
)
start "" "%GBC%\wbusy.exe" "romulating" "Complete" /Stop /timeout:1
exit /b

:UNHIDE
%GAMDIR%
cd "%GBG%\%GAM%\%CONS%\%GLR%"
for /f "tokens=* delims= " %%a in ('dir /b /a "*.xml" "*.tbn" "*.nfo" "*.png" "*.jpg"') do ATTRIB -H "%%~a"
:endromulate
del /q "%GBC%\copy.ini"
exit /b
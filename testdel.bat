:BEGINROMULATE
%GBD%
cd "%GBC%"
SET ROMIN=
SET GGOFF=
SET GGON=
SET DLGM=
:CFGCHK
set CFGALLG=1
set NDONE=None%NN%
set NN=;Done
"%GBC%\wbox.exe" "TESTDEL" "%BATWBD%^%JOYWBD%^%CFGWBD%^Would you like to delete existing RoM-Jacket Library components?^^Launchers^Only Launchers will be deleted^^Config^Only Emulator-Configuration files will be deleted.^^Joy^Only Joystick-profiles will be deleted.^^ALL^Launchers, Joystick-Profiles, Emulator-Configuration files will be deleted.^^None^Nothing will be deleted." "Launchers;Config;Joy;ALL;%NDONE%" /DB=5 /BW=75
if %ERRORLEVEL%==1 goto :BATS
if %ERRORLEVEL%==2 goto :CFGS
if %ERRORLEVEL%==3 goto :JOYS
if %ERRORLEVEL%==4 goto :ALL
if %ERRORLEVEL%==5 goto :CONSOLIDATIONS
goto :endromulate

:BATS
set BATOV=1
set BATWBD=Launchers will be deleted
set NN=;Done
set NDONE=Done
goto :CFGCHK

:CFGS
set :CFGOV=1
set CFGWBD=Configurations will be deleted
set NN=;Done
set NDONE=Done
goto :CFGCHK

:JOYS
set JOYOV=1
set JOYWBD=Joystick Profiles will be deleted
set NN=;Done
set NDONE=Done
goto :CFGCHK

:ALL
SET CFGOV=1
set BATOV=1
set JOYOV=1
goto :CONSOLIDATIONS

:NONE
if "%CFGOV%"=="" goto :CFGALL
goto :CFGCHK

:CONSOLIDATIONS
"FolderTest" "################^#ROM-DIRECTORY NAMES#^##################^^#########^#Consolidate#^#########^^Groups roms and Shortens Folder-Name to the base-name.^^#########^#Individuate#^#########^^Each rom gets it's own folder name.^^" "Consolidate;Individuate" /DB=1 /BW=120
if %ERRORLEVEL%==1 goto :CSD
if %ERRORLEVEL%==2 goto :IND
goto :endromulate

:CSD
SET DLGM=1
goto :PERG
:IND
SET DLGM=0
goto :PERG
:PERG
"%GBC%\wbox.exe" "pergame" "^Would you like to enable^''per-game''^configurations for all consoles?" "Yes;No" /DB=1
if %ERRORLEVEL%==1 goto :GGON
if %ERRORLEVEL%==2 goto :GGOFF
goto :endromulate


:CFGALL
"%GBC%\wbox.exe" "reconfig" "^Would you like to generate new configuration files for all consoles?^"  "Yes;No" /DB=1
if %ERRORLEVEL%==1 goto :RECONFIG
if %ERRORLEVEL%==2 goto :NOCONFIG
goto :endromulate

:GGON
set PERGM=1
SET GGON=1
goto :XPDCHK

:GGOFF
set PERGM=0
SET GGOFF=1
goto :XPDCHK


:XPDCHK
if "%XPADDER%"=="DISABLED" goto :DMTCHK
if "%XPADDER%"=="[XPD]" goto :DMTCHK
"%GBC%\wbox.exe" "Overwrite" "Overwrite existing xpadder profiles?" "Yes;No" /DB=1 /TM=20
if %ERRORLEVEL%==1 goto :XPDBEGIN
if %ERRORLEVEL%==2 goto :xpdkep
goto :endromulate

:XPDBEGIN
set XPDG=1
goto :CFGCHK

:xpdkep
set XPDG=0
if "%PERGM%"=="1" goto :CFGCHK
if "%PERGM%"=="0" goto :CFGALL
goto :endromulate

:INTEGRATIONS
start "" "%GBC%\wbusy.exe" "romulating" "Checking your RJ-Sort-Folder^" /marquee
for /f  "delims=" %%c in ('dir /b/s/a-h "%GBG%\%ROMJ%"') do echo.%%~nxc>>"%GBC%\copy.ini"
"%GBC%\wbusy.exe" "romulating" "Indexed" /Stop /timeout:1
for %%R in ("%GBC%\copy.ini") do if %%~zR equ 0 goto :injLaunch
CALL "%GBC%\sortingLoose.bat"
"%GBC%\wbox.exe" "Library Config" "^^#########################^        LIBRARY CONFIGURATION^#########################^^^^^    re/Create:^^      After adding more roms to the RJ-Sort-Folder.^^^    Process:^^      Create Launchers/joystick profiles for all roms^^^" "re/Create;Process;MainMenu" /AL /DB=2 /BW=200
if %ERRORLEVEL%==1 goto :BEGINROMULATE
if %ERRORLEVEL%==2 goto :injectLaunchers
if %ERRORLEVEL%==3 goto :cleanupromulating
goto :endromulate

:injLaunch
:injectLaunchers
start "" "%GBC%\wbusy.exe" "romulating" "Preparing Library" /marquee
CALL "%GBC%\consolecleaner.bat"
CALL "%GBC%\hidemeta.bat"
"%GBC%\wbusy.exe" "romulating" "...CONFIG..." /Stop /timeout:1 
CALL "%GBC%\GenerateGameLibrary.bat"

:GENLIB
CALL "%GBC%\deleteEmpty.bat"
if "%XFG%"=="0" goto :NOCONFIG
"%GBC%\wbox.exe" "reconfig" "^Would you like to generate new configuration files for all consoles?^"  "Yes;No" /DB=1
if %ERRORLEVEL%==1 goto :RECONFIG
if %ERRORLEVEL%==2 goto :NOCONFIG
goto :RECONFIG

:NOCONFIG
set RECONF=
goto :PROCL

:RECONFIG
SET RECONF=1
goto :PROCL

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
for %%R in ("%GBC%\toInstall.ini") do if %%~zR leq 29 goto :METAUNHIDECALL
"%GBC%\toInstall.bat"

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
exit /b
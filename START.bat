CHCP 1252
setlocal disableDelayedExpansion
MODE CON: COLS=15 LINES=1
FOR /F "tokens=2 delims= " %%A IN ('TASKLIST /FI "imagename eq cmd.exe" /v^| find /i "ROM-JACKET"') DO TASKKILL /F /PID %%A

TITLE ROM-JACKET
FOR /F "tokens=2 delims= " %%A IN ('TASKLIST /FI "imagename eq cmd.exe" /v^| find /i "INIT"') DO TASKKILL /F /PID %%A
taskkill /f /im START.exe
taskkill /f /im Wbox.exe
taskkill /f /im Wbusy.exe
taskkill /f /im Wselect.exe
taskkill /f /im Wfile.exe
taskkill /f /im Wfolder.exe
taskkill /f /im winput.exe
taskkill /f /im wget.exe
taskkill /f /im aria.exe
taskkill /f /im dxdiag.exe

del /q copy.ini
if "%~1"=="" CALL :GETADMIN
if "%~1"=="" goto :STARTALL
goto :STARTALL

:GETADMIN
SET GOTMIN=1
echo.%userprofile%>"user.ini"
FOR /F "tokens=* delims= " %%a in ('type "%CD%\user.ini"') DO SET CURSR=%%~a
FOR /F "usebackq tokens=3 skip=1" %%i in (`REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop`) DO (
SET DESKTOPDIR=%%i
)
FOR /F "usebackq delims=" %%i in (`ECHO %DESKTOPDIR%`) DO (
SET DESKTOPDIR=%%i
)
echo.%DESKTOPDIR%>"desk.ini"


>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto :UACPrompt
) else ( goto :gotAdmin )

:UACQUERY
for /f "tokens=3 delims= " %%a in ('REG QUERY HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System\ /v EnableLUA') do set UACMODE=%%~a
if "%UACMODE%"=="0x0" goto :RESUMEUAC
wbox.exe "UAC" "Would you like to Disable UAC and restart Windows?^RJ works best with UAC disabled." "Disable;Skip" /db=2 /TM=10
if %ERRORLEVEL%==1 goto :uacoff
if %ERRORLEVEL%==2 goto :skipuac
goto :uacoff

:uacoff
set UACON=1
goto :RESUMEUAC

:UACPrompt
echo. Set UAC = CreateObject^("Shell.Application"^) > "%temp%\disableUAC.vbs"
echo. Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
set params = %*:"=""
goto :UACQUERY

:RESUMEUAC
echo UAC.ShellExecute "%~s0", "%params%", "", "runas", 1 >> "%temp%\getadmin.vbs"
echo. Dim WshShell >> "%temp%\disableUAC.vbs"
echo. Set WshShell = WScript.CreateObject("WScript.Shell") >> "%temp%\disableUAC.vbs"
echo. UAC.ShellExecute "%windir%\System32\reg.exe", "ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 0 /f", "", "runas", 1 >> "%temp%\disableUAC.vbs"
echo. WshShell.run "shutdown -r" >> "%temp%\disableUAC.vbs"
if "%UACON%"=="1" "%temp%\disableUAC.vbs"
"%temp%\getadmin.vbs"
exit /b

:skipuac
SET UACON=
REM cmd.exe /k %windir%\System32\reg.exe ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v EnableLUA /t REG_DWORD /d 1 /f
goto :RESUMEUAC

:gotAdmin
if exist "%temp%\disableUAC.vbs" ( del "%temp%\disableUAC.vbs" )
if exist "%temp%\getadmin.vbs" ( del "%temp%\getadmin.vbs" )
pushd "%CD%"
CD /D "%~dp0"
exit /b

:STARTALL
for %%A in ("%~dp0") do set gbtmp=%%~A
for %%A in ("%gbtmp:~0,-1%") do SET GBC=%%~A
for %%A in ("%~d0") do set GBD=%%~A
move /y copy.ini "%GBC%"
if exist "%GBC%\copy.ini" goto :configRJ
if not exist "%CD%\firstrun.ini" SET FIRSTRUN=1
if not exist "%CD%\firstrun.ini" goto :minimized

:minimized
for /f "tokens=2 delims=," %%a in ('wmic os get caption /format:csv') do SET WINGET=%%~a
for /f "tokens=3 delims= " %%a in ("%WINGET%") do set WINVER=%%~a
set LINKR=WINV
if "%WINVER%"=="XP" set LINKR=WINLEGd
REM if "%WINVER%"=="XP" wbox.exe "noxp" "Windows XP is currently not supported." "CRY" /DB=1
REM if "%WINVER%"=="XP" exit /b
cmd /c start "" "START.exe"
goto :ARCHITECTURE

:configRJ
pushd "%GBC%"
"%GBC%\fart.exe" "copy.ini" "\"" --remove
"%GBC%\fart.exe" "copy.ini" "%GBC%\%ROMJ%\" --remove
if "%GOTMIN%"=="" CALL :GETADMIN
for /f "tokens=2 delims=," %%a in ('wmic os get caption /format:csv') do SET WINGET=%%~a
for /f "tokens=3 delims= " %%a in ("%WINGET%") do set WINVER=%%~a

set LINKR=WINV
if "%WINVER%"=="XP" set LINKR=WINLEG
REM if "%WINVER%"=="XP" wbox.exe "noxp" "Windows XP is currently not supported." "CRY" /DB=1
REM if "%WINVER%"=="XP" exit /b
cmd /c start "" "START.exe"
popd
call "%GBC%\Romulate.bat">"%GBC%\logs\Romulate.log"
exit /b

:ARCHITECTURE
echo %CD% >"%CD%\firstrun.ini"
mkdir "%CD%\logs"

SET urlVthL=1
SET /A urlVthL -= 1
CALL :ARCH2_LGrab
:ARCH2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlVthL% ARCH.ini') DO (
if "%%A"=="[BIT]" call :ARCHtst
)

:beginarch
if exist "%CD%\ARCH.ini" goto :apro

:ARCHtst
del /s /q ARCH.ini
echo [BIT]>ARCH.ini
for %%A in ("%windir:~0,2%") do set HOMDIR=%%~A
if not exist "%HOMDIR%\Program Files (x86)" (goto :xinject)
if "%ARPOP%"=="32" set INDX=index32.set
if "%ARPOP%"=="64" set INDX=index64.set

wbox "Architechture" "^^You are using a 64-bit Windows OS^however^You may opt for the 32-bit mode of RoM-Jacket^^" "32bit;64bit" /DB=2 /BW=130 
if %ERRORLEVEL%==1 goto :xCinject
if %ERRORLEVEL%==2 goto :backup
exit

:apro
if "%ARPOP%"=="32" (goto :no64) ELSE (goto :backup)

:backup
fart ARCH.ini [BIT] 64
for %%A in ("%HOMDIR%\Program Files") do set PRGF=%%~A
for %%A in ("%PROGRAMFILES(X86)%") do set PRGX=%%~A
SET INDX=index64.set
call :ROM-JACKET 

:no64
:x86

:x64check
if exist "%ProgramFiles(x86)%" (goto :x64bit) ELSE (goto :xinject)

:xinject
set ARPOP=32
fart ARCH.ini [BIT] 32
for %%A in ("%ProgramFiles%") do set PRGF=%%~A
for %%A in ("%ProgramFiles%") do set PRGX=%%~A
SET INDX=index32.set
call :ROM-JACKET 
exit

:xCinject
set ARPOP=32
fart ARCH.ini [BIT] 32
echo 64>>ARCH.ini
for %%A in ("%ProgramFiles(x86)%") do set PRGF=%%~A
for %%A in ("%ProgramFiles(x86)%") do set PRGX=%%~A
SET RARCH=64
SET INDX=index32.set
call :ROM-JACKET 
exit

:x64bit
for %%A in ("%HOMDIR%\Program Files") do set PRGF=%%~A
for %%A in ("%PROGRAMFILES(X86)%") do set PRGX=%%~A
SET INDX=index64.set
call :ROM-JACKET 

:ROM-JACKET
for %%A in ("%~dp0") do set gbtmp=%%~A
for %%A in ("%gbtmp:~0,-1%") do set GBC=%%~A
for %%A in ("%~d0") do set GBD=%%~A
CALL "%GBC%\defineVar.bat"
CALL "%GBC%\MIRSET.bat"
%GBD%
cd "%GBC%"

:INTRODUCTION
if exist "locset.ini" goto :autoVset
if exist "%GBC%\locset.ini" goto :autoVset
goto :newUsers

:newUsers
SET FIRSTRUN=1
CALL "%GBC%\Archivers.bat"
CALL "%GBC%\newSet.bat"
copy "%GBC%\locations.set" "locset.ini"
"%GBC%\wbox.exe" "new_users" "^#########################^RoM-Jacket v.95b 18:11:13.95 08/01/2013^#########################^^Welcome to RoM-Jacket^The wizard will guide you through the required configuraions to use the program.^New users are encouraged to read the Help file." "Wizard;Reset;Help" /DB=1 /BW=150
if %ERRORLEVEL%==1 goto :WIZARD
if %ERRORLEVEL%==2 goto :RESET
if %ERRORLEVEL%==3 goto :OPENHLP
goto :quitout

:OPENHLP
"%GBC%\docs\start.html"
wbox "opening" "Help is opening" "OK" /TM=3
if %ERRORLEVEL%==1 goto :newUsers
goto :newUsers

:autoVset
CALL :MARKXPD1
CALL :MARKDMT1
CALL :MARKJ2K1
CALL "%GBC%\varloc.bat"
if "%GBM%"=="[GBM]" goto :TUTORIAL
if "%GBE%\Emulators"=="[GBE]\Emulators" goto :newUsers
if "%DAMVAR%"=="[DAM]" goto :newUsers
if "%GBG%\Games\Console"=="[GBG]\Games\Console" goto :newUsers
if "%XPADDER%"=="[XPD]" goto :newUsers
REM if "%JOY2KEY%"=="[J2K]" goto :newUsers
if "%GBM%"=="[GBM]" goto :newUsers
if "%GBM%"=="0" CALL :MARKMON0
if "%GBM%"=="1" CALL :MARKMON1
mkdir "%GBG%\%ROMJ%"
mkdir "%GBG%\%GAM%"
mkdir "%GBG%\%GAM%\%CONS%"
call "%GBC%\assignConsIcon.bat"
if "%JOY2KEY%"=="DISABLED" CALL :MARKJ2K0
if "%DAMVAR%"=="DISABLED" CALL :MARKDMT0
if "%XPADDER%"=="DISABLED" CALL :MARKXPD0

:existingUsers
SET FIRSTRUN=0
set INITAL=
"%GBC%\wbox.exe" "existing_users" "^######################^ROM-JACKET^v.95b 18:11:13.95 08/01/2013^######################^" "Reset;Install/Configure;Update;Help" /DB=2 /BW=180 
if %ERRORLEVEL%==1 goto :RESET
if %ERRORLEVEL%==2 goto :creation
if %ERRORLEVEL%==3 goto :UPDATE
if %ERRORLEVEL%==4 goto :HELPING
goto :quitout

:HELPING
"%GBC%\docs\start.html"
wbox "opening" "Help is opening" "OK" /TM=3
if %ERRORLEVEL%==1 goto :existingUsers
goto :existingUsers

:UPDATE
call "%GBC%\update.bat"
goto :existingUsers

:HELP
"%GBC%\wbox.exe" "help" "^^###########BIOS INSTALL###########^^Many emulators require bios files to function properly.^If you have bios files for your emulators^you may install them automatically.^^" "Install;MainMenu" /DB=2 /BW=400 
if %ERRORLEVEL%==1 goto :BIOS
if %ERRORLEVEL%==2 goto :existingUsers
goto :quitout

:WIZARD
"%GBC%\wbox.exe" "Wizard1" "^#########################^        WIZARD^#########################^^RoM-Jacket can configure 3rd party front-ends and utilities.^You may choose to bypass the autoconfiguration and installation of these programs now.^If this is your first time using RoM-Jacket it is NOT reccommended to bypass.^^" "Bypass;Continue" /DB=2 /BW=180 /TM=10
if %ERRORLEVEL%==1 goto :UNCONFIGURE
if %ERRORLEVEL%==2 goto :TUTORIAL
goto :quitout

:MARKHPD
SET HPN=%LTMP%\%HYPS%
exit /b

:MARKHPE
SET HPN=%LTMP%\%EMUZ%\%HYPS%
exit /b

:MARKHPG
SET HPN=%PRGX%\%HYPS%
exit /b

:MARKXPDJ
SET XPADDER=%PRGX%\Xpadder\Xpadder.exe
for %%A in ("%XPADDER%") do set XPATHT=%%~dpA
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
if exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.bak"
if not exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XCONF%.7z" -o"%XPATH%"
exit /b

:MARKXPDT
SET XPADDER=%LTMP%\%EMUZ%\Xpadder\Xpadder.exe
for %%A in ("%XPADDER%") do set XPATHT=%%~dpA
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
if exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.bak"
if not exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XCONF%.7z" -o"%XPATH%"
exit /b

:MARKDMT0
for %%A in ("Daemon Tools is Disabled^") do set MARKDMT=%%~A
exit /b
:MARKDMT1
for %%A in ("Daemon Tools is Enabled^") do set MARKDMT=%%~A
exit /b
:MARKXPD0
for %%A in ("Xpadder is Disabled^") do set MARKXPD=%%~A
exit /b
:MARKXPD1
for %%A in ("Xpadder is Enabled^") do set MARKXPD=%%~A
SET XPDEF=1
exit /b
:MARKJ2K0
for %%A in ("JoyToKey is Disabled^") do set MARKJ2K=%%~A
exit /b
:MARKJ2K1
for %%A in ("JoyToKey is Enabled^") do set MARKJ2K=%%~A
exit /b
:MARKMON0
for %%A in ("Multi-Monitor mode is Disbled^") do set MMNT=%%~A
exit /b
:MARKMON1
for %%A in ("Multi-Monitor mode is Enabled^") do set MMNT=%%~A
exit /b

:UNCONFIGURE
SET DAMVAR=DISABLED
CALL :MARKDMT0
SET XPADDER=DISABLED
CALL :MARKXPD0
SET JOY2KEY=DISABLED
CALL :MARKJ2K0
SET J2K=0
SET MBR=0
SET GBR=0
SET XBM=0
SET ADV=0
SET RCB=0
for %%A in ("%~d0") do set LTMP=%%~A
if exist "%PRGX%\DAEMON Tools Pro\DTAgent.exe" CALL :MARKDMT1
if exist "%PRGX%\DAEMON Tools Lite\DTLite.exe" CALL :MARKDMT1
if exist "%PRGX%\DAEMON Tools Pro\DTAgent.exe" SET DAMVAR=%PRGX%\DAEMON Tools Pro\DPro.exe
if exist "%PRGX%\DAEMON Tools Lite\DTLite.exe" SET DAMVAR=%PRGX%\DAEMON Tools Lite\DTLite.exe
if exist "%PRGX%\Xpadder\Xpadder.exe" CALL :MARKXPD1
if exist "%PRGX%\Xpadder\Xpadder.exe" CALL :MARKXPDJ 
if exist "%LTMP%\%EMUZ%\%HYPS%\%HYPS%.exe" CALL :MARKHPE 
if exist "%LTMP%\%HYPS%\%HYPS%.exe" CALL :MARKHPD
if exist "%PRGX%\%HYPS%\%HYPS%.exe" CALL :MARKHPG
REM if exist "%PRGX%\JoyToKey\JoyToKey.exe" CALL :MARKJ2K1
REM if exist "%PRGX%\JoyToKey\JoyToKey.exe" SET JOY2KEY=%PRGX%\JoyToKey\JoyToKey.exe
if exist "%LTMP%\%EMUZ%\Xpadder\Xpadder.exe" CALL :MARKXPD1
if exist "%LTMP%\%EMUZ%\Xpadder\Xpadder.exe" CALL :MARKXPDT
REM if exist "%LTMP%\%EMUZ%\JoyToKey\JoyToKey.exe" CALL :MARKJ2K1
REM if exist "%LTMP%\%EMUZ%\JoyToKey\JoyToKey.exe" SET JOY2KEY=%LTMP%\%EMUZ%\JoyToKey\JoyToKey.exe
if exist "%PROGRAMDATA%\%MBRWS%" SET MBR=1
if exist "%PROGRAMDATA%\%MBRWS%\%PLGN%\%GBRWS%.dll" SET GBR=1
if exist "%USERPROFILE%\AppData\Roaming\XBMC" SET XBM=1
if exist "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\script.games.rom.collection.browser" SET RCB=1
if exist "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\plugin.program.advanced.launcher" SET ADV=1
SET AUTOCONFIG=1

:TUTORIAL
set INITAL=1
"%GBC%\wbox.exe" "MMNTWiz" "^### MULTI-MONITOR ###^^Do you use multiple displays?^^" "Yes;No" /DB=2 /BW=130 
if %ERRORLEVEL%==1 goto :setgbt
if %ERRORLEVEL%==2 goto :delgbt
goto :quitout

:delgbt
SET GBM=0
CALL :MARKMON0
"%GBC%\fart.exe" "locset.ini" "[GBM]" "%GBM%"
goto :WIZARDauto	

:setgbt
SET GBM=1
CALL :MARKMON1
"%GBC%\fart.exe" "locset.ini" "[GBM]" "%GBM%"
goto :WIZARDauto

:WIZARDauto
"%GBC%\wbox.exe" "Wizard Install" "^############################################################^                  Would you like to install to the default locations?^############################################################^^##### ROM-JACKET PROGRAM FILES#####^   %GBD%\%ROMJ%^############################^^##### GAMES #####^   %GBD%\%GAM%\%CONS%^###############^^##### EMULATORS #####^   %GBD%\%EMUZ%^##################^^" "Continue;Change" /AL /BW=250  
if %ERRORLEVEL%==1 goto :defaultSettings
if %ERRORLEVEL%==2 goto :WIZARD2
goto :quitout

:WIZARD2
"%GBC%\wbox.exe" "Wizard2" "^^Select the desired location of your Emulators.^^note:^All emulators will be placed in an ''Emulators'' folder.^^" "Okay" /AL /BW=400  /TM=5
if %ERRORLEVEL%==1 goto :setup_emuDir

:setup_emuDir
for /f "delims=" %%a in ('Wfolder.exe "SET _emuDirect=" "%GBD%\" "Emulators folder: (best if root of Disk)" /noquote') do %%a
for %%A in ("%_emuDirect:*:=%") do set emudrv-ltr=%%~A
for %%A in ("%_emuDirect:~0,2%\") do set EMUDIR=%%~A
if "%_emuDirect%"=="" (goto :newEmuLoc)
goto :emudrvltr

:emudrvltr
for %%A in ("%_emuDirect%") do set GBE=%%~A
if "%emudrv-ltr%" NEQ "\" goto :emusets
for %%A in ("%_emuDirect:~0,2%") do set GBE=%%~A

:emusets
mkdir "%GBE%\%EMUZ%"

:TUTORIAL2
"%GBC%\wbox.exe" "Wizard3" "^^Select the desired location of your Games.^^Your RJ-Sort-Folder will also be stored here.^^" "Okay" /AL /BW=400  /TM=5
if %ERRORLEVEL%==1 goto :setup_gamDir

:setup_gamDir
for /f "delims=" %%a in ('Wfolder.exe "SET _gamDirect=" "%GBD%\" "Games Folder: (best if root of Disk)" /noquote') do %%a
for %%A in ("%_gamDirect:*:=%") do set gamdrv-ltr=%%~A
if "%gamdrv-ltr%"=="\" (goto :gamslash)
for %%A in ("%_gamDirect:~0,2%") do set GAMDIR=%%~A
if "%_gamDirect%"=="" goto :setup_gamDir
goto :gamnoslash

:gamslash
for %%A in ("%_gamDirect:~0,2%") do set GAMDIR=%%~A

:gamdrvLtr
for %%A in ("%_gamDirect:~0,-1%") do set GBG=%%~A
mkdir "%GBG%\%ROMJ%"
mkdir "%GBG%\%GAM%"
mkdir "%GBG%\%GAM%\%CONS%"
call "%GBC%\assignConsIcon.bat"
goto :archivers

:gamnoslash
for %%A in ("%_gamDirect%") do set GBG=%%~A
mkdir "%GBG%\%ROMJ%"
mkdir "%GBG%\%GAM%"
mkdir "%GBG%\%GAM%\%CONS%"
call "%GBC%\assignConsIcon.bat"

goto :archivers

:defaultSettings
del /q "locset.ini"
for %%A in ("%GBC:~0,2%") do set GAMDIR=%%~A
for %%A in ("%GBC:~0,2%") do set EMUDIR=%%~A
for %%A in ("%EMUDIR:~0,2%") do set GBE=%%~A
for %%A in ("%GAMDIR:~0,2%") do set GBG=%%~A
mkdir "%GBG%\%ROMJ%
mkdir "%GBG%\%GAM%"
mkdir "%GBG%\%GAM%\%CONS%"
call "%GBC%\assignConsIcon.bat"

:archivers

:setup_daemT
if "%DAMVAR%"=="DISABLED" goto :setup_xpadDir
if exist "%PRGX%\DAEMON Tools Pro\DTAgent.exe" goto :DTsetPro
if exist "%PRGX%\DAEMON Tools Lite\DTLite.exe" goto :DTsetDefault 
goto :locate_dt

:DTsetDefault
for %%A in ("%PRGX%\DAEMON Tools Lite\DTlite.exe") do set DAMVAR=%%~A
for %%A in ("Daemon Tools is Enabled^") do set MARKDMT=%%~A
goto :setup_xpadDir

:DTsetPro
for %%A in ("%PRGX%\DAEMON Tools Pro\DTAgent.exe") do set DAMVAR=%%~A
for %%A in ("Daemon Tools is Enabled^") do set MARKDMT=%%~A
goto :setup_xpadDir

:locate_dt
"%GBC%\wbox.exe" "locatedt" "^^Locate the daemon tools application or click download to download and install it.^^" "Locate;Download;Skip" /DB=3 /BW=150
if %ERRORLEVEL%==1 goto :selectdt
if %ERRORLEVEL%==2 goto :continue_DaemonT
if %ERRORLEVEL%==3 goto :setnoDT

:selectdt
for /f "delims=" %%a in ('Wfile.exe "SET DAMVAR=" "%PRGX%\Daemon Tools Lite\d*.exe" "Where is the DaemonTools application?" /noquote') do %%a
if "%DAMVAR%"=="[DAM]" goto :inst_daemonT
IF "%DAMVAR%"=="" goto :inst_daemonT
goto :setup_xpadDir

:EnableXpadder
set XPADDER=

:setup_xpadDir
if "%XPADDER%"=="DISABLED" (goto :setup_continue)
if exist "%XPP%\Xpadder.exe" goto :xpadCustDir
if exist "%PRGX%\Xpadder\Xpadder.exe" goto :xpadDefDir
if exist "%GBE%\%EMUZ%\Xpadder\Xpadder.exe" goto :xpadEmuDir
goto :locate_xpd

:xpadEmuDir
for %%A in ("%GBE%\%EMUZ%\Xpadder\Xpadder.exe") do set XPADDER=%%~A
for %%A in ("%XPADDER%") do set XPATHT=%%~dpA
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
if exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.bak"
if not exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XCONF%.7z" -o"%XPATH%"
CALL :MARKXPD1
for %%A in ("DISABLED") do set JOY2KEY=%%~A
CALL :MARKJ2K0
call "%GBC%\setlocset.bat"
goto :setup_continue


:xpadCustDir
for %%A in ("%XPP%\Xpadder.exe") do set XPADDER=%%~A
for %%A in ("%XPADDER%") do set XPATHT=%%~dpA
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
if exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.bak"
if not exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XCONF%.7z" -o"%XPATH%"
CALL :MARKXPD1
for %%A in ("DISABLED") do set JOY2KEY=%%~A
CALL :MARKJ2K0
call "%GBC%\setlocset.bat"
goto :setup_continue

:xpadDefDir
for %%A in ("%PRGX%\Xpadder\Xpadder.exe") do set XPADDER=%%~A
for %%A in ("%XPADDER%") do set XPATHT=%%~dpA
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
if exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.bak"
if not exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XCONF%.7z" -o"%XPATH%"
CALL :MARKXPD1
for %%A in ("DISABLED") do set JOY2KEY=%%~A
CALL :MARKJ2K0
call "%GBC%\setlocset.bat"
goto :setup_J2KDir

:locate_xpd
"%GBC%\wbox.exe" "locatexpd" "^^Locate the Xpadder application.^^" "Okay;Download;Skip" /DB=3 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :selectxpd
if %ERRORLEVEL%==2 goto :getxpd
if %ERRORLEVEL%==3 goto :setnoXpd
goto :setnoXpd

:getxpd
call "%GBC%\getXpadapp.bat"
if "%XPADDER%"=="[XPD]" goto :setnoXpd
if "%XPADDER%"=="" goto :setnoXpd
if "%XPADDER%" NEQ "[XPD]" SET JOY2KEY=DISABLED
for %%A in ("%XPADDER%") do set XPATHT=%%~dpA
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
if exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.bak"
if not exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XCONF%.7z" -o"%XPATH%"
CALL :MARKXPD1
CALL :MARKJ2K0
call "%GBC%\setlocset.bat"
set INITAL=
goto :setup_continue

:selectxpd
for /f "delims=" %%a in ('Wfile.exe "SET XPADDER=" "%GBE%\%EMUZ%\Xpadder\*pad*.exe" "Where is the Xpadder application?" /noquote') do %%a
if "%XPADDER%"=="[XPD]" goto :inst_Xpad
if "%XPADDER%"=="" goto :setnoXpd
if "%XPADDER%" NEQ "[XPD]" SET JOY2KEY=DISABLED
for %%A in ("%XPADDER%") do set XPATHT=%%~dpA
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
if exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.bak"
if not exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XCONF%.7z" -o"%XPATH%"
CALL :MARKXPD1
CALL :MARKJ2K0
call "%GBC%\setlocset.bat"
set INITAL=
goto :setup_continue

:test_xpadder
if "%XPADDER%"=="" goto :setnoXpd

:setup_continue
%GBD%
cd "%GBC%"	
if "%XPADDER%"=="" goto :inst_Xpad
if "%DAMVAR%"=="" goto :inst_DaemonT
for %%A in ("%~d0") do set LTMP=%%~A
if exist "%LTMP%\%EMUZ%\%HYPS%\%HYPS%.exe" CALL :MARKHPE 
if exist "%LTMP%\%HYPS%\%HYPS%.exe" CALL :MARKHPD
if exist "%PRGX%\%HYPS%\%HYPS%.exe" CALL :MARKHPG
if exist "%PROGRAMDATA%\%MBRWS%" SET MBR=1
if exist "%PROGRAMDATA%\%MBRWS%\%PLGN%\%GBRWS%.dll" SET GBR=1
if exist "%USERPROFILE%\AppData\Roaming\XBMC" SET XBM=1
if exist "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\script.games.rom.collection.browser" SET RCB=1
if exist "%USERPROFILE%\AppData\Roaming\XBMC\userdata\addon_data\plugin.program.advanced.launcher" SET ADV=1
goto :check_complete

:check_complete
call "%GBC%\setlocset.bat"
if "%XPDINIT%"=="1" goto :extract_xpadder
goto :creation

:creation
%GBD%
cd "%GBC%"
set MKEXE=
call "%GBC%\varLoc.bat"
call "%GBC%\setlocset.bat"
"%GBC%\wbox.exe" "creation Option" "##################################^Main Menu^##################################^%MARKXPD% %MARKDMT% %MMNT%##################################^^######^#Install#^######^^   Download, Install and configure emulators, programs and dependencies.^^#########^#Configure#^#########^^   Configure, sort and migrate Games to your library^^########^#Frontend#^########^^   Install and configure Frontends.^" "Install;Configure;Frontend" /DB=2 /BW=150
if %ERRORLEVEL%==1 goto :create_Emulators
if %ERRORLEVEL%==2 goto :create_Launchers
if %ERRORLEVEL%==3 goto :MEDCENTERCHK
goto :quitout

:create_Emulators
"%GBC%\wbox.exe" "Emulator Install" "^^######################################^Download, install and configure emulators, drivers and bios files^######################################^^^    ''Emulators''^      Download and install emulators.^^    ''Joystick''^     Install drivers and conifgure Xpadder^^    ''Drivers''^     Install dependencies and libraries needed for emulators^^    ''Bios''^     Install bios files for your emulators.^^" "Emulators;Joystick;Drivers;Bios;Menu" /AL 
if %ERRORLEVEL%==1 goto :manualgetall
if %ERRORLEVEL%==2 goto :joystick
if %ERRORLEVEL%==3 goto :depends
if %ERRORLEVEL%==4 goto :BIOS
if %ERRORLEVEL%==5 goto :creation
goto :quitout

:CONFIGURE
"%GBC%\wbox.exe" "CONFIGURE" "^^#####################^CONFIGURATION^####################^^Setup your ''GAMES''^^Process games in your Rom-Jacket^Select an archive or folder to migrate^^^Setup ''Joystick''^^Install and reconfigure your Joystick preferences^^" "Games;Joystick;MainMenu" /DB=1 
if %ERRORLEVEL%==1 goto :create_Launchers
if %ERRORLEVEL%==2 goto :joystick
if %ERRORLEVEL%==3 goto :creation
goto :quitout

:joystick
"%GBC%\wbox.exe" "JOYSTICK" "^################^#JOYSTICK CONFIGURATION#^################^########^#Drivers#^##########^Configure your joystick and install drivers^^#########^#Xpadder#^#########^Install and re/configure your Xpadder preferences^^" "Drivers;Xpadder;MainMenu"
if %ERRORLEVEL%==1 goto :cfgjoy
if %ERRORLEVEL%==2 goto :extract_xpadder
if %ERRORLEVEL%==3 goto :creation
goto :quitout

:cfgjoy
call "%GBC%\joystick.bat"
goto :creation

:create_Launchers
attrib +h "%GBG%\%ROMJ%"
%GBD%
cd "%GBC%"
SET MKEXE=
SET ROMIN=
for /f  "delims=" %%c in ('dir /b /a-h "%GBG%\%ROMJ%"') do (
SET ROMIN=%%c
)
if "%ROMIN%" NEQ "" SET SELECT=;SORT
if "%FIRSTRUN%"=="1" SET SELECT=
SET INDVALL=
"%GBC%\wbox.exe" "Create_Launchers" "^^#############^#ROM PROCESSING#^#############^^^          ########^          #Download#^          ########^^   Download roms with torrents or community lists.^^          ######^          #Sort#^          ######^^   Sorts roms in your RJ-Sort-Folder.^^          ######^          #Library#^          ######^^    Jacketize and configure your library, consoles and games.^^          #######^          #Utilities#^          #######^^   Transfer libraries, create executables, propagate settings and select archives to import.^^" "Download;Sort;Library;Utilities;MainMenu" /AL /DB=3
if %ERRORLEVEL%==1 goto :download
if %ERRORLEVEL%==2 goto :SORTOUT
if %ERRORLEVEL%==3 goto :indvcons
if %ERRORLEVEL%==4 goto :LIBRARYSELECTION
if %ERRORLEVEL%==5 goto :creation
goto :quitout

:download
call "%GBC%\getroms.bat"
goto :create_Launchers

:indvcons
CALL "%GBC%\indvCons.bat">"%GBC%\logs\indvCons.log"
goto :create_Launchers

:UPDATEROMS
SET UPDTROMS=1

:SORTOUT
CALL "%GBC%\delshort.bat"
del "%GBC%\copy.ini"
SET SORTON=1
CALL "%GBC%\Romulate.bat">"%GBC%\logs\Romulate.log"
start "" "%GBC%\wbusy.exe" "romulating" "Complete." /Stop /timeout:5
if "%ROMIN%"=="" goto :creation

"%GBC%\wbox.exe" "unsortedRom" "^^####################^          ROM SORTING^####################^^There are unsorted files in your RJ-Sort-Folder:^%Would you like to sort them manually?^" "Yes;MainMenu" /AL 
if %ERRORLEVEL%==1 goto :STRAGGLERS
if %ERRORLEVEL%==2 goto :creation
goto :creation

:STRAGGLERS
CALL "%GBC%\romSort.bat"
goto :creation

:LIBRARYSELECTION
"%GBC%\wbox.exe" "Utilities" "^^   [ARCHIVE]^Explodes an archive into the RJ-Sort-Folder.^^   [Folder]^Moves the contents of a folder into the RJ-Sort-Folder.^^   [Library]^Moves an existing library with many consoles into your library.^^   [Config]^Copies a configuration file to every game in a console directory.^^   [Executable]^Creates an executable for a rom" "Archive;Folder;Library;Config;Executable;MainMenu" /AL /DB=5 /BW=170
if %ERRORLEVEL%==1 goto :archivesel
if %ERRORLEVEL%==2 goto :libfoldersel
if %ERRORLEVEL%==3 goto :librarysel
if %ERRORLEVEL%==4 goto :emusel
if %ERRORLEVEL%==5 goto :exec
if %ERRORLEVEL%==6 goto :creation
goto :quitout

:exec
SET GLBLXE=
"%GBC%\wbox.exe" "Executable Type" "^^[Select]^     a game or a group of games for an emulator individually^^[Console]^      Choose a console's entire library to include in your executable^" "Select;Console" /AL /DB=1 /BW=170
if %ERRORLEVEL%==1 goto :MKIND
if %ERRORLEVEL%==2 goto :GETCONSOLE
goto :LIBRARYSELECTION

:GETCONSOLE
del /q "%GBC%\suprtd.ini"
set SUPRTD=
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
set CHKNAME=%%~a
call :TESTN
)
"%GBC%\Wselect.exe" "%GBC%\suprtd.ini" "Select A Library" "set LIBIT=$item" > "%GBC%\libit.cmd"
if %errorlevel%==0 exit /b
CALL "%GBC%\libit.cmd"
if "%LIBIT%"=="" exit /b
SET GLBLXE=1
call "%GBC%\mklib.bat"

exit /b

:TESTN
for /f "tokens=* delims= " %%a in ('type "%GBC%\conselect.set"') do (
if /i "%%~a"=="%CHKNAME%" echo.%%~a>>suprtd.ini
if /i "%%~a"=="%CHKNAME%" set SUPRTD=1
)
exit /b

:MKIND
call "%GBC%\mkexe.bat"
goto :creation

:emusel
del /q "%GBC%\conSelect.ini"
for /f "delims=" %%a in ('Wfile.exe "SET EMUCFGF=" "%GBG%\%GAM%\%CONS%\*.*" "Select a file" /noquote') do %%a
if "%EMUCFGF%"=="" goto :LIBRARYSELECTION
for %%a in ("%EMUCFGF%") do (
set EMUCFGN=%%~nxa
if "%%~xa"==".bat" SET ISBAT=1
)

:CONSELECTION
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo.%%~a>>"%GBC%\conSelect.ini"
"%GBC%\Wselect.exe" "%GBC%\conSelect.ini" "Select Console" "set CONAME=$item" > "%GBC%\coname.cmd"
if %errorlevel%==0 goto :LIBRARYSELECTION
CALL "%GBC%\coname.cmd"
if "%CONAME%"=="" goto :CONSELECTION
SET SUBDIR=
"%GBC%\Winput.exe" "set SUBDIR=$input" "enter subdirectory name">"%GBC%\subdirn.cmd"
call "%GBC%\subdirn.cmd"
if "%SUBDIR%"=="" goto :NOSUBDIR

:SUBDIR
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%EMUCFGF%"') do set CFGNM=%%~a
"%GBC%\wbox.exe" "confirm" "Copy ''%CFGNM%'' to every game\%SUBDIR% directory in ''%CONAME%''?" "Update;Overwrite;Cancel" /db=1
if %ERRORLEVEL%==1 goto :updatesub
if %ERRORLEVEL%==2 goto :copytosub
if %ERRORLEVEL%==3 goto :LIBRARYSELECTION
goto :LIBRARYSELECTION

:copytosub
start "" "%GBC%\wbusy.exe" "propagating" "copying ''%CFGNM%'' to game directories in ''%CONAME%''.^" /marquee
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CONAME%"') do copy /y "%EMUCFGF%" "%GBG%\%GAM%\%CONS%\%CONAME%\%%~a\%SUBDIR%"
start "" "%GBC%\wbusy.exe" "propagating" "Complete" /Stop /timeout:1
goto :LIBRARYSELECTION

:updatesub
start "" "%GBC%\wbusy.exe" "propagating" "copying ''%CFGNM%'' to game directories in ''%CONAME%''.^" /marquee
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CONAME%"') do if not exist ""%GBG%\%GAM%\%CONS%\%CONAME%\%%~a\%SUBDIR%\%EMUCFGN%" copy "%EMUCFGF%" "%GBG%\%GAM%\%CONS%\%CONAME%\%%~a\%SUBDIR%"
start "" "%GBC%\wbusy.exe" "propagating" "Complete" /Stop /timeout:1
goto :LIBRARYSELECTION


:NOSUBDIR
if "%ISBAT%" NEQ "1" goto :TOCOPY
SET BATOVER=1
:TOCOPY
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%EMUCFGF%"') do set CFGNM=%%~a
"%GBC%\wbox.exe" "confirm" "Copy ''%CFGNM%'' to every game directory in ''%CONAME%''?" "Update;Overwrite;Cancel" /db=1
if %ERRORLEVEL%==1 goto :updategamdir
if %ERRORLEVEL%==2 goto :copytogamdir
if %ERRORLEVEL%==3 goto :LIBRARYSELECTION
goto :LIBRARYSELECTION

:COPYNAME
"%GBC%\wbox.exe" "Batchnames" "##############^BATCH SCRIPT DETECTED^#############^Would you like to copy this file as the name of each folder?^ie: replace the launchers^or^Copy the file as it is named (copy as it is)" "FolderName;CopyAsIs" /DB=2
if %ERRORLEVEL%==1 goto :NAME
if %ERRORLEVEL%==2 goto :copying
goto :quitout

:NAME
set BATOVER=1
goto :copying



:copytogamdir
if "%ISBAT%"=="1" goto :COPYNAME
:copying
start "" "%GBC%\wbusy.exe" "propagating" "copying ''%CFGNM%'' to game\%SUBDIR% directories in ''%CONAME%''.^" /marquee
if "%BATOVER%"=="1" goto :FOREV
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CONAME%"') do copy /y "%EMUCFGF%" "%GBG%\%GAM%\%CONS%\%CONAME%\%%~a"
goto :PROPEND
:FOREV
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CONAME%"') do copy /y "%EMUCFGF%" "%GBG%\%GAM%\%CONS%\%CONAME%\%%~a\%%~a.bat"
:PROPEND
start "" "%GBC%\wbusy.exe" "propagating" "Complete" /Stop /timeout:1
goto :LIBRARYSELECTION


:COPYNAME1
"%GBC%\wbox.exe" "Batchnames" "##############^BATCH SCRIPT DETECTED^#############^Would you like to copy this file as the name of each folder?^ie: update the launchers^or^Copy the file as it is named (copy as it is)" "FolderName;CopyAsIs" /DB=2
if %ERRORLEVEL%==1 goto :NAME1
if %ERRORLEVEL%==2 goto :updating
goto :quitout

:NAME1
set BATOVER=1
goto :updating

:updategamdir
if "%ISBAT%"=="1" call :COPYNAME1
:updating
start "" "%GBC%\wbusy.exe" "propagating" "copying ''%CFGNM%'' to game\%SUBDIR% directories in ''%CONAME%''.^" /marquee
if "%BATOVER%"=="1" goto :FOREV1
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CONAME%"') do if not exist ""%GBG%\%GAM%\%CONS%\%CONAME%\%%~a\%EMUCFGN%" copy "%EMUCFGF%" "%GBG%\%GAM%\%CONS%\%CONAME%\%%~a"
goto :PROPEND1
:FOREV1
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%CONAME%"') do if not exist ""%GBG%\%GAM%\%CONS%\%CONAME%\%%~a\%EMUCFGN%" copy "%EMUCFGF%" "%GBG%\%GAM%\%CONS%\%CONAME%\%%~a\%%~a.bat"
:PROPEND1
start "" "%GBC%\wbusy.exe" "propagating" "Complete" /Stop /timeout:1
goto :LIBRARYSELECTION

:archivesel
for /f "delims=" %%a in ('Wfile.exe "SET ARCHV=" "%UserProfile%\Downloads\*.*" "Select an archive" /noquote') do %%a
IF "%ARCHV%"=="" (goto :LIBRARYSELECTION) ELSE (goto :archvn)

:archvn
for %%i in ("%ARCHV%") do (
if "%%~xi"==".zip" goto :uzpa
if "%%~xi"==".rar" goto :urar
if "%%~xi"==".7z" goto :u7z
)

"%GBC%\Wbox.exe" "nonefound" "Not a valid archive" "OK"  /TM=1
if %ERRORLEVEL%==1 goto :LIBRARYSELECTION

:uzpa
call "%GBC%\uzip.bat"
goto :LIBRARYSELECTION

:urar
call "%GBC%\urar.bat"
goto :LIBRARYSELECTION

:u7z
call "%GBC%\uzip.bat"
goto :LIBRARYSELECTION


:librarysel
for /f "delims=" %%a in ('Wfolder.exe "SET library=" "C:\" "Select a library to migrate" /noquote') do %%a
for %%A in ("%library:~0,2%") do set LIBRDIR=%%~A
if "%library%"=="" (goto :migcancel)
CALL "%GBC%\librename.bat"
goto :creation

:libfoldersel
for /f "delims=" %%a in ('Wfolder.exe "SET libsel=" "C:\" "Select an folder of roms to migrate" /noquote') do %%a
for %%A in ("%libsel:~0,2%") do set ROMTDIR=%%~A
if "%libsel%"=="" (goto :migcancel) ELSE (goto :migration)

:migration
start "" "%GBC%\wbusy.exe" "migratinglib" "Migrating the folder to your rom-jacket.^" /marquee

call "%GBC%\migrate.bat"

start "" "%GBC%\wbusy.exe" "migratinglib" "Complete^Your library is ready to be romulated." /Stop /timeout:1
:migcancel
goto :creation
 
:BIOS
CALL "%GBC%\BiosSelection.bat"
del /s /q "%GBC%\net\BIOS\biosSort.bat"
goto :creation

:bios_sel
CALL "%GBC%\BiosSelection.bat"
del /s /q "%GBC%\net\BIOS\biosSort.bat"
goto :creation

:cleanup
cmd /c start "" "%GBC%\Wbusy.exe" "Cleansup" "Cleaning up"  /marquee
CALL "%GBC%\cleanup.bat"
CALL "%GBC%\deleteEmpty.bat"
cmd /c start "" "%GBC%\Wbusy.exe" "Cleansup" "Complete." /Stop /timeout:1
copy /Y "%GBC%\deleteEmpty.bat" "%GBG%\%GAM%\%CONS%"
pushd "%GBG%\%GAM%\%CONS%"
CALL "%GBC%\deleteEmpty.bat"
popd
del /q "%GBG%\%GAM%\%CONS%\deleteEmpty.bat"
if "%JOY2KEY%"=="DISABLED" (goto :cleanup)
"%GBC%\wbox.exe" "Joy2Key" "^^Would you like to create JoyToKey profiles for your games?^^#note: Two Joy2Key profiles will be created for *every* game.^^" "Yes;MainMenu" /AL 
if %ERRORLEVEL%==1 (goto :copy_J2K_injections)
if %ERRORLEVEL%==2 (goto :creation)
goto :creation

:copy_J2K_injections
cmd /c start "" "%GBC%\Wbusy.exe" "Cleandup" "Cleaning up"  /marquee
CALL "%GBC%\cleanup.bat"
CALL "%GBC%\deleteEmpty.bat"
cmd /c start "" "%GBC%\Wbusy.exe" "Cleandup" "Complete." /Stop /timeout:1
cmd /c start "" "%GBC%\Wbusy.exe" "J2KProfiles" "Installing JoyToKey Profiles"  /marquee
CALL "%GBC%\generateJoyToKeyProfiles.bat"
if "%J2Kskp%"=="0" CALL "%GBC%\customGenerateJoyToKeyProfiles.bat"
cmd /c start "" "%GBC%\Wbusy.exe" "J2KProfiles" "Complete." /Stop /timeout:1
%GBD%
"%GBC%\wbox.exe" "cleanedup" "^^JoyToKey profiles have been created for your games.^^" "Thanks" /AL  /TM=5
if %ERRORLEVEL%==1 (goto :cleanup)

:EnableJoyToKey
set JOY2KEY=

:setup_J2KDir
if "%JOY2KEY%"=="DISABLED" goto :setup_continue
if exist "%PRGX%\JoyToKey\JoyToKey.exe" goto :J2KDefDir
goto :locate_J2K

:J2KDefDir
for %%A in ("%PRGX%\JoyToKey\JoyToKey.exe") do set JOY2KEY=%%~A
CALL :MARKJ2K1
set XPADDER=DISABLED
CALL :MARKXPD0
call "%GBC%\setlocset.bat"
goto :setup_continue

:locate_J2K
"%GBC%\wbox.exe" "locatedt" "^^Locate the JoyToKey application.^^" "Okay;Cancel" /DB=2 /BW=150 /TM=3
if %ERRORLEVEL%==1 goto :selectJ2K
if %ERRORLEVEL%==1 goto :setnoJ2K
goto :setnoJ2K

:selectJ2K
for /f "delims=" %%a in ('Wfile.exe "SET JOY2KEY=" "%PRGX%\JoyToKey\*.exe" "Where is the JoyToKey application?" /noquote') do %%a
if "%JOY2KEY%"=="[J2K]" goto :inst_J2K
if "%JOY2KEY%"=="" (goto :inst_J2K)
goto :setup_continue

:test_J2K
if "%JOY2KEY%"=="" goto :inst_J2K

:inst_J2K
goto :getJoyToKey

:no_JoyToKey
SET J2K=0
set JOY2KEY=DISABLED
CALL :MARKJ2K0
call "%GBC%\setlocset.bat"

"%GBC%\wbox.exe" "J2Kinfo" "^^JoyToKey was not found.^^" "Download;Okay" /DB=2 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :getJoyToKey
if %ERRORLEVEL%==2 goto :setnoJ2K
goto :quitout

:setnoJ2K
SET JOY2KEY=DISABLED
CALL :MARKJ2K0
if "%INITAL%"=="1" goto :setup_continue
goto :CONFIGURE

:getJoyToKey
if "%JOY2KEY%"=="DISABLED" goto :locate_J2K
SET J2KX=%JOY2KEY:~0,-13%

SET urlNthL=47
SET /A urlNthL -= 1
CALL :J2KCFG2_LGrab
GOTO :J2KCFGAUTO

:J2KCFG2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET J2KCFGURL=%%A
GOTO :EOF
)

:J2KCFGAUTO
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%JOY2K%" "%MIR1%/%J2KCFGURL%" "%MIR2%/%J2KCFGURL%" "%MIR3%/%J2KCFGURL%" "%MIR4%/%J2KCFGURL%" "%MIR5%/%J2KCFGURL%"
for %%A in ("%GBC%\net\%JOY2K%\*.zip") do set J2KCFGXE=%%~A
for /f "delims=" %%a in ('dir /b "%J2KCFGXE%"') do set J2KCFGFILE=%%~nxa
for /f "delims=" %%a in ('dir /b "%J2KCFGXE%"') do set _J2KDIRtmp=%%~na
if not exist "%GBC%\net\%JOY2K%\%J2KCFGFILE%" goto :no_JoyToKey
goto :continue_JoyToKey


:JOY2K2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET JOY2KURL=%%A
)

:JOY2KAUTO
for %%A in ("%GBC%\net\%JOY2K%\*.zip") do set JOY2KXE=%%~A
for /f "delims=" %%a in ('dir /b "%JOY2KXE%"') do set _J2KDIRtmp=%%~na
for /f "delims=" %%a in ('dir /b "%JOY2KXE%"') do set JOY2KFILE=%%~nxa
if "%JOY2KFILE%"=="" (goto :no_JoyToKey) ELSE (goto :continue_JoyToKey)


:checkdefaultJoyToKey
if exist "%PRGX%\JoyToKey\JoyToKey.exe" goto :J2KDefDir
goto :locate_J2K

:continue_JoyToKey
for /f "delims=" %%a in ('Wfolder.exe "SET _J2Ktmp=" "%GBE%\%EMUZ%" "Install JoyToKey to:?  eg:''%GBE%\%EMUZ%''" /noquote') do %%a
for %%A in ("%_J2Ktmp:*:=%") do set j2kdrv-ltr=%%~A
for %%A in ("%_J2Ktmp:~0,2%\") do set J2KDIR=%%~A
if "%_J2Ktmp%"=="" goto :no_JoyToKey
goto :j2kdrvltr

:j2kdrvltr
for %%A in ("%_J2Ktmp%") do set JBE=%%~A
if "%j2kdrv-ltr%"=="\" set JBE=%_J2Ktmp:~0,2%
"%SEVENZIP%" x -y "%GBC%\net\%JOY2K%\%JOY2KFILE%" -o"%JBE%"
move /Y "%JBE%\%_J2KDIRtmp%" "%JBE%\%JOY2K%"
for %%A in ("%JBE%\%JOY2K%\JoyToKey.exe") do set JOY2KEY=%%~A
"%GBC%\wbox.exe" "confirm" "^JoyToKey has been installed to^%JBE%\%JOY2K%\JoyToKey.exe^" "Thanks!" /TM=5
CALL :MARKJ2K1
call "%GBC%\setlocset.bat"
if %ERRORLEVEL%==1 (goto :setup_continue)

:no_J2KProfiles
"%GBC%\wbox.exe" "not_found" "^^JoyToKey Profiles not found. Are you connected to the internet?^^"  "Download;MainMenu"  /BW=150 /TM=5
if %ERRORLEVEL%==1 goto :extracting_J2KProfiles
if %ERRORLEVEL%==2 goto :creation

:extract_joytokey
SET J2KUPDT=;Overwrite
if "%JOY2KEY%"=="DISABLED" (set J2KT=Enable) ELSE (set J2KT=Disable)
if "%JOY2KEY%"=="DISABLED" SET J2KUPDT=
"%GBC%\wbox.exe" "create_JoyToKey" "^^##########^JoyToKey Menu^##########^^  Initialize^     Create the default RoM-Jacket profiles for your front-ends.^^  Re/Configure JoyToKey.^     Create and update profiles for all your games.^^   Toggle^     Enable or disable JoyToKey profiles in your game configurations.^'you must reprocess your roms after toggling'^^Overwrite^Recreate all JoyToKey profiles for your games.^^" "Initialize;Re/Configure;%J2KT%;MainMenu%UPUPDT%" 
if %ERRORLEVEL%==1 goto :getJoyToKey
if %ERRORLEVEL%==2 goto :extracting_J2KProfiles
if %ERRORLEVEL%==3 goto :%J2KT%JoyToKey
if %ERRORLEVEL%==4 goto :creation
if %ERRORLEVEL%==5 goto :overwriteJ2K
goto :quitout

:extracting_J2KProfiles
if "%JOY2KEY%"=="DISABLED" goto :locate_J2K
%GBD%
cd "%GBC%"
CALL "%GBC%\getJ2KProf.bat"
if "%JOY2KEY%"=="DISABLED" goto :checkdefaultJoyToKey
if not exist "%GBC%\net\%JOY2K%\%JOY2KFILE%" (goto :no_J2KProfiles)
goto :JOY2K_injection

:overwriteJ2K
del /s /q "%GBG%\%GAM%\%CONS%\*.cfg"
CALL "%GBC%\getJ2KProf.bat"
if not exist "%GBC%\net\%JOY2K%\%JOY2KFILE%" (goto :no_J2KProfiles)
goto :JOY2K_injection

:DisableJoyToKey
set JOY2KEY=DISABLED
CALL :MARKJ2K0
call "%GBC%\setlocset.bat"
"%GBC%\wbox.exe" "disabled" "JoyToKey will not be configured" "Okay"  /BW=150 /TM=2
if %ERRORLEVEL%==1 goto :CONFIGURE
goto :quitout

:JOY2K_injection
%GBD%
cd "%GBC%"
cmd /c start "" "%GBC%\Wbusy.exe" "J2Kprf" "Installing JoyToKey Profiles"  /marquee
CALL "%GBC%\deleteEmpty.bat"
CALL "%GBC%\generateJoyToKeyProfiles.bat"
CALL "%GBC%\customGenerateJoyToKeyProfiles.bat"
SET J2Kskp=
"%GBC%\Wbusy.exe" "J2Kprf" "Complete." /Stop /timeout:1

%GBD%
"%GBC%\wbox.exe" "injected" "^^JoyToKey Profiles have been installed.^^" "Thanks!"  /BW=150 /TM=5
if %ERRORLEVEL%==1 goto :CONFIGURE
:MEDCENTERCHK
call "%GBC%\metacheck.bat"
SET HLPHNT=
if "%VDWN%" NEQ "0 VIDEOS in cache" SET HLPHNT=The ''MetaData'' menu allows you to download video previews for each console.
if "%BDWN%" NEQ "BACKDROPS DOWNLOADED" SET HLPHNT=Use the ''MetaData'' option to get artwork for your frontends.
if "%WDWN%" NEQ "BANNERS DOWNLOADED" SET HLPHNT=Use the ''MetaData'' option to get artwork for your frontends.
if "%IDWN%" NEQ "ICONS DOWNLOADED" SET HLPHNT=Use the ''MetaData'' option to get artwork for your frontends.
"%GBC%\wbox.exe" "MediaCenter Check" "^########################^HTPC CONFIG^########################^%BDWN%^%VDWN%^%IDWN%^%WDWN%^######################################^%HLPHNT%^####################################^^############################################^Choose a Media-Center Application to Configure^^[Mediabrowser]^Mediabrowser and Gamebrowser^^[XBMC]^Rom Collection Browser and Advanced Launcher^^[Cabrio-FE]^for slower machines and/or with a small number of games (less than 1000)^^[OblyTile]^Configure OblyTile (windows 8 only)^^[Hyperspin]^Configure Hyperspin, Migrate Hyperspin Boxart, Banners and Video^^[Metadata]^Download and install console images and backdrops for your frontend/s^" "Media Browser;XBMC;Cabrio;OblyTile;Hyperspin;MetaData;MainMenu" 
if %ERRORLEVEL%==1 goto :GAMEBROWSER
if %ERRORLEVEL%==2 goto :XBMC
if %ERRORLEVEL%==3 goto :CABRIO
if %ERRORLEVEL%==4 goto :OBLYTILE
if %ERRORLEVEL%==5 goto :HYPERSPIN
if %ERRORLEVEL%==6 goto :METADATA
if %ERRORLEVEL%==7 goto :creation
goto :quitout

:OBLYTILE
call "%GBC%\oblytile.bat"
goto :creation

:HYPERSPIN
CALL "%GBC%\HyperTrans.bat"
goto :creation

:CABRIO
CALL "%GBC%\cabrio.bat"
goto :creation

:GAMEBROWSER
CALL "%GBC%\gamebrowser.bat"
goto :creation

:METADATA
CALL "%GBC%\meta.bat"
goto :creation

:XBMC
CALL "%GBC%\xbmc.bat"
goto :creation

:HYPS
call "%GBC%\hyps.bat"  
goto :creation

:GAMEX
call "%GBC%\gamex.bat"  
goto :creation

:MAXARC
call "%GBC%\maxarc.bat"  
goto :creation

:inst_Xpad
goto :continue_Xpadder

:no_Xpadder
SET GBX=0
set XPADDER=DISABLED
CALL :MARKXPD0
call "%GBC%\setlocset.bat"

"%GBC%\wbox.exe" "xpadinfo" "^^Xpadder was not found.^^" "Download;Okay" /DB=2 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :getXapp
if %ERRORLEVEL%==2 goto :setnoXpd
goto :quitout

:getXapp
call "%GBC%\getXpadapp.bat"
goto :extract_xpadder

:setnoXpd
set XPADDER=DISABLED
CALL :MARKXPD0
REM if "%INITAL%"=="1" goto :setup_J2KDir
if "%INITAL%"=="1" goto :setup_continue
goto :CONFIGURE

:getXpadder
for %%A in ("%GBC%\net\%XPADR%\%XPADR%.7z") do set XPDCFGXE=%%~A
for /f "delims=" %%a in ('dir /b "%XPDCFGXE%"') do set XPDCFGFILE=%%~nxa
"%SEVENZIP%" x -y "%GBC%\net\%XPADR%\%XPDCFGFILE%" -o"%XPDX%"
set XPDINIT=1
if "%XPADDER%"=="DISABLED" goto :locate_xpd
for %%A in ("%XPADDER:~0,-12%") do set XPDX=%%~A
goto :extract_xpadder

:initXpadder
set XPDEF=
set XPDEMU=
set XPDBLNK=
"%GBC%\wbox.exe" "XpadType" "^### XPADDER PROFILES ###^^Default-^   Default Xpadder profiles include default keyboard mappings.^^Blank-^   Blank profiles contain no mappings.^^Emu-^   Emulator functionality only is mapped.^" "Default;Blank;Emu;Menu;Help" /DB=1
if %ERRORLEVEL%==1 goto :defXpadder
if %ERRORLEVEL%==2 goto :blnkXpadder
if %ERRORLEVEL%==3 goto :emuXpadder
if %ERRORLEVEL%==4 goto :extract_xpadder
if %ERRORLEVEL%==5 goto :xhelp
goto :extract_xpadder

:xhelp
"%GBC%\docs\select.html"
wbox "opening" "Help is opening" "OK" /TM=2
if %ERRORLEVEL%==1 goto :initXpadder
goto :initXpadder

:defXpadder
set XPDBLNK=
set XPDEMU=
set XPDINIT=1
if "%XPADDER%"=="DISABLED" goto :locate_xpd
set XPDEF=1
goto :extract_xpadder

:blnkXpadder
SET XPDEF=
SET XPDEMU=
set XPDINIT=1
if "%XPADDER%"=="DISABLED" goto :locate_xpd
set XPDBLNK=1
goto :extract_xpadder

:emuXpadder
SET XPDEF=
SET XPDBLNK=
set XPDINIT=1
if "%XPADDER%"=="DISABLED" goto :locate_xpd
set XPDEMU=1
goto :extract_xpadder

:checkdefaultXpadder
if exist "%PRGX%\Xpadder\Xpadder.exe" goto :xpadDefDir
goto :locate_xpd

:continue_Xpadder
for /f "delims=" %%a in ('Wfolder.exe "SET _xpdtmp=" "%GBE%\%EMUZ%" "Install Xpadder Configs to:?  eg:''%GBE%\%EMUZ%''" /noquote') do %%a
set xpddrv-ltr=%_xpdtmp:*:=%
for %%A in ("%_xpdtmp:~0,2%\") do set XPDDIR=%%~A
if "%_xpdtmp%"=="" goto :no_Xpadder
goto :xpddrvltr

:xpddrvltr
for %%A in ("%_xpdtmp%") do set XBE=%%~A
if "%xpddrv-ltr%"=="\" do set XBE=%_xpdtmp:~0,2%
if "%XPADRFILE%" neq "" "%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XPADRFILE%" -o"%XBE%\%XPADR%"
CALL :MARKXPD1
call "%GBC%\setlocset.bat"
goto :xpadder_confirm

:xpadder_confirm
for %%A in ("Xpadder is Enabled^") do set MARKXPD=%%~A
"%GBC%\wbox.exe" "confirm" "^Xpadder configurations have been installed" "Thanks!"  /TM=5
if %ERRORLEVEL%==1 goto :setnoJ2K
goto :setnoJ2K

:extract_xpadder
SET XPUPDT=;Overwrite
if "%XPADDER%"=="DISABLED" (set XPDT=Enable) ELSE (set XPDT=Disable)
if "%XPADDER%"=="DISABLED" SET XPUPDT=
"%GBC%\wbox.exe" "create_Xpadder" "^^##########^Xpadder Menu^##########^^  Install^    Download and Install Xpadder to a location of your choice.^^  Initialize^     Create Xpadder profiles for your front-ends.^^  Re/Configure^     Create and update profiles for a Console.^^   Toggle^     Globally enable or disable Xpadder profiles in your game configurations.^'you must reprocess your roms after toggling'^^" "Install;Initialize;Re/Configure;%XPDT%;MainMenu"
if %ERRORLEVEL%==1 goto :instXpadder
if %ERRORLEVEL%==2 goto :initXpadder
if %ERRORLEVEL%==3 goto :extracting_profiles
if %ERRORLEVEL%==4 goto :%XPDT%Xpadder
if %ERRORLEVEL%==5 goto :creation
goto :creation

:instXpadder
call "%GBC%\getXpadapp.bat"
if "%XPADDER%"=="[XPD]" goto :setnoXpd
if "%XPADDER%"=="" goto :setnoXpd
if "%XPADDER%" NEQ "[XPD]" SET JOY2KEY=DISABLED
for %%A in ("%XPADDER%") do set XPATHT=%%~dpA
for %%A in ("%XPATHT:~0,-1%") do set XPATH=%%~A
if exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.bak"
if not exist "%XPATH%\Xpadder.ini.orig" move /y "%XPATH%\Xpadder.ini" "%XPATH%\Xpadder.ini.orig"
"%SEVENZIP%" x -y "%GBC%\net\%XCONF%\%XCONF%.7z" -o"%XPATH%"
CALL :MARKXPD1
CALL :MARKJ2K0
call "%GBC%\setlocset.bat"
goto :extract_xpadder

:extracting_profiles
if "%XPADDER%"=="DISABLED" goto :locate_xpd
if "%XPADDER%"=="[XPD]" (goto :checkdefaultXpadder)
del /q "%GBC%\conex.ini"
echo.-------->"%GBC%\conex.ini"
echo.ALL CONSOLES>>"%GBC%\conex.ini"
echo.-------->>"%GBC%\conex.ini"
for /f "tokens=* delims= "  %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo %%~a>>"%GBC%\conex.ini"
"%GBC%\Wselect.exe" "%GBC%\conex.ini" "Select Console for Xpadder Profiles?" "set XPDSEL=$item" > "%GBC%\conex.cmd"
if %errorlevel%==0 goto :extract_xpadder
CALL "%GBC%\conex.cmd"
if "%XPDSEL%"=="--------" goto :extracting_profiles
if "%XPDSEL%"=="ALL CONSOLES" goto :EXTRACTALL
SET XPDXST=
for /f "tokens=* delims= " %%a in ('type "%GBC%\conSelect.set"') do (
SET XPDNAM=%%~a
call :XPDCHK
)
if "%XPDXST%"=="" goto :EXTRACTOTHER
goto :EXTRACTIT

:XPDCHK
if "%XPDSEL%"=="%XPDNAM%" SET XPDXST=1
exit /b

:EXTRACTOTHER
cmd /c start "" "%GBC%\Wbusy.exe" "xpdprf" "Installing Other Xpadder Profiles"  /marquee
"%SEVENZIP%" e -y "%GBC%\net\%XPROF%\%XPROF%.zip" -o"%GBG%\%GAM%\%CONS%\%XPDSEL%" "Other\Player1.xpadderprofile" "Other\Player2.xpadderprofile"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%XPDSEL%"') do copy /y "%GBG%\%GAM%\%CONS%\%XPDSEL%\Player*.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPDSEL%\%%~a"
del /q "%GBG%\%GAM%\%CONS%\%XPDSEL%\Player*.xpadderprofile"
"%GBC%\Wbusy.exe" "xpdprf" "Complete." /Stop /timeout:1
if %ERRORLEVEL%==1 goto :extracting_profiles
goto :extracting_profiles

:EXTRACTIT
cmd /c start "" "%GBC%\Wbusy.exe" "xpdprf" "Installing %XPDNAM% Xpadder Profiles"  /marquee
"%SEVENZIP%" e -y "%GBC%\net\%XPROF%\%XPROF%.zip" -o"%GBG%\%GAM%\%CONS%\%XPDNAM%" "%XPDNAM%\Player1.xpadderprofile" "%XPDNAM%\Player2.xpadderprofile"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%XPDNAM%"') do copy /y "%GBG%\%GAM%\%CONS%\%XPDNAM%\Player*.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPDNAM%\%%~a"
"%GBC%\Wbusy.exe" "xpdprf" "Complete." /Stop /timeout:1
if %ERRORLEVEL%==1 goto :extracting_profiles
goto :extracting_profiles

:EXTRACTALL
cmd /c start "" "%GBC%\Wbusy.exe" "xpdprf" "Installing ALL Xpadder Profiles"  /marquee
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
SET XPDONE=
SET XPDSEL=%%~a
call :GETNAME
if "%XPDONE%" NEQ "1" CALL :EXTRACTOXPD
)
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do del /q "%GBG%\%GAM%\%CONS%\%%~a\Player*.xpadderprofile"
"%GBC%\Wbusy.exe" "xpdprf" "Complete." /Stop /timeout:1
goto :extract_xpadder

:GETNAME
for /f "tokens=* delims= " %%a in ('type "%GBC%\conSelect.set"') do (
SET XPDNAM=%%~a
if "%XPDSEL%"=="%%~a" CALL :EXTRACTXPD
)
exit /b

:EXTRACTXPD
"%SEVENZIP%" e -y "%GBC%\net\%XPROF%\%XPROF%.zip" -o"%GBG%\%GAM%\%CONS%\%XPDNAM%" "%XPDNAM%\Player1.xpadderprofile" "%XPDNAM%\Player2.xpadderprofile"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%XPDNAM%"') do copy /y "%GBG%\%GAM%\%CONS%\%XPDNAM%\Player*.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPDNAM%\%%~a"
SET XPDONE=1
exit /b

:EXTRACTOXPD
"%SEVENZIP%" e -y "%GBC%\net\%XPROF%\%XPROF%.zip" -o"%GBG%\%GAM%\%CONS%\%XPDSEL%" "Other\Player1.xpadderprofile" "Other\Player2.xpadderprofile"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%XPDSEL%"') do (
copy /y "%GBG%\%GAM%\%CONS%\%XPDSEL%\Player*.xpadderprofile" "%GBG%\%GAM%\%CONS%\%XPDSEL%\%%~a"
)
exit /b


:overwritexpd
if "%XPADDER%"=="DISABLED" goto :locate_xpd
if "%XPADDER%"=="[XPD]" (goto :checkdefaultXpadder)
del /s /q "%GBG%\%GAM%\%CONS%\*.xpadderprofile"
goto :xpad_injection

:DisableXpadder
set XPADDER=DISABLED
CALL :MARKXPD0
call "%GBC%\setlocset.bat"
"%GBC%\wbox.exe" "disabled" "Xpadder will not be configured" "Okay"  /BW=150 /TM=2
if %ERRORLEVEL%==1 goto :CONFIGURE
goto :quitout

:xpad_injection
%GBD%
cd "%GBC%"
cmd /c start "" "%GBC%\Wbusy.exe" "xpdprf" "Installing Xpadder Profiles"  /marquee
CALL "%GBC%\deleteEmpty.bat"
"%GBC%\Wbusy.exe" "xpdprf" "..." /Stop /timeout:1
CALL "%GBC%\generateXpadderProfiles.bat"
cmd /c start "" "%GBC%\Wbusy.exe" "xpdprf" "Installing Xpadder Profiles"  /marquee
CALL "%GBC%\customGenerateXpadderProfiles.bat"
SET xpdskp=
"%GBC%\Wbusy.exe" "xpdprf" "Complete." /Stop /timeout:1
%GBD%
"%GBC%\wbox.exe" "injected" "^^Xpadder Profiles have been installed.^^" "Thanks!"  /BW=150 /TM=5
if %ERRORLEVEL%==1 goto :CONFIGURE

:DAMTG
if "%DAMVAR%"=="DISABLED" (set DAMTG=Enable) ELSE (set DAMTG=Disable)
"%GBC%\wbox.exe" "toggledt" "would you like to %DAMTG% Daemontools?" "Install;%DAMTG%;MainMenu" /DB=2 
if %ERRORLEVEL%==1 goto :locate_dt
if %ERRORLEVEL%==2 goto :%DAMTG%_daemontools
if %ERRORLEVEL%==3 goto :CONFIGURE
goto :quitout

:Eno_daemonT
"%GBC%\Wbusy.exe" "InstallingDT" "DaemonTools installer has not been found" /Stop /timeout:1

:no_daemonT
"%GBC%\wbox.exe" "dtinfo" "^^DeaemonTools will not be configured.^^" "Download;Okay" /DB=2 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :continue_DaemonT
if %ERRORLEVEL%==2 goto :setnoDT
goto :quitout

:Disable_daemontools
:setnoDT
set GBT=0
set DAMVAR=DISABLED
CALL :MARKDMT0
call "%GBC%\setlocset.bat"
if "%INITAL%"=="1" goto :setup_xpadDir
goto :CONFIGURE

:Enable_daemontools
:setnoDT
set GBT=1
set DAMVAR=
goto :setup_daemT

:continue_DaemonT
%GBD%
cd "%GBC%"
start "" "%GBC%\Wbusy.exe" "InstallingDT" "Downloading Daemon Tools"  /marquee
CALL "%GBC%\getDaemT.bat"
if "%DAEMNTFILE%"=="" goto :Eno_daemonT
goto :installing_DaemonT

:installing_DaemonT
"%GBC%\Wbusy.exe" "InstallingDT" "Downloaded" /Stop /timeout:1
for %%A in ("%GBC%\net\%DAEMNT%\*.*") do set DAEMNTXE=%%~A
for /f "delims=" %%a in ('dir /b "%DAEMNTXE%"') do set DAEMNTFILE=%%~nxa
"%GBC%\wbox.exe" "installdto" "^^Choose the location you wish to install Daemon Tools to.^^eg: %PRGF% ^^^Be Patient. A confirmation dialoge box will appear after Daemon Tools has been installed.^^" "Okay" /BW=245  /TM=5
if %ERRORLEVEL%==1 (goto :selectdto)

:selectdto
for /f "delims=" %%a in ('Wfolder.exe "SET _damtmp=" "%PRGX%" "Install DaemonTools to:?  eg:''%PRGX%''" /noquote') do %%a
start "" "%GBC%\Wbusy.exe" "InstallingDT" "Installing Daemon Tools"  /marquee
start /w "" "%GBC%\net\%DAEMNT%\%DAEMNTFILE%" /S /nogadget /notoolbar /sptd /D="%_damtmp%"
for %%A in ("%_damtmp%\Daemon Tools Lite\DTLite.exe") do set DAMVAR=%%~A
CALL :MARKDMT1
call "%GBC%\setlocset.bat"
"%GBC%\Wbusy.exe" "InstallingDT" "Daemon Tools has been installed to^%DAMVAR%\Daemon Tools Lite\Dlite.exe" /Stop /timeout:1
goto :setup_xpadDir

:inst_daemonT
if "%DAMVAR%"=="DISABLED" goto :setup_xpadDir
"%GBC%\wbox.exe" "inst_daemonT" "Would you like to install daemonTools?" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :continue_DaemonT
if %ERRORLEVEL%==2 goto :no_daemonT
goto :quitout

:manualgetall
CALL "%GBC%\getEmulatorsManual.bat"
goto :creation

:depends
CALL "%GBC%\Dependencies.bat"
goto :creation

:autogetall
:get_all_begin
CALL "%GBC%\getEmulatorsAUTO.bat"
CALL "%GBC%\LibraryCheck.bat"
goto :creation

:RESET
%GBD%
cd "%GBC%"
"%GBC%\wbox.exe" "reset" "^#########################^RESET^#########################^^Emulators:^   Reset Emulator Configurations in the Emulator Directories^Games:^   Delete Game Configurations for ALL your games.^ROMJACKET:^   Reset RoM-Jacket.^Cache:^   Delete all downloaded content.^^" "Emulators;Games;ROMJACKET;MainMenu" /AL /DB=3 /BW=120 
if %ERRORLEVEL%==1 goto :deleteEmuz
if %ERRORLEVEL%==2 goto :deleteGamz
if %ERRORLEVEL%==3 goto :deleteSettings
if %ERRORLEVEL%==4 goto :creation
goto :quitout

:deleteSettings
CALL "%GBC%\INTL.bat"
goto :newUsers

:deleteEmuz
start "" "%GBC%\Wbusy.exe" "deletingsettings" "Deleting Emulator Settings"  /marquee
for /f "tokens=* delims= " %%a in ('dir /b/ad "%GBE%\%EMUZ%"') do (
pushd "%%~a"
del /s /q "*.ini"
del /s /q "*.cfg"
del /s /q "*.conf"
del /s /q "*.settings"
del /s /q "*.properties"
popd
)
start "" "%GBC%\Wbusy.exe" "deletingsettings" "Settings Deleted" /Stop /timeout:1
goto :RESET

:deleteGamz
CALL "%GBC%\delRomJCfg.bat"
goto :RESET

:quitout
exit

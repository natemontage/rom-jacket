SET EMUNOTHERE=
if "%MKEXE%"=="1" goto :AUTOINSTALL

"%GBC%\wbox.exe" "noemu" "It appears you have games which are missing their default-associated emulators^Proper functionality for consoles may require that you process them after the emulator and bios files have been installed.^^Would you like to select and install the missing emulators?" "Okay;No" /DB=1
if %ERRORLEVEL%==1 goto :missingemu
if %ERRORLEVEL%==1 goto :EOF
goto :EOF

:AUTOINSTALL
call :wget_%CEMU%
if "%EMUNOTHERE%" NEQ "1" start "" "%GBC%\Wbusy.exe" "InstEmu" "%CEMU% Installed." /Stop /sound /timeout:1
exit /b

:RECHECK
start "" "%GBC%\Wbusy.exe" "InstEmu" "Complete." /Stop /sound /timeout:1
:SETINSTBEGIN
SET INSTBEGIN=1
CALL "%GBC%\emulatorcheck.bat"
for %%R in ("%GBC%\toInstall.ini") do if %%~zR leq 29 goto :EOF
goto :missingemu

:NOEMU
start "" "%GBC%\Wbusy.exe" "InstEmu" "%MISAUTO% Not Found." /Stop /sound /timeout:1

:missingemu
CALL "%GBC%\mkemudirs.bat"
"%GBC%\Wselect.exe" "%GBC%\toInstall.ini" "Select An Emulator to install" "set MISAUTO=$item" > "%GBC%\missingemu.cmd"
if %errorlevel%==0 GOTO :get_complete
CALL "%GBC%\missingemu.cmd"
if "%MISAUTO%"=="----------" goto :missingemu
set CEMU=%MISAUTO%
SET MISSINGAUTO=1
SET EMUNOTHERE=
if "%MISAUTO%"=="ALL" goto :InstallAll
if %MISSINGAUTO%==1 CALL :wget_%MISAUTO%
if "%EMUNOTHERE%"=="1" goto :NOEMU
if "%EMUNOTHERE%"=="" exit /b

:InstallAll
for /f "tokens=* delims= " %%a in ('type "%GBC%\toInstall.ini"') do (
set CEMU=%%~a
call :wget_%%~a
)
del /q "%GBC%\toInstall.ini"
goto :INSTCOMPLETE

:wget_BatchScriptLauncher
exit /b
:wget_----------
exit /b
:wget_ALL
exit /b
:wget_Fusion
SET EMUNUM=1
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_Raine
SET EMUNUM=77
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_FinalBurnAlpha
SET EMUNUM=65
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
mkdir "%GBE%\%EMUZ%\%FBA%\config"
mkdir "%GBE%\%EMUZ%\%FBA%\config\games"
exit /b
:wget_WCDI
SET EMUNUM=14
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_Mess
SET EMUNUM=86
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
mkdir "%GBE%\%EMUZ%\%MESS%\Roms"
rename "%GBE%\%EMUZ%\%MESS%\Mess%ARPOP%.exe" "%MESS%.exe"
exit /b
:wget_hatari
SET EMUNUM=87
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_XM7
SET EMUNUM=88
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_OpenMSX
SET EMUNUM=25
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_X1turbo
SET EMUNUM=99
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%XTURB%" "%XTURB%\X1.exe"
exit /b
:wget_Ootake
SET EMUNUM=3
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_m88
SET EMUNUM=100
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_ProjectTempest
SET EMUNUM=4
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%PTMPS%" "%PTMPS%\PTLauncher.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%PTMPS%" "%PTMPS%\PTCDWrapper.exe"
exit /b
:wget_ZXSpin
SET EMUNUM=31
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_psx
SET EMUNUM=37
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_ParaJVE
SET EMUNUM=32
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_ePSXe
SET EMUNUM=5
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
SET CEMU=zlib
SET EMUNUM=71
call "%GBC%\getemu.bat"
"%SEVENZIP%" x -y "%GBC%\net\%CEMU%\%CEMU%.7z" -o"%GBE%\%EMUZ%\%EXPSXE%"
SET CEMU=shaderplugin
SET EMUNUM=75
call "%GBC%\getemu.bat"
"%SEVENZIP%" x -y "%GBC%\net\%CEMU%\%CEMU%.7z" -o"%GBE%\%EMUZ%\%EXPSXE%\plugins"
SET CEMU=soundplugin
SET EMUNUM=74
call "%GBC%\getemu.bat"
"%SEVENZIP%" x -y "%GBC%\net\%CEMU%\%CEMU%.7z" -o"%GBE%\%EMUZ%\%EXPSXE%\plugins"
exit /b
:wget_Nostalgia
SET EMUNUM=42
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_VirtualColeco
SET EMUNUM=8
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_Bliss
SET EMUNUM=30
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_Ootake
SET EMUNUM=3
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_Raine
SET EMUNUM=77
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_Anex86
SET EMUNUM=40
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_3DOPlay
SET EMUNUM=6
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_NeoRaine
SET EMUNUM=98
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
rename "%GBE%\%EMUZ%\%NEORAINE%\%NEORAINE%32.exe" "%NEORAINE%.exe"
exit /b
:wget_OPENAL
SET EMUNUM=4
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_DOSBox
SET EMUNUM=7
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_Anex
SET EMUNUM=40
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_VirtualColeco
SET EMUNUM=8
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_WinArcadia
SET EMUNUM=84
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_VirtualJaguar
SET EMUNUM=82
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%VJAG%" "%VJAG%\vjag.exe"
exit /b
:wget_VirtuaNes
SET EMUNUM=64
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_SNESGT
SET EMUNUM=50
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_Zsnes
SET EMUNUM=9
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_SimCoupe
SET EMUNUM=89
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_SSF
SET EMUNUM=10
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
rd /s /q "%GBE%\%EMUZ%\%SSF%"
move /Y "%GBE%\%EMUZ%\%RNSSF%" "%GBE%\%EMUZ%\%SSF%"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\STV"
exit /b
:wget_Project64
SET EMUNUM=11
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_Altirra
SET EMUNUM=69
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_Steem
SET EMUNUM=45
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%STEEM%" "%STEEM%\%STEEM%z.exe"
exit /b
:wget_Mame
SET EMUNUM=12
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_Demul
SET EMUNUM=13
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%DMUL%" "%DMUL%\Atomiswave.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%DMUL%" "%DMUL%\Naomi.exe"
exit /b
:wget_4DO
SET EMUNUM=41
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
mkdir "%GBE%\%EMUZ%\%FOURDO%\Settings"
mkdir "%GBE%\%EMUZ%\%FOURDO%\Saves"
exit /b
:wget_CD-I
SET EMUNUM=14
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%GBE%\%EMUZ%\%WCDI%\wcdi*.exe"') do set WCDIXE=%%~a
rename "%GBE%\%EMUZ%\%WCDI%\%WCDIXE%" "wcdiemu.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%WCDI%" "%WCDI%\CDIWrapper.exe"
exit /b
:wget_ArcadePCLoader
SET EMUNUM=85
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
for /f "tokens=* delims= " %%a in ('type "%GBC%\taitx2.set"') do rmdir /q "%GBE%\%EMUZ%\%APCL%\Games\%%~a"
for /f "tokens=* delims= " %%a in ('type "%GBC%\taitx2.set"') do mklink /d "%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE\%%~a" "%GBE%\%EMUZ%\%APCL%\Games\%%~a"
exit /b
:wget_Unz
SET EMUNUM=15
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
rename "%GBE%\%EMUZ%\%FMUNZ%\%FMUNZ%.exe" "%FMUNZ%x.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%FMUNZ%" "%FMUNZ%\%FMUNZ%.exe"
exit /b
:wget_Supermodel
SET EMUNUM=16
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_m2emulator
SET EMUNUM=81
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_VisualBoyAdvance
SET EMUNUM=17
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
rename "%GBE%\%EMUZ%\%VGBA%\%VGBA%*.exe" "%VGBA%.exe"
exit /b
:wget_Dolphin
SET EMUNUM=18
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
mkdir "%GBE%\%EMUZ%\%DOLPH%\User\Config"
mkdir "%GBE%\%EMUZ%\%DOLPH%\User\Config\Profiles"
mkdir "%GBE%\%EMUZ%\%DOLPH%\User\Config\Profiles\GCPad"
mkdir "%GBE%\%EMUZ%\%DOLPH%\User\Config\Profiles\Wiimote"
exit /b
:wget_Pcsx2
SET EMUNUM=19
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
mkdir "%GBE%\%EMUZ%\%PCSX2%\inis"
mkdir "%GBE%\%EMUZ%\%PCSX2%\bios"
exit /b
:wget_NullDC
SET EMUNUM=20
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_No$GBA
SET EMUNUM=21
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%NOGBA%" "%NOGBA%\NDS.exe"
exit /b
:wget_DesMume
SET EMUNUM=94
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
rename "%GBE%\%EMUZ%\%DESMUME%\%DESMUME%_%ARPOP%.exe" "%DESMUME%.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%DESMUME%" "%DESMUME%\DSM.exe"
exit /b
:wget_FlashPlayer
SET EMUNUM=22
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%SWFPL%" "%SWFPL%\Fullscreenflash.exe"
exit /b
:wget_atari++
SET EMUNUM=28
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_WinBSNS
SET EMUNUM=72
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_WinVICE
SET EMUNUM=38
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_Stella
SET EMUNUM=27
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_BlueMSX
SET EMUNUM=39
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
REM :wget_jpcsp
REM SET EMUNUM=26
REM call "%GBC%\getemu.bat"
REM call "%GBC%\instemu.bat"
REM for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%JPCSP%\start-*.bat"') do set jpname=%%~a
REM rename "%GBE%\%EMUZ%\%JPCSP%\%jpname%" "jpcsp.bat"
REM pushd "%GBE%\%EMUZ%\%JPCSP%"
REM "%GBC%\fart.exe" "jpcsp.bat" \"%JAVA_HOME%\bin\java"\" "start /w \"\" \"%JAVA_HOME%\bin\java"\"
REM popd
REM exit /b
:wget_PPSSPP
set CEMU=PPSSPP
SET EMUNUM=67
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
move /y "%GBE%\%EMUZ%\%PPSSPP%Win*.exe" "%PSSP%.exe"
exit /b
:wget_ProSystem
SET EMUNUM=91
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_Kegs32
SET EMUNUM=93
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_nestopia
SET EMUNUM=101
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_AppleWin
SET EMUNUM=92
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_EMU7800
SET EMUNUM=29
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_Bliss
SET EMUNUM=30
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_Mednafen
SET EMUNUM=2
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_XM6
SET EMUNUM=36
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%XM6%" "%XM6%\XM6Start.exe"
SET CEMU=M71
SET EMUNUM=83
call "%GBC%\getemu.bat"
"%SEVENZIP%" x -y "%GBC%\net\%CEMU%\%CEMU%.7z" -o "%GBE%\%EMUZ%\%XM6%"
exit /b
:wget_WinAPE
SET EMUNUM=33
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_WinUAE
SET EMUNUM=23
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_FS-UAE
SET EMUNUM=59
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_WinX68k
SET EMUNUM=34
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_BeebEm
SET EMUNUM=96
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_ElectrEm
SET EMUNUM=97
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%ELECEM%" "%ELECEM%\Electron.exe"
exit /b
:wget_Nostalgia
SET EMUNUM=42
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b
:wget_Neko
SET EMUNUM=35
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
exit /b


:get_complete
start "" "%GBC%\Wbusy.exe" "InstEmu" "Complete." /Stop /sound /timeout:1
del /q "%GBC%\toInstall.ini"
if not exist "%GBE%\%EMUZ%\notinstalled.ini" goto :INSTCOMPLETE
if not exist "%GBE%\%EMUZ%\%BATCHL%\%BATCHL%.exe" "%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%BATCHL%" "%BATCHL%\%BATCHL%.exe"
"%GBC%\fart.exe" "locset.ini" "[EIN]" "2"
call "%GBC%\varloc.bat"
set EINST=are

:INSTCOMPLETE
if not exist "%GBE%\%EMUZ%\%BATCHL%\%BATCHL%.exe" "%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%BATCHL%" "%BATCHL%\%BATCHL%.exe"
start "" "%GBC%\Wbusy.exe" "InstEmu" "Complete." /Stop /sound /timeout:1
for /f "tokens=* delims= " %%d in ('dir /b /ad "%GBE%\%EMUZ%"^| sort /r') do rd "%GBE%\%EMUZ%\%%~d"
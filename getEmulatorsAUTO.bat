SET EMUINST=Auto
del /s /q "%GBE%\%EMUZ%\inst.ini"
del /s /q "%GBE%\%EMUZ%\notfound.ini"
start "" "%GBC%\Wbusy.exe" "InstEmu" "Downloading/Installing Emulators"  /marquee

call "%GBC%\mkemudirs.bat"

set CEMU=Fusion
SET EMUNUM=1
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
	
set CEMU=m88
SET EMUNUM=100
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

REM set CEMU=Mess
REM SET EMUNUM=86
REM call "%GBC%\getemu.bat"
REM call "%GBC%\instemu.bat"
REM mkdir "%GBE%\%EMUZ%\%MESS%\Roms"
REM rename "%GBE%\%EMUZ%\%MESS%\Mess%ARPOP%.exe" "%MESS%.exe"

set CEMU=X1turbo
SET EMUNUM=99
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%XTURB%" "%XTURB%\X1.exe"

set CEMU=FinalBurnAlpha
SET EMUNUM=65
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
mkdir "%GBE%\%EMUZ%\%FBA%\config"
mkdir "%GBE%\%EMUZ%\%FBA%\config\games"

set CEMU=Arculator
SET EMUNUM=68
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
mkdir "%GBE%\%EMUZ%\%FBA%\config"
mkdir "%GBE%\%EMUZ%\%FBA%\config\games"

set CEMU=WCDI
SET EMUNUM=14
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=XM7
SET EMUNUM=88
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=ProjectTempest
SET EMUNUM=4
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%PTMPS%" "%PTMPS%\PTLauncher.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%PTMPS%" "%PTMPS%\PTCDWrapper.exe"

set CEMU=ZXSpin
SET EMUNUM=31
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=psx
SET EMUNUM=37
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=ParaJVE
SET EMUNUM=32
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=Nostalgia
SET EMUNUM=42
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=WinArcadia
SET EMUNUM=84
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=VirtualJaguar
SET EMUNUM=82
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%VJAG%" "%VJAG%\vjag.exe"

set CEMU=Zsnes
SET EMUNUM=9
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=SimCoupe
SET EMUNUM=89
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=SSF
SET EMUNUM=10
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
rd /s /q "%GBE%\%EMUZ%\%SSF%"
move /Y "%GBE%\%EMUZ%\%RNSSF%" "%GBE%\%EMUZ%\%SSF%"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\STV"

set CEMU=Project64
SET EMUNUM=11
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=Altirra
SET EMUNUM=69
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=Steem
SET EMUNUM=45
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%STEEM%" "%STEEM%\%STEEM%z.exe"

set CEMU=Mame
SET EMUNUM=12
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=Demul
SET EMUNUM=13
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%DMUL%" "%DMUL%\Atomiswave.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%DMUL%" "%DMUL%\Naomi.exe"
mkdir "%GBE%\%EMUZ%\%DMUL%\roms"
mkdir "%GBE%\%EMUZ%\%DMUL%\nvram"
mkdir "%GBE%\%EMUZ%\%DMUL%\memsaves"
mkdir "%GBE%\%EMUZ%\%DMUL%\scache"
mkdir "%GBE%\%EMUZ%\%DMUL%\snap"
mkdir "%GBE%\%EMUZ%\%DMUL%\sstates"

set CEMU=4DO
SET EMUNUM=41
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
mkdir "%GBE%\%EMUZ%\%FOURDO%\Settings"
mkdir "%GBE%\%EMUZ%\%FOURDO%\Saves"

set CEMU=CD-I
SET EMUNUM=14
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%GBE%\%EMUZ%\%WCDI%\wcdi*.exe"') do set WCDIXE=%%~a
rename "%GBE%\%EMUZ%\%WCDI%\%WCDIXE%" "wcdiemu.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%WCDI%" "%WCDI%\CDIWrapper.exe"

set CEMU=ArcadePCLoader
SET EMUNUM=85
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
for /f "tokens=* delims= " %%a in ('type "%GBC%\taitx2.set"') do rmdir /q "%GBE%\%EMUZ%\%APCL%\Games\%%~a"
for /f "tokens=* delims= " %%a in ('type "%GBC%\taitx2.set"') do call :%LINKR%

set CEMU=Unz
SET EMUNUM=15
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
rename "%GBE%\%EMUZ%\%FMUNZ%\%FMUNZ%.exe" "%FMUNZ%x.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%FMUNZ%" "%FMUNZ%\%FMUNZ%.exe"

set CEMU=Supermodel
SET EMUNUM=16
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=NeoRaine
SET EMUNUM=98
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=m2emulator
SET EMUNUM=81
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=VisualBoyAdvance
SET EMUNUM=17
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=Dolphin
SET EMUNUM=18
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
mkdir "%GBE%\%EMUZ%\%DOLPH%\User\Config"
mkdir "%GBE%\%EMUZ%\%DOLPH%\User\Config\Profiles"
mkdir "%GBE%\%EMUZ%\%DOLPH%\User\Config\Profiles\GCPad"
mkdir "%GBE%\%EMUZ%\%DOLPH%\User\Config\Profiles\Wiimote"

set CEMU=Pcsx2
SET EMUNUM=19
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
mkdir "%GBE%\%EMUZ%\%PCSX2%\inis"
mkdir "%GBE%\%EMUZ%\%PCSX2%\bios"

set CEMU=NullDC
SET EMUNUM=20
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=No$GBA
SET EMUNUM=21
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%NOGBA%" "%NOGBA%\NDS.exe"

set CEMU=DesMume
SET EMUNUM=94
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
rename "%GBE%\%EMUZ%\%DESMUME%\%DESMUME%_%ARPOP%.exe" "%DESMUME%.exe"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%DESMUME%" "%DESMUME%\DSM.exe"

set CEMU=FlashPlayer
SET EMUNUM=22
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%SWFPL%" "%SWFPL%\Fullscreenflash.exe"

set CEMU=atari++
SET EMUNUM=28
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=WinVICE
SET EMUNUM=38
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=Stella
SET EMUNUM=27
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=BlueMSX
SET EMUNUM=39
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

REM set CEMU=jpcsp
REM SET EMUNUM=26
REM call "%GBC%\getemu.bat"
REM call "%GBC%\instemu.bat"
REM for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%JPCSP%\start-*.bat"') do set jpname=%%~a
REM rename "%GBE%\%EMUZ%\%JPCSP%\%jpname%" "jpcsp.bat"
REM if "%JAVA_HOME%"=="" goto :skpjava
REM pushd "%GBE%\%EMUZ%\%JPCSP%"
REM "%GBC%\fart.exe" "jpcsp.bat" \"%JAVA_HOME%\bin\java"\" "start /w \"\" \"%JAVA_HOME%\bin\java"\"
REM popd

set CEMU=PPSSPP
SET EMUNUM=67
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
move /y "%GBE%\%EMUZ%\%PSSP%Win*.exe" "%PSSP%.exe"

:skpjava

set CEMU=ProSystem
SET EMUNUM=91
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=Kegs32
SET EMUNUM=93
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=AppleWin
SET EMUNUM=92
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=Mednafen
SET EMUNUM=2
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=XM6
SET EMUNUM=36
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%XM6%" "%XM6%\XM6Start.exe"

set CEMU=M71
SET EMUNUM=83
call "%GBC%\getemu.bat"
"%SEVENZIP%" x -y "%GBC%\net\%CEMU%\%CEMU%.7z" -o "%GBE%\%EMUZ%\%XM6%"

set CEMU=WinAPE
SET EMUNUM=33
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=FS-UAE
SET EMUNUM=59
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=WinX68k
SET EMUNUM=34
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=BeebEm
SET EMUNUM=96
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=ElectrEm
SET EMUNUM=97
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBE%\%EMUZ%\%ELECEM%" "%ELECEM%\Electron.exe"

set CEMU=Nostalgia
SET EMUNUM=42
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"

set CEMU=Neko
SET EMUNUM=35
call "%GBC%\getemu.bat"
call "%GBC%\instemu.bat"


:FINS
"%GBC%\Wbusy.exe" "InstEmu" "Complete." /Stop /sound /timeout:2
"%GBC%\fart.exe" "locset.ini" "[EIN]" "1"

call "%GBC%\varloc.bat"
set EINST=are
if not exist "%GBE%\%EMUZ%\notfound.ini" GOTO :allok

"%GBC%\wbox.exe" " notfound" "^^Some emulators could not be downloaded^^"  "OK;LIST" /DB=2
if %ERRORLEVEL%==1 (GOTO :AGTcomplete)
if %ERRORLEVEL%==2 (GOTO :getNF)

:getNF
CALL "%GBC%\notFound.bat"
"%GBC%\Wselect.exe" "%GBE%\%EMUZ%\notfound.ini" "Not found" "set NOTFND=$item" > nothere.cmd
if %errorlevel%==0 GOTO :AGTcomplete
CALL nothere.cmd
GOTO :AGTcomplete

:allok
"%GBC%\wbox.exe" " all ok" "^^All emulators installed successfully^^"  "OK" /DB=1 /BW=260 /TM=1
if %ERRORLEVEL%==1 (GOTO :AGTcomplete)

:AGTcomplete
for /f "delims=" %%d in ('dir /b /ad-h "%GBE%\%EMUZ%"^| sort /r') do rd "%GBE%\%EMUZ%\%%~d"
exit /b

:WINV
mklink /d "%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE\%%~a" "%GBE%\%EMUZ%\%APCL%\Games\%%~a"
exit /b

:WINLEG
"%GBC%\linkd.exe" "%GBE%\%EMUZ%\%APCL%\Games\%%~a" "%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE\%%~a"
exit /b

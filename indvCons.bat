set INDVALL=
SET BYPMG=
set ALLCONSOLES=
set MANEMU=
set CFGALLG=
SET DLGM=
set XPDEF=
set XPDEMU=
set XPDBLNK=


:SELCUST
set CUSTCONSPTH=
SET CSTDIR=
del /s /q "%GBC%\net\%LNCH%\*.bat"
"%SEVENZIP%" x -y "%GBC%\net\%LNCH%\%LNCH%.zip" -o"%GBC%\net\%LNCH%"
"%GBC%\wbox.exe" "selectionType" "Would you like to configure a console or an individual game?" "Console;Game" /DB=1
if %ERRORLEVEL%==1 goto :CONSOLETYPE
if %ERRORLEVEL%==2 goto :GAMETYPE
goto :EOF


:GAMETYPE
CALL "%GBC%\indvGame.bat"
goto :indvcomplete

:CONSOLETYPE
del /q "%GBC%\conexist.ini"
echo ---------->"%GBC%\conexist.ini"
echo ALL CONSOLES (JACKETIZE)>>"%GBC%\conexist.ini"
echo ---------->>"%GBC%\conexist.ini"
echo New Console>>"%GBC%\conexist.ini"
echo ---------->>"%GBC%\conexist.ini"
echo Other>>"%GBC%\conexist.ini"
echo ---------->>"%GBC%\conexist.ini"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo.%%~a>>"%GBC%\conexist.ini"

:CONSOLESELECTION
"%GBC%\Wselect.exe" "%GBC%\conexist.ini" "Select A Console" "set CSTCONS=$item" > "%GBC%\customCons.cmd"
if %errorlevel%==0 GOTO :INDVOUT
CALL "%GBC%\customCons.cmd"
if "%CSTCONS%"=="----------" goto :CONSOLESELECTION
if "%CSTCONS%"=="New Console" goto :CCDEF
if "%CSTCONS%"=="ALL CONSOLES (JACKETIZE)" goto :ROMULATE
if "%CSTCONS%"=="Other" goto :CCLOC
for %%a in ("%CSTCONS%") do set CASTNAME=%%~a
SET CONISHERE=
set CURNTA=conselect.set
if exist "%GBC%\conselect.ini" set CURNTA=conselect.ini
for /f "tokens=* delims= " %%a in ('type "%GBC%\%CURNTA%"') do (
set CONEXST=%%~a
call :CHKCON
)
IF "%CONISHERE%"=="1" goto :CONTCONS
goto :CCEXST

:CHKCON
if /i "%CONEXST%"=="%CSTCONS%" SET CONISHERE=1
exit /b

:CONTCONS
if not exist "%GBG%\%GAM%\%CONS%\%CSTCONS%" goto :NOCUST
del /q "%GBC%\cstdirlist.ini"
for /f "tokens=* delims= " %%a in ('dir /b/a-h "%GBG%\%GAM%\%CONS%\%CSTCONS%"') do echo.%%~a>>"%GBC%\cstdirlist.ini"
for /f "tokens=* delims= " %%a in ('dir /b/a-h "%GBG%\%GAM%\%CONS%\%CSTCONS%\SOURCE"') do echo.%%~a>>"%GBC%\cstdirlist.ini"
for %%R in ("%GBC%\cstdirlist.ini") do if "%%~zR" equ "" goto :NOCUST
for %%R in ("%GBC%\cstdirlist.ini") do if %%~zR equ 0 goto :NOCUST
for %%A in ("%GBG%\%GAM%\%CONS%\%CSTCONS%") do set CUSTCONSPTH=%%~A
for %%A in ("%CUSTCONSPTH:~0,2%") do set CSTDIR=%%~A


:ROMPTHCONT
set XFBUT=1d
if "%XFG%"=="0" set XFBUT=2

:CFGOPTION
if /i "%CSTCONS%"=="%WIN32%" goto :GGOFF
if /i "%CSTCONS%"=="%TAITX%" goto :GGOFF
if /i "%CSTCONS%"=="%FLASH%" goto :GGOFF

"%GBC%\wbox.exe" "pergame" "Would you like to enable^''per-game''^configurations for this console and emulator?" "Per-Game;Global" /DB=%XFBUT%
if %ERRORLEVEL%==1 goto :GGON
if %ERRORLEVEL%==2 goto :GGOFF
goto :INDVOUT

:ROMULATE
SET ALLCONSOLES=1
SET INDVALL=1
call "%GBC%\unsort.bat">>"%GBC%\logs\unsort.log"
CALL "%GBC%\romulating.bat"
goto :INDVOUT

:GGON
SET GGON=1
goto :MONITORS

:GGOFF
SET GGOFF=1
goto :MONITORS

:MONITORS
set DB=2
if /i "%CSTCONS%"=="%ATMS%" goto :MMONON
if /i "%CSTCONS%"=="%NAOMI%" goto :MMONON
if /i "%GBM%"=="1" set DB=1

"%GBC%\wbox.exe" "dualmon" "Are you using a multi-monitor configuration?" "Multi;Single" /DB=%DB%
if %ERRORLEVEL%==1 goto :MMONON
if %ERRORLEVEL%==2 goto :MMONOFF
goto :INDVOUT

:MMONON
set MMCST=1
SET MMON=1
goto :xpdtst

:MMONOFF
set MMCST=0
SET MMONOFF=1
:xpdtst
SET DB=1
if "%XPADDER%"=="DISABLED" goto :XPDOFF
"%GBC%\wbox.exe" "xpdtst" "###XPADDER IS ENABLED###^^-DEFAULT-^   Default profiles are created^^-BLANK-^   Empty profiles are created^^-EMU-^   Profiles with emulator functionality only are created^^-DISABLE-^   Disable Xpadder" "Default;Blank;Emu;Disable;Help" /DB=%DB%
if %ERRORLEVEL%==1 goto :XPDON
if %ERRORLEVEL%==2 goto :XPDBLNK
if %ERRORLEVEL%==3 goto :XPDEMU
if %ERRORLEVEL%==4 goto :XPDOFF
if %ERRORLEVEL%==5 goto :HELP
goto :INDVOUT

:HELP
"%GBC%\docs\select.html"
wbox "opening" "Help is opening" "OK" /TM=3
if %ERRORLEVEL%==1 goto :xpdtst
goto :xpdtst

:J2KON
set J2KCST=1
SET J2KON=1
goto :dtest

:J2KOFF
set J2KCST=0
SET J2KOFF=1
goto :dtest

:XPDON
set XPDCST=1
set XPDEF=1
SET XPDON=1
goto :dtest

:XPDBLNK
set XPDCST=1
set XPDBLNK=1
SET XPDON=1
goto :dtest

:XPDEMU
set XPDCST=1
set XPDEMU=1
SET XPDON=1
goto :dtest

:XPDOFF
set XPDCST=0
SET XPDOFF=1
goto :dtest

:dtest
SET DB=1
if "%CSTCONS%"=="ALL CONSOLES (ROMULATE)" goto :dtquery
if "%CSTCONS%"=="New Console" goto :dtquery
if "%CSTCONS%"=="Other" goto :dtquery
if /i "%CSTCONS%"=="%FMTOWNS%" goto :dtquery
if /i "%CSTCONS%"=="%SSAT%" goto :dtquery
goto :DTOFF

:dtquery
"%GBC%\wbox.exe" "daemntest" "Would you like to enable Daemon Tools for this console?" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :DTON
if %ERRORLEVEL%==2 goto :DTOFF
goto :INDVOUT

:DTON
set DTCST=1
SET DTO0N=1
goto :reprocess

:DTOFF
set DTCST=0
SET DTOFF=1

:reprocess
"%GBC%\wbox.exe" "LauncherCreation" "^### LAUNCHER CREATION ###^^Recreate-^   Will delete and recreate all launchers.^^Update-^   Will only create launchers for games without one." "Recreate;Update" /DB=1
if %ERRORLEVEL%==1 goto :RECREATE
if %ERRORLEVEL%==2 goto :ONLYNEW
goto :INDVOUT

:RECREATE
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.bat"
del /s /q "%CUSTCONSPTH%\*.bat"

:ONLYNEW

:CONFIGSET
SET RECONF=
if "%GGOFF%"=="1" goto :NOCONFIG
"%GBC%\wbox.exe" "reconfigurations" "^### PER-GAME ###^^Would you like to recreate all ''per-game'' configurations for this console?" "Per-Game;Global" /DB=1
if %ERRORLEVEL%==1 goto :RECONFIG
if %ERRORLEVEL%==2 goto :NOCONFIG
goto :INDVOUT

:RECONFIG
SET RECONF=1
goto :emuselect
:NOCONFIG
set RECONF=

:emuselect
if "%CCONS%"=="" goto :ASSIGNEMU
:EMPCHK
del /q "%GBC%\exist.ini"
for /f "tokens=* delims= " %%a in ('dir /b "%CUSTCONSPTH%"') do echo %%a>"%GBC%\exist.ini"
for %%R in ("%GBC%\exist.ini") do if %%~zR neq 0 goto :ASSIGNEMU
for /f "tokens=* delims= " %%a in ('dir /b "%CUSTCONSPTH%\SOURCE"') do echo %%a>"%GBC%\exist.ini"
for %%R in ("%GBC%\exist.ini") do if %%~zR neq 0 goto :ASSIGNEMU
"%GBC%\wbox.exe" "nocust" "^%CUSTCONSPTH% is currently unpopulated.^^### Open ###^Open the Folder to populate with roms^^### Retry ###^After you have populated the %CUSTCONSPTH% folder." "Open;Retry;Menu" /DB=1
if %ERRORLEVEL%==1 goto :CSTPOP2
if %ERRORLEVEL%==2 goto :EMPCHK
if %ERRORLEVEL%==3 goto :SELCUST
goto :SELCUST

:CSTPOP2
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%"
Explorer "%CUSTCONSPTH%"
goto :EMPCHK

:ASSIGNEMU
call "%GBC%\emuDefaults.bat"
call "%GBC%\multiEmu.bat"
if "%CCON%"=="1" goto :chooseEmu
"%GBC%\wbox.exe" "Choose" "Select An Emulator to associate with %CSTCONS%" "%CEMU%;Choose%ALTEMU%" /DB=1 /BW=120
if %ERRORLEVEL%==1 goto :defaultEmu
if %ERRORLEVEL%==2 goto :chooseEmu
if %ERRORLEVEL%==3 goto :ALT1
if %ERRORLEVEL%==4 goto :ALT2
if %ERRORLEVEL%==5 goto :ALT3
goto :indvcomplete

:defaultEmu
set CEMU=Default
if /I "%CSTCONS%"=="Other" goto :chooseEmu
call "%GBC%\emuDefaults.bat"
goto :injcst

:ALT1
SET CEMU=%ALTE1%
goto :ALTINJECTION
:ALT2
SET CEMU=%ALTE2%
goto :ALTINJECTION
:ALT3
SET CEMU=%ALTE3%
goto :ALTINJECTION

:chooseEmu
SET MANEMU=1
set CEMU=Choose
echo.----------------------->"%GBC%\existingemulators.ini"
echo.--SELECT AN EMULATOR--->>"%GBC%\existingemulators.ini"
echo.----------------------->>"%GBC%\existingemulators.ini"
echo.->>"%GBC%\existingemulators.ini"
echo.CustomEmulator>>"%GBC%\existingemulators.ini"
echo.->>"%GBC%\existingemulators.ini"
echo.-------DETECTED-------->>"%GBC%\existingemulators.ini"
echo.->>"%GBC%\existingemulators.ini"
for /f "tokens=* delims= " %%a in ('type "%GBC%\supportedEmulators.set"') do (
SET EMUXST=
SET SUPEM=%%~a
call :DIRCHK
)

echo.->>"%GBC%\existingemulators.ini"
echo.--------PRESETS-------->>"%GBC%\existingemulators.ini"
echo.->>"%GBC%\existingemulators.ini"
for /f "tokens=* delims= " %%a in ('type "%GBC%\supportedEmulators.set"') do (
SET SUPEM=%%~a
CALL :DIRNCHK
)

"%GBC%\fart.exe" "%GBC%\existingemulators.ini" : --remove
"%GBC%\Wselect.exe" "%GBC%\existingemulators.ini" "Select An Emulator to associate with %CASTNAME%" "set CEMU=$item" > "%GBC%\emuAssign.cmd"
if %errorlevel%==0 GOTO :SELCUST
CALL "%GBC%\emuAssign.cmd"
for %%A in ("%CEMU:~0,1%") do set CEMUCHOICE=%%~A
if /I "%CEMUCHOICE%"=="-" goto :emuselect

:injcst
CALL :CSTINJ
if "%GGON%"=="1" "%GBC%\fart.exe" "zz.bat" [XFG] --remove
if /I "%CEMU%"=="CustomEmulator" goto :CustExe
goto :emuopt

:DIRCHK
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBE%\%EMUZ%"') do if /i "%%~a"=="%SUPEM%" echo.%%~a:>>"%GBC%\existingemulators.ini"
exit /b

:DIRNCHK
SET MISCHK=
SET EMUXST=
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBE%\%EMUZ%"') do (
SET EMUXST=%%~a
if /i "%%~a"=="%SUPEM%" SET MISCHK=1
)
if "%MISCHK%"=="" echo.%EMUXST%:>>"%GBC%\existingemulators.ini"
exit /b

:CSTINJ
if "%MANEMU%"=="1" SET CSTCONS=Other
if "%MANEMU%" NEQ "1" exit /b
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
if "%GGON%"=="1" "%GBC%\fart.exe" "zz.bat" [XFG] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zz.bat" "[XFG]" "REM [XFG]"
if "%MMON%"=="1" "%GBC%\fart.exe" "zz.bat" [DSP] --remove
if "%MMONOFF%"=="1" "%GBC%\fart.exe" "zz.bat" "[DSP]" "REM [DSP]"
popd
if "%J2KON%" NEQ "1" goto :j2koff

:jon
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" --remove "[XPT]"
"%GBC%\fart.exe" "zz.bat" --remove "REM [XPT]"
"%GBC%\fart.exe" "zz.bat" XPADDER JOY2KEY
"%GBC%\fart.exe" "zz.bat" xpadderprofile cfg
"%GBC%\fart.exe" "zz.bat" "^%^CD%%\%%~na2" --remove
popd
if "%J2KOFF%"=="1" goto :j2koff

:j2koff
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
if "%XPDOFF%"=="1" "%GBC%\fart.exe" "zz.bat" [XPT] "REM [XPT]"
if "%DTOFF%"=="1" "%GBC%\fart.exe" "zz.bat" [DMT] "REM [DMT]"
if "%XPDON%"=="1" "%GBC%\fart.exe" "zz.bat" [XPT] --remove
if "%XPDOFF%"=="1" "%GBC%\fart.exe" "zz.bat" "[XPT]" "REM [XPT]"
if "%DTON%"=="1" "%GBC%\fart.exe" "zz.bat" [DMT] --remove
if "%DTOFF%"=="1" "%GBC%\fart.exe" "zz.bat" "[DMT]" "REM [DMT]"
popd
exit /b

:emuopt
SET ROMPTH="\"^%%^CD%%\%%GAMDIR%%.[EXT]"\"
SET EXTSET=.[EXT]
for %%A in ("*.ini") do set CONFSET=%%~A
if "%CSTCONS%"=="Other" goto :CUSTSYS
if "%CEMU%" NEQ "CustomEmulator" goto :copy

:CUSTSYS
"%GBC%\Winput.exe" "set OPTIONS=$input" "enter emulator options/switches (these are passed before the rom)" "%EMUOPT%" > "%GBC%\options.cmd"
if %ERRORLEVEL%==1 goto :emuarg
pushd "%GBC%"
"%GBC%\fart.exe" "options.cmd" "\"" "\\"\"
popd
call "%GBC%\options.cmd"
echo %OPTIONS%>"%GBC%\opt.ini"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
for %%R in ("%GBC%\opt.ini") do if %%~zR equ 0 "%GBC%\fart.exe" "zz.bat" [OPT] --remove
popd
goto :emuarg

:emuarg
"%GBC%\Winput.exe" "set ARGUMENTS=$input" "enter emulator arguments (these are passed after the rom)" "%EMUARG%" > "%GBC%\arguments.cmd"
if %ERRORLEVEL%==1 goto :rompth
pushd "%GBC%"
"%GBC%\fart.exe" "arguments.cmd" "\"" "\\"\"
call "%GBC%\arguments.cmd"
popd
echo %ARGUMENTS%>"%GBC%\arg.dat"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
for %%R in ("%GBC%\arg.dat") do if "%%~zR" equ "" "%GBC%\fart.exe" "zz.bat" [ARG] --remove
for %%R in ("%GBC%\arg.dat") do if %%~zR equ 0 "%GBC%\fart.exe" "zz.bat" [ARG] --remove
popd
goto :rompth1

:rompth1
set fromdir=2
if /I "%CEMU%"=="Mess64ui" set fromdir=1
if /I "%CEMU%"=="Mess64" set fromdir=1
if /I "%CEMU%"=="Messui" set fromdir=1
if /I "%CEMU%"=="Mess" set fromdir=1
if /I "%CEMU%"=="UME" set fromdir=1
if /I "%CEMU%"=="UME64" set fromdir=1
"%GBC%\Wbox.exe" "fromdir" "Run Emluator from directory?" "YES;NO" /DB=%fromdir%
if %ERRORLEVEL%==1 goto :FROMDIR
if %ERRORLEVEL%==2 goto :FROMROM
goto :FROMROM

:FROMDIR
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [IND] --remove
popd
goto :rompth

:FROMROM
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" "[IND]" "REM [IND]"
popd
goto :rompth

:rompth
"%GBC%\Wbox.exe" "Fullpath" "You can use only the name of the ROM or the FULL PATH of the rom.^If you are unsure, use ''FULL''." "FULL;ROM" /DB=1
if %ERRORLEVEL%==1 goto :FULLPTH
if %ERRORLEVEL%==2 goto :ROMONLY
goto :FULLPTH

:FULLPTH
SET ROMPTH="\"^%%GAMDIR%%\%%ROM%%.[EXTN]"\"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [ROM] "%ROMPTH%"
popd
goto :EXTCHK

:ROMONLY
SET ROMPTH="\"^%%ROM%%.[EXTN]"\"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [ROM] "%ROMPTH%"
popd
goto :EXTCHK

:EXTCHK
"%GBC%\Wbox.exe" "EXTENSION" "Would you like RoM-Jacket to detect the rom-extension for the library?" "Yes;No;Custom" /DB=1
if %ERRORLEVEL%==1 goto :EXTON
if %ERRORLEVEL%==2 goto :NOEXT
if %ERRORLEVEL%==3 goto :CSTEXT
goto :EXTON

:CSTEXT
"%GBC%\Winput.exe" "set EXTNSEL=$input" "Enter the extension you wish to use. (e.g: ZIP)" >"%GBC%\extSel.cmd"
if %ERRORLEVEL%==1 goto :CONFIGFILE
call "%GBC%\extSel.cmd"
for %%A in ("%EXTNSEL%") do set EXTCHK=%%~A
SET DOTCHK=%EXTNSEL:~0,1%
if "%DOTCHK%"=="." set EXTCHK=%EXTCHK:~1,6%
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [EXTN] "%EXTCHK%"
"%GBC%\fart.exe" "zz.bat" [EXT] "%EXTCHK%"
popd
goto :CONFIGFILE

:EXTON
set EXTCHK=[EXT]
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [EXTN] [EXT]
popd
goto :CONFIGFILE

:NOEXT
set EXTCHK=[EXTN]
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" .[EXTN] --remove
popd
goto :CONFIGFILE

:CONFIGFILE
if "%fromdir%"=="1" set EMUCFG=Mess.ini
"%GBC%\Winput.exe" "set CONFIGFILE=$input" "Enter the name of the config file.  You can use wildcards. ''ie: *.ini  ''" "%EMUCFG%" > "%GBC%\configfile.cmd"
if %ERRORLEVEL%==1 goto :custchk
if not errorlevel 1 call "%GBC%\configfile.cmd"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
if "%CONFIGFILE%"=="" "%GBC%\fart.exe" "zz.bat" "copy /y" "REM copy /y"
"%GBC%\fart.exe" "zz.bat" [CFG] "%CONFIGFILE%"
if "%ARGUMENTS%"=="" "%GBC%\fart.exe" "zz.bat" [ARG] --remove
start "" "%GBC%\wbusy.exe" "INJECTION" "Processing the %CASTNAME% launchers." /marquee
popd

:custchk
echo %OPTIONS%>"%GBC%\opt.ini"
echo %ARGUMENTS%>"%GBC%\arg.dat"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
for %%R in ("%GBC%\opt.ini") do if %%~zR equ 0 "%GBC%\fart.exe" "zz.bat" [OPT] --remove
for %%R in ("%GBC%\arg.dat") do if %%~zR equ 0 "%GBC%\fart.exe" "zz.bat" [ARG] --remove
"%GBC%\fart.exe" "zz.bat" [OPT] " %OPTIONS%"
"%GBC%\fart.exe" "zz.bat" [ARG] " %ARGUMENTS%"
popd

:copy
if "%CEMU%" NEQ "CustomEmulator" goto :GENERATE
start "" "%GBC%\wbusy.exe" "INJECTION" "Processing the %CASTNAME% launchers." /marquee

:INJZZ
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [EMUL] "%GBE%\%EMUZ%\%CEMU%"
popd

:SETEMUS
if /i "%CEMU%" NEQ "%M2EMU%" goto :SETEMUCONT
if /i "%ARPOP%"=="64" set CEMU=emulator_multicpu
if /i "%ARPOP%"=="32" set CEMU=emulator

:SETEMUCONT
if /i "%CEMU%"=="%PSX%" set CEMU=psxfin
if /i "%CEMU%"=="%PLAY3DO%" set CEMU=3DOEmu
if /i "%CEMU%"=="%WCDI%" set CEMU=CDIWrapper
if /i "%CEMU%"=="%FSHPL%" set CEMU=FullScreenFlash
if /i "%CEMU%"=="%FBA%" set CEMU=fba
if /i "%CEMU%"=="%ELECEM%" set CEMU=Electron
if /i "%CSTCONS%"=="%ACELE%" set CEMU=Electron
if /i "%CEMU%"=="%VICE%" set CEMU=x64
if /i "%CEMU%"=="%INTV%" set CEMU=%INTV%32
if /i "%CEMU%"=="%VSVH%" set CEMU=%VSVH%.Win
if /i "%CSTCONS%"=="%PC98%" set CEMU=np21nt
if /i "%CSTCONS%"=="%NAOMI%" set CEMU=Naomi
if /i "%CSTCONS%"=="%ATMS%" set CEMU=%ATMS%
if /i "%CSTCONS%"=="%SHRPX1%" set CEMU=X1
if /i "%CEMU%"=="%XTURB%" set CEMU=X1
if /i "%CSTCONS%"=="%NEOCD%" set CEMU=%NEORAINE%32
if /i "%CEMU%"=="%NEORAINE%" set CEMU=%NEORAINE%32
if /i "%CSTCONS%"=="%NGBA%" set CEMU=%VGBA%-M
if /i "%CEMU%"=="%VGBA%" set CEMU=%VGBA%-M
if /i "%CSTCONS%"=="%ATST%" set CEMU=Steemz
if /i "%CEMU%"=="%STEEM%" set CEMU=Steemz
if /i "%CEMU%"=="%NEKO%" set CEMU=np21nt
if /i "%CEMU%"=="%NOGBA%" set CEMU=NDS
if /i "%CEMU%"=="%MAME%" set CEMU=%MAME%
if /i "%CEMU%"=="%ZSNS%" set CEMU=%ZSNS%w
if /i "%CEMU%"=="%NULLDC%" set CEMU=nullDC_Win32_Release-NoTrace
if /i "%CSTCONS%"=="%JAGCD%" set CEMU=PTCDWrapper
if /i "%CSTCONS%"=="%JAG%" set CEMU=vjag
if /i "%CEMU%"=="%PTMPS%" set CEMU=PTCDWrapper
if /i "%CEMU%"=="%JAG%" set CEMU=vjag
if /i "%CEMU%"=="%FM7%" set CEMU=%XM7%

:EMUINJECTION
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [EMUZ] "%CEMU%"
"%GBC%\fart.exe" "zz.bat" [LOC] "%GBG%\%GAM%\%CONS%\%CSTCONS%"
popd

:injectall
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [DAMVAR] "%DAMVAR%"
"%GBC%\fart.exe" "zz.bat" [XPD] "%XPADDER%"
"%GBC%\fart.exe" "zz.bat" [J2K] "%JOY2KEY%"
popd

del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.bat"
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.ini"
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.conf"
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.config"
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.cfg"
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\*.xpadderprofile"

pushd "%CUSTCONSPTH%"

:FLDRITERATE
start "" "%GBC%\wbusy.exe" "INJECTION" "..." /Stop /timeout:1

:GENERATE
CALL "%GBC%\generateCustomLibrary.bat"
start "" "%GBC%\wbusy.exe" "INJECTION" "Processing the %CASTNAME% launchers." /marquee
if "%CEMU%" NEQ "1" goto :INDVROMS

:INDVROMS
pushd "%CUSTCONSPTH%"
for /d %%i in (*) do (
SET INDVROMS=%%i
CALL :COPYMVROMS
)
goto :extensionchk

:COPYMVROMS
:CONTINUEMVROMS
copy /Y "%GBC%\net\%LNCH%\%CSTCONS%\zz.bat" "%CUSTCONSPTH%"
if not exist "%CD%\%INDVROMS%\%INDVROMS%.bat" copy /Y "%CUSTCONSPTH%\zz.bat" "%CUSTCONSPTH%\%INDVROMS%"
if "%FERID%"=="1" exit /b
if not exist "%CD%\%INDVROMS%\%INDVROMS%.bat" move /Y "%CUSTCONSPTH%\%INDVROMS%\zz.bat" "%CUSTCONSPTH%\%INDVROMS%\%INDVROMS%.bat"
exit /b

:extensionchk
if "%RCALL%"=="1" goto :CANCELLED
CALL "%GBC%\extinjALL.bat"

if "%J2KCST%"=="1" goto :J2KCP
if "%XPDCST%"=="1" goto :XPDCP
goto :INDVCONT

:ALTINJECTION
for %%a in ("%GBE%\%EMUZ%\%CEMU%") do (
set CSTEMLTP=%%~a\
set CNEMU=%%~na.exe
SET CSTEMLTMP=%%~dpa
)
for %%A in ("%CSTEMLTP:~0,-1%") do set CSTEML=%%~A
set CSTEDIR=%GBE%:~0,2%
goto :EMUTEST

:CustExe
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET CEMUPATH=" "%GBE%\%EMUZ%\*.*" "Where is the emulator executable?" /noquote') do %%a
if "%CEMUPATH%"=="" goto :CANCELLED
for /f "tokens=* delims= " %%a in ("%CEMUPATH%") do (
SET BYPMG=1
SET CNEMU=%%~nxa
SET CEMU=%%~na
SET CSTEDIR=%CEMUPATH:~0,2%
set CSTEMLTMP=%%~dpa
)
for %%A in ("%CSTEMLTMP:~0,-1%") do set CSTEML=%%~A

:EMUTEST
IF /I "%CSTEML%"=="" goto :INDVCONT
set CVAREMU=%CEMU%
call "%GBC%\shortemu.bat"
call "%GBC%\altsettings.bat"
if /I "%CEMU%"=="Mess64ui" CALL "%GBC%\MessType.bat"
if /I "%CEMU%"=="Mess64" CALL "%GBC%\MessType.bat"
if /I "%CEMU%"=="Messui" CALL "%GBC%\MessType.bat"
if /I "%CEMU%"=="Mess" CALL "%GBC%\MessType.bat"
if /I "%CEMU%"=="UME" CALL "%GBC%\MessType.bat"
if /I "%CEMU%"=="UME64" CALL "%GBC%\MessType.bat"

:emuopt2
"%GBC%\Winput.exe" "set OPTIONS=$input" "enter emulator options/switches (These are passed before the rom)" "%EMUOPT%" > "%GBC%\options.cmd"
if %ERRORLEVEL%==1 goto :emuarg2
pushd "%GBC%"
"%GBC%\fart.exe" "options.cmd" "\"" "\\"\"
call "%GBC%\options.cmd"
popd
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [OPT] " %OPTIONS%"
popd
goto :emuarg2

:emuarg2
"%GBC%\Winput.exe" "set ARGUMENTS=$input" "enter emulator arguments (these are passed after the rom)" "%EMUARG%" > "%GBC%\arguments.cmd"
if %ERRORLEVEL%==1 goto :injBat
pushd "%GBC%"
"%GBC%\fart.exe" "arguments.cmd" "\"" "\\"\"
call "arguments.cmd"
popd
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [ARG] " %ARGUMENTS%"
popd
goto :rompth3

:rompth3
set fromdir=2
if /I "%CEMU%"=="Mess64ui" set fromdir=1
if /I "%CEMU%"=="Mess64" set fromdir=1
if /I "%CEMU%"=="Messui" set fromdir=1
if /I "%CEMU%"=="Mess" set fromdir=1
if /I "%CEMU%"=="UME" set fromdir=1
if /I "%CEMU%"=="UME64" set fromdir=1
"%GBC%\Wbox.exe" "fromdir" "Run Emluator from directory?" "YES;NO" /DB=%fromdir%
if %ERRORLEVEL%==1 goto :FROMDIR1
if %ERRORLEVEL%==2 goto :FROMROM1
goto :INDVCONT

:FROMDIR1
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [IND] --remove
popd
goto :rompth2

:FROMROM1
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" "[IND]" "REM [IND]"
popd
goto :rompth2

:rompth2
"%GBC%\Wbox.exe" "Fullpath" "You can use only the name of the ROM or the FULL PATH of the rom.^If you are unsure, use ''FULL''." "FULL;ROM" /DB=1
if %ERRORLEVEL%==1 goto :FULLPTH2
if %ERRORLEVEL%==2 goto :ROMONLY2
goto :INDVCONT

:FULLPTH2
SET ROMPTH="\"^%%GAMDIR%%\%%ROM%%.[EXTN]"\"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [ROM] "%ROMPTH%"
popd
goto :EXTCHK2

:ROMONLY2
set ROMPTH="\"^%%ROM%%.[EXTN]"\"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [ROM] "%ROMPTH%"
popd
goto :EXTCHK2

:EXTCHK2
"%GBC%\Wbox.exe" "EXTENSION" "Detect:^   Detect the rom's extension^Skip:^   Skip the check.^Custom:^    Enter a custom extension for the library (e.g:''~ZIP~'')" "Detect;Skip;Custom" /DB=1
if %ERRORLEVEL%==1 goto :EXTON2
if %ERRORLEVEL%==2 goto :NOEXT2
if %ERRORLEVEL%==3 goto :CSTEXT2
goto :INDVCONT

:CSTEXT2
"%GBC%\Winput.exe" "set EXTNSEL=$input" "Enter the extension you wish to use. (e.g: ZIP)" >"%GBC%\extSel.cmd"
if %ERRORLEVEL%==1 goto :CONFIGFILE2
call "%GBC%\extSel.cmd"
for %%A in ("%EXTNSEL%") do set EXTCHK=%%~A
SET DOTCHK=%EXTNSEL:~0,1%
if "%DOTCHK%"=="." set EXTCHK=%EXTCHK:~1,6
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [EXTN] "%EXTCHK%"
"%GBC%\fart.exe" "zz.bat" [EXT] "%EXTCHK%"
popd
goto :CONFIGFILE2

:EXTON2
set EXTCHK=[EXT]
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [EXTN] [EXT]
popd

:NOEXT2
set EXTCHK=[EXTN]
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" .[EXTN] --remove
popd

:CONFIGFILE2
if "%fromdir%"=="1" set EMUCFG=Mess.ini
"%GBC%\Winput.exe" "set CONFIGFILE=$input" "Enter the name of the config file.  You can use wildcards. ''ie: *.ini  ''" "%EMUCFG%" > "%GBC%\configfile.cmd"
if %ERRORLEVEL%==1 goto :injBat
if not errorlevel 1 call "%GBC%\configfile.cmd"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [CFG] "%CONFIGFILE%"
if "%CONFIGFILE%"=="" "%GBC%\fart.exe" "zz.bat" "copy /y" "REM copy /y"
popd

:injBat
if "%CNEMU%"=="" SET CNEMU=%CSTCONS%
echo %CNEMU% >>"%GBC%\custEmu.ini"
if "%CCONSOLE%"=="" SET CCONSOLE=%CSTCONS%
echo. "REM [%CCONSOLE%]:: >>"%GBC%\custEmu.bat"
echo. SET CSTEML=%CSTEML% >>"%GBC%\custEmu.bat"
echo. SET CEMU=%CEMU% >>"%GBC%\custEmu.bat"
echo. SET CSTEDIR=%CEMUPATH:~0,2%
echo. SET CUSTCONSPTH=%CUSTCONSPTH% >>"%GBC%\custEmu.bat"
echo. SET CSTDIR=%CUSTCONSPTH:~0,2%
echo. SET OPTIONS=%OPTIONS% >>"%GBC%\custEmu.bat"
echo. SET ARGUMENTS=%ARGUMENTS% >>"%GBC%\custEmu.bat"
echo. SET CONFIGFILE=%CONFIGFILE% >>"%GBC%\custEmu.bat"
echo. SET ROMPTH=%ROMPTH% >>"%GBC%\custEmu.bat"
echo. if "^%ARGUMENTS%"=="" "^%GBC%\fart.exe" "^%GBC%\net\^%LNCH%\^%CSTCONS%\zz.bat" [ARG] --remove >>"%GBC%\custEmu.bat"
echo. if "^%OPTIONS%"=="" "^%GBC%\fart.exe" "^%GBC%\net\^%LNCH%\^%CSTCONS%\zz.bat" [OPT] --remove >>"%GBC%\custEmu.bat"

rename "%GBC%\custEmu.bat" "%CCONSOLE%custEmu.bat"

echo %OPTIONS%>"%GBC%\opt.ini"
echo %ARGUMENTS%>"%GBC%\arg.dat"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
for %%R in ("%GBC%\opt.ini") do if %%~zR equ 0 "%GBC%\fart.exe" "zz.bat" [OPT] --remove
for %%R in ("%GBC%\arg.dat") do if %%~zR equ 0 "%GBC%\fart.exe" "zz.bat" [ARG] --remove
popd

goto :injectCustom

:injectCustom
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [EMUL] "%CSTEML%"
"%GBC%\fart.exe" "zz.bat" [EMUZ] "%CEMU%"
popd
goto :INJZZ

:NOCUST
SET NOTEXST=1
"%GBC%\wbox.exe" "nocust" "^%CASTNAME% is currently unpopulated.^^### Create ###^Create the %CASTNAME% folder and open it in explorer for population.^^### Select ###^Return to console selection menu^^### Retry ###^After you have populated the %CASTNAME% folder." "Create;Select;Retry" /DB=1
if %ERRORLEVEL%==1 goto :CSTPOP
if %ERRORLEVEL%==2 goto :SELCUST
if %ERRORLEVEL%==3 goto :CONTCONS
goto :INDVOUT

:CSTPOP
mkdir "%GBG%\%GAM%\%CONS%\%CSTCONS%"
Explorer "%GBG%\%GAM%\%CONS%\%CSTCONS%"
goto :NOCUST

:CCLOC
SET CCONS=
"%GBC%\Wfolder.exe" "SET CCONPATH=" "%GBG%\%GAM%\%CONS%\" "Where is your console?" /noquote > "%GBC%\ccpath.cmd"
call "%GBC%\ccpath.cmd
if "%CCONPATH%"=="" goto :SELCUST
for %%A in ("%CCONPATH%") do set CUSTCONSPTH=%%~A
for %%A in ("%CUSTCONSPTH:~0,2%") do set CSTDIR=%%~A
pushd "%CUSTCONSPTH%"
"%GBC%\fart.exe" "zz.bat" [LOC] "%CUSTCONSPTH%"
popd
SET CCONS=1
goto :ROMPTHCONT

:CCEXST
SET CCONS=
FOR /F "tokens=* delims= " %%a in ("%GBG%\%GAM%\%CONS%\%CSTCONS%") do (
SET CCONPATH=%%~a
SET CUSTCONSPTH=%%~a
)
SET CSTCONAME=%CSTCONS%
SET CSTCONS=Other
pushd "%CUSTCONSPTH%"
"%GBC%\fart.exe" "zz.bat" [LOC] "%CUSTCONSPTH%"
popd
SET CCONS=1
goto :ROMPTHCONT

:CCDEF
SET CCONS=
"%GBC%\Wfolder.exe" "SET CCONPATH=" "%GBG%\%GAM%\%CONS%\" "Where would you like to install your new console?" /noquote > "%GBC%\ccpath.cmd"
call "%GBC%\ccpath.cmd
if "%CCONPATH%"=="" goto :SELCUST
"%GBC%\Winput.exe" "SET CCONSOLE=$input" "Please enter the name of your new console" > "%GBC%\ccons.cmd"
if not errorlevel 1 call "%GBC%\ccons.cmd"
if "%CCONSOLE%"=="" goto :SELCUST
mkdir "%CCONPATH%\%CCONSOLE%"
for %%A in ("%CCONPATH%\%CCONSOLE%") do set CUSTCONSPTH=%%~A
for %%A in ("%CUSTCONSPTH:~0,2%") do set CSTDIR=%%~A
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [LOC] "%CCONPATH%\%CCONSOLE%"
popd
SET CCONS=1
goto :ROMPTHCONT

:SELLOC
"%GBC%\Wfolder.exe" "SET CCONPATH=" "%GBG%\%GAM%\%CONS%\" "Where is the Console's Rom Folder?" /noquote > "%GBC%\ccpath.cmd"
call "%GBC%\ccpath.cmd"
if "%CCONPATH%"=="" goto :NOCUST
mkdir "%CCONPATH%"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [LOC] "%CCONPATH%"
popd
goto :injectall

:INDVCONT
del /s /q "%GBG%\%GAM%\%CONS%\%CSTCONS%\zz.bat"

:J2KCP
if "%J2KCST%"=="0" goto :XPDCP
"%SEVENZIP%" x -y "%GBC%\net\%J2KPROF%\%J2KPROF%.zip" -o"%GBC%\net\%J2KPROF%"

pushd "%GBG%\%GAM%\%CONS%\%CSTCONS%"
copy /Y "%GBC%\net\%J2KPROF%\%CSTCONS%\*.cfg" "%CUSTCONSPTH%"
for /f "tokens=* delims= " %%a in ('dir /b /ad /s') do rename "%%a\zz2.cfg" "%%~na2.cfg"
for /f "tokens=* delims= " %%a in ('dir /b /ad /s') do rename "%%a\zz1.cfg" "%%~na1.cfg"
popd

pushd "%GBC%"
:XPDCP
if "%XPDCST%"=="0" goto :folderPrcd
"%SEVENZIP%" x -y "%GBC%\net\%XPROF%\%XPROF%.zip" -o"%GBC%\net\%XPROF%"
cd "%CUSTCONSPTH%"
if "%XPDEF%"=="1" copy /Y "%GBC%\net\%XPROF%\%CSTCONS%\*.xpadderprofile" "%CD%"
if "%XPDBLNK%"=="1" copy /Y "%GBC%\net\%XPROF%\Other\*.xpadderprofile" "%CD%"
if "%XPDEMU%"=="1" copy /Y "%GBC%\net\%XPROF%\EMU\%CSTCONS%\*.xpadderprofile" "%CD%"

for /f "tokens=* delims= " %%a in ('dir /b /ad-h') do copy /Y "*.xpadderprofile" "%%~a"
popd

if "%CUSTCONSPTH%"=="" goto :CANCELLED
del /q "%CUSTCONSPTH%\Player1.xpadderprofile"
del /q "%CUSTCONSPTH%\Player2.xpadderprofile"
del /s /q "%CUSTCONSPTH%\zz.cfg"
del /s /q "%CUSTCONSPTH%\zz.bat"
del /s /q "%CUSTCONSPTH%\*.cmd"
if "%NOTEXST%" NEQ "1" goto :folderPrcd

:CANCELLED
start "" "%GBC%\wbusy.exe" "INJECTION" "CANCELLED" /Stop /timeout:1
goto :indvcomplete

:folderPrcd
start "" "%GBC%\wbusy.exe" "INJECTION" "Launcher injections complete." /Stop /timeout:1

:indvcomplete
:INDVOUT
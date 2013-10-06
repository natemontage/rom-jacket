:SELCUST
set CUSTGAMPATH=
SET CSTCONS=
:CONSOLETYPE
del /q "%GBC%\conexist.ini"
echo ---------->"%GBC%\conexist.ini""
echo Other>>"%GBC%\conexist.ini""
echo ---------->>"%GBC%\conexist.ini""
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo.%%~a>>"%GBC%\conexist.ini"
"%GBC%\Wselect.exe" "%GBC%\conexist.ini" "Select A Console" "set CSTCONS=$item" > "%GBC%\customCons.cmd"
if %errorlevel%==0 GOTO :INDVOUT
CALL "%GBC%\customCons.cmd"
if "%CSTCONS%"=="----------" goto :CONSOLETYPE

:ROMPTHCONT
"%SEVENZIP%" x -y "%GBC%\net\%LNCH%\%LNCH%.zip" -o"%GBC%\net\%LNCH%"
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET GAMTPATH=" "%GBG%\%GAM%\%CONS%\*.*" "Where is the Rom?" /noquote') do %%a
for /f "tokens=* delims= " %%a in ("%GAMTPATH%") do (
SET GAMT=%%~na
SET CNGAMT=%%~nxa
SET GAMTEXT=%%~xa
set CSTGAMTTMP=%%~dpa
)
for %%A in ("%CSTGAMTTMP:~0,-1%") do set CUSTGAMPATH=%%~A
for %%A in ("%CSTGAMTTMP:~0,2%") do set CSTDIR=%%~A
IF /I "%CUSTGAMPATH%"=="" goto :SELCUST

:CFGOPTION
if "%CSTCONS%"=="%WIN32%" goto :GGOFF
if "%CSTCONS%"=="%TAITX%" goto :GGOFF
if "%CSTCONS%"=="%FLASH%" goto :GGOFF

"%GBC%\wbox.exe" "pergame" "Would you like to enable^''per-game''^configurations for this console and emulator?" "Per-Game;Global" /DB=1 /BW=250
if %ERRORLEVEL%==1 goto :GGON
if %ERRORLEVEL%==2 goto :GGOFF
goto :INDVOUT

:GGON
SET GGON=1
goto :MONITORS
:GGOFF
SET GGOFF=1
goto :MONITORS

:MONITORS
set DB=2
if "%CSTCONS%"=="%ATMS%" goto :MMONON
if "%CSTCONS%"=="%NAOMI%" goto :MMONON
if "%GBM%"=="1" set DB=1
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
"%GBC%\wbox.exe" "xpdtst" "###XPADDER IS ENABLED###^^-DEFAULT-^   Default profile is created^^-BLANK-^   Empty profile is created^^-EMU-^   Profile with emulator functionality only is created^^-DISABLE-^   Disable Xpadder^" "Default;Blank;Emu;Disable;Help" /DB=%DB%
if %ERRORLEVEL%==1 goto :XPDON
if %ERRORLEVEL%==2 goto :XPDBLNK
if %ERRORLEVEL%==3 goto :XPDEMU
if %ERRORLEVEL%==4 goto :XPDOFF
if %ERRORLEVEL%==5 goto :HELP
goto :INDVOUT

:J2Ktst
SET DB=1
if "%JOY2KEY%"=="DISABLED" SET DB=2
"%GBC%\wbox.exe" "J2Ktst" "Would you like to enable JoyToKey for this game?" "Yes;No" /DB=%DB% 
if %ERRORLEVEL%==1 goto :J2KON
if %ERRORLEVEL%==2 goto :J2KOFF
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
if "%DAMVAR%"=="DISABLED" SET DB=2
if "%CSTCONS%"=="Other" goto :dtquery
if "%CSTCONS%"=="%FMTOWNS%" goto :dtquery
if "%CSTCONS%"=="%SSAT%" goto :dtquery
goto :DTOFF
:dtquery
"%GBC%\wbox.exe" "daemntest" "Would you like to enable Daemon Tools for this console?" "Yes;No" /DB=%DB% 
if %ERRORLEVEL%==1 goto :DTON
if %ERRORLEVEL%==2 goto :DTOFF
goto :INDVOUT

:DTON
set DTCST=1
SET DTON=1
goto :CONSOLECHECK

:DTOFF
set DTCST=0
SET DTOFF=1
:CONSOLECHECK
if "%CSTCONS%"=="Other" goto :emuselect
set CSTCONS=Other
for %%A in ("%CUSTGAMPATH:%%GAMT%%=%") do set _endbit=%%~A
CALL SET _result=%%CUSTGAMPATH:%_endbit%=%%
for %%A in ("%_result:~0,-1%") do set GAMCONTMP=%%~A
for %%A in ("%GAMCONTMP:*\Console\=%") do set GAMCONPTH=%%~A
for /f "tokens=* delims= " %%a in ('type "%GBC%\conSelect.set"') do (
if "%GAMCONPTH%"=="%%~a" set CSTCONS=%%~a
)

:emuselect
if "%CSTCONS%"=="Other" goto :chooseEmu
"%GBC%\wbox.exe" "Choose" "Select An Emulator to associate with %CSTCONS%" "Default;Choose" /DB=1 /BW=120
if %ERRORLEVEL%==1 goto :defaultEmu
if %ERRORLEVEL%==2 goto :chooseEmu
goto :gamFin

:defaultEmu
set CEMU=Default
if "%CSTCONS%"=="Other" goto :chooseEmu
call "%GBC%\emuDefaults.bat"
goto :injcst

:chooseEmu
SET MANEMU=1
set CEMU=Choose
"%GBC%\Wselect.exe" "%GBC%\supportedEmulators.set" "Select An Emulator to associate with %CNGAMT%" "set CEMU=$item" > "%GBC%\emuAssign.cmd"
if %errorlevel%==0 GOTO :SELCUST
CALL "%GBC%\emuAssign.cmd"
for %%A in ("%CEMU:~0,1%") do set CEMUCHOICE=%%~A
if /I "%CEMUCHOICE%"=="-" goto :emuselect

:injcst
CALL :CSTINJ
if /I "%CEMU%"=="CustomEmulator" goto :CustExe
goto :emuopt

:CSTINJ
if "%MANEMU%"=="1" SET CSTCONS=Other
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
if "%GGON%"=="1" "%GBC%\fart.exe" "zy.bat" [XFG] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zy.bat" "[XFG]" "REM [XFG]"
if "%MMON%"=="1" "%GBC%\fart.exe" "zy.bat" [DSP] --remove
if "%MMONOFF%"=="1" "%GBC%\fart.exe" "zy.bat" "[DSP]" "REM [DSP]"
popd
if "%J2KON%" NEQ "1" goto :j2koff
:jon
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" --remove "REM [XPT]"
"%GBC%\fart.exe" "zy.bat" XPADDER JOY2KEY
"%GBC%\fart.exe" "zy.bat" xpadderprofile cfg
"%GBC%\fart.exe" "zy.bat" "^%^CD%%\%%~na2" --remove
popd
if "%J2KOFF%"=="1" goto :j2koff
:j2koff
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" "[XPT]" "REM [XPT]"
if "%XPDON%"=="1" "%GBC%\fart.exe" "zy.bat" [XPT] --remove
if "%XPDOFF%"=="1" "%GBC%\fart.exe" "zy.bat" "[XPT]" "REM [XPT]"
if "%DTON%"=="1" "%GBC%\fart.exe" "zy.bat" "[DMT]" --remove
if "%DTOFF%"=="1" "%GBC%\fart.exe" "zy.bat" "[DMT]" "REM [DMT]"
popd
exit /b

:emuopt
set ROMPTH="\"^%%^CD%%\%%GAMDIR%%.[EXT]"\"
SET EXTSET=.[EXT]
SET CONFSET=*.ini
if "%CSTCONS%"=="Other" goto :CUSTSYS
if "%CEMU%" NEQ "CustomEmulator" goto :copy
:CUSTSYS
"%GBC%\Winput.exe" "set OPTIONS=$input" "enter emulator options/switches (These are passed before the rom)" "%EMUOPT%" >"%GBC%\options.cmd"
if %ERRORLEVEL%==1 goto :emuarg
pushd "%GBC%"
"%GBC%\fart.exe" "options.cmd" "\"" "\\"\"
popd
call "%GBC%\options.cmd"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
if "%OPTIONS%"=="" "%GBC%\fart.exe" "zy.bat" [OPT] --remove
popd
goto :emuarg

:emuarg
"%GBC%\Winput.exe" "set ARGUMENTS=$input" "enter emulator arguments (these are passed after the rom)"  >"%GBC%\arguments.cmd"
if %ERRORLEVEL%==1 goto :rompth
pushd "%GBC%"
"%GBC%\fart.exe" "arguments.cmd" "\"" "\\"\"
call "%GBC%\arguments.cmd"
popd
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
if "%ARGUMENTS%"=="" "%GBC%\fart.exe" "zy.bat" [ARG] --remove
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
"%GBC%\fart.exe" "zy.bat" [IND] --remove
popd
goto :rompth

:FROMROM
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" "[IND]" "REM [IND]"
popd
goto :rompth

:rompth
"%GBC%\Wbox.exe" "Fullpath" "You can use only the name of the ROM or the FULL PATH of the rom.^If you are unsure, use ''FULL''." "FULL;ROM" /DB=1
if %ERRORLEVEL%==1 goto :FULLPTH
if %ERRORLEVEL%==2 goto :ROMONLY
goto :FULLPTH

:FULLPTH
set ROMPTH="\"^%%GAMDIR%%\[TMP].[EXTN]"\"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" [ROM] "%ROMPTH%"
"%GBC%\fart.exe" "zy.bat" [TMP] "%GAMT%"
popd
goto :EXTCHK

:ROMONLY
SET ROMPTH="\"^[TMP].[EXTN]"\"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" [ROM] "%ROMPTH%"
"%GBC%\fart.exe" "zy.bat" [TMP] "%GAMT%"
popd
goto :EXTCHK

:EXTCHK
"%GBC%\Wbox.exe" "EXTENSION" "Would you like to use the rom-extension for the rom?" "Yes;No;Custom" /DB=1
if %ERRORLEVEL%==1 goto :EXTON
if %ERRORLEVEL%==2 goto :NOEXT
if %ERRORLEVEL%==3 goto :CSTEXT
goto :EXTON

:CSTEXT
"%GBC%\Winput.exe" "set EXTNSEL=$input" "Enter the extension you wish to use. (e.g: ZIP)" >"%GBC%\extSel.cmd"
if %ERRORLEVEL%==1 goto :CONFIGFILE
call "%GBC%\extSel.cmd"
for %%A in ("%EXTSEL%") do set EXTCHK=%%~A
SET DOTCHK=%EXTNSEL:~0,1%
if "%DOTCHK%"=="." set EXTCHK=%EXTCHK:~1,6%
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" [EXTN] "%EXTCHK%"
"%GBC%\fart.exe" "zy.bat" [EXT] "%EXTCHK%"
popd
goto :CONFIGFILE

:EXTON
SET EXTCHK=[EXT]
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" [EXTN] [EXT]
popd

:NOEXT
SET EXTCHK=[EXTN]
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" .[EXTN] --remove
popd

:CONFIGFILE
if "%fromdir%"=="1" set EMUCFG=Mess.ini
"%GBC%\Winput.exe" "set CONFIGFILE=$input" "Enter the name of the config file.  You can use wildcards. ''ie: *.ini  ''" "%EMUCFG%" > "%GBC%\configfile.cmd"
if %ERRORLEVEL%==1 goto :custchk
if not errorlevel 1 call "%GBC%\configfile.cmd"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
if "%CONFIGFILE%"=="" "%GBC%\fart.exe" "zy.bat" "copy /y" "REM copy /y"
"%GBC%\fart.exe" "zy.bat" [CFG] "%CONFIGFILE%"
popd

:custchk
echo %OPTIONS%>"%GBC%\opt.dat"
echo %ARGUMENTS%>"%GBC%\arg.dat"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
for %%R in ("%GBC%\opt.dat") do if "%%~zR" equ "" "%GBC%\fart.exe" "zy.bat" [OPT] --remove
for %%R in ("%GBC%\opt.dat") do if %%~zR equ 0 "%GBC%\fart.exe" "zy.bat" [OPT] --remove
for %%R in ("%GBC%\arg.dat") do if "%%~zR" equ "" "%GBC%\fart.exe" "zy.bat" [ARG] --remove
for %%R in ("%GBC%\arg.dat") do if %%~zR equ 0 "%GBC%\fart.exe" "zy.bat" [ARG] --remove
"%GBC%\fart.exe" "zy.bat" [OPT] " %OPTIONS%"
"%GBC%\fart.exe" "zy.bat" [ARG] " %ARGUMENTS%"
popd

:copy
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" [EMUL] "%GBE%\%EMUZ%\%CEMU%" 
popd

:SETEMUS
if "%CEMU%" NEQ "%M2EMU%" goto :SETEMUCONT
if "%ARPOP%"=="64" set CEMU=emulator_multicpu
if "%ARPOP%"=="32" set CEMU=emulator
:SETEMUCONT
if /i "%CEMU%"=="%PSX%" set CEMU=psxfin
if /i "%CEMU%"=="%PLAY3DO%" set CEMU=3DOEmu
if /i "%CEMU%"=="%WCDI%" set CEMU=CDIWrapper
if /i "%CEMU%"=="%FSHPL%" set CEMU=FullScreenFlash
if /i "%CEMU%"=="%ELECEM%" set CEMU=Electron
if /i "%CSTCONS%"=="%ACELE%" set CEMU=Electron
if /i "%CSTCONS%"=="%SHRPX1%" set CEMU=X1
if /i "%CEMU%"=="%XTURB%" set CEMU=X1
if /i "%CSTCONS%"=="%NEOCD%" set CEMU=%NEORAINE%32
if /i "%CEMU%"=="%NEORAINE%" set CEMU=%NEORAINE%32
if /i "%CSTCONS%"=="%NGBA%" set CEMU=%VGBA%-M
if /i "%CEMU%"=="%VGBA%" set CEMU=%VGBA%-M
if /i "%CSTCONS%"=="%ATST%" set CEMU=Steemz
if /i "%CEMU%"=="%STEEM%" set CEMU=Steemz
if /i "%CEMU%"=="%FBA%" set CEMU=fba
if /i "%CEMU%"=="%VICE%" set CEMU=x64
if /i "%CEMU%"=="%INTV%" set CEMU=%INTV%32
if /i "%CEMU%"=="%VSVH%" set CEMU=%VSVH%.Win
if /i "%CSTCONS%"=="%PC98%" set CEMU=np21nt
if /i "%CSTCONS%"=="%NAOMI%" set CEMU=%NAOMI%
if /i "%CSTCONS%"=="%ATMS%" set CEMU=%ATMS%
if /i "%CEMU%"=="%NEKO%" set CEMU=np21nt
if /i "%CEMU%"=="%NOGBA%" set CEMU=NDS
if /i "%CEMU%"=="%MAME%" set CEMU=%MAME%
if /i "%CEMU%"=="%ZSNS%" set CEMU=%ZSNS%w
if /i "%CEMU%"=="%NULLDC%" set CEMU=nullDC_Win32_Release-NoTrace
if /i "%CSTCONS%"=="%JAGCD%" set CEMU=PTCDWrapper
if /i "%CSTCONS%"=="%JAG%" set CEMU=vjag
if /i "%CSTCONS%"=="%FM7%" set CEMU=%XM7%
if /i "%CEMU%"=="%PTMPS%" set CEMU=PTCDWrapper
if /i "%CEMU%"=="%JAG%" set CEMU=vjag

pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" [EMUZ] "%CEMU%" 
"%GBC%\fart.exe" "zy.bat" [LOC] "%CUSTGAMPATH%"
popd

:injectall
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" [DAMVAR] "%DAMVAR%" 
"%GBC%\fart.exe" "zy.bat" [XPD] "%XPADDER%" 
"%GBC%\fart.exe" "zy.bat" [J2K] "%JOY2KEY%" 
popd

del /s /q "%CUSTGAMPATH%\*.bat"
del /s /q "%CUSTGAMPATH%\*.ini"
del /s /q "%CUSTGAMPATH%\*.cfg"
del /s /q "%CUSTGAMPATH%\*.xpadderprofile"

start "" "%GBC%\wbusy.exe" "jacketizing" "Processing %GAMT%." /marquee

%CSTDIR%
cd "%CUSTGAMPATH%"
CALL :COPYMVROM
goto :extensionchk

:COPYMVROM
copy /Y "%GBC%\net\%LNCH%\%CSTCONS%\zy.bat" "%CUSTGAMPATH%"
if not exist "%CUSTGAMPATH%\%GAMT%.bat" copy /Y "%CUSTGAMPATH%\zy.bat" "%CUSTGAMPATH%"
if not exist "%CUSTGAMPATH%\%GAMT%.bat" move /Y "%CUSTGAMPATH%\zy.bat" "%CUSTGAMPATH%\%GAMT%.bat"
exit /b

:extensionchk
CALL "%GBC%\extinjONE.bat"
pushd "%CUSTGAMPATH%"
"%GBC%\fart.exe" "%GAMT%.bat" .[EXT] "%GAMTEXT%"
popd
if "%J2KCST%"=="1" goto :J2KCP
if "%XPDCST%"=="1" goto :XPDCP
goto :INDVCONT

:CustExe
if "%CEMU%" NEQ "CustomEmulator" goto :injBat
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET CEMUPATH=" "%GBE%\%EMUZ%\*.*" "Where is the emulator executable?" /noquote') do %%a
for /f "tokens=* delims= " %%a in ("%CEMUPATH%") do (
SET CNEMU=%%~nxa
SET CEMU=%%~na
set CSTEMLTMP=%%~dpa
)
for %%A in ("%CSTEMLTMP:~0,-1%") do set CSTEML=%%~A
IF /I "%CSTEML%"=="" goto :SELCUST
if /I "%CSTEML%"=="CustomEmulator" set CSTCONS=Other

:emuopt2
"%GBC%\Winput.exe" "set OPTIONS=$input" "enter emulator options/switches ''i.e: -fullscreen''">"%GBC%\options.cmd"
if %ERRORLEVEL%==1 goto :emuarg
pushd "%GBC%"
"%GBC%\fart.exe" "options.cmd" "\"" "\\"\"
popd
if not errorlevel 1 call "%GBC%\options.cmd"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
if "%OPTIONS%"=="" "%GBC%\fart.exe" "zy.bat" [OPT] --remove
"%GBC%\fart.exe" "zy.bat" [OPT] " %OPTIONS%"
popd
goto :emuarg

:emuarg2
"%GBC%\Winput.exe" "set ARGUMENTS=$input" "enter emulator arguments i.e: ''%%CD%\%%ROM%''">"%GBC%\arguments.cmd"
if %ERRORLEVEL%==1 goto :rompth2
pushd "%GBC%"
"%GBC%\fart.exe" "arguments.cmd" "\"" "\\"\"
popd
if not errorlevel 1 call "%GBC%\arguments.cmd"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" [ARG] " %ARGUMENTS%"
popd
goto :rompth3

:rompth3
set fromdir=2
if /I "%CEMU%"=="Mess64ui" set fromdir=1
if /I "%CEMU%"=="Mess64" set fromdir=1
if /I "%CEMU%"=="Mess" set fromdir=1
if /I "%CEMU%"=="Messui" set fromdir=1
if /I "%CEMU%"=="UME" set fromdir=1
if /I "%CEMU%"=="UME64" set fromdir=1
"%GBC%\Wbox.exe" "fromdir" "Run Emluator from directory?" "YES;NO" /DB=%fromdir%
if %ERRORLEVEL%==1 goto :FROMDIR1
if %ERRORLEVEL%==2 goto :FROMROM1
goto :FROMROM1

:FROMDIR1
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" [IND] --remove
popd
goto :rompth2

:FROMROM1
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" "[IND]" "REM [IND]"
popd
goto :rompth2

:rompth2
"%GBC%\Wbox.exe" "Fullpath" "You can use only the name of the ROM or the FULL PATH of the rom.^If you are unsure, use ''FULL''." "FULL;ROM" /DB=1
if %ERRORLEVEL%==1 goto :FULLPTH2
if %ERRORLEVEL%==2 goto :ROMONLY2
goto :INDVOUT

:FULLPTH2
SET ROMPTH="\"^%%GAMDIR%%\[TMP].[EXTN]"\"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" [ROM] "%ROMPTH%"
"%GBC%\fart.exe" "zy.bat" [TMP] "%GAMT%"
popd
goto :EXTCHK2

:ROMONLY2
SET ROMPTH="\"^[TMP].[EXTN]"\"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" [ROM] "%ROMPTH%"
"%GBC%\fart.exe" "zy.bat" [TMP] "%GAMT%"
popd
goto :EXTCHK2

:EXTCHK2
"%GBC%\Wbox.exe" "EXTENSION" "Would you like RoM-Jacket to detect rom-extension for the library?" "Detect;Skip;Custom" /DB=1
if %ERRORLEVEL%==1 goto :EXTON2
if %ERRORLEVEL%==2 goto :NOEXT2
if %ERRORLEVEL%==3 goto :CSTEXT2
goto :EXTON2

:CSTEXT2
"%GBC%\Winput.exe" "set EXTNSEL=$input" "Enter the extension you wish to use. (e.g: ZIP)" >"%GBC%\extSel.cmd"
if %ERRORLEVEL%==1 goto :CONFIGFILE2
call "%GBC%\extSel.cmd"
for %%A in ("%EXTSEL%") do set EXTCHK=%%~A
SET DOTCHK=%EXTNSEL:~0,1%
if "%DOTCHK%"=="." set EXTCHK=%EXTCHK:~1,6%
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" [EXTN] "%EXTCHK%"
"%GBC%\fart.exe" "zy.bat" [EXT] "%EXTCHK%"
popd
goto :CONFIGFILE2


:EXTON2
set EXTCHK=[EXT]
:NOEXT2
set EXTCHK=[EXTN]

:CONFIGFILE2
"%GBC%\Winput.exe" "set CONFIGFILE=$input" "Enter the name of the config file.  You can use wildcards. ''ie: *.ini  ''"  > "%GBC%\configfile.cmd"
if %ERRORLEVEL%==1 goto :custchk
if not errorlevel 1 call "%GBC%\configfile.cmd"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" [CONFIG] "%CONFIGFILE%"
popd


:injBat
if "%CNEMU%"=="" SET CNEMU=%CSTCONS%
echo %CNEMU% >>"%GBC%\custEmu.ini"
if "%CCONSOLE%"=="" SET CCONSOLE=%CSTCONS%
echo "REM [%CCONSOLE%]:: >>"%GBC%\custEmu.bat"
echo SET CSTEML=%CSTEML% >>"%GBC%\custEmu.bat"
echo SET CEMU=%CEMU% >>"%GBC%\custEmu.bat"
echo SET CUSTCONSPTH=%CUSTCONSPTH% >>"%GBC%\custEmu.bat"
echo SET OPTIONS=%OPTIONS% >>"%GBC%\custEmu.bat"
echo SET ARGUMENTS=%ARGUMENTS% >>"%GBC%\custEmu.bat"
echo SET CONFIGFILE=%CONFIGFILE% >>"%GBC%\custEmu.bat"
echo SET ROMPTH=%ROMPTH% >>"%GBC%\custEmu.bat"
echo SET EXTCHK=%EXTCHK% >>"%GBC%\custEmu.bat"
echo. if "^%ARGUMENTS%"=="" "^%GBC%\fart.exe" "^%GBC%\net\^%LNCH%\^%CSTCONS%\zy.bat" [ARG] --remove >>"%GBC%\custEmu.bat"
echo. if "^%OPTIONS%"=="" "^%GBC%\fart.exe" "^%GBC%\net\^%LNCH%\^%CSTCONS%\zy.bat" [OPT] --remove >>"%GBC%\custEmu.bat"
echo. if "^%CONFIGFILE%"=="" "^%GBC%\fart.exe" "^%GBC%\net\^%LNCH%\^%CSTCONS%\zy.bat" [CFG] --remove >>"%GBC%\custEmu.bat"
echo. if "^%EXTCHK%"=="[EXTN]" "^%GBC%\fart.exe" "^%GBC%\net\^%LNCH%\^%CSTCONS%\zy.bat" .[EXTN] --remove >>"%GBC%\custEmu.bat"
echo. if "^%EXTCHK%"=="[EXT]" "^%GBC%\fart.exe" "^%GBC%\net\^%LNCH%\^%CSTCONS%\zy.bat" [EXTN] [EXT] >>"%GBC%\custEmu.bat"

rename "%GBC%\custEmu.bat" "%CCONSOLE%custEmu.bat"


echo %OPTIONS%>"%GBC%\opt.dat"
echo %ARGUMENTS%>"%GBC%\arg.dat"
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
for %%R in ("%GBC%\opt.dat") do if %%~zR equ 0 "%GBC%\fart.exe" "zy.bat" [OPT] --remove
for %%R in ("%GBC%\arg.dat") do if %%~zR equ 0 "%GBC%\fart.exe" "zy.bat" [ARG] --remove
popd
goto :injectCustom

:injectCustom
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zy.bat" [EMUL] "%CSTEML%"
"%GBC%\fart.exe" "zy.bat" [EMUZ] "%CEMU%"
popd
goto :copy

:INDVCONT
del /s /q "%GAMTPATH%\zz*.bat"

:J2KCP
if "%J2KCST%"=="0" goto :XPDCP
"%SEVENZIP%" x -y "%GBC%\net\%J2KPROF%\%J2KPROF%.zip" -o"%GBC%\net\%J2KPROF%"
%GAMDIR%
cd "%GBG%\%GAM%\%CONS%\%CSTCONS%"
copy /Y "%GBC%\net\%J2KPROF%\%CSTCONS%\*.cfg" "%CUSTGAMPATH%"
for /f "tokens=* delims= " %%a in ('dir /b /ad /s') do rename "%%a\zz2.cfg" "%%~na2.cfg"
for /f "tokens=* delims= " %%a in ('dir /b /ad /s') do rename "%%a\zz1.cfg" "%%~na1.cfg"
%GBD%
cd "%GBC%"

:XPDCP
if "%XPDCST%"=="0" goto :INDVOUT
"%SEVENZIP%" x -y "%GBC%\net\%XPROF%\%XPROF%.zip" -o"%GBC%\net\%XPROF%"
cd "%CUSTGAMPATH%"
if "%XPDEF%"=="1" copy /Y "%GBC%\net\%XPROF%\%CSTCONS%\*.xpadderprofile" "%CUSTGAMPATH%"
if "%XPDBLNK%"=="1" copy /Y "%GBC%\net\%XPROF%\Other\*.xpadderprofile" "%CUSTGAMPATH%"
if "%XPDEMU%"=="1" copy /Y "%GBC%\net\%XPROF%\EMU\%CSTCONS%\*.xpadderprofile" "%CUSTGAMPATH%"
for /f "tokens=* delims= " %%i in ('dir /b /ad "%CUSTGAMPATH%"') do copy /Y "%CUSTGAMPATH%\	" "%CUSTGAMPATH%\%%~ni"
%GBD%
cd "%GBC%"

:INDVOUT
if "%CUSTGAMPATH%"=="" goto :gamPrcd
del /q "%CUSTGAMPATH%\Player1.xpadderprofile"
del /q "%CUSTGAMPATH%\Player2.xpadderprofile"
del /s /q "%CUSTGAMPATH%\zz.cfg"
del /s /q "%CUSTGAMPATH%\zy.bat"
del /s /q "%CUSTGAMPATH%\*.cmd"
if "%NOTEXST%" NEQ "1" goto :gamPrcd
:gamPrcd
start "" "%GBC%\wbusy.exe" "jacketizing" "%GAMT% Processed" /Stop /timeout:1
:gamFin
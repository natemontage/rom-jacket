if "%DLGM%"=="1" goto :CSD
if "%DLGM%"=="0" goto :IND
:FOLDERQUERY
SET DLM= 
:FOLDERQUERY
SET DLM= 

"%GBC%\wbox.exe" "FolderTest" "Would you like to consolidate your rom-collections?^^##############^#Consolidate#^#############^Groups roms according to the base-name.^^############^#Individuate#^############^Each rom gets it's own folder.^" "Consolidate;Individuate;Help" /DB=1
if %ERRORLEVEL%==1 goto :CSD
if %ERRORLEVEL%==2 goto :IND
if %ERRORLEVEL%==3 goto :HELP
goto :regen

:regen
SET RCALL=1

goto :generatedlib
:CSD
if "%BYPMG%"=="1" goto :JUSTONE
"%GBC%\wbox.exe" "Multi-Launcher" "^Create a launcher for each rom in a group?" "ALL;ONE" /db=2
if %ERRORLEVEL%==1 goto :FOREACH
if %ERRORLEVEL%==2 goto :JUSTONE
goto :JUSTONE

:JUSTONE
set FERID=
set DLM=0
goto :FOLDERBEGIN

:FOREACH
"%SEVENZIP%" x -y "%GBC%\net\%LNCH%\INDV.zip" -o"%GBC%\net\%LNCH%"
set FERID=1
set DLM=0
goto :FOLDERBEGIN

:IND
set DLM=1
goto :FOLDERBEGIN

:HELP
"%GBC%\docs\select.html"
"%GBC%\wbox.exe" "opening" "Help is opening" "OK" /TM=3
if %ERRORLEVEL%==1 goto :FOLDERQUERY
goto :FOLDERQUERY

:FOLDERBEGIN

start "" "%GBC%\wbusy.exe" "jacketizing" "Processing the %CASTNAME% folder." /marquee

pushd "%CUSTCONSPTH%"
if "%CUSTCONSPTH%"=="" goto :libout
if "%CUSTCONSPTH%"=="%GBC%" goto :libout
CALL :libiterate
popd
pushd "%GBG%\%GAM%\%CONS%"
start "" "%GBC%\wbusy.exe" "jacketizing" "%CASTNAME% folder Processed" /Stop /timeout:1
goto :libout

:libiterate

:CSTINJ
if "%MANEMU%"=="1" SET CSTCONS=Other
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

:copy
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
if "%CSTCONS%"=="%ARCD%" CALL "%GBC%\mameAlias.bat"
if "%CSTCONS%"=="%PCENG%" CALL "%GBC%\necAlias.bat"
if "%CSTCONS%"=="%SGFX%" CALL "%GBC%\necAlias.bat"
if "%CSTCONS%"=="%TG16%" CALL "%GBC%\necAlias.bat"
if "%CSTCONS%"=="%CPS%" CALL "%GBC%\cpsAlias.bat"
if "%CSTCONS%"=="%CPS2%" CALL "%GBC%\cps2Alias.bat"
if "%CSTCONS%"=="%CPS3%" CALL "%GBC%\cps3Alias.bat"
if "%CSTCONS%"=="%NEO64%" CALL "%GBC%\HNG64Alias.bat"
if "%CSTCONS%"=="%NEOGE%" CALL "%GBC%\neogeoAlias.bat"
if "%CSTCONS%"=="%SEGM2%" CALL "%GBC%\model2Alias.bat"
if "%CSTCONS%"=="%SEGM3%" CALL "%GBC%\model3Alias.bat"
if "%CSTCONS%"=="%NAOMI%" CALL "%GBC%\naomiAlias.bat"
if "%CSTCONS%"=="%ATMS%" CALL "%GBC%\atomisAlias.bat"
if "%CSTCONS%"=="%SEGAG%" CALL "%GBC%\megaDriveAlias.bat"
if "%CSTCONS%"=="%TAITX%" CALL "%GBC%\TAITXAlias.bat"	

if "%DLM%"=="1" call :hidemeta
if "%DLM%"=="1" call :MOVEONE
if "%DLM%"=="1" exit /b

:MOVEREMAINING
del /q "%GBC%\ROMS*.ini"
for /f "tokens=* delims= " %%a in ('dir /b /a-d-h') do (
SET SNAME=
SET TOTALCOUNT=
SET RCOUNT=
SET ROMF=%%~na
SET ROMA=%%~a
CALL :DEFCHK
)

:BASE_NAME_PARENTH
for /f "tokens=* delims= " %%a in ('dir /b /a-d-h "*(*"') do (
SET RCOUNT=
SET TOTALCOUNT=
SET SNAME=
call :hidemeta
SET ROMK=%%~na
SET ROMX=%%~nxa
call :GETPARENTH
call :unhidemeta
)
goto :MOVELIST
exit /b

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::PROCEDURES:::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:DEFCHK
for /f "tokens=1 delims=(" %%a in ("%ROMF%") do SET SNAME=%%~nxa
if "%SNAME%" NEQ "%ROMF%" exit /b
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%ROMF%*"') do SET /A TOTALCOUNT+=1
echo."%ROMF%">>"%GBC%\ROMS-%TOTALCOUNT%-.ini" 
exit /b

:MOVEONE
for /f "Tokens=* delims= " %%a in ('dir /b/a-d-h') do (
md "%%~na" >null
move /y "%%~a" "%%~na"
)
exit /b

:MOVETRANSFORMED
exit /b

:MOVEALL
for %%a in ("%ROMF%") do set FOROM=%%~nxa
for /f "tokens=* delims= " %%a in ('dir /b /a-d-h "%ROMF%.*"') do (
move "%%~a" "%FOROM%"
)
exit /b

:UPDATE
if "%CLSTR%"=="~0,1" set CLSTR=
if "%CLSTR%"=="" exit /b
if "%CLCHNG%" NEQ "%CLSTR%" start "" "%GBC%\wbusy.exe" "jacketizing" "Processing the ''%CLSTR%'' cluster of the %CASTNAME% library." /marquee
SET CLCHNG=%CLSTR%
exit /b

:COUNTSHRT
for /f "tokens=* delims= " %%a in ("%SNAME%") do set SNAME=%%~nxa
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%SNAME%*"') do SET /A TOTALCOUNT+=1
exit /b

:GETPARENTH
SET CLSTR=
SET TOTALCOUNT=
for /f "tokens=1 delims=(" %%a in ("%ROMX%") do (
SET SNAME=%%~nxa
CALL :COUNTSHRT
)
set CLSTR=%SNAME:~0,1%
CALL :UPDATE
CALL :WRITEINI
exit /b

:GETEXTENSION
echo."%SNAME%" | findstr /C:"." 1>nul
if errorlevel 0 call :TRANSFORMNAME
exit /b

:WRITEINI
for %%a in ("%SNAME%") do echo."%%~nxa">>"%GBC%\ROMS-%TOTALCOUNT%-.ini"
mkdir "%SNAME%"
exit /b

:MOVELIST
start "" "%GBC%\wbusy.exe" "jacketizing" "Consolidating the %CASTNAME% library." /marquee
SET /A NEWNUM=0
:STRT
SET /A NEWNUM+=1
call :chkfor
if %NEWNUM%==500 exit /b
goto :STRT

:chkfor
if exist "%GBC%\ROMS-%NEWNUM%-.ini" CALL :COPYINI
exit /b

:COPYINI
"%GBC%\fart.exe" "%GBC%\ROMS-%NEWNUM%-.ini" \" --remove
for /f "tokens=* delims= " %%a in ('TYPE "%GBC%\ROMS-%NEWNUM%-.ini"') do (
mkdir "%%~a"
SET TOREN=%%~a
call :RENAME
)
exit /b

:RENAME
for /f "tokens=* delims= " %%a in ("%TOREN%") do SET SNAME=%%~nxa
move /y "%SNAME%*.*" "%SNAME%"
exit /b

:NUMEND
exit /b
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:MOVEIN_B
md "%ROMN%" >nul
for /f "tokens=* delims= " %%a in ('dir /b /a-d-h "%ROMN%*[*"') do (
move "%%~a" "%ROMN%"
)
exit /b

:MOVEIN_P
for /f "tokens=1 delims=(" %%a in ('dir /b/a-d-h "%SNAME%*"') do (
set SNAME=%%~nxa
mkdir "%%~nxa"
)

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:CONCATNAME
for /f "tokens=1 delims=(" %%a in ('dir /b/a-d-h "%ROMF%") do set SNAME=%%~nxa

exit /b

:TRANSFORMNAME
for %%a in ("%SNAME%") do set SNAME=%%~nxa

exit /b

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::METASKIP:::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:hidemeta
for /f "tokens=* delims= " %%a in ('dir /b /a "*.settings" "*.config" "*.conf" "*.cfg" "*.ini" "*.jpg" "*.png" "*.xml" "*.tbn" "*.nfo"') do ATTRIB +H "%%~a"
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*.pdf"') do if "%%~xa"==".pdf" move /y "%%~a" ".Man"
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*.mp4"') do if "%%~xa"==".mp4" move /y "%%~a" "backdrops"
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*.exe"') do if "%%~xa"==".exe" SET EXEFLAG=1
exit /b
:unhidemeta
for /f "tokens=* delims= " %%a in ('dir /b /a "*.settings" "*.config" "*.conf" "*.cfg" "*.ini" "*.jpg" "*.png" "*.xml" "*.tbn" "*.nfo"') do ATTRIB -H "%%~a"for /f "tokens=* delims= " %%a in ('dir /b /a-d "*.pdf"') do if "%%~xa"==".pdf" move /y "%%~a" ".Man"
exit /b
:libout
popd

:generatedlib
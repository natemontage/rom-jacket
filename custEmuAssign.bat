SET xpdskp=0
SET fromdir=
goto :newcustom
:resetcustom
%GBD%
cd "%GBC%"
SET CUSTCONSPTH=
SET CUSTCONS=
SET CUSTOMEMU=
del /q "%GBC%\custEmu.ini"
del /q "%GBC%\custEmu.bat"
goto :newcustom
:begincustom

:newcustom
"%GBC%\wbox.exe" "reassignCons" "^^#####################^CUSTOM CONSOLE^#####################^^Select a console you wish to assign a custom emulator to^or^Reset your custom emulator configurations^" "SELECT;Reset;MainMenu" /DB=1 /TM=15
if "%ERRORLEVEL%"=="1" goto :selCConsole
if "%ERRORLEVEL%"=="2" goto :resetcustom
if "%ERRORLEVEL%"=="3" goto :custquit
goto :custquit

:selCConsole
"%GBC%\Wselect.exe" "%GBC%\custCons.set" "Select A Console" "set CUSTCONS=$item" > customCons.cmd
if %errorlevel%==0 GOTO :custquit
CALL customCons.cmd
if "%CUSTCONS%"=="" goto :emureassign
for %%A in ("%CUSTCONS:~0,1%") do set CONCHOICE=%%~A
if "%CONCHOICE%"=="-" goto :selCConsole
if "%CUSTCONS%"=="OTHER" goto :emureassign
for %%A in ("%GBG%\%GAM%\%CONS%\%CUSTCONS%") do set CUSTCONSPTH=%%~A
GOTO :emureassign

:emureassign
"%GBC%\wbox.exe" "reassign" "Select the emulator you wish to assign to %CUSTCONS%" "SELECT" /TM=5
if "%ERRORLEVEL%"=="1" goto :selCEmu
goto :custquit

:selCEmu
for /f "delims=" %%a in ('Wfile.exe "SET CUSTEMU=" "*.*" "Select the Emulator for %CUSTCONS%" /noquote') do %%a
if "%CUSTEMU%"=="" goto :reassign
for /f "tokens=* delims= " %%a in ("%CUSTEMU%") do (
SET CUSTEMUEXE=%%~nxa
SET CUSTEMUNEWPATH=%%~dpa
)
for %%A in ("%CUSTEMUNEWPATH:~0,-1%") do set CUSTEMUPATH=%%~A
if "%CUSTCONS%"=="OTHER" goto :customFolder
goto :injBat

:customFolder
"%GBC%\wbox.exe" "reassignCons" "Select the Console's Folder you wish to assign to %CUSTCONS%" "SELECT" /TM=5
if "%ERRORLEVEL%"=="1" goto :folderSel

:folderSel
for /f "delims=" %%a in ('Wfolder.exe "SET CUSTCONSPTH=" "%GBG%\%GAM%\%CONS%" "Where is the Console Library for %CUSTCONSEXE%?" /noquote') do %%a
goto :emuopt

:emuopt
"%GBC%\Winput.exe" "set OPTIONS=$input" "enter emulator options/switches" "%EMUOPT%">"%GBC%\options.cmd"
if %ERRORLEVEL%==1 goto :emuarg
pushd "%GBC%"
"%GBC%\fart.exe" "options.cmd" "\"" "\\"\"
popd
call "%GBC%\options.cmd"
goto :emuarg

:emuarg
"%GBC%\Winput.exe" "set ARGUMENTS=$input" "enter emulator arguments (these are passed after the rom)" "%EMUARG%" > "%GBC%\arguments.cmd"
if %ERRORLEVEL%==1 goto :rompth
pushd "%GBC%"
"%GBC%\fart.exe" "arguments.cmd" "\"" "\\"\"
popd
call "%GBC%\arguments.cmd"
goto :rompth

:rompth
"%GBC%\Wbox.exe" "Fullpath" "You can use only the name of the ROM or the FULL PATH of the rom.^If you are unsure, use ''FULL''." "FULL;ROM" /DB=1
if %ERRORLEVEL%==1 goto :FULLPTH
if %ERRORLEVEL%==2 goto :ROMONLY
goto :FULLPTH

:FULLPTH
set ROMPTH="\"^%%GAMDIR%%\%%ROM%%.[EXTN]"\"
goto :EXTCHK

:ROMONLY
set ROMPTH="\"^%%ROM%%.[EXTN]"\"
goto :EXTCHK

:EXTCHK
"%GBC%\Wbox.exe" "EXTENSION" "Detect:^   Detect the rom's extension^Skip:^   Skip the check.^Custom:^    Enter a custom extension for the library (e.g: ZIP)" "Detect;Skip;Custom" /DB=1
if %ERRORLEVEL%==1 goto :EXTON
if %ERRORLEVEL%==2 goto :NOEXT
if %ERRORLEVEL%==3 goto :CSTEXT
goto :custquit
:CSTEXT
"%GBC%\Winput.exe" "set EXTNSEL=$input" "Enter the extension you wish to use. (e.g: ZIP)" >"%GBC%\extSel.cmd"
if %ERRORLEVEL%==1 goto :CONFIGFILE
call "%GBC%\extSel.cmd"
if "%EXTNSEL%"=="" goto :EXTCHK
for %%A in ("%EXTSEL%") do set EXTCHK=%%~A
SET DOTCHK=%EXTNSEL:~0,1%
if "%DOTCHK%"=="." set EXTCHK=%EXTCHK:~1,6
pushd "%GBC%\net\%LNCH%\%CSTCONS%"
"%GBC%\fart.exe" "zz.bat" [EXTN] "%EXTCHK%"
popd
goto :CONFIGFILE

:EXTON
SET EXTCHK=[EXT]
goto :CONFIGFILE

:NOEXT
SET EXTCHK=[EXTN]
goto :CONFIGFILE

:CONFIGFILE
"%GBC%\Winput.exe" "set CONFIGFILE=$input" "Enter the name of the config file.  You can use wildcards. ''ie: *.ini  ''"  > "%GBC%\configfile.cmd"
if %ERRORLEVEL%==1 goto :injBat
if not errorlevel 1 call "%GBC%\configfile.cmd"
goto :injBat

:injBat
echo %CUSTCONSPTH% >>"%GBC%\custEmu.ini"
echo ::[%CUSTCONS%]:: >>"%GBC%\custEmu.bat"
echo SET CUSTEMUPATH=%CUSTEMUPATH% >>"%GBC%\custEmu.bat"
echo SET CUSTEMUEXE=%CUSTEMUEXE% >>"%GBC%\custEmu.bat"
echo SET CUSTEMU=%CUSTEMU% >>"%GBC%\custEmu.bat"
echo SET CUSTCONSPTH=%CUSTCONSPTH% >>"%GBC%\custEmu.bat"
echo SET OPTIONS=%OPTIONS% >>"%GBC%\custEmu.bat"
echo SET ARGUMENTS=%ARGUMENTS% >>"%GBC%\custEmu.bat"
echo SET CONFIGFILE=%CONFIGFILE% >>"%GBC%\custEmu.bat"
echo SET ROMPTH=%ROMPTH% >>"%GBC%\custEmu.bat"
echo CALL "%GBC%\custInjectLauncher.bat">>"%GBC%\custEmu.bat"
SET CUSTOMEMU=1
"%GBC%\wbox.exe" "reassigned" "Custom Emulator ^%CUSTEMUEXE%^ will now launch %CUSTCONS% roms^" "OK" /TM=2
if "%ERRORLEVEL%"=="1" goto :begincustom
goto :begincustom
:custquit
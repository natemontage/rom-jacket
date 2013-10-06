:DEPENDSEL
:DEPCHOICE
"%GBC%\Wselect.exe" "%GBC%\DepSelect.set" "Which dependency would you like to install?" "set DEPSEL=$item" > "%GBC%\depSel.cmd"
if %errorlevel%==0 exit /b
CALL "%GBC%\depSel.cmd"

if "%DEPSEL%"=="" goto :DEPCHOICE
if "%DEPSEL%"=="---------------------------------------------------------" goto :DEPCHOICE
if "%DEPSEL%"=="ALL" SET DEPALL=1
if "%DEPSEL%"=="DirectX" goto :D3DX9CHK
if "%DEPSEL%"=="DaemonTools" goto :DaemonTools
if "%DEPSEL%"=="Java JRE" goto :JAVACHK
if "%DEPSEL%"=="Microsoft Visual C++ 2005" goto :VC2K5CHK
if "%DEPSEL%"=="Microsoft Visual C++ 2008" goto :VC2K8CHK
if "%DEPSEL%"=="Microsoft Visual C++ 2010" goto :VC2K10CHK
if "%DEPSEL%"=="Microsoft Visual C++ 2008 x64" goto :VC2K8X64CHK
start "" "%GBC%\Wbusy.exe" "InstDep" "Installing Dependencies"  /marquee
:D3DX9CHK
if "%DEPSEL%" NEQ "ALL" start "" "%GBC%\Wbusy.exe" "InstDep" "Installing Dependencies"  /marquee

:get_DXWS
%GBD%
cd "%GBC%"
SET urlNthL=78
SET /A urlNthL -= 1
CALL :DXWSLGrab
GOTO :DXWSCONT

:DXWSLGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET DXWSURL=%%A
goto :EOF
)

:DXWSCONT
start "" "%GBC%\Wbusy.exe" "InstDep" "Installing Direct-X^This may take several minutes."  /marquee
start /w "" "%GBC%\aria2c.exe" --continue=true --split=1 --file-allocation=none --dir="%GBC%\net\%DXWS%" "%MIR7%/%DXWSURL%"
for %%A in ("%GBC%\net\%DXWS%\*.exe") do set DXWSXE=%%~A
if "%DXWSXE%"=="" goto :DEPENDSEL
for /f "delims=" %%a in ('dir /b "%DXWSXE%"') do set DXWSFILE=%%~nxa
"%GBC%\net\%DXWS%\%DXWSFILE%" /Q
if "%DEPSEL%" NEQ "ALL" start "" "%GBC%\Wbusy.exe" "InstDep" "Dependency Installed" /Stop /timeout:1

if "%DEPSEL%" NEQ "ALL" goto :DEPENDSEL

:VC2K5CHK
if "%DEPSEL%" NEQ "ALL" start "" "%GBC%\Wbusy.exe" "InstDep" "Installing Dependencies"  /marquee

:get_vc2k5
%GBD%
cd "%GBC%"
SET urlNthL=52
SET /A urlNthL -= 1
CALL :vcrsLGrab
GOTO :vcrsCONT

:vcrsLGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET vcrs2k5URL=%%A
goto :EOF
)

:vcrsCONT
start "" "%GBC%\Wbusy.exe" "InstDep" "Installing VC2k5"  /marquee
start /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\vcrs\2K5" "%MIR1%/%vcrs2k5URL%" "%MIR2%/%vcrs2k5URL%" "%MIR3%/%vcrs2k5URL%" "%MIR4%/%vcrs2k5URL%" "%MIR5%/%vcrs2k5URL%"
for %%A in ("%GBC%\net\vcrs\2k5\*.*") do set VC2K5XE=%%~A
if "%VC2K5XE%"=="" goto :DEPENDSEL
for /f "delims=" %%a in ('dir /b "%VC2K5XE%"') do set VC2K5FILE=%%~nxa
"%GBC%\net\vcrs\2k5\%VC2K5FILE%" /q
if "%DEPSEL%" NEQ "ALL" start "" "%GBC%\Wbusy.exe" "InstDep" "Dependency Installed" /Stop /timeout:1

if "%DEPSEL%" NEQ "ALL" goto :DEPENDSEL

:VC2K8CHK
if "%DEPSEL%" NEQ "ALL" start "" "%GBC%\Wbusy.exe" "InstDep" "Installing Dependencies"  /marquee

:get_vc2k8
SET urlNthL=53
SET /A urlNthL -= 1
CALL :vcr2LGrab
GOTO :vcr2CONT

:vcr2LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET vcrs2k8URL=%%A
goto :EOF
)

:vcr2CONT
start "" "%GBC%\Wbusy.exe" "InstDep" "Installing VC2k8"  /marquee
start /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\vcrs\2K8" "%MIR1%/%vcrs2k8URL%" "%MIR2%/%vcrs2k8URL%" "%MIR3%/%vcrs2k8URL%" "%MIR4%/%vcrs2k8URL%" "%MIR5%/%vcrs2k8URL%"
for %%A in ("%GBC%\net\vcrs\2k8\*.*") do set VC2K8XE=%%~A
if "%VC2K8XE%"=="" goto :DEPENSEL
for /f "delims=" %%a in ('dir /b "%VC2K8XE%"') do set VC2K8FILE=%%~nxa
"%GBC%\net\vcrs\2k8\%VC2K8FILE%" /p /q /repair /norestart
if "%DEPSEL%" NEQ "ALL" start "" "%GBC%\Wbusy.exe" "InstDep" "Dependency Installed" /Stop /timeout:1

if "%DEPSEL%" NEQ "ALL" goto :DEPENDSEL

:VC2K10CHK
if "%DEPSEL%" NEQ "ALL" start "" "%GBC%\Wbusy.exe" "InstDep" "Installing Dependencies"  /marquee

:get_vc2k10
SET urlNthL=54
SET /A urlNthL -= 1
CALL :vcr3LGrab
GOTO :vcr3CONT

:vcr3LGrab
start "" "%GBC%\Wbusy.exe" "InstDep" "Installing VC2k10"  /marquee
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET vcrs2k10URL=%%A
goto :EOF
)

:vcr3CONT
start /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\vcrs\2K10" "%MIR1%/%vcrs2k10URL%" "%MIR2%/%vcrs2k10URL%" "%MIR3%/%vcrs2k10URL%" "%MIR4%/%vcrs2k10URL%" "%MIR5%/%vcrs2k10URL%"
for %%A in ("%GBC%\net\vcrs\2k10\*.*") do set VC2K10XE=%%~A
if "%VC2K10XE%"=="" goto :DEPENDSEL
for /f "delims=" %%a in ('dir /b "%VC2K10XE%"') do set VC2K10FILE=%%~nxa
"%GBC%\net\vcrs\2k10\%VC2K10FILE%"  /p /q /repair /norestart
if "%DEPSEL%" NEQ "ALL" start "" "%GBC%\Wbusy.exe" "InstDep" "Dependency Installed" /Stop /timeout:1

if "%DEPSEL%" NEQ "ALL" goto :DEPENDSEL
if "%ARPOP%"=="64" (goto :VC2K8X64CHK)
goto :JAVACHK

:VC2K8X64CHK
if "%ARPOP%"=="32" goto :DEPENDSEL
if "%DEPSEL%" NEQ "ALL" start "" "%GBC%\Wbusy.exe" "InstDep" "Installing Dependencies"  /marquee

:get_vc2k8x64
SET urlNthL=55
SET /A urlNthL -= 1
CALL :vcr4LGrab
GOTO :vcr4CONT

:vcr4LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET vcrsx64URL=%%A
goto :EOF
)

:vcr4CONT
start "" "%GBC%\Wbusy.exe" "InstDep" "Installing VC2k8x64"  /marquee
start /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\vcrs\2k8x64" "%MIR2%/%vcrsx64URL%" "%MIR3%/%vcrsx64URL%" "%MIR4%/%vcrsx64URL%" "%MIR5%/%vcrsx64URL%"
for %%A in ("%GBC%\net\vcrs\2k8x64\*.*") do set VC2K8x64XE=%%~A
if "%VC@k8x64XE%"=="" goto :DEPENSEL
for /f "delims=" %%a in ('dir /b "%VC2K8x64XE%"') do set VC2K8x64FILE=%%~nxa
"%GBC%\net\vcrs\2k8x64\%VC2K8x64FILE%" /p /q /repair /norestart
if "%DEPSEL%" NEQ "ALL" start "" "%GBC%\Wbusy.exe" "InstDep" "Dependency Installed" /Stop /timeout:1

if "%DEPSEL%" NEQ "ALL" goto :DEPENDSEL

:JAVACHK
if "%DEPSEL%" NEQ "ALL" start "" "%GBC%\Wbusy.exe" "InstDep" "Installing Dependencies"  /marquee

:get_java
SET urlNthL=90
SET /A urlNthL -= 1
CALL :JAVA2_LGrab
GOTO :JAVAAUTO

:JAVA2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET JAVAURL=%%A
goto :EOF
)

:JAVAAUTO
start "" "%GBC%\Wbusy.exe" "InstDep" "Installing Java"  /marquee
if exist "%PRGF%\Java" goto :Library_Check_Complete
if exist "%PRGX%\Java" goto :Library_Check_Complete
start /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\java" "%MIR1%/%JAVAURL%" "%MIR2%/%JAVAURL%" "%MIR3%/%JAVAURL%" "%MIR4%/%JAVAURL%" "%MIR5%/%JAVAURL%"
for %%A in ("%GBC%\net\java\*%ARPOP%.exe") do set JAVATMP=%%~A
if "%JAVATMP%"=="" goto :DEPENDSEL
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%JAVATMP%"') do set JAVAFILE=%%~a
start /w "" "%GBC%\net\java\%JAVAFILE%" /s
if "%DEPSEL%" NEQ "ALL" start "" "%GBC%\Wbusy.exe" "InstDep" "Dependency Installed" /Stop /timeout:1
GOTO :DEPENDSEL
 
:DaemonTools
:DAMTG
if "%DAMVAR%"=="" goto :continue_DaemonT
if "%DAMVAR%"=="[DAM]" goto :continue_DaemonT
if "%DAMVAR%"=="DISABLED" (set DAMTG=Enable) ELSE (set DAMTG=Disable)
"%GBC%\wbox.exe" "toggledt" "would you like to %DAMTG% Daemontools?" "Install;%DAMTG%" /DB=2 
if %ERRORLEVEL%==1 goto :locate_dt
if %ERRORLEVEL%==2 goto :%DAMTG%_daemontools
goto :DEPENDSEL

:Eno_daemonT
"%GBC%\Wbusy.exe" "InstallingDT" "DaemonTools installer has not been found" /Stop /timeout:1

:no_daemonT
"%GBC%\wbox.exe" "dtinfo" "^^DeaemonTools will not be configured.^^" "Download;Okay" /DB=2 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :continue_DaemonT
if %ERRORLEVEL%==2 goto :setnoDT
goto :DEPENDSEL

:Disable_daemontools
:setnoDT
set GBT=0
set DAMVAR=DISABLED
for %%A in ("Daemon Tools is Disabled^") do set MARKDMT=%%~A
call "%GBC%\setlocset.bat"
goto :DEPENDSEL

:Enable_daemontools
:setnoDT
set GBT=1
set DAMVAR=
for %%A in ("Daemon Tools is Enabled^") do set MARKDMT=%%~A
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
call "%GBC%\setlocset.bat"
"%GBC%\Wbusy.exe" "InstallingDT" "Daemon Tools has been installed to^%DAMVAR%\Daemon Tools Lite\Dlite.exe" /Stop /timeout:1
goto :DEPENDSEL

:setup_daemT
if "%DAMVAR%"=="DISABLED" goto :DEPENDSEL
if exist "%PRGX%\DAEMON Tools Pro\DTAgent.exe" goto :DTsetPro
if exist "%PRGX%\DAEMON Tools Lite\DTLite.exe" goto :DTsetDefault 
goto :locate_dt

:DTsetDefault
for %%A in ("%PRGX%\DAEMON Tools Lite\DTlite.exe") do set DAMVAR=%%~A
goto :DEPENDSEL

:DTsetPro
for %%A in ("%PRGX%\DAEMON Tools Pro\DTAgent.exe") do set DAMVAR=%%~A
goto :DEPENDSEL

:locate_dt
"%GBC%\wbox.exe" "locatedt" "^^Locate the daemon tools application or click download to download and install it.^^" "Locate;Download;Cancel" /DB=2 /BW=150
if %ERRORLEVEL%==1 goto :selectdt
if %ERRORLEVEL%==2 goto :continue_DaemonT
if %ERRORLEVEL%==3 goto :no_daemonT

:selectdt
for /f "delims=" %%a in ('Wfile.exe "SET DAMVAR=" "%PRGX%\Daemon Tools Lite\d*.exe" "Where is the DaemonTools application?" /noquote') do %%a
if "%DAMVAR%"=="[DAM]" goto :inst_daemonT
IF "%DAMVAR%"=="" goto :inst_daemonT
goto :DEPENDSEL

:inst_daemonT
"%GBC%\wbox.exe" "inst_daemonT" "Would you like to install daemonTools?" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :continue_DaemonT
if %ERRORLEVEL%==2 goto :no_daemonT
goto :DEPENDSEL

:Library_Check_Complete
if "%DEPSEL%" NEQ "ALL" goto :DEPENDSEL
if "%DEPSEL%"=="ALL" start "" "%GBC%\Wbusy.exe" "InstDep" "Dependencies Installed" /Stop /timeout:1
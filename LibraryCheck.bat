:LIBCHK
"%GBC%\wbox.exe" "libchk" "Do you want to install dependencies for your emulators?" "Yes;No" 
if %ERRORLEVEL%==1 goto :D3DX9CHK
if %ERRORLEVEL%==2 goto :quitjoy

:D3DX9CHK
start "" "%GBC%\Wbusy.exe" "InstDep" "Installing Dependencies"  /marquee
if exist "%SystemDirectory%\d3dx9_43.dll" goto VC2K5CHK

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
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%DXWS%" "%MIR1%/%DXWSURL%" "%MIR2%/%DXWSURL%" "%MIR3%/%DXWSURL%" "%MIR4%/%DXWSURL%" "%MIR5%/%DXWSURL%"
for %%A in ("%GBC%\net\%DXWS%\*.exe") do set DXWSXE=%%~A
for /f "delims=" %%a in ('dir /b "%DXWSXE%"') do set DXWSFILE=%%~nxa
"%GBC%\net\%DXWS%\%DXWSFILE%" /Q


:VC2K5CHK

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
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\vcrs\2K5" "%MIR1%/%vcrs2k5URL%" "%MIR2%/%vcrs2k5URL%" "%MIR3%/%vcrs2k5URL%" "%MIR4%/%vcrs2k5URL%" "%MIR5%/%vcrs2k5URL%"
for %%A in ("%GBC%\net\vcrs\2k5\*.*") do set VC2K5XE=%%~A
for /f "tokens=* delims= " %%a in ('dir /b "%windir%\winsxs\x86_Microsoft.VC90.CRT_*"') do (
set VC2K5CHK=%%a
)
if "VC2K5CHK" NEQ "" goto :VC2K8CHK
for /f "delims=" %%a in ('dir /b "%VC2K5XE%"') do set VC2K5FILE=%%~nxa
"%GBC%\net\vcrs\2k5\%VC2K5FILE%" /q

:VC2K8CHK

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
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\vcrs\2K8" "%MIR1%/%vcrs2k8URL%" "%MIR2%/%vcrs2k8URL%" "%MIR3%/%vcrs2k8URL%" "%MIR4%/%vcrs2k8URL%" "%MIR5%/%vcrs2k8URL%"
for %%A in ("%GBC%\net\vcrs\2k8\*.*") do set VC2K8XE=%%~A
for /f "tokens=* delims= " %%a in ('dir /b "%windir%\winsxs\x86_Microsoft.VC90.CRT_*"') do (
set VC2K8CHK=%%a
)
if "VC2K8CHK" NEQ "" goto :VC2K10CHK
for /f "delims=" %%a in ('dir /b "%VC2K8XE%"') do set VC2K8FILE=%%~nxa
"%GBC%\net\vcrs\2k8\%VC2K8FILE%" /p /q /repair /norestart


:VC2K10CHK
set vc2k10path=HKLM\Software\Microsoft\VisualStudio\10\VC\VCRedist\x86
set vc2k10value=Installed
set vc2k10data=1
reg query "%vc2k10path%" /v "%vc2k10value%" | find /i "%vc2k10data%"
if errorlevel 1 (goto :get_vc2k10) ELSE (goto :VC2K8X64CHK)
	  

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
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\vcrs\2K10" "%MIR1%/%vcrs2k10URL%" "%MIR2%/%vcrs2k10URL%" "%MIR3%/%vcrs2k10URL%" "%MIR4%/%vcrs2k10URL%" "%MIR5%/%vcrs2k10URL%"
for %%A in ("%GBC%\net\vcrs\2k10\*.*") do set VC2K10XE=%%~A
for /f "delims=" %%a in ('dir /b "%VC2K10XE%"') do set VC2K10FILE=%%~nxa
"%GBC%\net\vcrs\2k10\%VC2K10FILE%"  /p /q /repair /norestart
if "%ARPOP%"=="64" (goto :VC2K8X64CHK)
goto :Library_Check_Complete

:VC2K8X64CHK
if "%ARPOP%"=="32" goto :Library_Check_Complete
for /f "tokens=* delims= " %%a in ('dir /b "%windir%\winsxs\x86_Microsoft.VC9*"') do (
set VC2K64CHK=%%a
)
if "VC2K64CHK" NEQ "" goto :Library_Check_Complete

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
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\vcrs\2k8x64" "%MIR1%/%vcrsx64URL%" "%MIR2%/%vcrsx64URL%" "%MIR3%/%vcrsx64URL%" "%MIR4%/%vcrsx64URL%" "%MIR5%/%vcrsx64URL%"
for %%A in ("%GBC%\net\vcrs\2k8x64\*.*") do set VC2K8x64XE=%%~A
for /f "delims=" %%a in ('dir /b "%VC2K8x64XE%"') do set VC2K8x64FILE=%%~nxa
"%GBC%\net\vcrs\2k8x64\%VC2K8x64FILE%" /p /q /repair /norestart

:Library_Check_Complete
start "" "%GBC%\Wbusy.exe" "InstDep" "Dependencies Installed" /Stop /timeout:1
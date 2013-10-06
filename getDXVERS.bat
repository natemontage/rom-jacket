if "%ARPOP%"=="64" call :setopt
if "%RARCH%"=="64" call :setopt
goto :dxchk
:setopt
for %%A in ("/64bit") do set OPT64=%%~A
exit /b
:dxchk
if exist "%GBC%\dxdiag.ini" goto :DXSET
%GBD%
cd "%GBC%"
cmd /c start "" "%GBC%\Wbusy.exe" "HardwareDetection" "Detecting Hardware"  /marquee
start /w "" dxdiag %OPT64% /dontskip /whql:off /tdxdiag.txt
rename "%GBC%\dxdiag.txt" "dxdiag.ini"
start "" "%GBC%\Wbusy.exe" "HardwareDetection" "Complete" /Stop /timeout:1
:DXSET
SET urlNthL=16
SET /A urlNthL -= 1
CALL :DXVERSLGrab
GOTO DXVERSCONT
:DXVERSLGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\dxdiag.ini"') DO (
SET DXVERSURL=%%A
goto :EOF
)
:DXVERSCONT
for /f "tokens=2 delims=:" %%A in ("%DXVERSURL%") do set DXVERS=%%~A
for /f "tokens=2 delims= " %%A in ("%DXVERS%") do set DXVR=%%~A
for /f "tokens=* delims= " %%A in ("%DXVR:~0,3%") do set DXV=%%~A
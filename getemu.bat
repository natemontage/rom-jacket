start "" "%GBC%\Wbusy.exe" "InstEmu" "Downloading/Installing %CEMU%"  /marquee
SET urlNthL=%EMUNUM%
SET /A urlNthL -= 1
CALL :CEMU2_LGrab
GOTO :CEMUAUTO
:CEMU2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET CEMUURL=%%A
goto :EOF
)
:CEMUAUTO
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%CEMU%" "%MIR1%/%CEMUURL%" "%MIR2%/%CEMUURL%" "%MIR3%/%CEMUURL%" "%MIR4%/%CEMUURL%" "%MIR5%/%CEMUURL%"
for %%A in ("%GBC%\net\%CEMU%\*.7z") do set CEMUXE=%%~A
for /f "tokens=* delims= " %%a in ('dir /b "%CEMUXE%"') do set CEMUFILE=%%~nxa
if not exist "%GBC%\net\%CEMU%\%CEMUFILE%" SET EMUNOTHERE=1
if not exist "%GBC%\net\%CEMU%\%CEMUFILE%" echo %CEMU%>>"%GBE%\%EMUZ%\notfound.ini"
if not exist "%GBC%\net\%CEMU%\%CEMUFILE%" start "" "%GBC%\Wbusy.exe" "InstEmu" "%CEMU% Not Found." /Stop /sound /timeout:1

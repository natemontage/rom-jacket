SET urlNthL=43
SET /A urlNthL -= 1
CALL :HYPS2_LGrab
GOTO :HYPSAUTO
:HYPS2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET HYPSURL=%%A
if "%XPADURL%"=="x" (goto :no_HYPS)
goto :EOF
)
:HYPSAUTO
cmd /c start "" "%GBC%\Wbusy.exe" "DownloadingHS" "Downloading Hyperspin"  /marquee
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%HYPS%" "%MIR1%/%HYPSURL%" "%MIR2%/%HYPSURL%" "%MIR3%/%HYPSURL%" "%MIR4%/%HYPSURL%" "%MIR5%/%HYPSURL%"
for %%A in ("%GBC%\net\%HYPS%\*.7z") do set HYPSXE=%%~A
if not exist "%HYPSXE%" goto no_HYPS
for /f "delims=" %%a in ('dir /b "%HYPSXE%"') do set HYPSFILE=%%~nxa
"%GBC%\Wbusy.exe" "DownloadingHS" "Complete." /Stop /timeout:1
goto :completeHSD
:no_HYPS
"%GBC%\Wbusy.exe" "DownloadingHS" "Could not download Hyperspin." /Stop /timeout:1
:completeHSD
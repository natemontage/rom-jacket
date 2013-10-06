SET urlNthL=70
SET /A urlNthL -= 1
CALL :OBLYT2_LGrab
GOTO :OBLYTAUTO
:OBLYT2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET OBLYTURL=%%A
goto :EOF
)
:OBLYTAUTO
cmd /c start "" "%GBC%\Wbusy.exe" "DownloadingHS" "Downloading OblyTile"  /marquee
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%OBLYT%" "%MIR1%/%OBLYTURL%" "%MIR2%/%OBLYTURL%" "%MIR3%/%OBLYTURL%" "%MIR4%/%OBLYTURL%" "%MIR5%/%OBLYTURL%"
for %%A in ("%GBC%\net\%OBLYT%\*.7z") do set OBLYTZ=%%~A
if not exist "%OBLYTZ%" goto :no_OBLYT
for /f "delims=" %%a in ('dir /b "%OBLYTZ%"') do set OBLYTFILE=%%~nxa
"%GBC%\Wbusy.exe" "DownloadingHS" "Complete." /Stop /timeout:1
goto :completeHSD
:no_OBLYT
"%GBC%\Wbusy.exe" "DownloadingHS" "Could not download OblyTile." /Stop /timeout:1
SET OBLYINST=1
goto :EOF
:completeHSD
mkdir "%PRGF%\%OBLYT%"
"%SEVENZIP%" x -y "%GBC%\net\%OBLYT%\%OBLYTZ%" -o"%PRGF%\%OBLYT%"
for %%A in ("%PRGF%\%OBLYT%\*.exe") do set OBLYTMP=%%~A
if not exist "%PRGF%\%OBLYT%\%OBLYTMP%" goto :no_OBLYT
"%PRGF%\%OBLYT%\%OBLYTMP%"
"%GBC%\wbox.exe" "Close" "Close the OblyTile window" "Okay" /TM=10
if %ERRORLEVEL%==1 goto :installed
goto :installed

:installed
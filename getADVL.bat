SET urlNthL=44
SET /A urlNthL -= 1
CALL :ADVL2_LGrab
GOTO :ADVLAUTO
:ADVL2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET ADVLURL=%%A
if "%XPADURL%"=="x" (goto :no_ADVL)
goto :EOF
)
:ADVLAUTO
start "" "%GBC%\wbusy.exe" "ADVL" "Downloading Advanced Launcher" /marquee
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%XBMC%\%ADVL%" "%MIR1%/%ADVLURL%" "%MIR2%/%ADVLURL%" "%MIR3%/%ADVLURL%" "%MIR4%/%ADVLURL%" "%MIR5%/%ADVLURL%"
start "" "%GBC%\wbusy.exe" "ADVL" "Download Complete" /Stop /timeout:1
for %%A in ("%GBC%\net\%XBMC%\%ADVL%\*.zip") do set ADVLXE=%%~A
for /f "delims=" %%a in ('dir /b "%ADVLXE%"') do set ADVLFILE=%%~a
:no_ADVL
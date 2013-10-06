SET urlNthL=67
SET /A urlNthL -= 1
CALL :LNCH2_LGrab
GOTO :LNCHAUTO
:LNCH2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET LNCHURL=%%A
goto :EOF
)
:LNCHAUTO
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%LNCH%" "%MIR1%/%LNCHURL%" "%MIR2%/%LNCHURL%" "%MIR3%/%LNCHURL%" "%MIR4%/%LNCHURL%" "%MIR5%/%LNCHURL%"
for %%A in ("%GBC%\net\%LNCH%\*.zip") do set LNCHXE=%%~A
for /f "delims=" %%a in ('dir /b "%LNCHXE%"') do set LNCHFILE=%%~nxa
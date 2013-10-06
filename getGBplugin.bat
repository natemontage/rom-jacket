SET urlNthL=62
SET /A urlNthL -= 1
CALL :GB2_LGrab
GOTO GBAUTO

:GB2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
    SET GBURL=%%A
    goto :EOF
)

:GBAUTO
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%GBRWS%" "%MIR1%/%GBURL%" "%MIR2%/%GBURL%" "%MIR3%/%GBURL%" "%MIR4%/%GBURL%" "%MIR5%/%GBURL%"
set GBRWSPLUGINXE="%GBC%\net\%GBRWS%\*.zip"
for /f "delims=" %%a in ('dir /b "%GBRWSPLUGINXE%"') do set GBRWSPLUGINFILE=%%~nxa
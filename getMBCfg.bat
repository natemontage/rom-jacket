SET urlNthL=62
SET /A urlNthL -= 1
CALL :MBAHK2_LGrab
GOTO MBAHKAUTO

:MBAHK2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
    SET MBAHKURL=%%A
    goto :EOF
)

:MBAHKAUTO
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%GBRWS%" "%MIR1%/%MBAHKURL%" "%MIR2%/%MBAHKURL%" "%MIR3%/%MBAHKURL%" "%MIR4%/%MBAHKURL%" "%MIR5%/%MBAHKURL%"
for %%A in ("%GBC%\net\%GBRWS%\*.7z") do set MBAHKXE=%%~A
for /f "delims=" %%a in ('dir /b "%MBAHKXE%"') do set MBAHKFILE=%%~nxa
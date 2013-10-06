SET urlNthL=63
SET /A urlNthL -= 1
CALL :GAMBLGrab
GOTO GAMBCONT
:GAMBLGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
    SET GAMBURL=%%A
    goto :EOF
)
:GAMBCONT
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%GBRWS%" "%MIR1%/%GAMBURL%" "%MIR2%/%GAMBURL%" "%MIR3%/%GAMBURL%" "%MIR4%/%GAMBURL%" "%MIR5%/%GAMBURL%"
for %%A in ("%GBC%\net\%GAMB%\*r.tar") do set GAMBXE=%%~A
for /f "delims=" %%a in ('dir /b "%GAMBXE%"') do set GAMBFILE=%%~nxa
SET urlNthL=45
SET /A urlNthL -= 1
CALL :GAMEXLGrab
GOTO GAMEXCONT

:GAMEXLGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET GAMEXURL=%%A
goto :EOF
)

:GAMEXCONT
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%GAMEX%" "%MIR1%/%GAMEXURL%" "%MIR2%/%GAMEXURL%" "%MIR3%/%GAMEXURL%" "%MIR4%/%GAMEXURL%" "%MIR5%/%GAMEXURL%"
for %%A in ("%GBC%\net\%GAMEX%\*.zip") do set GAMEXXE=%%~A
for /f "delims=" %%a in ('dir /b "%GAMEXXE%"') do set GAMEXFILE=%%~nxa
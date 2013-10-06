SET urlNthL=66
SET /A urlNthL -= 1
CALL :EMEX2_LGrab
GOTO EMEXAUTO
:EMEX2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET EMEXURL=%%A
goto :EOF
)
:EMEXAUTO
start /min /w "" "%GBC%\aria2c.exe" -t 2 -nc -c -w 1 "%EMEXURL%" -P "%GBC%\net\%EMEX%"
for %%A in ("%GBC%\net\%EMEX%\%EMEX%.7z") do set EMEXXE=%%~A
if "%EMEXXE%"=="" exit /b
for /f "delims=" %%a in ('dir /b "%EMEXXE%"') do set EMEXFILE=%%~nxa

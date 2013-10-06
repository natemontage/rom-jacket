SET urlNthL=47
SET /A urlNthL -= 1
CALL :JOY2K2_LGrab
GOTO :JOY2KAUTO
:JOY2K2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET JOY2KURL=%%A
if "%XPADURL%"=="x" (goto :no_JOY2K)
goto :EOF
)
:JOY2KAUTO
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%JOY2K%" "%MIR1%/%JOY2KURL%" "%MIR2%/%JOY2KURL%" "%MIR3%/%JOY2KURL%" "%MIR4%/%JOY2KURL%" "%MIR5%/%JOY2KURL%"
for %%A in ("%GBC%\net\%JOY2K%\*.zip") do set JOY2KXE=%%~A
if "%JOY2KXE%"=="" exit /b
for /f "delims=" %%a in ('dir /b "%JOY2KXE%"') do set JOY2KFILE=%%~nxa

:no_JOY2K
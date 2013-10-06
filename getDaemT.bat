SET urlNthL=51
SET /A urlNthL -= 1
CALL :DAEMNTLGrab
GOTO DAEMNTCONT

:DAEMNTLGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET DAEMNTURL=%%A
goto :EOF
)

:DAEMNTCONT
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%DAEMNT%" "%MIR1%/%DAEMNTURL%" "%MIR2%/%DAEMNTURL%" "%MIR3%/%DAEMNTURL%" "%MIR4%/%DAEMNTURL%" "%MIR5%/%DAEMNTURL%"
for %%A in ("%GBC%\net\%DAEMNT%\*.exe") do set DAEMNTXE=%%~A
DAEMNTFILE
if "%DAEMNTXE%"=="" exit /b
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%DAEMNTXE%"') do set DAEMNTFILE=%%~nxa
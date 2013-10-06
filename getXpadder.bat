SET urlNthL=99
SET /A urlNthL -= 1
CALL :XPADR2_LGrab
GOTO :XPADRAUTO
:XPADR2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET XPADRURL=%%A
if "%XPADURL%"=="x" (goto :no_xpadr)
goto :EOF
)
:XPADRAUTO
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%XPADR%" "%MIR1%/%XPADRURL%" "%MIR2%/%XPADRURL%" "%MIR3%/%XPADRURL%" "%MIR4%/%XPADRURL%" "%MIR5%/%XPADRURL%"
for %%A in ("%GBC%\net\%XPADR%\*.7z") do set XPADRXE=%%~A
for /f "delims=" %%a in ('dir /b "%XPADRXE%"') do set XPADRFILE=%%~nxa

:no_xpadr
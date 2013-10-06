SET urlNthL=63
SET /A urlNthL -= 1
CALL :VDBD2_LGrab
GOTO :VDBDAUTO
:VDBD2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET VDBDURL=%%A
if "%XPADURL%"=="x" (goto :no_VDBD)
goto :EOF
)
:VDBDAUTO
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%MBRWS%" "%MIR1%/%VDBDURL%" "%MIR2%/%VDBDURL%" "%MIR3%/%VDBDURL%" "%MIR4%/%VDBDURL%" "%MIR5%/%VDBDURL%"%VDBDURL%"
for %%A in ("%GBC%\net\%MBRWS%\*.zip") do set VDBDXE=%%~A
for /f "delims=" %%a in ('dir /b "%VDBDXE%"') do set VDBDFILE=%%~nxa
:no_VDBD
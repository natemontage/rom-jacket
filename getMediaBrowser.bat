if exist "%MBRWSFILE%" exit /b
SET urlNthL=56
SET /A urlNthL -= 1
CALL :MBRWS2_LGrab
GOTO MBRWSAUTO

:MBRWS2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
    SET MBRWSURL=%%A
    goto :EOF
)

:MBRWSAUTO
start "" "%GBC%\Wbusy.exe" "getMB" "Downloading Mediabrowser"  /marquee
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%MBRWS%" "%MIR1%/%MBRWSURL%" "%MIR2%/%MBRWSURL%" "%MIR3%/%MBRWSURL%" "%MIR4%/%MBRWSURL%" "%MIR5%/%MBRWSURL%"
for %%A in ("%GBC%\net\%MBRWS%\*.msi") do set MBRWSXE=%%~A
if not exist "%MBRWSXE%" goto :nothere
"%GBC%\Wbusy.exe" "getMB" "Complete." /Stop /sound /timeout:1
for /f "delims=" %%a in ('dir /b "%MBRWSXE%"') do set MBRWSFILE=%%~a
exit /b
:nothere
"%GBC%\Wbusy.exe" "InstEmu" "Mediabrowser could not be downloaded." /Stop /sound /timeout:1

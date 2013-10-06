SET urlNthL=46
SET /A urlNthL -= 1
CALL :RCBRWS_LGrab
GOTO :RCBRWSAUTO
:RCBRWS_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET RCBRWSURL=%%A
goto :EOF
)
:RCBRWSAUTO
start "" "%GBC%\wbusy.exe" "RCB" "Downloading RomCollectionBrowser" /marquee
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%XBMC%\%RCBRWS%" "%MIR1%/%RCBRWSURL%" "%MIR2%/%RCBRWSURL%" "%MIR3%/%RCBRWSURL%" "%MIR4%/%RCBRWSURL%" "%MIR5%/%RCBRWSURL%" 
for %%A in ("%GBC%\net\%XBMC%\%RCBRWS%\Rom*.zip") do set RCBRWSXE=%%~A
for /f "delims=" %%a in ('dir /b "%RCBRWSXE%"') do set RCBRWSFILE=%%~a


SET urlNthL=73
SET /A urlNthL -= 1
CALL :RCBRWS2_LGrab
GOTO :RCBRWS2AUTO
:RCBRWS2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET RCBRWS2URL=%%A
goto :EOF
)
:RCBRWS2AUTO
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%XBMC%\%RCBRWS%" "%MIR1%/%RCBRWS2URL%" "%MIR2%/%RCBRWS2URL%" "%MIR3%/%RCBRWS2URL%" "%MIR4%/%RCBRWS2URL%" "%MIR5%/%RCBRWS2URL%" 
start "" "%GBC%\wbusy.exe" "RCB" "Download Complete" /Stop /timeout:1
for %%A in ("%GBC%\net\%XBMC%\%RCBRWS%\service.zip") do set RCBRWS2XE=%%~A
for /f "delims=" %%a in ('dir /b "%RCBRWSXE%"') do set RCBRWS2FILE=%%~a

:no_RCBRWS

:no_RCBRWS
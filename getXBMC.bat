SET urlNthL=48 
SET /A urlNthL -= 1
CALL :XBMCLGrab
GOTO XBMCCONT

:XBMCLGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET XBMCURL=%%A
goto :EOF
)

:XBMCCONT
start "" "%GBC%\wbusy.exe" "XBMC" "Downloading XBMC" /marquee
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%XBMC%" "%MIR1%/%XBMCURL%" "%MIR2%/%XBMCURL%" "%MIR3%/%XBMCURL%" "%MIR4%/%XBMCURL%" "%MIR5%/%XBMCURL%"
start "" "%GBC%\wbusy.exe" "XBMC" "Download Complete" /Stop /timeout:1
for %%A in ("%GBC%\net\%XBMC%\*.exe") do set XBMCXE=%%~A
for /f "delims=" %%a in ('dir /b "%XBMCXE%"') do set XBMCFILE=%%~nxa
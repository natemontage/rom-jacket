pushd "%GBC%"


SET urlNthL=60
SET /A urlNthL -= 1
CALL :BCKD2_LGrab
GOTO :BCKDAUTO

:BCKD2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET BCKDURL=%%A
goto :EOF
)

:BCKDAUTO
if "%ALLMETA%" NEQ "1" start "" "%GBC%\wbusy.exe" "instFanart" "Downloading Backdrops" /marquee
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%BCKD%" "%MIR1%/%BCKDURL%" "%MIR2%/%BCKDURL%" "%MIR3%/%BCKDURL%" "%MIR4%/%BCKDURL%" "%MIR5%/%BCKDURL%"
for %%A in ("%GBC%\net\%BCKD%\*.zip") do set BCKDXE=%%~A
for /f "delims=" %%a in ('dir /b "%BCKDXE%"') do set FNRTFILE=%%~nxa
for /f "delims=" %%a in ('dir /b "%BCKDXE%"') do set BCKDFILE=%%~nxa

if "%ALLMETA%" NEQ "1" start "" "%GBC%\wbusy.exe" "instFanart" "Complete" /Stop /timeout:1
goto :imagescomplete

:imagescomplete
popd
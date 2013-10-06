
pushd "%GBC%"

:getfolders
set FLDPCK=1
SET urlNthL=61
SET /A urlNthL -= 1
CALL :FLDR2_LGrab
GOTO FLDRAUTO

:FLDR2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET FLDRURL=%%A
goto :EOF
)

:FLDRAUTO
if "%ALLMETA%" NEQ "1" start "" "%GBC%\wbusy.exe" "instIcons" "Downloading Console Icons" /marquee
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%FLDR%" "%MIR1%/%FLDRURL%" "%MIR2%/%FLDRURL%" "%MIR3%/%FLDRURL%" "%MIR4%/%FLDRURL%" "%MIR5%/%FLDRURL%"
for %%A in ("%GBC%\net\%FLDR%\*.zip") do set FLDRXE=%%~A
if not exist "%FLDRXE%" goto :nothere
for /f "delims=" %%a in ('dir /b "%FLDRXE%"') do set FLDRFILE=%%~nxa
if "%ALLMETA%" NEQ "1" start "" "%GBC%\wbusy.exe" "instIcons" "Complete" /Stop /timeout:1
:folderscomplete
popd
exit /b

:nothere
if "%ALLMETA%" NEQ "1" start "" "%GBC%\wbusy.exe" "instIcons" "Could not Download Console Icons" /Stop /timeout:1

pushd "%GBC%"

:getBanners
set FLDPCK=1
SET urlNthL=58
SET /A urlNthL -= 1
CALL :BANN2_LGrab
GOTO :BANNAUTO

:BANN2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET BANNURL=%%A
goto :EOF
)

:BANNAUTO
if "%ALLMETA%" NEQ "1" start "" "%GBC%\wbusy.exe" "instBanners" "Downloading Console Banners" /marquee
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%BANN%" "%MIR1%/%BANNURL%" "%MIR2%/%BANNURL%" "%MIR3%/%BANNURL%" "%MIR4%/%BANNURL%" "%MIR5%/%BANNURL%"
for %%A in ("%GBC%\net\%BANN%\*.zip") do set BANNXE=%%~A
if not exist "%BANNXE%" goto :nothere
for /f "delims=" %%a in ('dir /b "%BANNXE%"') do set BANNFILE=%%~nxa
if "%ALLMETA%" NEQ "1" start "" "%GBC%\wbusy.exe" "instBanners" "Complete" /Stop /timeout:1
:Bannerscomplete
popd
exit /b

:nothere
if "%ALLMETA%" NEQ "1" start "" "%GBC%\wbusy.exe" "instBanners" "Could not Download Console Banners" /Stop /timeout:1
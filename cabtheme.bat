start "" "%GBC%\Wbusy.exe" "CabTheme" "Downloading/Installing RJ's Cabrio Theme"  /marquee
SET urlNthL=66
SET /A urlNthL -= 1
CALL :CABTHEME2_LGrab
GOTO :CABTHEMEAUTO

:CABTHEME2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET CABTHEMEURL=%%A
goto :EOF
)

:CABTHEMEAUTO
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%CABR%" "%MIR1%/%CABTHEMEURL%" "%MIR2%/%CABTHEMEURL%" "%MIR3%/%CABTHEMEURL%" "%MIR4%/%CABTHEMEURL%" "%MIR5%/%CABTHEMEURL%"
for %%A in ("%GBC%\net\%CABR%\*.7z") do set CABTHEMEXE=%%~A
for /f "tokens=* delims= " %%a in ('dir /b "%CABTHEMEXE%"') do set CABTHEMEFILE=%%~nxa
if not exist "%CABTHEMEXE%" start "" "%GBC%\Wbusy.exe" "CabTheme" "Theme Not Found." /Stop /sound /timeout:1
if not exist "%CABTHEMEXE%" GOTO :THEMECOMPLETE
"%SEVENZIP%" e -y "%GBC%\net\%CABR%\%CABTHEMEFILE%" -o"%CBR%\data\pixmaps" "arrow.png"
"%SEVENZIP%" e -y "%GBC%\net\%CABR%\%CABTHEMEFILE%" -o"%CBR%\data\pixmaps" "button_blue.png"
"%SEVENZIP%" e -y "%GBC%\net\%CABR%\%CABTHEMEFILE%" -o"%CBR%\data\pixmaps" "button_red.png"
"%SEVENZIP%" e -y "%GBC%\net\%CABR%\%CABTHEMEFILE%" -o"%CBR%\data\themes\carousel" "submenu-item.png"
"%SEVENZIP%" e -y "%GBC%\net\%CABR%\%CABTHEMEFILE%" -o"%CBR%\data\themes\carousel" "menu-item.png"
"%SEVENZIP%" e -y "%GBC%\net\%CABR%\%CABTHEMEFILE%" -o"%CBR%\data\themes\carousel" "RJ.png"
pushd "%GBC%\net\%CABR%"
"%GBC%\fart.exe" "theme.xml" background.jpg RJ.png
popd
start "" "%GBC%\Wbusy.exe" "CabTheme" "%CABTHEME% Installed." /Stop /sound /timeout:1
:THEMECOMPLETE
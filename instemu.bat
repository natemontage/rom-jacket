if "%MKEXE%"=="1" exit /b
"%SEVENZIP%" x -y "%GBC%\net\%CEMU%\%CEMUFILE%" -o"%GBE%\%EMUZ%\%CEMU%"
if exist "%GBC%\net\%CEMU%\%CEMUFILE%" echo %CEMU%>>"%GBE%\%EMUZ%\inst.ini"
start "" "%GBC%\Wbusy.exe" "InstEmu" "%CEMU% Installed." /Stop /sound /timeout:1

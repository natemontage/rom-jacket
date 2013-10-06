FOR /F "tokens=2 delims= " %%A IN ('TASKLIST /FI "imagename eq cmd.exe" /v^| find /i "ROM-JACKET"') DO TASKKILL /F /PID %%A
CHCP 1252

setlocal DISABLEDELAYEDEXPANSION
MODE CON: COLS=15 LINES=1
TITLE ROM-JACKET

:STARTALL
for %%A in ("%~dp0") do set gbtmp=%%~A
for %%A in ("%gbtmp:~0,-1%") do set GBC=%%~A
for %%A in ("%~d0") do set GBD=%%~A
if exist "locset.ini" goto :autorjset
if exist "%GBC%\locset.ini" goto :autorjset
goto :usetrj

:autorjset
move /y copy.ini "%GBC%"
CALL "%GBC%\varLoc.bat"
CALL "%GBC%\defineVar.bat"
if "%GBM%"=="[GBM]" goto :usetrj
if "%GBE%\Emulators"=="[GBE]\Emulators" goto :usetrj
if "%DAMVAR%"=="[DAM]" goto :usetrj
if "%GBG%"=="[GBG]" goto :usetrj
if "%XPADDER%"=="[XPD]" goto :usetrj
if "%GBM%"=="[GBM]" goto :usetrj
for %%R in ("%GBC%\copy.ini") do if "%%~zR" equ "" goto :exUsr
for %%R in ("%GBC%\copy.ini") do if %%~zR equ 0 goto :exUsr
start "" "%GBC%\wbusy.exe" "prepping" "Copying to your Rom-Jacket^Re/Processing your library.^Please be patient.^" /marquee
pushd "%GBC%"
"%GBC%\fart.exe" "copy.ini" "\"" --remove
popd
for /f "tokens=* delims= " %%a in ('type "%GBC%\copy.ini"') do (
SET ROMTST=%%~a
if exist %%a\ call :robo
call :copy
)
goto :copyroms

:robo
robocopy "%ROMTST%" "%GBG%\%ROMJ%" /B /IS /MOVE
exit /b

:copy
move /Y "%ROMTST%" "%GBG%\%ROMJ%"
exit /b

:exUsr
ATTRIB -H "%GBG%\%ROMJ%\SORTED ARCHIVES"
ATTRIB -H "%GBG%\%ROMJ%\UNSORTED ARCHIVES"
explorer "%GBG%\%ROMJ%"
exit /b

:copyroms
start "" "%GBC%\wbusy.exe" "prepping" "Files added to the Rom-Jacket" /Stop /timeout:3
ATTRIB -H "%GBG%\%ROMJ%\SORTED ARCHIVES"
explorer "%GBG%\%ROMJ%"
goto :endRJPrep

:usetrj
"wbox.exe" "Architechture" "^^Rom-Jacket needs to be configured to jacketize your library.^^" "Continue;Quit" /DB=1 /BW=130
if %ERRORLEVEL%==1 goto :setstartup
if %ERRORLEVEL%==2 goto :endRJPrep
goto :endRJPrep

:setstartup
START /min /w "" "%GBC%\START.bat"

:endRJPrep
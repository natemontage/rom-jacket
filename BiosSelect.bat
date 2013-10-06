FOR /F "tokens=2 delims= " %%A IN ('TASKLIST /FI "imagename eq cmd.exe" /v^| find /i "BIOSINSTALL"') DO TASKKILL /F /PID %%A
FOR /F "tokens=2 delims= " %%A IN ('TASKLIST /FI "imagename eq cmd.exe" /v^| find /i "ROM-JACKET"') DO TASKKILL /F /PID %%A
CHCP 1252
setlocal enableextensions,disabledelayedexpansion
MODE CON: COLS=15 LINES=1
TITLE BIOSINSTALL

:STARTALL
for %%A in ("%~dp0") do set gbtmp=%%~A
for %%A in ("%gbtmp:~0,-1%") do set GBC=%%~A
for %%A in ("%~d0") do set GBD=%%~A
move /y bioslist.ini "%GBC%"
CALL "%GBC%\defineVar.bat"
if exist "locset.ini" goto :bautoset
if exist "%GBC%\locset.ini" goto :bautoset
goto :bunsets

:bautoset
pushd "%GBC%"
CALL "%GBC%\varLoc.bat"
if "%GBM%"=="[GBM]" goto :	
if "%GBE%\Emulators"=="[GBE]\Emulators" goto :bunsets
if "%DAMVAR%"=="[DAM]" goto :bunsets
if "%GBG%\Games\Console"=="[GBG]\Games\Console" goto :bunsets
if "%XPADDER%"=="[XPD]" goto :bunsets
if "%GBM%"=="[GBM]" goto :bunsets
for %%R in ("%GBC%\bioslist.ini") do if "%%~zR" equ "" goto :existingBios
for %%R in ("%GBC%\bioslist.ini") do if "%%~zR" equ "0" goto :existingBios
start "" "%GBC%\wbusy.exe" "InstallingBios" "Copying bios files to your bios folder." /marquee
for /f "tokens=* delims= " %%a in ('type "%GBC%\bioslist.ini"') do move /Y "%%~a" "%GBC%\net\BIOS"
start "" "%GBC%\wbusy.exe" "InstallingBios" "Bios Files Now In the ''BIOS'' folder" /Stop /timeout:1
set BIOSI=1
goto :bioscall

:existingBios
ATTRIB -H "%GBG%\%ROMJ%\SORTED ARCHIVES"
explorer "%GBC%\net\BIOS"
goto :endBIOS

:bioscall
call "%GBC%\BiosSelection.bat"
del /q "%GBC%\bioslist.ini"
SET EMUINST=Auto
goto :endBIOS

:bunsets
"%GBC%\wbox.exe" "preconfig" "^^Rom-Jacket needs to be configured to sort your bios file.^^" "Continue;Quit" /DB=1 /BW=130  
if %ERRORLEVEL%==1 goto :callBrun
if %ERRORLEVEL%==2 goto :endBIOS
goto :endBIOS

:callBrun
cmd /c START /min "" "%GBC%\START.bat"

:endBIOS
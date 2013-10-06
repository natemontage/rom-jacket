setlocal DISABLEDELAYEDEXPANSION
if "%SORTON%"=="1" goto :romucall
:RomulateBegin
for %%A in ("%~dp0") do set gbtmp=%%~A
for %%A in ("%gbtmp:~0,-1%") do set GBC=%%~A
for %%A in ("%~d0") do set GBD=%%~A
CALL "%GBC%\defineVar.bat"
CALL "%GBC%\MIRSET.bat"
SET urlIthL=1
SET /A urlIthL -= 1
CALL :ARCH2_LGrab
goto :SETBIT

:ARCH2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlIthL% "%GBC%\ARCH.ini"') DO (
if "%%A"=="[BIT]" goto :unsets
if "%%A"=="" goto :unsets
SET BIT=%%A
)

:SETBIT
if "%BIT%"=="64" set INDX=index64.set
if "%BIT%"=="32" set INDX=index32.set
if exist "locset.ini" goto :autoset
if exist "%GBC%\locset.ini" goto :autoset
goto :unsets

:autoset
%GBD%
cd "%GBC%"
CALL "%GBC%\varLoc.bat"
if "%GBM%"=="[GBM]" goto :unsets
if "%GBE%\Emulators"=="[GBE]\Emulators" goto :unsets
if "%DAMVAR%"=="[DAM]" goto :unsets
if "%GBG%\Games\Console"=="[GBG]\Games\Console" goto :unsets
if "%XPADDER%"=="[XPD]" goto :unsets
if "%GBM%"=="[GBM]" goto :unsets
for %%R in ("%GBC%\copy.ini") do if "%%~zR" equ "" goto :existingUsers
for %%R in ("%GBC%\copy.ini") do if %%~zR equ 0 goto :existingUsers
"%GBC%\wbox.exe" "move.or.copy" "Move or Copy" "MOVE;COPY" /DB=1
if %errorlevel%==1 goto :MOVING
if %errorlevel%==2 goto :COPYING
goto :EOF

:MOVING
start "" "%GBC%\wbusy.exe" "romulating" "Moving to your Rom-Jacket^Re/Processing your library.^Please be patient." /marquee
for /f "tokens=* delims= " %%a in ('type "%GBC%\copy.ini"') do (
set TOCPY=%%~a
set TONAM=%%~nxa
move /y "%%~a" "%GBG%\%ROMJ%"
)
"%GBC%\wbusy.exe" "romulating" "Moved" /Stop /timeout:1
goto :CLNP

:COPYING
start "" "%GBC%\wbusy.exe" "romulating" "Copying to your Rom-Jacket^Re/Processing your library.^Please be patient." /marquee
for /f "tokens=* delims= " %%a in ('type "%GBC%\copy.ini"') do (
set TOCPY=%%~a
set TONAM=%%~nxa
call :FLDRTST
)
"%GBC%\wbusy.exe" "romulating" "Copied" /Stop /timeout:1
goto :CLNP

:FLDRTST
if exist "%TOCPY%\*" goto :ROBO
goto :ROBOF

:ROBO
robocopy "%TOCPY%" "%GBG%\%ROMJ%\%TONAM%" /R:2 /W:2 /NP /E /IS /COPYALL
exit /b

:ROBOF
robocopy "%TOCPY%" "%GBG%\%ROMJ%" /R:2 /W:2 /NP /E /IS /COPYALL
exit /b


:CLNP
CALL delshort.bat
goto :romucall

:existingUsers
:romucall
call "%GBC%\sortroms.bat"
del /q "%GBC%\copy.ini"

exit /b

:unsets
"%GBC%\wbox.exe" "Architechture" "^^Rom-Jacket needs to be configured to jacketize your library.^^" "Continue;Quit" /DB=1 /BW=130  
if %ERRORLEVEL%==1 goto :callrun
if %ERRORLEVEL%==2 goto :endromulate
goto :endromulate

:callrun
REM cmd /c START /min "" 
"%GBC%\START.lnk"

:endromulate
exit /b
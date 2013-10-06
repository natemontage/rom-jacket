SET AMIG32HDD=
SET AMIG32DSK=
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "*.hdf"') do set AMIG32HDD=%%~a
CALL :injecAMIG32s
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "*.cue"') do set AMIG32DSK=%%~a
CALL :injecAMIG32s
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "*.iso"') do set AMIG32DSK=%%~a
CALL :injecAMIG32s
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "*.bin"') do set AMIG32DSK=%%~a
CALL :injecAMIG32s
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "*.img"') do set AMIG32DSK=%%~a
CALL :injecAMIG32s
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "*.cdi"') do set AMIG32DSK=%%~a
CALL :injecAMIG32s
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "*.nrg"') do set AMIG32DSK=%%~a
CALL :injecAMIG32s
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "*.mdf"') do set AMIG32DSK=%%~a
CALL :injecAMIG32s
goto :AMIG32end

:injecAMIG32s
if "%AMIG32HDD%"=="" "%GBC%\fart.exe" "Config.fs-uae" [HDD] --remove
if "%AMIG32DSK%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae"  [CDROM] "%AMIG32DSK%"
if "%AMIG32HDD%" NEQ "" "%GBC%\fart.exe" "Config.fs-uae" [HDD] "%AMIG32HDD%"
exit /b

:AMIG32end
"%GBC%\fart.exe" "Config.fs-uae" [ROMPTH] "%GBG%\%GAM%\%CONS%\%AMIG32%\%CSTM%"
"%GBC%\fart.exe" "Config.fs-uae" \ \\

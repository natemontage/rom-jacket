CALL "%GBC%\fmdrv.bat"
"%DAMVAR%" -get_Letter scsi, 0
set DAMVARNUM=%errorlevel%
pushd "%GBC%\net\%EXECT%\%FMTOWNS%"
"%GBC%\fart.exe" "%FMUNZ%.ini" [DRVLTR] %DAMVARNUM%
popd
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
SET RDISK=
set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\FMTownsexeject.bat"
)
exit /b
:injext
if "%DTOFF%"=="1" goto :DSKS
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
pushd "%GBC%\net\%EXECT%\%FMTOWNS%"
if /I "%%~xa"==".cue" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cue
)
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "*.iso" "*.bin" "*.cue" "*.img" "*.nrg" "*.mdf"') do (
if /I "%%~xa" NEQ "" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] .%%~xa
if /I "%%~xa" NEQ "" "%GBC%\fart.exe" "*.bat" [OPT] "REM "
if /I "%%~xa" NEQ "" "%GBC%\fart.exe" "*.bat" [DAM] --remove
)
:DSKS
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h ".bin" "*.fdi" "*.td0" "*.imd" "*.cqm" "*.dsk" "*.d77" "*.d88" "*.1dd"') do (
if /I "%%~xa" NEQ "" "%GBC%\fart.exe" "*.bat" [OPT] --remove
if /I "%%~xa" NEQ "" "%GBC%\fart.exe" "*.bat" [DAM] "REM "
popd
)
exit /b
:addto
SET /A ADDTO+=1
CALL "%GBC%\fmdrv.bat"
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%FMTOWNS%\key*.def" "%GBE%\%EMUL%\%FMUNZ%"
"%DAMVAR%" -get_Letter scsi, 0
set DAMVARNUM=%errorlevel%
pushd "%GBC%\net\%LNCH%\%FMTOWNS%"
"%GBC%\fart.exe" "%FMUNZ%.ini" [DRVLTR] %DAMVARNUM%
if "%GGOFF%"=="1" copy /y "%GBC%\net\%LNCH%\%FMTOWNS%\%FMUNZ%.ini" "%GBE%\%EMUZ%\%FMUNZ%"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%FMTOWNS%\%FMUNZ%.ini" "%%~g"
set CSTM=%%~g
SET RDISK=
pushd "%%~g"
call :injext
CALL "%GBC%\FMTownsinject.bat"
popd
)
exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
if "%DTOFF%"=="1" goto :DSKS
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
)
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "*.iso" "*.bin" "*.cue" "*.img" "*.nrg" "*.mdf"') do (
if /I "%%~xa" NEQ "" "%GBC%\fart.exe" "*.bat" [EXT] .%%~xa
if /I "%%~xa" NEQ "" "%GBC%\fart.exe" "*.bat" [OPT] "REM "
if /I "%%~xa" NEQ "" "%GBC%\fart.exe" "*.bat" [DAM] --remove
)
:DSKS
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h ".bin" "*.fdi" "*.td0" "*.imd" "*.cqm" "*.dsk" "*.d77" "*.d88" "*.1dd"') do (
if /I "%%~xa" NEQ "" "%GBC%\fart.exe" "*.bat" [OPT] --remove
if /I "%%~xa" NEQ "" "%GBC%\fart.exe" "*.bat" [DAM] "REM "
)

:skp
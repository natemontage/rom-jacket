pushd "%GBC%\net\%LNCH%\%SEGM2%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "EMULATOR.ini" [SOURCE] "%GBG%\%GAM%\%CONS%\%SEGM2%\SOURCE"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "EMULATOR.ini" [ROMPTH] "%GBG%\%GAM%\%CONS%\%SEGM2%\SOURCE"
if "%GGOFF%"=="1" copy /y "EMULATOR.ini" "%GBE%\%EMUZ%\%M2EMU%"
popd
for /d %%g IN (*) DO (
mkdir CFG
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%SEGM2%\*.ini" "%%~g"
  set CSTM=%%~g
  pushd "%%~g"
  call :injext
CALL "%GBC%\SEGM2inject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".lnk" "%GBC%\fart.exe" "*.bat" [EXT] lnk
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%SEGM2%\keys.input" "%%~g\CFG\%%~na.input"
)
:skp
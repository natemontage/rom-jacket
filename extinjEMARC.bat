pushd "%GBC%\net\%LNCH%\%EMARC%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "WA.cfg" [ROMPTH] "%GBE%\%EMUZ%\%WINARC%"
popd
for /d %%g IN (*) DO (
  if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%EMARC%\WA.cfg" "%%~g"
set CSTM=%%~g
  pushd "%%~g"
  call :injext
CALL "%GBC%\EMARCinject.bat"
if "%GGOFF%"=="1" copy /y "WA.cfg" "%GBE%\%EMUZ%\%WINARC%\Configs"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".pgm" "%GBC%\fart.exe" "*.bat" [EXT] pgm
)
:skp
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%ACBBC%\Preferences.cfg" "%%~g"
  set CSTM=%%~g
  pushd "%%~g"
  call :injext
CALL "%GBC%\ACBBCinject.bat"
popd
  )
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%ACBBC%\Preferences.cfg" "%GBE%\%EMUZ%\%BEEBEM%"
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".ssd" "%GBC%\fart.exe" "*.bat" [EXT] ssd
if /I "%%~xa"==".uef" "%GBC%\fart.exe" "*.bat" [EXT] uef
)
:skp
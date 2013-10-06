for /d %%g IN (*) DO (
pushd "%GBC%\net\%LNCH%\%ACARC%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "arc.cfg" [DSK] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "arc.cfg" [DSK1] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "arc.cfg" [DSK2] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "arc.cfg" [DSK3] --remove
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%ACARC%\arc.cfg" "%%~g"
  set CSTM=%%~g
  pushd "%%~g"
  call :injext
CALL "%GBC%\ACARCinject.bat"
popd
  )
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%ACARC%\arc.cfg" "%GBE%\%EMUZ%\%ARLTR%"
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".adf" "%GBC%\fart.exe" "*.bat" [EXT] adf
if /I "%%~xa"==".apd" "%GBC%\fart.exe" "*.bat" [EXT] apd
if /I "%%~xa"==".fdi" "%GBC%\fart.exe" "*.bat" [EXT] fdi
)
:skp
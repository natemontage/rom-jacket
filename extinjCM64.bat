if "%GGOFF%"=="1" del /q "%GBE%\%EMUZ%\%VICE%"
pushd "%GBC%\net\%LNCH%\%CM64%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "vice.ini" [ROMPTH] [EMUPTH]
if "%GGOFF%"=="1" "%GBC%\fart.exe" "vice.ini" [ROM] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "vice.ini" [EMUPTH] "%GBE%\%EMUZ%\%VICE%"
if "%GGOFF%"=="1" copy /Y "vice.ini" "%GBE%\%EMUZ%\%VICE%"
popd
for /d %%g IN (*) DO (
  if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%CM64%\vice.ini" "%%~g"
  set CSTM=%%~g
  pushd "%%~g"
  call :injext
CALL "%GBC%\CM64inject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".x64" "%GBC%\fart.exe" "*.bat" [EXT] x64
if /I "%%~xa"==".t64" "%GBC%\fart.exe" "*.bat" [EXT] t64
if /I "%%~xa"==".d64" "%GBC%\fart.exe" "*.bat" [EXT] d64
if /I "%%~xa"==".g64" "%GBC%\fart.exe" "*.bat" [EXT] g64
if /I "%%~xa"==".fdi" "%GBC%\fart.exe" "*.bat" [EXT] fdi
if /I "%%~xa"==".p00" "%GBC%\fart.exe" "*.bat" [EXT] p00
if /I "%%~xa"==".prg" "%GBC%\fart.exe" "*.bat" [EXT] prg
if /I "%%~xa"==".tap" "%GBC%\fart.exe" "*.bat" [EXT] tap
)
:skp
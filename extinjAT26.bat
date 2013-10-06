if "%FERID%"=="1" call "%GBC%\%SHRTN%inject1.bat"
if "%FERID%"=="1" exit /b
for /d %%g IN (*) DO (
pushd "%GBC%\net\%LNCH%\%AT26%"
  if "%GGOFF%"=="1" "%GBC%\fart.exe" "stella.ini" [ROMPTH] [EMUPTH]
  "%GBC%\fart.exe" "stella.ini" [EMUPTH] "%GBE%\%EMUZ%\%STLA%"
  if "%RECONF%"=="1" copy /Y "stella.ini" "%%~g\stella.ini"
popd
  set CSTM=%%~g
  pushd "%%~g"
  call :injext
if "%RECONF%"=="1" CALL "%GBC%\AT26inject.bat"
popd
  )
  if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%AT26%\stella.ini" "%GBE%\%EMUZ%\%STLA%"
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".z26" "%GBC%\fart.exe" "*.bat" [EXT] z26
if /I "%%~xa"==".a26" "%GBC%\fart.exe" "*.bat" [EXT] a26
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".rom" "%GBC%\fart.exe" "*.bat" [EXT] rom
)
:skp
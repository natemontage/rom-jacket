pushd "%GBC%\net\%LNCH%\%CPS%"
"%GBC%\fart.exe" "fba.ini" [ROMPTH] "%GBG%\%GAM%\%CONS%\%CPS%\SOURCE"
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%CPS%\fba.ini" "%GBE%\%EMUZ%\%FBA%"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%CPS%\fba.ini" "%%~g"
set CSTM=%%~g
pushd "%%~g"
call :injext
CALL "%GBC%\CPSinject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".zip" copy /Y "%GBC%\net\%LNCH%\%CPS%\game.ini" "%%~na.ini"
)
:skp
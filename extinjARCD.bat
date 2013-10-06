pushd "%GBC%\net\%LNCH%\%ARCD%"
"%GBC%\fart.exe" "Mame32.ini" [SOURCE] "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
popd
for /d %%g IN (*) DO (
  mkdir "%%~g\cfg"
  mkdir "%%~g\ini"
  mkdir "%%~g\ctrl"
  if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%ARCD%\default.cfg" "%%~g\cfg"
  if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%ARCD%\Mame.ini" "%%~g"
  set CSTM=%%~g
  pushd "%%~g"
  call :injext
CALL "%GBC%\Arcdinject.bat"
popd
  )
if "%GGOFF%"=="1"  pushd "%GBE%\%EMUZ%\%MAME%"
   if "%GGOFF%"=="1" "%GBE%\%EMUZ%\%MAME%\%MAME%.exe" -createconfig -rompath "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE" -writeconfig
if "%GGOFF%"=="1" popd
   exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".lnk" "%GBC%\fart.exe" "*.bat" [EXT] lnk
)
:skp
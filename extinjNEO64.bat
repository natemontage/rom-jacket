pushd "%GBC%\net\%LNCH%\%NEO64%"
"%GBC%\fart.exe" "Mame32.ini" [SOURCE] "%GBG%\%GAM%\%CONS%\%NEO64%\SOURCE"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NEO64%\Mame32.ini" "%%~g\Mame32.ini"
    mkdir "%%~g\cfg"
  mkdir "%%~g\ini"
  mkdir "%%~g\ctrl"
    if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NEO64%\default.cfg" "%%~g\cfg"
  if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NEO64%\Mame.ini" "%%~g"
  set CSTM=%%~g
  pushd "%%~g"
  call :injext
CALL "%GBC%\Neo64inject.bat"
popd
  )
     if "%GGOFF%"=="1" "%GBE%\%EMUZ%\%MAME%\%MAME%.exe" -createconfig -rompath "%GBG%\%GAM%\%CONS%\%NEO64%\SOURCE" -writeconfig
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".lnk" "%GBC%\fart.exe" "*.bat" [EXT] lnk
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
:skp
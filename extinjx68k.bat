pushd "%GBC%\net\%LNCH%\%X68K%"
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "XM6.ini" [Resume] Path=
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "XM6.ini" [SASI] File0=
if "%GGOFF%"=="1" copy /y "XM6.ini" "%GBE%\%EMUZ%\%XM6%"
popd
for /d %%g IN (*) DO (
  if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%X68K%\*.ini" "%%~g"
  set CSTM=%%~g
  pushd "%%~g"
  call :injext
CALL "%GBC%\X68Kinject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
)
:skp
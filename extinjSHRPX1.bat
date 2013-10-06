pushd "%GBC%\net\%LNCH%\%SHRPX1%"
if "%GGOFF%"=="1" copy /y "%XTURB%.cfg" "%GBE%\%EMUZ%\%XTURB%"
popd
for /d %%g IN (*) DO (
  if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%SHRPX1%\%XTURB%.cfg" "%%~g"
  set CSTM=%%~g
  Pushd "%%~g"
  call :injext
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
CALL "%GBC%\SHRPX1inject.bat"
)
:skp
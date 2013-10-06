pushd "%GBC%\net\%LNCH%\%INTEL%"
"%GBC%\fart.exe" "Bliss.ini" [ROMPTH] "%GBG%\%GAM%\%CONS%\%INTEL%\%CSTM%"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%INTEL%\Bliss.ini" "%%~g"
  set CSTM=%%~g
  pushd "%%~g"
  call :injext
CALL "%GBC%\Intelbinject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".int" "%GBC%\fart.exe" "*.bat" [EXT] int
)
:skp
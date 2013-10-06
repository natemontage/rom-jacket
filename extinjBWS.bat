pushd "%GBC%\net\%LNCH%\%BWS%"
"%GBC%\fart.exe" "%MEDN%*.cfg" [MEDN] "%GBE%\%EMUZ%\%MEDN%"
if "%GGOFF%"=="1" del /q "%GBE%\%EMUZ%\%MEDN%"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%BWS%\%MEDN%*.cfg" "%%~g"
  set CSTM=%%~g
  pushd "%%~g"
  call :injext
CALL "%GBC%\BWSinject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"


  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".ws" "%GBC%\fart.exe" "*.bat" [EXT] ws
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
:skp
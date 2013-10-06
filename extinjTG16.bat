pushd "%GBC%\net\%LNCH%\%TG16%"
"%GBC%\fart.exe" "%MEDN%*.cfg" [MEDN] "%GBE%\%EMUZ%\%MEDN%"
popd

for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%TG16%\%MEDN%*.cfg" "%%~g"
 set CSTM=%%~g
  pushd "%%~g"
  call :injext
CALL "%GBC%\Tg16inject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".sgx" "%GBC%\fart.exe" "*.bat" [EXT] sgx
if /I "%%~xa"==".pce" "%GBC%\fart.exe" "*.bat" [EXT] pce
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
:skp
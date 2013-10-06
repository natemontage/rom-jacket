pushd "%GBC%\net\%LNCH%\%NGB%"
"%GBC%\fart.exe" "%MEDN%*.cfg" [MEDN] "%GBE%\%EMUZ%\%MEDN%"
popd

for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NGB%\%MEDN%*.cfg" "%%~g"
 set CSTM=%%~g
  pushd "%%~g"
  call :injext
CALL "%GBC%\Ngbinject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".gb" "%GBC%\fart.exe" "*.bat" [EXT] gb
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
:skp
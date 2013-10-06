pushd "%GBC%\net\%LNCH%\%LYNX%"
"%GBC%\fart.exe" "%MEDN%*.cfg" [MEDN] "%GBE%\%EMUZ%\%MEDN%"
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\*lynxboot*"') do set LYNXBIOS=%%~a
"%GBC%\fart.exe" "%MEDN%*.cfg" [BIOS] "%LYNXBIOS%"
popd

for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%LYNX%\%MEDN%*.cfg" "%%~g"
 set CSTM=%%~g
  pushd "%%~g"
  call :injext
  CALL "%GBC%\LYNXinject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".lnx" "%GBC%\fart.exe" "*.bat" [EXT] lnx
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
:skp
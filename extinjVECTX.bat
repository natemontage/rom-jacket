
CALL "%GBC%\Vectxinject.bat"
if "%CD%" NEQ "%GBG%\%GAM%\%CONS%\%VECTX%" (goto :skp)

for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%VECTX%\configuration.xml" "%%~g"
 set CSTM=%%~g
  pushd "%%~g"
  call :injext
  CALL "%GBC%\VECTXinject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".vec" "%GBC%\fart.exe" "*.bat" [EXT] vec
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
)
:skp
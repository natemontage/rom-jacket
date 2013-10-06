pushd "%GBC%\net\%LNCH%\%BWSC%"
"%GBC%\fart.exe" "%MEDN%*.cfg" [MEDN] "%GBE%\%EMUZ%\%MEDN%"
if "%GGOFF%"=="1" del /q "%GBE%\%EMUZ%\%MEDN%"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%BWSC%\%MEDN%*.cfg" "%%~g"
  set CSTM=%%~g
pushd "%%~g"
call :injext
CALL "%GBC%\BWSCinject.bat"
popd
)
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".wsc" "%GBC%\fart.exe" "*.bat" [EXT] wsc
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
:skp
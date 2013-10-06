pushd "%GBC%\net\%LNCH%\%ATMS%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "*.ini" .Mem memsaves
if "%GGOFF%"=="1" "%GBC%\fart.exe" "*.ini" [ROMPTH] "[EMUPTH]"
"%GBC%\fart.exe" "*.ini" [EMUPTH] "%GBE%\%EMUZ%\%DMUL%"
if "%GGOFF%"=="1" copy /y "*.ini" "%GBE%\%EMUZ%\%DMUL%"
popd
for /d %%g IN (*) DO (
pushd "%GBC%\net\%LNCH%\%ATMS%"
  if "%DXV%" EQU "11" "%GBC%\inifile.exe" "%DMUL%.ini" [plugins] gpu=gpuDX11.dll
popd
  if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%ATMS%\*.ini" "%%~g"
 set CSTM=%%~g
  pushd "%%~g"
  call :injext
CALL "%GBC%\ATMSinject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
:skp
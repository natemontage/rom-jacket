pushd "%GBC%\net\%LNCH%\%NGC%"
if "%DXV%" EQU "11" "%GBC%\inifile.exe" "%DOLPH%.ini" [Core] GFXBackend=Direct3D11
popd
for /d %%g IN (*) DO (
mkdir "%%~g\.Profiles"
attrib +H "%%~g\.Profiles"
mkdir "%%~g\.Mem"
attrib +H "%%~g\.Mem"
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NGC%\*.ini" "%%~g"
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NGC%\GCP*.ini" "%%~g\.Profiles"
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NGC%\*.raw" "%%~g\.Mem"
 SET NGCROM=
 set CSTM=%%~g
  pushd "%%~g"
  call :injext
call "%GBC%\NGCinject.bat" 
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d') do (
set ROM=%%~a
if /I "%%~xa"==".iso" set NGCROM=%%~a
if /I "%%~xa"==".gcm" set NGCROM=%%~a
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".gcm" "%GBC%\fart.exe" "*.bat" [EXT] gcm
)
:skp
for /d %%g IN (*) DO (
  pushd "%%~g"
  call :injext
CALL "%GBC%\CDIinject.bat"
  popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".img" "%GBC%\fart.exe" "*.bat" [EXT] img
if /I "%%~xa"==".raw" "%GBC%\fart.exe" "*.bat" [EXT] raw
if /I "%%~xa"==".tao" "%GBC%\fart.exe" "*.bat" [EXT] tao
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
)
:skp
for /d %%g IN (*) DO (
set CSTM=%%~g
  pushd "%%~g"
  call :injext
CALL "%GBC%\JagCDinject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"


  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
if /I "%%~xa"==".j64" "%GBC%\fart.exe" "*.bat" [EXT] j64
if /I "%%~xa"==".jag" "%GBC%\fart.exe" "*.bat" [EXT] jag
if /I "%%~xa"==".img" "%GBC%\fart.exe" "*.bat" [EXT] img
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] mdf
)
:skp
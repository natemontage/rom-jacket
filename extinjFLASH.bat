for /d %%g IN (*) DO (
  pushd "%%~g"
set CSTM=%%g
  call :injext
CALL "%GBC%\Flashinject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".swf" "%GBC%\fart.exe" "*.bat" [EXT] swf
if /I "%%~xa"==".flv" "%GBC%\fart.exe" "*.bat" [EXT] flv
if /I "%%~xa"==".lnk" "%GBC%\fart.exe" "*.bat" [EXT] lnk
if /I "%%~xa"==".htm" "%GBC%\fart.exe" "*.bat" [EXT] htm
if /I "%%~xa"==".html" "%GBC%\fart.exe" "*.bat" [EXT] html
)
:skp
for /d %%g IN (*) DO (
  pushd "%%~g"
  call :injext
CALL "%GBC%\MSDSinject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".lnk" "%GBC%\fart.exe" "*.bat" [EXT] lnk
)
:skp
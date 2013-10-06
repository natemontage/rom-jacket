for /d %%g IN ("%CSTM%") DO (
  pushd "%%~g"
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\Daphnexeject.bat"
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%DAPHN%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".iso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] iso
if /I "%%~xa"==".img" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] img
if /I "%%~xa"==".bin" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
if /I "%%~xa"==".cue" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cue
if /I "%%~xa"==".cdi" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] mdf
popd
)
exit /b
:addto
SET /A ADDTO+=1
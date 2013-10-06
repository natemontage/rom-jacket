for /d %%g IN ("%CSTM%") DO (
  set CSTM=%%~g
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\Intelexeject.bat"
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%INTEL%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".int" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] int
if /I "%%~xa"==".itv" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] itv
if /I "%%~xa"==".rom" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] rom
if /I "%%~xa"==".bin" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
)

:skp
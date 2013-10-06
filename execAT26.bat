if "%FERID%"=="1" call "%GBC%\%AT26%inject1.bat"
if "%FERID%"=="1" exit /b
for /d %%g IN ("%CSTM%") DO (
pushd "%GBC%\net\%EXECT%\%AT26%"
  "%GBC%\fart.exe" "stella.ini" [EMUL] "[EMUPTH]"
popd
  set CSTM=%%~g
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
if "%RECONF%"=="1" CALL "%GBC%\AT26exeject.bat"
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%AT26%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".z26"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] z26
if /I "%%~xa"==".a26"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] a26
if /I "%%~xa"==".zip"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
if /I "%%~xa"==".bin"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
if /I "%%~xa"==".rom"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] rom
)
exit /b
:addto
SET /A ADDTO+=1
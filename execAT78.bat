pushd "%GBC%\net\%EXECT%\%AT78%"
"%GBC%\fart.exe" "%PROSYS%.ini" [EMUL] "[EMUPTH]"
popd
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\AT78exeject.bat"
)
exit /b

:injext
pushd "%GBC%\net\%EXECT%\%AT78%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".a78"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] a78
if /I "%%~xa"==".bin"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
if /I "%%~xa"==".zip"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
if /I "%%~xa"==".rom"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] rom
if /I "%%~xa"==".a78" SET AT78ROM=%%~a
if /I "%%~xa"==".bin" SET AT78ROM=%%~a
if /I "%%~xa"==".zip" SET AT78ROM=%%~a
if /I "%%~xa"==".rom" SET AT78ROM=%%~a
)
exit /b
:addto
SET /A ADDTO+=1
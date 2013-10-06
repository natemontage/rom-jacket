pushd "%GBC%\net\%EXECT%\%COLEC%"
popd
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
CALL "%GBC%\COLECexeject.bat"
set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
)
exit /b

:injext
pushd "%GBC%\net\%EXECT%\%COLEC%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".col"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] col
if /I "%%~xa"==".rom"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] rom
popd
)
exit /b
:addto
SET /A ADDTO+=1
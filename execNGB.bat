pushd "%GBC%\net\%EXECT%\%NGB%"
"%GBC%\fart.exe" "%MEDN%*.cfg" [MEDN] "[EMUPTH]"
popd

for /d %%g IN ("%CSTM%") DO (
 set CSTM=%%~g
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\Ngbexeject.bat"
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%NGB%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".gb" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] gb
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
popd
)
exit /b
:addto
SET /A ADDTO+=1
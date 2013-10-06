pushd "%GBC%\net\%EXECT%\%BWS%"
"%GBC%\fart.exe" "%MEDN%*.cfg" [MEDN] "[EMUPTH]"
popd
for /d %%g IN ("%CSTM%") DO (
  set CSTM=%%~g
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\BWSexeject.bat"
  )
  exit /b
  
:injext
pushd "%GBC%\net\%EXECT%\%BWS%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".ws"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] ws
if /I "%%~xa"==".zip"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
popd
)
exit /b
:addto
SET /A ADDTO+=1
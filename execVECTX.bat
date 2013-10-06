for /d %%g IN ("%CSTM%") DO (
 set CSTM=%%~g
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
  CALL "%GBC%\VECTXexeject.bat"
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%VECTX%"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".vec" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] vec
if /I "%%~xa"==".bin" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
popd
)
exit /b
:addto
SET /A ADDTO+=1
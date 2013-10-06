for /d %%g IN ("%CSTM%") DO (
copy /Y "%GBC%\net\%EXECT%\%AMSTR%\WinAPE.ini" "%CD%\WinAPE.ini"
  set CSTM=%%~g
CALL "%GBC%\Amstrexeject.bat"
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
)
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%AMSTR%"
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%AMSTRDSK%"') do (
"%GBC%\fart.exe" "*.bat" .[EXT] %%~xa
popd
)
exit /b
:addto
SET /A ADDTO+=1
pushd "%GBC%\net\%EXECT%\%CPS3%"
"%GBC%\fart.exe" "fba.ini" [ROMPTH] "[ROMPTH]\SOURCE"
popd
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\CPS3exeject.bat"
)
exit /b

:injext
pushd "%GBC%\net\%EXECT%\%CPS3%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
if /I "%%~xa"==".zip" copy /Y "%GBC%\net\%EXECT%\%CPS3%\game.ini" "%%~na.ini"
popd
)
exit /b
:addto
SET /A ADDTO+=1
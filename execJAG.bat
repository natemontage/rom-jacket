"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBC%\net\%EXECT%\%CSTCONS%" "%VJAG%\vjag.exe"
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\Jagexeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%JAG%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (		
if /I "%%~xa"==".jag" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] jag
if /I "%%~xa"==".j64" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] j64
popd
)
exit /b
:addto
SET /A ADDTO+=1

pushd "%GBC%\net\%EXECT%\%NEOPKT%"
"%GBC%\fart.exe" "%MEDN%*.cfg" [MEDN] "[EMUPTH]"
popd

for /d %%g IN ("%CSTM%") DO (
  set CSTM=%%~g
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\Neopktexeject.bat"
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%NEOPKT%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
if /I "%%~xa"==".ngp" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] ngp
if /I "%%~xa"==".npk" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] npk
if /I "%%~xa"==".ngc" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] ngc
if /I "%%~xa"==".neo" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] neo
popd
)
exit /b
:addto
SET /A ADDTO+=1
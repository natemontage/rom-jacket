"%SEVENZIP%" e -y "%GBC%\%EMEX%\%EMEX%.7z" -o"%GBC%\net\%EXECT%\%CSTCONS%" "%CEMU%\%EMEXE%.exe"
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%g
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\Flashexeject.bat"
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%FLASH%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".swf" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] swf
if /I "%%~xa"==".flv" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] flv
if /I "%%~xa"==".lnk" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] lnk
if /I "%%~xa"==".htm" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] htm
if /I "%%~xa"==".html" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] html
)
exit /b
:addto
SET /A ADDTO+=1
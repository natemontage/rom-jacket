echo.mkdir "Games">>"%GBC%\bioscpy.ini"
echo.mkdir "Games\Profiles">>"%GBC%\bioscpy.ini"
echo.mkdir "Games\Profiles\GCPad">>"%GBC%\bioscpy.ini"
echo.mkdir ".Profiles">>"%GBC%\bioscpy.ini"
echo.copy /y "GCPad.ini" ".Profiles">>"%GBC%\bioscpy.ini"

for /d %%g IN ("%CSTM%") DO (
 SET NGCROM=
 set CSTM=%%~g
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
call "%GBC%\NGCexeject.bat" 
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%NGC%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
set ROM=%%~a
if /I "%%~xa"==".iso" set NGCROM=%%~a
if /I "%%~xa"==".gcm" set NGCROM=%%~a
if /I "%%~xa"==".iso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] iso
if /I "%%~xa"==".gcm" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] gcm
popd
)
exit /b
:addto
SET /A ADDTO+=1
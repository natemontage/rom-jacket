echo.mkdir "Games">>"%GBC%\bioscpy.ini"
echo.mkdir "Games\Profiles">>"%GBC%\bioscpy.ini"
echo.mkdir "Games\Profiles\Wiimote">>"%GBC%\bioscpy.ini"
echo.mkdir ".Profiles">>"%GBC%\bioscpy.ini"
echo.copy /y "WiimoteNew.ini" ".Profiles">>"%GBC%\bioscpy.ini"

for /d %%g IN ("%CSTM%") DO (

set CSTM=%%~g
SET WIIROM=
set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\Wiiexeject.bat"

)
exit /b

:injext
pushd "%GBC%\net\%EXECT%\%WII%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
SET ROM=%%~a
if /I "%%~xa"==".dol" SET WIIROM=%%~a
if /I "%%~xa"==".wia" SET WIIROM=%%~a
if /I "%%~xa"==".wad" SET WIIROM=%%~a
if /I "%%~xa"==".wbfs" SET WIIROM=%%~a
if /I "%%~xa"==".iso" SET WIIROM=%%~a
if /I "%%~xa"==".dol" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] dol
if /I "%%~xa"==".wbfs" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] wbfs
if /I "%%~xa"==".wia" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] wia
if /I "%%~xa"==".wad" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] wad
if /I "%%~xa"==".iso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] iso
popd
)
exit /b
:addto
SET /A ADDTO+=1
pushd "%GBC%\net\%EXECT%\%SEGM2%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "EMULATOR.ini" [SOURCE] "%GBG%\%GAM%\%CONS%\%SEGM2%\SOURCE"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "EMULATOR.ini" [ROMPTH] "%GBG%\%GAM%\%CONS%\%SEGM2%\SOURCE"
EMULATOR.ini" "%GBE%\%EMUZ%\%M2EMU%"
popd
for /d %%g IN ("%CSTM%") DO (
mkdir CFG
  set CSTM=%%~g
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\SEGM2exeject.bat"
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%SEGM2%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
if /I "%%~xa"==".lnk" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] lnk
popd
)
exit /b
:addto
SET /A ADDTO+=1
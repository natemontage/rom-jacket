pushd "%GBC%\net\%EXECT%\%N64%"
"%GBC%\fart.exe" "Project64.cfg" [REZX] %DREZX%
"%GBC%\fart.exe" "Project64.cfg" [REZY] %DREZY%
"%GBC%\fart.exe" "Project64.cfg" [EMUZ] "[EMUPTH]"
popd

for /d %%g IN ("%CSTM%") DO (
 set CSTM=%%~g
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\N64exeject.bat"
  )
  exit /b

  :injext
pushd "%GBC%\net\%EXECT%\%N64%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".pal" SET ROMNM=%%~a
if /I "%%~xa"==".usa" SET ROMNM=%%~a
if /I "%%~xa"==".u64" SET ROMNM=%%~a
if /I "%%~xa"==".j64" SET ROMNM=%%~a
if /I "%%~xa"==".v64" SET ROMNM=%%~a
if /I "%%~xa"==".n64" SET ROMNM=%%~a
if /I "%%~xa"==".z64" SET ROMNM=%%~a
if /I "%%~xa"==".zip" SET ROMNM=%%~a
if /I "%%~xa"==".pal" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] pal
if /I "%%~xa"==".usa" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] usa
if /I "%%~xa"==".u64" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] u64
if /I "%%~xa"==".j64" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] j64
if /I "%%~xa"==".v64" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] v64
if /I "%%~xa"==".n64" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] n64
if /I "%%~xa"==".z64" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] z64
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
popd
)

:skp
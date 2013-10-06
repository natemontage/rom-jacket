for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(J*"') do SET SCDJB=%%i
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(E*"') do SET SCDEB=%%i
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(U*"') do SET SCDUB=%%i
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\*jp*cd*"') do SET SCDJB=%%i
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\*eu*cd*"') do SET SCDEB=%%i
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\*us*cd*"') do SET SCDUB=%%i
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\32X_M*"') do SET 32XM=%%i
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\32X_S*"') do SET 32XS=%%i
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\32X_G*"') do SET 32XG=%%s
pushd "%GBC%\net\%EXECT%\%SEGMS%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%FUSN%.ini" [ROMPTH] [EMUL]
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%FUSN%.ini" ".Mem" --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%FUSN%.ini" ".sstates" --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%FUSN%.ini" ".snaps" --remove
"%GBC%\fart.exe" "%FUSN%.ini" [SCDUB] "%SCDUB%"
"%GBC%\fart.exe" "%FUSN%.ini" [SCDJB] "%SCDJB%"
"%GBC%\fart.exe" "%FUSN%.ini" [SCDEB] "%SCDEB%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XG] "%32XG%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XM] "%32XM%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XS] "%32XS%"
"%GBC%\fart.exe" "%FUSN%.ini" [EMUL] "[EMUPTH]"
popd

for /d %%g IN ("%CSTM%") DO (
  set CSTM=%%~g
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\Segmsexeject.bat"
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%SEGMS%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".sms" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] sms
if /I "%%~xa"==".bin" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
if /I "%%~xa"==".rom" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] rom
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
popd
)
exit /b
:addto
SET /A ADDTO+=1

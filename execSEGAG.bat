for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(J*"') do SET SCDJB=%%i
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(E*"') do SET SCDEB=%%i
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(U*"') do SET SCDUB=%%i
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\jp_*cd*"') do SET SCDJB=%%i
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\eu_*cd*"') do SET SCDEB=%%i
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\us_*cd*"') do SET SCDUB=%%i
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\32X_M*"') do SET 32XM=%%i
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\32X_S*"') do SET 32XS=%%i
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%FUSN%\32X_G*"') do SET 32XG=%%s
pushd "%GBC%\net\%EXECT%\%SEGAG%"
"%GBC%\fart.exe" "%FUSN%.ini" [SCDJB] "%SCDJB%"
"%GBC%\fart.exe" "%FUSN%.ini" [SCDEB] "%SCDEB%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XG] "%32XG%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XM] "%32XM%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XS] "%32XS%"
"%GBC%\fart.exe" "%FUSN%.ini" [EMUL] "[EMUPTH]"
"%GBC%\fart.exe" "%FUSN%.ini" [SCDUB] "%SCDUB%"
"%GBC%\fart.exe" "%FUSN%.ini" [SCDJB] "%SCDJB%"
"%GBC%\fart.exe" "%FUSN%.ini" [SCDEB] "%SCDEB%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XG] "%32XG%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XM] "%32XM%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XS] "%32XS%"
popd

for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\Segagexeject.bat"
)
exit /b

:injext
pushd "%GBC%\net\%EXECT%\%SEGAG%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".bin" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
if /I "%%~xa"==".gen" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] gen
if /I "%%~xa"==".md" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] md
if /I "%%~xa"==".smd" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] smd
if /I "%%~xa"==".rom" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] rom
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
popd
)
exit /b
:addto
SET /A ADDTO+=1
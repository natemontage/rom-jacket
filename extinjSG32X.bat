for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(J*"') do SET SCDJB=%%i
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(E*"') do SET SCDEB=%%i
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(U*"') do SET SCDUB=%%i
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\*jp*cd*"') do SET SCDJB=%%i
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\*eu*cd*"') do SET SCDEB=%%i
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\*us*cd*"') do SET SCDUB=%%i
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\32X_M*"') do SET 32XM=%%i
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\32X_S*"') do SET 32XS=%%i
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\32X_G*"') do SET 32XG=%%s
pushd "%GBC%\net\%LNCH%\%SG32X%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%FUSN%.ini" [ROMPTH] [EMUPTH]
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%FUSN%.ini" ".Mem" --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%FUSN%.ini" ".sstates" --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%FUSN%.ini" ".snaps" --remove
"%GBC%\fart.exe" "%FUSN%.ini" [SCDUB] "%SCDUB%"
"%GBC%\fart.exe" "%FUSN%.ini" [SCDJB] "%SCDJB%"
"%GBC%\fart.exe" "%FUSN%.ini" [SCDEB] "%SCDEB%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XG] "%32XG%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XM] "%32XM%"
"%GBC%\fart.exe" "%FUSN%.ini" [32XS] "%32XS%"
"%GBC%\fart.exe" "%FUSN%.ini" [EMUPTH] "%GBE%\%EMUZ%\%FUSN%"
popd

for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%SG32X%\%FUSN%.ini" "%%~g\%FUSN%.ini"
  set CSTM=%%~g
pushd "%%~g"
CALL "%GBC%\Sg32xinject.bat"
call :injext
popd
)
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d') do (
if /I "%%~xa"==".32x" "%GBC%\fart.exe" "*.bat" [EXT] 32x
if /I "%%~xa"==".x32" "%GBC%\fart.exe" "*.bat" [EXT] x32
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".gen" "%GBC%\fart.exe" "*.bat" [EXT] gen
if /I "%%~xa"==".rom" "%GBC%\fart.exe" "*.bat" [EXT] rom
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
:skp
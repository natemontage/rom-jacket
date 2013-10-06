for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(J*"') do SET SCDJB=%%i
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(E*"') do SET SCDEB=%%i
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\Sega*(U*"') do SET SCDUB=%%i
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\jp_*cd*"') do SET SCDJB=%%i
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\eu_*cd*"') do SET SCDEB=%%i
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\us_*cd*"') do SET SCDUB=%%i
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\32X_M*"') do SET 32XM=%%i
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\32X_S*"') do SET 32XS=%%i
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%FUSN%\32X_G*"') do SET 32XG=%%s
pushd "%GBC%\net\%LNCH%\%SEGAG%"
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
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%SEGAG%\%FUSN%.ini" "%%~g"
set CSTM=%%~g
Pushd "%%~g"
call :injext
CALL "%GBC%\Segaginject.bat"
popd
)
exit /b

:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".gen" "%GBC%\fart.exe" "*.bat" [EXT] gen
if /I "%%~xa"==".md" "%GBC%\fart.exe" "*.bat" [EXT] md
if /I "%%~xa"==".smd" "%GBC%\fart.exe" "*.bat" [EXT] smd
if /I "%%~xa"==".rom" "%GBC%\fart.exe" "*.bat" [EXT] rom
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
:skp
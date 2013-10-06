pushd "%GBC%\net\%LNCH%\%AT52%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" ".atari++.conf" [ROMPTH] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" ".atari++.conf" [ROM] --remove
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%ATRI%\5200.rom"') do SET AT52BIOS=%%~a
"%GBC%\fart.exe" ".atari++.conf" [BIOS] "%AT52BIOS%"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%AT52%\.atari++.conf" "%%~g"
set CSTM=%%~g
pushd "%%~g"
call :injext
CALL "%GBC%\AT52inject.bat"
popd
)
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%AT52%\.atari++.conf" "%GBE%\%EMUZ%\%ATRI%"
exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if "%AT52BIOS%" NEQ "" "%GBC%\fart.exe" "*.bat" [BIOS] "%AT52BIOS%"
if /I "%%~xa"==".a52" "%GBC%\fart.exe" "*.bat" [EXT] a52
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".rom" "%GBC%\fart.exe" "*.bat" [EXT] rom
if /I "%%~xa"==".a52" SET AT52ROM=%%~nxa
if /I "%%~xa"==".bin" SET AT52ROM=%%~nxa
if /I "%%~xa"==".rom" SET AT52ROM=%%~nxa
)
:skp
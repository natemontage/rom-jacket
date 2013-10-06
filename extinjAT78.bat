pushd "%GBC%\net\%LNCH%\%AT78%"
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%GBC%\net\%LNCH%\%AT78%\ProSystem.ini" [Recent] Recent0=
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%GBC%\net\%LNCH%\%AT78%\ProSystem.ini" [Console] Save.Path=%GBE%\%EMUZ%\%PROSYS%
"%GBC%\fart.exe" "%PROSYS%.ini" [EMUPTH] "%GBE%\%EMUZ%\%PROSYS%"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%AT78%\ProSystem.ini" "%%~g"
set CSTM=%%~g
pushd "%%~g"
call :injext
CALL "%GBC%\AT78inject.bat"
popd
)
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%AT78%\ProSystem.ini" "%GBE%\%EMUZ%\%PROSYS%"
exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".a78" "%GBC%\fart.exe" "*.bat" [EXT] a78
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".rom" "%GBC%\fart.exe" "*.bat" [EXT] rom
if /I "%%~xa"==".a78" SET AT78ROM=%%~a
if /I "%%~xa"==".bin" SET AT78ROM=%%~a
if /I "%%~xa"==".zip" SET AT78ROM=%%~a
if /I "%%~xa"==".rom" SET AT78ROM=%%~a
)
:skp
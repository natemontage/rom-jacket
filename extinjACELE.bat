for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%ACELE%\electrem.cfg" "%%~g"
set CSTM=%%~g
Pushd "%%~g"
call :injext
CALL "%GBC%\ACELEinject.bat"
popd
)
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%ACELE%\electrem.cfg" "%GBE%\%EMUZ%\%ELECEM%
exit /b

:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".uef" "%GBC%\fart.exe" "*.bat" [EXT] uef
if /I "%%~xa"==".ssd" "%GBC%\fart.exe" "*.bat" [EXT] ssd
)
:skp
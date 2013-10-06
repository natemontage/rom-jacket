pushd "%GBC%\net\%LNCH%\%COLEC%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%BMSX%.ini" [ROMPTH] "%GBE%\%EMUZ%\%BMSX%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" copy /y "%BMSX%.ini" "%GBE%\%EMUZ%\%BMSX%"
if "%GGOFF%"=="1" copy /Y "*.config" "%GBE%\%EMUZ%\%BMSX%\Keyboard Config"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%COLEC%\%BMSX%.ini" "%%~g"
set CSTM=%%~g
pushd "%%~g"
CALL "%GBC%\COLECinject.bat"
call :injext
popd
)
exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".col" "%GBC%\fart.exe" "*.bat" [EXT] col
if /I "%%~xa"==".rom" "%GBC%\fart.exe" "*.bat" [EXT] rom
)

:skp
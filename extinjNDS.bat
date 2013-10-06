pushd "%GBC%\net\%LNCH%\%NDS%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" [ROM] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" [ROMPTH] "%GBE%\%EMUZ%\%DESMUME%"
if "%GGOFF%"=="1" copy /y "%DESMUME%.ini" "%GBE%\%EMUZ%\%DESMUME%\%DESMUME%.ini"
if exist "%GBE%\%EMUZ%\%NOGBA%\firmware.bin" "%GBC%\inifile.exe" "%NOGBA%.ini" [.] Reset/Startup Entrypoint == GBA BIOS (Nintendo logo)
if "%GGOFF%"=="1" copy /y "%NOGBA%.ini" "%GBE%\%EMUZ%\%NOGBA%"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NDS%\*.ini" "%%~g"
set CSTM=%%~g
pushd "%%~g"
call :injext
CALL "%GBC%\NDSinject.bat"
popd
)
exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".ds" set NDSROM=%%~a
if /I "%%~xa"==".ds" "%GBC%\fart.exe" "*.bat" [EXT] ds
if /I "%%~xa"==".nds" set NDSROM=%%~a
if /I "%%~xa"==".nds" "%GBC%\fart.exe" "*.bat" [EXT] nds
if /I "%%~xa"==".nd5" set NDSROM=%%~a
if /I "%%~xa"==".nd5" "%GBC%\fart.exe" "*.bat" [EXT] nd5
)
:skp
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*a500*.rom"') do set AMIG500=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*Kick*1.3.rom"') do set AMIG500=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FSUAE%\*a1200*.rom"') do set AMIG1200=%%~a
pushd "%GBC%\net\%LNCH%\%CAMIG%"
"%GBC%\fart.exe" "Config.fs-uae" [REZY] %DREZY%
"%GBC%\fart.exe" "Config.fs-uae" [REZX] %DREZX%
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%CAMIG%\Config.fs-uae" "%%~g"
set CSTM=%%~g
pushd "%%~g"
call :injext
CALL "%GBC%\Camiginject.bat"
popd
)
exit /b

:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".adf" "%GBC%\fart.exe" "*.bat" [EXT] fs-uae
if /I "%%~xa"==".amig" "%GBC%\fart.exe" "*.bat" [EXT] fs-uae
if /I "%%~xa"==".adz" "%GBC%\fart.exe" "*.bat" [EXT] fs-uae
if /I "%%~xa"==".ipf" "%GBC%\fart.exe" "*.bat" [EXT] fs-uae
if /I "%%~xa"==".fdi" "%GBC%\fart.exe" "*.bat" [EXT] fs-uae
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] fs-uae
)

:skp
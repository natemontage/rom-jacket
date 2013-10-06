for /f "tokens=* delims= " %%a in ('dir /b/a-d/s "%GBE%\%EMUZ%\%NEORAINE%\neocd.bin"') do set NCDBIN=%%~a
pushd "%GBC%\net\%LNCH%\%NEOCD%"
"%GBC%\fart.exe" "raine32_sdl.cfg" [EMUPTH] "%GBE%\%EMUZ%\%NEORAINE%"
"%GBC%\fart.exe" "raine32_sdl.cfg" [BIOS] "%NCDBIN%"
"%GBC%\fart.exe" "raine32_sdl.cfg" [REZX] %DREZX%
"%GBC%\fart.exe" "raine32_sdl.cfg" [REZY] %DREZY%
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NEOCD%\raine32_sdl.cfg" "%%~g"
set CSTM=%%~g
Pushd "%%~g"
call :injext
CALL "%GBC%\NeoCDinject.bat"
popd
  )
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NEOCD%\raine32_sdl.cfg" "%GBE%\%EMUZ%\%NEORAINE%\Config"
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-h') do (
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
)
for /f "tokens=* delims= " %%a in ('dir /b/a-h') do (
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
)
:skp
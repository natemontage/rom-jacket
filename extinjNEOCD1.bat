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
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NEOCD%\raine32_sdl.cfg" "%GBE%\%EMUZ%\%NEORAINE%\Config"
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.cue"') do (
SET ROMN=%%~a
SET ROMD=%%~na
set ROME=%%~xa
set ROMF=%%~nxa
)
CALL :EACHROM
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.iso"') do (
SET ROMN=%%~a
SET ROMD=%%~na
set ROME=%%~xa
set ROMF=%%~nxa
)
CALL :EACHROM
)
exit /b
:EACHROM
if exist "%ROMD%.bat" CALL :ROME
if not exist "%ROMD%.bat" CALL :ROMD
exit /b

:ROMD
if "%RECONF%"=="1" copy "..\zz.bat" "%CD%\%ROMD%.bat"
"%GBC%\fart.exe" "%ROMD%.bat" [ROMNAME] "%ROMN%"
exit /b

:ROME
if "%RECONF%"=="1" copy "..\zz.bat" "%CD%\%ROME%.bat"
"%GBC%\fart.exe" "%ROME%.bat" [ROMNAME] "%ROMN%"
exit /b
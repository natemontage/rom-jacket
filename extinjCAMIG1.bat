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
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.adf" "*.amig" "*.adz" "*.ipf" "*.fdi" "*.zip"') do (
SET ROMN=%%~a
SET ROMD=%%~na
set ROME=%%~xa
set ROMF=%%~nxa
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
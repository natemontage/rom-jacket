for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FOURDO%\*3DO*.bin"') do set BIOS3DO=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FOURDO%\bios.rom"') do set BIOS3DO=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FOURDO%\Goldstar.bin"') do set BIOS3DO=%%~a

pushd "%GBC%\net\%LNCH%\%P3DO%"
"%GBC%\fart.exe" "FourDO.Settings" [3DOBIOS] "BIOS\%BIOS3DO%"
"%GBC%\fart.exe" "FourDO.Settings" [EMUPTH] "%GBE%\%EMUZ%\%FOURDO%"
"%GBC%\fart.exe" "FourDO.Settings" [BIOS3DO] "%BIOS3DO%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "FourDO.Settings" [ROMPTH] --remove
popd

for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%P3DO%\FourDO.Settings" "%%~g"
  set CSTM=%%~g
  pushd "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.iso" "*.img" "*.bin" "*.cdi" "*.nrg" "*.mdf"') do (
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
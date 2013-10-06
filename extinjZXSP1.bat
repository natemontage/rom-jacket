pushd "%GBC%\net\%LNCH%\%ZXSP%"
"%GBC%\fart.exe" "Default.spincfg" [EMUPTH] "%GBE%\%EMUZ%\%ZXSPIN%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "spin.ini" [SPINDIR] "%GBE%\%EMUZ%\%ZXSPIN%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "Default.spincfg" [SPINDir] "%GBE%\%EMUZ%\%ZXSPIN%"
if "%GGOFF%"=="1" copy /y "spin.ini" "%GBE%\%EMUZ%\%ZXSPIN%"
if "%GGOFF%"=="1" copy /y "Default.spincfg" "%GBE%\%EMUZ%\%ZXSPIN%"
popd

for /d %%g IN (*) DO (
  if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%ZXSP%\spin.ini" "%%~g"
  if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%ZXSP%\Default.spincfg" "%%~g"
  set CSTM=%%~g
  pushd "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.z80" *.tzx" "*.sna" "*.sna" "*.szx" "*.tap" "*.blk" "*.csw" "*.dsk" "*.scr" "*.wav" "*.rom" "*.hdf" "*.zip"') do (
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
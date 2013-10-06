pushd "%GBC%\net\%LNCH%\%MSX%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%BMSX%.ini" [ROMPTH] "%GBE%\%EMUZ%\%BMSX%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" copy /y "%BMSX%.ini" "%GBE%\%EMUZ%\%BMSX%"
if "%GGOFF%"=="1" copy /Y "*.config" "%GBE%\%EMUZ%\%BMSX%\Keyboard Config"
popd
for /d %%g IN (*) DO (
  set CSTM=%%~g
  if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%MSX%\%BMSX%.ini" "%%~g"
  if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%MSX%\*.conifg" "%%~g"
  pushd "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.mx1" "*.dsk" "*.mx2" "*.rom" "*.ri" "*.sc" "*.zip" "*.di1" "*.di2" "*.360" "*.720" "*.sf7" "*.cas"') do (
SET ROMN=%%~a
SET ROMD=%%~na
set ROME=%%~xa
set ROMF=%%~nxa
CALL :EACHROM
)
for %%a in ("%ROMN%") do (
if /I "%%~xa"==".dsk" "%GBC%\fart.exe" "*.bat" [TYP] diskA
if /I "%%~xa"==".mx1" "%GBC%\fart.exe" "*.bat" [TYPE] rom1
if /I "%%~xa"==".mx2" "%GBC%\fart.exe" "*.bat" [TYP] rom1
if /I "%%~xa"==".rom" "%GBC%\fart.exe" "*.bat" [TYP] rom1
if /I "%%~xa"==".ri" "%GBC%\fart.exe" "*.bat" [TYP] diskA
if /I "%%~xa"==".sc" "%GBC%\fart.exe" "*.bat" [TYP] rom1
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [TYP] rom1
if /I "%%~xa"==".di1" "%GBC%\fart.exe" "*.bat" [TYP] diskA
if /I "%%~xa"==".di2" "%GBC%\fart.exe" "*.bat" [TYP] diskA	
if /I "%%~xa"==".360" "%GBC%\fart.exe" "*.bat" [TYP] diskA	
if /I "%%~xa"==".720" "%GBC%\fart.exe" "*.bat" [TYP] diskA
if /I "%%~xa"==".sf7" "%GBC%\fart.exe" "*.bat" [TYP] diskA
if /I "%%~xa"==".cas" "%GBC%\fart.exe" "*.bat" [TYP] cas
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
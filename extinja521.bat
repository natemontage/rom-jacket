pushd "%GBC%\net\%LNCH%\%AT52%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" ".atari++.conf" [ROMPTH] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" ".atari++.conf" [ROM] --remove
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%ATRI%\5200.rom"') do SET AT52BIOS=%%~a
"%GBC%\fart.exe" ".atari++.conf" [BIOS] "%AT52BIOS%"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%AT52%\.atari++.conf" "%%~g"
set CSTM=%%~g
pushd "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%AT52%\.atari++.conf" "%GBE%\%EMUZ%\%ATRI%"
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.a52" "*.bin" "*.rom"') do (
SET ROMN=%%~a
SET ROMD=%%~na
set ROME=%%~xa
set ROMF=%%~nxa
CALL :EACHROM
)
exit /b
:EACHROM
for %%a in ("%ROMN%") do (
if /I "%%~xa"==".a52" SET AT52ROM=%ROMF%
if /I "%%~xa"==".bin" SET AT52ROM=%ROMF%
if /I "%%~xa"==".rom" SET AT52ROM=%ROMF%
)
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
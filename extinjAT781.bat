pushd "%GBC%\net\%LNCH%\%AT78%"
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%GBC%\net\%LNCH%\%AT78%\ProSystem.ini" [Recent] Recent0=
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%GBC%\net\%LNCH%\%AT78%\ProSystem.ini" [Console] Save.Path=%GBE%\%EMUZ%\%PROSYS%
"%GBC%\fart.exe" "%PROSYS%.ini" [EMUPTH] "%GBE%\%EMUZ%\%PROSYS%"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%AT78%\ProSystem.ini" "%%~g"
set CSTM=%%~g
pushd "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%AT78%\ProSystem.ini" "%GBE%\%EMUZ%\%PROSYS%"
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.a78" "*.bin" "*.zip" "*.rom"') do (
SET ROMN=%%~a
SET ROMD=%%~na
set ROME=%%~xa
set ROMF=%%~nxa
CALL :EACHROM
)
exit /b
:EACHROM
for %%a in ("%ROMN%") do (
if /I "%%~xa"==".a78" SET AT78ROM=%ROMF%
if /I "%%~xa"==".bin" SET AT78ROM=%ROMF%
if /I "%%~xa"==".rom" SET AT78ROM=%ROMF%
if /I "%%~xa"==".zip" SET AT78ROM=%ROMF%
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
if "%GGOFF%"=="1" del /q "%GBE%\%EMUZ%\%VICE%"
pushd "%GBC%\net\%LNCH%\%CM64%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "vice.ini" [ROMPTH] [EMUPTH]
if "%GGOFF%"=="1" "%GBC%\fart.exe" "vice.ini" [ROM] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "vice.ini" [EMUPTH] "%GBE%\%EMUZ%\%VICE%"
if "%GGOFF%"=="1" copy /Y "vice.ini" "%GBE%\%EMUZ%\%VICE%"
popd
for /d %%g IN (*) DO (
  if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%CM64%\vice.ini" "%%~g"
  set CSTM=%%~g
  pushd "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.tap" "*.prg" "*.p00" "*.fdi" "*.g64" "*.d64" "*.t64" "*.x64"') do (
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
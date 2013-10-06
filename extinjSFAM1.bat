pushd "%GBC%\net\%LNCH%\%SFAM%"
"%GBC%\fart.exe" "snesgt.ini" [REZX] %DREZX%
"%GBC%\fart.exe" "snesgt.ini" [REZY] %DREZY%
"%GBC%\fart.exe" "zsnesw.cfg" [EMUPTH] "%GBE%\%EMUZ%\%ZSNS%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" "cvidmode=19" "cvidmode=2"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" ".sstates" --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" ".snaps" --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" ".Mem" --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" [ROMPTH] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" \ \\
if "%GGOFF%"=="1" copy /y "zsnesw.cfg" "%EMUZ%\%EMUZ%\%ZSNS%"
if "%GGOFF%"=="1" copy /y "snesgt.ini" "%EMUZ%\%EMUZ%\%SNSGT%\snesgt.ini"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%SFAM%\*.cfg" "%%~g"
 set CSTM=%%~g
  pushd "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.smc" "*.zip" "*.sfc"') do (
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
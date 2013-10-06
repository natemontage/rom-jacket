pushd "%GBC%\net\%LNCH%\%N64%"
"%GBC%\fart.exe" "Project64.cfg" [REZX] %DREZX%
"%GBC%\fart.exe" "Project64.cfg" [REZY] %DREZY%
"%GBC%\fart.exe" "Project64.cfg" [EMUPTH] "%GBE%\%EMUZ%\%PJ64%"
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Directory] Instant Save=%GBE%\%EMUZ%\%PJ64%\Save\
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Directory] Plugin=%GBE%\%EMUZ%\%PJ64%\Plugin\
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Directory] Save=%GBE%\%EMUZ%\%PJ64%\Save\
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Directory] Snap Shot=%GBE%\%EMUZ%\%PJ64%\Screenshots\
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Directory] Texture Dir=%GBE%\%EMUZ%\%PJ64%\Save\
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Recent File] Recent Rom 0=
if "%GGOFF%"=="1" copy /y "Project64.cfg" "%GBE%\%EMUZ%\%PJ64%\Config"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%N64%\*.cpf" "%%~g"
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%N64%\*.ini" "%%~g"
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%N64%\*.cfg" "%%~g"
 set CSTM=%%~g
  pushd "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.pal" "*.usa" "*.u64" "*.j64" "*.v64" "*.n64" "*.z64" "*.zip"') do (
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
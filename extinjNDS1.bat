pushd "%GBC%\net\%LNCH%\%NDS%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" [ROM] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" [ROMPTH] "%GBE%\%EMUZ%\%DESMUME%"
if "%GGOFF%"=="1" copy /y "%DESMUME%.ini" "%GBE%\%EMUZ%\%DESMUME%\%DESMUME%.ini"
if exist "%GBE%\%EMUZ%\%NOGBA%\firmware.bin" "%GBC%\inifile.exe" "%NOGBA%.ini" [.] Reset/Startup Entrypoint == GBA BIOS (Nintendo logo)
if "%GGOFF%"=="1" copy /y "%NOGBA%.ini" "%GBE%\%EMUZ%\%NOGBA%"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NDS%\*.ini" "%%~g"
set CSTM=%%~g
pushd "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.nds" "*.nd5" "*.ds" "*.zip"') do (
SET ROMN=%%~a
SET ROMD=%%~na
set ROME=%%~xa
set ROMF=%%~nxa
SET NDSROM=%%~nxa
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
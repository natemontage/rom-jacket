pushd "%GBC%\net\%LNCH%\%NGBA%"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%GBE%\%EMUZ%\%VGBA%\GBA*.rom") do set NGBABIOS=%%~a
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%VGBA%m.ini" [preferences] batteryDir=
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%VGBA%m.ini" [preferences] saveDir=
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%VGBA%m.ini" [preferences] captureDir=
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%VGBA%m.ini" [preferences] aviRecordDir=
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%VGBA%m.ini" [preferences] movieRecordDir=
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%VGBA%m.ini" [preferences] soundRecordDir=
"%GBC%\fart.exe" "%VGBA%m.ini" [EMUPTH] "%GBE%\%EMUZ%\%VGBA%"
"%GBC%\fart.exe" "%VGBA%m.ini" [NGBABIOS] "%NGBABIOS%"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NGBA%\vbam.ini" "%%~g\vbam.ini"
set CSTM=%%~g
pushd "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.gba" "*.zip"') do (
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
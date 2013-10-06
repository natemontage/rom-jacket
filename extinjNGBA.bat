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
call :injext
CALL "%GBC%\Ngbainject.bat"
popd
)
exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".gba" "%GBC%\fart.exe" "*.bat" [EXT] gba
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
:skp
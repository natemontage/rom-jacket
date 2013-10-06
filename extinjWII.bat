pushd "%GBC%\net\%LNCH%\%WII%"
if "%DXV%" EQU "11" "%GBC%\inifile.exe" "%DOLPH%.ini" [Core] GFXBackend=Direct3D11
popd
for /d %%g IN (*) DO (
mkdir "%%~g\.Profiles"
attrib +H "%%~g\.Profiles"
mkdir "%%~g\.Mem"
attrib +H "%%~g\.Mem"
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%WII%\*.ini" "%%~g"
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%WII%\WiimoteNew.ini" "%%~g\.Profiles"
set CSTM=%%~g
SET WIIROM=
pushd "%%~g"
call :injext
CALL "%GBC%\Wiiinject.bat"
popd
)
exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
SET ROM=%%~a
if /I "%%~xa"==".dol" SET WIIROM=%%~a
if /I "%%~xa"==".wia" SET WIIROM=%%~a
if /I "%%~xa"==".wad" SET WIIROM=%%~a
if /I "%%~xa"==".wbfs" SET WIIROM=%%~a
if /I "%%~xa"==".iso" SET WIIROM=%%~a
if /I "%%~xa"==".dol" "%GBC%\fart.exe" "*.bat" [EXT] dol
if /I "%%~xa"==".wbfs" "%GBC%\fart.exe" "*.bat" [EXT] wbfs
if /I "%%~xa"==".wia" "%GBC%\fart.exe" "*.bat" [EXT] wia
if /I "%%~xa"==".wad" "%GBC%\fart.exe" "*.bat" [EXT] wad
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
)
:skp
pushd "%GBC%\net\%LNCH%\%PSP%"
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "ppsspp.ini" [General] AutoLoadLast=False 
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "ppsspp.ini" [General] Recent = 
if "%GGOFF%"=="1" copy /y "Settings.properties" "%GBE%\%EMUZ%\%JPCSP%"
if "%GGOFF%"=="1" copy /y "ppsspp.ini" "%GBE%\%EMUZ%\%PSSP%\ppsspp.ini"
popd

for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%PSP%\Settings.properties" "%%~g\Settings.properties"
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%PSP%\ppsspp "%%~g\ppsspp.ini"
set CSTM=%%~g
pushd "%%~g"
call :injext
CALL "%GBC%\PSPinject.bat"
popd
)
exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".cso" "%GBC%\fart.exe" "*.bat" [EXT] cso
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".jso" "%GBC%\fart.exe" "*.bat" [EXT] jso
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".pbp" "%GBC%\fart.exe" "*.bat" [EXT] pbp
if /I "%%~xa"==".cso" set PSPROM=%%~nxa
if /I "%%~xa"==".iso" set PSPROM=%%~nxa
if /I "%%~xa"==".jso" set PSPROM=%%~nxa
if /I "%%~xa"==".bin" set PSPROM=%%~nxa
if /I "%%~xa"==".pbp" set PSPROM=%%~nxa
REM if /I "%%~xa"==".cso" "%GBC%\fart.exe" "*.bat" [TYP] u
REM if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [TYP] u
REM if /I "%%~xa"==".jso" "%GBC%\fart.exe" "*.bat" [TYP] u
REM if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [TYP] f
REM if /I "%%~xa"==".pbp" "%GBC%\fart.exe" "*.bat" [TYP] fx
)
:skp

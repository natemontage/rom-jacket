pushd "%GBC%\net\%LNCH%\%NAOMI%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "*.ini" .Mem memsaves
if "%GGOFF%"=="1" "%GBC%\fart.exe" "*.ini" [ROMPTH] "[EMUPTH]"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "*.ini" [ROMSRC] "[EMUPTH]"
"%GBC%\fart.exe" "*.ini" [EMUPTH] "%GBE%\%EMUZ%\%DMUL%"
if "%GGOFF%"=="1" copy /y "*.ini" "%GBE%\%EMUZ%\%DMUL%"
popd
for /d %%g IN (*) DO (
pushd "%GBC%\net\%LNCH%\%NAOMI%"
if "%DXV%" EQU "11" "%GBC%\inifile.exe" "%DMUL%.ini" [plugins] gpu=gpuDX11.dll
popd
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NAOMI%\*.ini" "%%~g"
SET TYPE=
SET NAROM=
SET EXT=
set CSTM=%%~g
Pushd "%%~g"
call :injext
CALL "%GBC%\NAOMIinject.bat"
popd
)
exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%i in ('dir /b /a-d-h') do (
SET ROMXT=%%~xi
CALL :INJOXT
)
exit /b

:INJOXT
if /I "%ROMXT%"==".dat" SET TYPE=customrom
if /I "%ROMXT%"==".gdi" SET TYPE=image
if /I "%ROMXT%"==".zip" SET TYPE=rom
CALL :INJAXT
exit /b
:INJAXT
if "%TYPE%"=="customrom" "%GBC%\fart.exe" "*.bat" [ROM] "\"^%%^CD%%\%%ROMN%%.[EXT]"\"
if "%TYPE%"=="image" "%GBC%\fart.exe" "*.bat" [ROM] "\"^%%^CD%%\%%ROMN%%.[EXT]"\"
if "%TYPE%"=="rom" "%GBC%\fart.exe" "*.bat" [ROM] "%%ROMN%%"
CALL :INJUXT
exit /b
:INJUXT
"%GBC%\fart.exe" "*.bat" [TYPE] "%TYPE%"
if /I "%ROMXT%"==".dat" "%GBC%\fart.exe" "*.bat" [EXT] dat
if /I "%ROMXT%"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%ROMXT%"==".gdi" "%GBC%\fart.exe" "*.bat" [EXT] gdi
:skp
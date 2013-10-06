for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%STEEM%\*TOS*.*"') do SET STBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%STEEM%\*kaos*.img"') do SET STBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%STEEM%\TOS_206.img"') do SET STBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%STEEM%\TOS_206.rom"') do SET STBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%STEEM%\TOS206.rom"') do SET STBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%STEEM%\TOS206.img"') do SET STBIOS=%%~a
pushd "%GBC%\net\%LNCH%\%ATST%"
"%GBC%\fart.exe" "steem.ini" [STBIOS] "%STBIOS%"
"%GBC%\fart.exe" "steem.ini" [EMUPTH] "%GBE%\%EMUZ%\%STEEM%"
popd

for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%ATST%\steem.ini" "%%~g"
set CSTM=%%~g
set IPFROM=
pushd "%%~g"
call :injext
CALL "%GBC%\atstinject.bat"
popd
)
exit /b

:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".st" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] st
if /I "%%~xa"==".msa" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] msa
if /I "%%~xa"==".zip" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".ipf" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] ipf
if /I "%%~xa"==".ipf" SET IPFROM=1
if /I "%%~xa"==".ipf" rename "%GBE%\%EMUZ%\%STEEM%\Pasti.dll.bak" "Pasti.dll"
)
:skp
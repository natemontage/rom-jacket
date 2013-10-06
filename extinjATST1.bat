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
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.st" "*.msa" "*.zip" "*.ipf"') do (
SET ROMN=%%~a
SET ROMD=%%~na
set ROME=%%~xa
set ROMF=%%~nxa
CALL :EACHROM
)
exit /b
:EACHROM
for %%a in ("%ROMN%") do (
if /I "%%~xa"==".ipf" SET IPFROM=1
if /I "%%~xa"==".ipf" rename "%GBE%\%EMUZ%\%STEEM%\Pasti.dll.bak" "Pasti.dll"
)
if exist "%ROMD%.bat" CALL :ROME
if not exist "%ROMD%.bat" CALL :ROMD
exit /b

:ROMD
if "%RECONF%"=="1" copy "..\zz.bat" "%CD%\%ROMD%.bat"
"%GBC%\fart.exe" "%ROMD%.bat" [ROMNAME] "%ROMN%"
exit /b
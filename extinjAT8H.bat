for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%ALTRA%\*ATARIOSA*.rom"') do SET ATOSA=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%ALTRA%\*ATARIOSB*.rom"') do SET ATOSB=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%ALTRA%\*ATARIXL*.rom"') do SET ATXL=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%ALTRA%\*ATARIBAS*.rom"') do SET ATBAS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%ALTRA%\*5200*.rom"') do SET 5200B=%%~a
pushd "%GBC%\net\%LNCH%\%AT8H%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%ALTRA%.ini" [ROMPTH] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%ALTRA%.ini" [ROM] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%ALTRA%.ini" .snaps --remove
"%GBC%\fart.exe" "%ALTRA%.ini" [ATOSA] "%ATOSA%"
"%GBC%\fart.exe" "\%ALTRA%.ini" [ATOSB] "%ATOSB%"
"%GBC%\fart.exe" "\%ALTRA%.ini" [ATXL] "%ATXL%"
"%GBC%\fart.exe" "\%ALTRA%.ini" [ATBAS] "%ATBAS%"
"%GBC%\fart.exe" "\%ALTRA%.ini" [5200B] "%5200B%"
popd

for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%AT8H%\%ALTRA%.ini" "%%~g"
set CSTM=%%~g
pushd "%%~g"
call :injext
CALL "%GBC%\at8hinject.bat"
popd
)
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%AT8H%\%ALTRA%.ini" "%GBE%\%EMUZ%\%ALTRA%"
exit /b

:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".atr" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] atr
if /I "%%~xa"==".atx" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] atx
if /I "%%~xa"==".atz" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] atz
if /I "%%~xa"==".bas" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] bas
if /I "%%~xa"==".pro" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] pro
if /I "%%~xa"==".xfd" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] xfd
if /I "%%~xa"==".dcm" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] dcm
if /I "%%~xa"==".cas" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] cas
if /I "%%~xa"==".bin" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".rom" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] rom
if /I "%%~xa"==".xex" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] xex
if /I "%%~xa"==".obx" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] obx
if /I "%%~xa"==".com" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] com
if /I "%%~xa"==".gz" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] gz
if /I "%%~xa"==".zip" SET ROM=%%~a && SET ROMN=%%~na && "%GBC%\fart.exe" "*.bat" [EXT] zip
)
:skp
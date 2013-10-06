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
call :rominj
CALL "%GBC%\%SHRTN%inject.bat"
popd
if "%RECONF%"=="1" CALL "%GBC%\AT8Hinject.bat"
popd
)
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%AT8H%\%ALTRA%.ini" "%GBE%\%EMUZ%\%ALTRA%"
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.atr" "*.atx" "*.atz" "*.bas" "*.pro" "*.xfd" "*.dcm" "*.cas" "*.bin" "*.rom" "*.xex" "*.obx" "*.com" "*.gz" "*.zip"') do (
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
copy "..\zz.bat" "%CD%"
rename "zz.bat" "%ROMD%.bat"
"%GBC%\fart.exe" "%ROMD%.bat" [ROMNAME] "%ROMN%"
exit /b

:ROME
copy "..\zz.bat" "%CD%"
rename "zz.bat" "%ROME%.bat"
"%GBC%\fart.exe" "%ROME%.bat" [ROMNAME] "%ROMN%"
exit /b
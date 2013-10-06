CALL "%GBC%\satdrv.bat"
if "%SATSKIP%"=="1" start /w "" "%GBC%\wbusy.exe" "NODAMT" "Daemon Tools must be installed to configure Sega Saturn" /marquee
if "%SATSKIP%"=="1" start /w "" "%GBC%\wbusy.exe" "NODAMT" "Daemon Tools must be installed to configure Sega Saturn" /Stop /Timeout:1
if "%SATSKIP%"=="1" goto :EOF
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\*101*"') do (
SET SSFB=%%i
)
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\*1.01*"') do (
SET SSFB=%%i
)
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\STV\*.bin"') do (
SET SSATV=%%i
)
for /f "tokens=* delims= " %%i in ('dir /b /a-d "%GBE%\%EMUZ%\%SSF%\Setting\STV\*STV*"') do (
SET SSATV=%%i
)
pushd "%GBC%\net\%LNCH%\%SSAT%"
"%GBC%\inifile.exe" "%SSF%.ini" [Peripheral] SaturnBIOS="%GBE%\%EMUZ%\%SSF%\Setting\Saturn\%SSFB%"
"%GBC%\inifile.exe" "%SSF%.ini" [Peripheral] STVBIOS="%GBE%\%EMUZ%\%SSF%\Setting\STV\%SSATV%"
"%GBC%\inifile.exe" "%SSF%.ini" [Peripheral] CDDrive="%SATNUM%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%SSF%.ini" [REG] 4
if "%GGOFF%"=="1" copy /Y "Setting.ini" "%GBE%\%EMUZ%\%SSF%"
if "%GGOFF%"=="1" copy /Y "%SSF%.ini" "%GBE%\%EMUZ%\%SSF%"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%SSAT%\%SSF%.ini" "%%~g\%SSF%.ini"
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%SSAT%\Setting.ini" "%%~g\Setting.ini"
set CSTM=%%~g
pushd "%%~g"
call :injext
CALL "%GBC%\Ssatinject.bat"
popd
)
exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] mdf
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".img" "%GBC%\fart.exe" "*.bat" [EXT] img
if /I "%%~xa"==".iso" set SSATROM=%%~na
if /I "%%~xa"==".nrg" set SSATROM=%%~na
if /I "%%~xa"==".mdf" set SSATROM=%%~na
if /I "%%~xa"==".cdi" set SSATROM=%%~na
if /I "%%~xa"==".img" set SSATROM=%%~na
if /I "%%~xa"==".cue" set SSATROM=%%~na
if /I "%%~xa"==".rom" set SSATROM=%%~na
)
:skp
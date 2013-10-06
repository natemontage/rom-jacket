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
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.cue" "*.iso" "*.nrg" "*.mdf" "*.cdi" "*.img"') do (
SET ROMN=%%~a
SET SSATROM=%%~na
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
CALL "%GBC%\satdrv.bat"
if "%SATSKIP%"=="1" start /w "" "%GBC%\wbusy.exe" "NODAMT" "Daemon Tools must be installed to configure Sega Saturn" /marquee
if "%SATSKIP%"=="1" start /w "" "%GBC%\wbusy.exe" "NODAMT" "Daemon Tools must be installed to configure Sega Saturn" /Stop /Timeout:1
if "%SATSKIP%"=="1" goto :EOF
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\*101*"') do (
SET SSFB=%%i
)
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\*1.01*"') do (
SET SSFB=%%i
)
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\STV\*.bin"') do (
SET SSATV=%%i
)
for /f "tokens=* delims= " %%i in ('dir /b/a-d "%GBE%\%EMUZ%\%SSF%\Setting\STV\*STV*"') do (
SET SSATV=%%i
)
pushd "%GBC%\net\%EXECT%\%SSAT%"
"%GBC%\inifile.exe" "%SSF%.ini" [Peripheral] SaturnBIOS="%GBE%\%EMUZ%\%SSF%\Setting\Saturn\%SSFB%"
"%GBC%\inifile.exe" "%SSF%.ini" [Peripheral] STVBIOS="%GBE%\%EMUZ%\%SSF%\Setting\STV\%SSATV%"
"%GBC%\inifile.exe" "%SSF%.ini" [Peripheral] CDDrive="%SATNUM%"
echo.copy /y "%SSFB%" "Settings\Saturn">>"%GBC%\prefxe.ini"
echo.copy /y "%SSATV%" "Settings\Saturn\STV">>"%GBC%\prefxe.ini"
popd
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\Ssatexeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%SSAT%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".cue" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cue
if /I "%%~xa"==".iso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] iso
if /I "%%~xa"==".nrg" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] mdf
if /I "%%~xa"==".cdi" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cdi
if /I "%%~xa"==".img" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] img
if /I "%%~xa"==".iso" set SSATROM=%%~na
)
if /I "%%~xa"==".nrg" set SSATROM=%%~na
if /I "%%~xa"==".mdf" set SSATROM=%%~na
if /I "%%~xa"==".cdi" set SSATROM=%%~na
if /I "%%~xa"==".img" set SSATROM=%%~na
if /I "%%~xa"==".cue" set SSATROM=%%~na
if /I "%%~xa"==".rom" set SSATROM=%%~na
popd
)
exit /b
:addto
SET /A ADDTO+=1
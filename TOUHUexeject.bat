SET TOUHUHDD=
SET TOUHUHDD1=
SET TOUHUHDD2=
SET TOUHUFDD=
SET TOUHUFDD1=
SET TOUHUFDD2=

for /f "tokens=* delims= " %%a in ('dir /b /a-d "[ROMPTH]\*Disk 1*"') do (
if /I "%%~xa"==".fdi" SET TOUHUFDD1=%%~a
if /I "%%~xa"==".hdi" SET TOUHUHDD1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "[ROMPTH]\*Disk1*"') do (
if /I "%%~xa"==".fdi" SET TOUHUFDD1=%%~a
if /I "%%~xa"==".hdi" SET TOUHUHDD1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "[ROMPTH]\*Disk 2*"') do (
if /I "%%~xa"==".fdi" SET TOUHUFDD2=%%~a
if /I "%%~xa"==".hdi" SET TOUHUHDD2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "[ROMPTH]\*Disk2*"') do (
if /I "%%~xa"==".fdi" SET TOUHUFDD2=%%~a
if /I "%%~xa"==".hdi" SET TOUHUHDD2=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "[ROMPTH]"') do (
if /I "%%~xa"==".fdi" SET TOUHUFDD=%%~a
CALL :disking
if /I "%%~xa"==".hdi" SET TOUHUHDD=%%~a
CALL :disking
)
goto :injectTOUHUs

:disking
if /I "%TOUHUFDD%"=="%TOUHUFDD2%" exit /b
if /I "%TOUHUHDD%"=="%TOUHUHDD2%" exit /b

:injectTOUHUs
pushd "[ROMPTH]"
if "%TOUHUHDD%" NEQ "" "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%TOUHU%\*.bat" "REM [DSK]" --remove
if "%TOUHUFDD%" NEQ "" "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%TOUHU%\*.bat" "REM [DSK]" --remove
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%TOUHU%\*.bat" [TOUHUFDD] "[ROMPTH]\%TOUHUFDD%"
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%TOUHU%\*.bat" [TOUHUHDD] "[ROMPTH]\%TOUHUHDD%"
popd
goto :TOUHUend

:TOUHUend
exit /b
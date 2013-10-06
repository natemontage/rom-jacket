SET ACARCDSK=
SET ACARCDSK1=
SET ACARCDSK2=
SET ACARCDSK3=
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\*Disk 1*"') do (
if /I "%%~xa"==".adf" SET ACARCDSK1=%%~a
if /I "%%~xa"==".apd" SET ACARCDSK1=%%~a
if /I "%%~xa"==".fdi" SET ACARCDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\*Disk_1*"') do (
if /I "%%~xa"==".adf" SET ACARCDSK1=%%~a
if /I "%%~xa"==".apd" SET ACARCDSK1=%%~a
if /I "%%~xa"==".fdi" SET ACARCDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\*Disk1*"') do (
if /I "%%~xa"==".adf" SET ACARCDSK1=%%~a
if /I "%%~xa"==".apd" SET ACARCDSK1=%%~a
if /I "%%~xa"==".fdi" SET ACARCDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\*Disk01*"') do (
if /I "%%~xa"==".adf" SET ACARCDSK1=%%~a
if /I "%%~xa"==".apd" SET ACARCDSK1=%%~a
if /I "%%~xa"==".fdi" SET ACARCDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\*Disk 01*"') do (
if /I "%%~xa"==".adf" SET ACARCDSK1=%%~a
if /I "%%~xa"==".apd" SET ACARCDSK1=%%~a
if /I "%%~xa"==".fdi" SET ACARCDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\*Disk 2*"') do (
if /I "%%~xa"==".adf" SET ACARCDSK2=%%~a
if /I "%%~xa"==".apd" SET ACARCDSK2=%%~a
if /I "%%~xa"==".fdi" SET ACARCDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\*Disk_2*"') do (
if /I "%%~xa"==".adf" SET ACARCDSK2=%%~a
if /I "%%~xa"==".apd" SET ACARCDSK2=%%~a
if /I "%%~xa"==".fdi" SET ACARCDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\*Disk2*"') do (
if /I "%%~xa"==".adf" SET ACARCDSK2=%%~a
if /I "%%~xa"==".apd" SET ACARCDSK2=%%~a
if /I "%%~xa"==".fdi" SET ACARCDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\*Disk02*"') do (
if /I "%%~xa"==".adf" SET ACARCDSK2=%%~a
if /I "%%~xa"==".apd" SET ACARCDSK2=%%~a
if /I "%%~xa"==".fdi" SET ACARCDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\*Disk 02*"') do (
if /I "%%~xa"==".adf" SET ACARCDSK2=%%~a
if /I "%%~xa"==".apd" SET ACARCDSK2=%%~a
if /I "%%~xa"==".fdi" SET ACARCDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\*Disk 3*"') do (
if /I "%%~xa"==".adf" SET ACARCDSK3=%%~a
if /I "%%~xa"==".apd" SET ACARCDSK3=%%~a
if /I "%%~xa"==".fdi" SET ACARCDSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\*Disk3*"') do (
if /I "%%~xa"==".adf" SET ACARCDSK3=%%~a
if /I "%%~xa"==".apd" SET ACARCDSK3=%%~a
if /I "%%~xa"==".fdi" SET ACARCDSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\*Disk_3*"') do (
if /I "%%~xa"==".adf" SET ACARCDSK3=%%~a
if /I "%%~xa"==".apd" SET ACARCDSK3=%%~a
if /I "%%~xa"==".fdi" SET ACARCDSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\*Disk 03*"') do (
if /I "%%~xa"==".adf" SET ACARCDSK3=%%~a
if /I "%%~xa"==".apd" SET ACARCDSK3=%%~a
if /I "%%~xa"==".fdi" SET ACARCDSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\*Disk03*"') do (
if /I "%%~xa"==".adf" SET ACARCDSK3=%%~a
if /I "%%~xa"==".apd" SET ACARCDSK3=%%~a
if /I "%%~xa"==".fdi" SET ACARCDSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%"') do (
if /I "%%~xa"==".adf" SET ACARCDSK=%%~a
if /I "%%~xa"==".apd" SET ACARCDSK=%%~a
if /I "%%~xa"==".fdi" SET ACARCDSK=%%~a
CALL :disking
)
goto :injecACARCs
:disking
if /I "%ACARCDSK%"=="%ACARCDSK1%" SET ACARCDSK=
if /I "%ACARCDSK%"=="%ACARCDSK2%" SET ACARCDSK=
if /I "%ACARCDSK%"=="%ACARCDSK3%" SET ACARCDSK=
if /I "%ACARCDSK%"=="%ACARCDSK4%" SET ACARCDSK=
if /I "%ACARCDSK%"=="" exit /b
exit /b
:injecACARCs
pushd "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%"
if "%ACARCDSK1%"=="" "%GBC%\fart.exe" "arc.cfg" [DSK1] --remove
if "%ACARCDSK2%"=="" "%GBC%\fart.exe" "arc.cfg" [DSK2] --remove
if "%ACARCDSK3%"=="" "%GBC%\fart.exe" "arc.cfg" [DSK3] --remove
if "%ACARCDSK4%"=="" "%GBC%\fart.exe" "arc.cfg" [DSK3] --remove
if "%ACARCDSK%" NEQ "" "%GBC%\fart.exe" "arc.cfg" [DSK] "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\%ACARCDSK%"
if "%ACARCDSK1%" NEQ "" "%GBC%\fart.exe" "arc.cfg" [DSK] "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\%ACARCDSK1%"
if "%ACARCDSK2%" NEQ "" "%GBC%\fart.exe" "arc.cfg" [DSK1] "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\%ACARCDSK2%"
if "%ACARCDSK3%" NEQ "" "%GBC%\fart.exe" "arc.cfg" [DSK2] "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\%ACARCDSK3%"
if "%ACARCDSK4%" NEQ "" "%GBC%\fart.exe" "arc.cfg" [DSK3] "%GBG%\%GAM%\%CONS%\%ACARC%\%CSTM%\%ACARCDSK4%"
popd
goto :ACARCend
:ACARCend
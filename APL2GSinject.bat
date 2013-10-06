SET APL2GSDSK=
SET APL2GSDSK1=
SET APL2GSDSK2=
SET APL2GSDSK3=
SET APL2GSDSK4=
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK=%%~
if /I "%%~xa"==".po" SET APL2GSDSK=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Disk 1*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Disk1*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Disk 2*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Disk2*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Tape A*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*TapeA*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Tape B*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*TapeB*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Disk A*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*DiskA*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Disk B*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*DiskB*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Side 1*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Side1*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Side 2*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Side2*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Side A*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*SideA*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Side B*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*SideB*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Tape 1*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Tape1*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Tape 2*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%\*Tape2*"') do (
if /I "%%~xa"==".dsk" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".po" SET APL2GSDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2GSDSK2=%%~a
)
goto :injecAPL2GSs
:injecAPL2GSs
if "%APL2GSDSK1%" neq "" "%GBC%\fart.exe" "config.kegs" [DISK1] "%APL2GSDSK1%"
if "%APL2GSDSK%" neq "" "%GBC%\fart.exe" "config.kegs" [DISK1] "%APL2GSDSK%"
"%GBC%\fart.exe" "config.kegs" [ROMPTH] "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%"
"%GBC%\fart.exe" "config.kegs" [ROMPTH2] "%GBG%\%GAM%\%CONS%\%APL2GS%\%CSTM%"
if "%APL2GSDSK2%" NEQ "" "%GBC%\fart.exe" "config.kegs" [DISK2] "%APL2GSDSK2%"
if "%APL2GSDSK2%"=="" "%GBC%\fart.exe" "config.kegs" "[ROMPTH2]\[DISK2]" --remove
goto :APL2GSend
:APL2GSend
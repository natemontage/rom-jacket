SET APL2EDSK=
SET APL2EDSK1=
SET APL2EDSK2=
SET APL2EDSK3=
SET APL2EDSK4=
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%APL2E%\%CSTM%"') do (
if /I "%%~xa"==".bin" SET APL2EDSK=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK=%%~a
if /I "%%~xa"==".do" SET APL2EDSK=%%~a
if /I "%%~xa"==".po" SET APL2EDSK=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk 1*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk1*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk 2*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk2*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Tape A*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*TapeA*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Tape B*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*TapeB*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk A*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*DiskA*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk B*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*DiskB*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Side 1*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Side1*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Side 2*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Side2*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Side A*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*SideA*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Side B*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*SideB*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Tape 1*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Tape1*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK1=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK1=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK1=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK1=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK1=%%~a
if /I "%%~xa"==".po" SET APL2EDSK1=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK1=%%~a
if /I "%%~xa"==".do" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK1=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Tape 2*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Tape2*"') do (
if /I "%%~xa"==".bin" SET APL2EDSK2=%%~a
if /I "%%~xa"==".dsk" SET APL2EDSK2=%%~a
if /I "%%~xa"==".zip" SET APL2EDSK2=%%~a
if /I "%%~xa"==".nib" SET APL2EDSK2=%%~a
if /I "%%~xa"==".iie" SET APL2EDSK2=%%~a
if /I "%%~xa"==".do" SET APL2EDSK2=%%~a
if /I "%%~xa"==".po" SET APL2EDSK2=%%~a
if /I "%%~xa"==".gz" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2img" SET APL2EDSK2=%%~a
if /I "%%~xa"==".2mg" SET APL2EDSK2=%%~a
)

goto :injecAPL2Es

:injecAPL2Es
if "%APL2EDSK2%" NEQ "" "%GBC%\fart.exe" "*.bat" "REM REG" "REG"
if "%APL2EDSK2%" NEQ "" "%GBC%\fart.exe" "*.bat" [-d2] " -d2"
if "%APL2EDSK2%" NEQ "" "%GBC%\fart.exe" "*.bat" [DISK2] "%APL2EDSK2%"
if "%APL2EDSK2%"=="" "%GBC%\fart.exe" "*.bat" "[-d2] [DISK2]" --remove
goto :APL2Eend

:APL2Eend
exit /bs
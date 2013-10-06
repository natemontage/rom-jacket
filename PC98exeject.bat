set PC98DSK=
set PC98DSK1=
set PC98DSK2=
set PC98DSK3=
set PC98DSK4=
set PC98DSK5=
set PC98DSK6=
set PC98DSK7=
set PC98DSK8=
set PC98DSK9=
set PC98DSK10=
set PC98DSK11=
set PC98DSK12=
set PC98DSK13=
set PC98DSK14=
set PC98DSK15=
set PC98EXT=
set PC98HDD=
set PC-98HXT=
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%"') do (
if /I "%%~xa"==".nhd" SET PC98HDD=%%~a
if /I "%%~xa"==".thd" SET PC98HDD=%%~a
if /I "%%~xa"==".hdi" SET PC98HDD=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk10*"') do (
if /I "%%~xa"==".d88" SET PC98DSK10=%%~a
if /I "%%~xa"==".d98" SET PC98DSK10=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK10=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK10=%%~a
if /I "%%~xa"==".dup" SET PC98DSK10=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK10=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK10=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk 10*"') do (
if /I "%%~xa"==".d88" SET PC98DSK10=%%~a
if /I "%%~xa"==".d98" SET PC98DSK10=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK10=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK10=%%~a
if /I "%%~xa"==".dup" SET PC98DSK10=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK10=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK10=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk_10*"') do (
if /I "%%~xa"==".d88" SET PC98DSK10=%%~a
if /I "%%~xa"==".d98" SET PC98DSK10=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK10=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK10=%%~a
if /I "%%~xa"==".dup" SET PC98DSK10=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK10=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK10=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk 11*"') do (
if /I "%%~xa"==".d88" SET PC98DSK11=%%~a
if /I "%%~xa"==".d98" SET PC98DSK11=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK11=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK11=%%~a
if /I "%%~xa"==".dup" SET PC98DSK11=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK11=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK11=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk11*"') do (
if /I "%%~xa"==".d88" SET PC98DSK11=%%~a
if /I "%%~xa"==".d98" SET PC98DSK11=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK11=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK11=%%~a
if /I "%%~xa"==".dup" SET PC98DSK11=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK11=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK11=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk_11*"') do (
if /I "%%~xa"==".d88" SET PC98DSK11=%%~a
if /I "%%~xa"==".d98" SET PC98DSK11=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK11=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK11=%%~a
if /I "%%~xa"==".dup" SET PC98DSK11=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK11=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK11=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk12*"') do (
if /I "%%~xa"==".d88" SET PC98DSK12=%%~a
if /I "%%~xa"==".d98" SET PC98DSK12=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK12=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK12=%%~a
if /I "%%~xa"==".dup" SET PC98DSK12=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK12=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK12=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk 12*"') do (
if /I "%%~xa"==".d88" SET PC98DSK12=%%~a
if /I "%%~xa"==".d98" SET PC98DSK12=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK12=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK12=%%~a
if /I "%%~xa"==".dup" SET PC98DSK12=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK12=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK12=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk_12*"') do (
if /I "%%~xa"==".d88" SET PC98DSK12=%%~a
if /I "%%~xa"==".d98" SET PC98DSK12=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK12=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK12=%%~a
if /I "%%~xa"==".dup" SET PC98DSK12=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK12=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK12=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk13*"') do (
if /I "%%~xa"==".d88" SET PC98DSK13=%%~a
if /I "%%~xa"==".d98" SET PC98DSK13=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK13=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK13=%%~a
if /I "%%~xa"==".dup" SET PC98DSK13=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK13=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK13=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk 13*"') do (
if /I "%%~xa"==".d88" SET PC98DSK13=%%~a
if /I "%%~xa"==".d98" SET PC98DSK13=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK13=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK13=%%~a
if /I "%%~xa"==".dup" SET PC98DSK13=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK13=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK13=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk_13*"') do (
if /I "%%~xa"==".d88" SET PC98DSK13=%%~a
if /I "%%~xa"==".d98" SET PC98DSK13=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK13=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK13=%%~a
if /I "%%~xa"==".dup" SET PC98DSK13=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK13=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK13=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk 14*"') do (
if /I "%%~xa"==".d88" SET PC98DSK14=%%~a
if /I "%%~xa"==".d98" SET PC98DSK14=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK14=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK14=%%~a
if /I "%%~xa"==".dup" SET PC98DSK14=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK14=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK14=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk14*"') do (
if /I "%%~xa"==".d88" SET PC98DSK14=%%~a
if /I "%%~xa"==".d98" SET PC98DSK14=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK14=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK14=%%~a
if /I "%%~xa"==".dup" SET PC98DSK14=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK14=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK14=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk_14*"') do (
if /I "%%~xa"==".d88" SET PC98DSK14=%%~a
if /I "%%~xa"==".d98" SET PC98DSK14=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK14=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK14=%%~a
if /I "%%~xa"==".dup" SET PC98DSK14=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK14=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK14=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk15*"') do (
if /I "%%~xa"==".d88" SET PC98DSK15=%%~a
if /I "%%~xa"==".d98" SET PC98DSK15=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK15=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK15=%%~a
if /I "%%~xa"==".dup" SET PC98DSK15=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK15=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK15=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk 15*"') do (
if /I "%%~xa"==".d88" SET PC98DSK15=%%~a
if /I "%%~xa"==".d98" SET PC98DSK15=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK15=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK15=%%~a
if /I "%%~xa"==".dup" SET PC98DSK15=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK15=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK15=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk_15*"') do (
if /I "%%~xa"==".d88" SET PC98DSK15=%%~a
if /I "%%~xa"==".d98" SET PC98DSK15=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK15=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK15=%%~a
if /I "%%~xa"==".dup" SET PC98DSK15=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK15=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK15=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk 1*"') do (
if /I "%%~xa"==".d88" SET PC98DSK1%%~a
if /I "%%~xa"==".d98" SET PC98DSK1%%~a
if /I "%%~xa"==".xdf" SET PC98DSK1%%~a
if /I "%%~xa"==".hdm" SET PC98DSK1%%~a
if /I "%%~xa"==".dup" SET PC98DSK1%%~a
if /I "%%~xa"==".2hd" SET PC98DSK1%%~a
if /I "%%~xa"==".fdi" SET PC98DSK1%%~a
call :disking
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk1*"') do (
if /I "%%~xa"==".d88" SET PC98DSK1%%~a
if /I "%%~xa"==".d98" SET PC98DSK1%%~a
if /I "%%~xa"==".xdf" SET PC98DSK1%%~a
if /I "%%~xa"==".hdm" SET PC98DSK1%%~a
if /I "%%~xa"==".dup" SET PC98DSK1%%~a
if /I "%%~xa"==".2hd" SET PC98DSK1%%~a
if /I "%%~xa"==".fdi" SET PC98DSK1%%~a
call :disking
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk 01*"') do (
if /I "%%~xa"==".d88" SET PC98DSK1%%~a
if /I "%%~xa"==".d98" SET PC98DSK1%%~a
if /I "%%~xa"==".xdf" SET PC98DSK1%%~a
if /I "%%~xa"==".hdm" SET PC98DSK1%%~a
if /I "%%~xa"==".dup" SET PC98DSK1%%~a
if /I "%%~xa"==".2hd" SET PC98DSK1%%~a
if /I "%%~xa"==".fdi" SET PC98DSK1%%~a
call :disking
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk1*"') do (
if /I "%%~xa"==".d88" SET PC98DSK1%%~a
if /I "%%~xa"==".d98" SET PC98DSK1%%~a
if /I "%%~xa"==".xdf" SET PC98DSK1%%~a
if /I "%%~xa"==".hdm" SET PC98DSK1%%~a
if /I "%%~xa"==".dup" SET PC98DSK1%%~a
if /I "%%~xa"==".2hd" SET PC98DSK1%%~a
if /I "%%~xa"==".fdi" SET PC98DSK1%%~a
call :disking
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk_1*"') do (
if /I "%%~xa"==".d88" SET PC98DSK1%%~a
if /I "%%~xa"==".d98" SET PC98DSK1%%~a
if /I "%%~xa"==".xdf" SET PC98DSK1%%~a
if /I "%%~xa"==".hdm" SET PC98DSK1%%~a
if /I "%%~xa"==".dup" SET PC98DSK1%%~a
if /I "%%~xa"==".2hd" SET PC98DSK1%%~a
if /I "%%~xa"==".fdi" SET PC98DSK1%%~a
call :disking
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk2*"') do (
if /I "%%~xa"==".d88" SET PC98DSK2=%%~a
if /I "%%~xa"==".d98" SET PC98DSK2=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK2=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK2=%%~a
if /I "%%~xa"==".dup" SET PC98DSK2=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK2=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk 02*"') do (
if /I "%%~xa"==".d88" SET PC98DSK2=%%~a
if /I "%%~xa"==".d98" SET PC98DSK2=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK2=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK2=%%~a
if /I "%%~xa"==".dup" SET PC98DSK2=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK2=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk02*"') do (
if /I "%%~xa"==".d88" SET PC98DSK2=%%~a
if /I "%%~xa"==".d98" SET PC98DSK2=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK2=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK2=%%~a
if /I "%%~xa"==".dup" SET PC98DSK2=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK2=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk 2*"') do (
if /I "%%~xa"==".d88" SET PC98DSK2=%%~a
if /I "%%~xa"==".d98" SET PC98DSK2=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK2=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK2=%%~a
if /I "%%~xa"==".dup" SET PC98DSK2=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK2=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk_2*"') do (
if /I "%%~xa"==".d88" SET PC98DSK2=%%~a
if /I "%%~xa"==".d98" SET PC98DSK2=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK2=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK2=%%~a
if /I "%%~xa"==".dup" SET PC98DSK2=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK2=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk 3*"') do (
if /I "%%~xa"==".d88" SET PC98DSK3=%%~a
if /I "%%~xa"==".d98" SET PC98DSK3=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK3=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK3=%%~a
if /I "%%~xa"==".dup" SET PC98DSK3=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK3=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk3*"') do (
if /I "%%~xa"==".d88" SET PC98DSK3=%%~a
if /I "%%~xa"==".d98" SET PC98DSK3=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK3=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK3=%%~a
if /I "%%~xa"==".dup" SET PC98DSK3=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK3=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk_3*"') do (
if /I "%%~xa"==".d88" SET PC98DSK3=%%~a
if /I "%%~xa"==".d98" SET PC98DSK3=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK3=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK3=%%~a
if /I "%%~xa"==".dup" SET PC98DSK3=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK3=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk4*"') do (
if /I "%%~xa"==".d88" SET PC98DSK4=%%~a
if /I "%%~xa"==".d98" SET PC98DSK4=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK4=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK4=%%~a
if /I "%%~xa"==".dup" SET PC98DSK4=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK4=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK4=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk 4*"') do (
if /I "%%~xa"==".d88" SET PC98DSK4=%%~a
if /I "%%~xa"==".d98" SET PC98DSK4=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK4=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK4=%%~a
if /I "%%~xa"==".dup" SET PC98DSK4=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK4=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK4=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk_4*"') do (
if /I "%%~xa"==".d88" SET PC98DSK4=%%~a
if /I "%%~xa"==".d98" SET PC98DSK4=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK4=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK4=%%~a
if /I "%%~xa"==".dup" SET PC98DSK4=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK4=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK4=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk 5*"') do (
if /I "%%~xa"==".d88" SET PC98DSK5=%%~a
if /I "%%~xa"==".d98" SET PC98DSK5=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK5=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK5=%%~a
if /I "%%~xa"==".dup" SET PC98DSK5=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK5=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK5=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk5*"') do (
if /I "%%~xa"==".d88" SET PC98DSK5=%%~a
if /I "%%~xa"==".d98" SET PC98DSK5=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK5=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK5=%%~a
if /I "%%~xa"==".dup" SET PC98DSK5=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK5=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK5=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk_5*"') do (
if /I "%%~xa"==".d88" SET PC98DSK5=%%~a
if /I "%%~xa"==".d98" SET PC98DSK5=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK5=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK5=%%~a
if /I "%%~xa"==".dup" SET PC98DSK5=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK5=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK5=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk6*"') do (
if /I "%%~xa"==".d88" SET PC98DSK6=%%~a
if /I "%%~xa"==".d98" SET PC98DSK6=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK6=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK6=%%~a
if /I "%%~xa"==".dup" SET PC98DSK6=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK6=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK6=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk 6*"') do (
if /I "%%~xa"==".d88" SET PC98DSK6=%%~a
if /I "%%~xa"==".d98" SET PC98DSK6=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK6=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK6=%%~a
if /I "%%~xa"==".dup" SET PC98DSK6=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK6=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK6=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk_6*"') do (
if /I "%%~xa"==".d88" SET PC98DSK6=%%~a
if /I "%%~xa"==".d98" SET PC98DSK6=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK6=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK6=%%~a
if /I "%%~xa"==".dup" SET PC98DSK6=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK6=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK6=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk 7*"') do (
if /I "%%~xa"==".d88" SET PC98DSK7=%%~a
if /I "%%~xa"==".d98" SET PC98DSK7=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK7=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK7=%%~a
if /I "%%~xa"==".dup" SET PC98DSK7=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK7=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK7=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk7*"') do (
if /I "%%~xa"==".d88" SET PC98DSK7=%%~a
if /I "%%~xa"==".d98" SET PC98DSK7=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK7=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK7=%%~a
if /I "%%~xa"==".dup" SET PC98DSK7=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK7=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK7=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk_7*"') do (
if /I "%%~xa"==".d88" SET PC98DSK7=%%~a
if /I "%%~xa"==".d98" SET PC98DSK7=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK7=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK7=%%~a
if /I "%%~xa"==".dup" SET PC98DSK7=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK7=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK7=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk8*"') do (
if /I "%%~xa"==".d88" SET PC98DSK8=%%~a
if /I "%%~xa"==".d98" SET PC98DSK8=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK8=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK8=%%~a
if /I "%%~xa"==".dup" SET PC98DSK8=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK8=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK8=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk 8*"') do (
if /I "%%~xa"==".d88" SET PC98DSK8=%%~a
if /I "%%~xa"==".d98" SET PC98DSK8=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK8=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK8=%%~a
if /I "%%~xa"==".dup" SET PC98DSK8=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK8=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK8=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk_8*"') do (
if /I "%%~xa"==".d88" SET PC98DSK8=%%~a
if /I "%%~xa"==".d98" SET PC98DSK8=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK8=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK8=%%~a
if /I "%%~xa"==".dup" SET PC98DSK8=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK8=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK8=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk 9*"') do (
if /I "%%~xa"==".d88" SET PC98DSK9=%%~a
if /I "%%~xa"==".d98" SET PC98DSK9=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK9=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK9=%%~a
if /I "%%~xa"==".dup" SET PC98DSK9=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK9=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK9=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk9*"') do (
if /I "%%~xa"==".d88" SET PC98DSK9=%%~a
if /I "%%~xa"==".d98" SET PC98DSK9=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK9=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK9=%%~a
if /I "%%~xa"==".dup" SET PC98DSK9=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK9=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK9=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%\*Disk_9*"') do (
if /I "%%~xa"==".d88" SET PC98DSK9=%%~a
if /I "%%~xa"==".d98" SET PC98DSK9=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK9=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK9=%%~a
if /I "%%~xa"==".dup" SET PC98DSK9=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK9=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK9=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CD%"') do (
if /I "%%~xa"==".d88" SET PC98DSK=%%~a
if /I "%%~xa"==".d98" SET PC98DSK=%%~a
if /I "%%~xa"==".xdf" SET PC98DSK=%%~a
if /I "%%~xa"==".hdm" SET PC98DSK=%%~a
if /I "%%~xa"==".dup" SET PC98DSK=%%~a
if /I "%%~xa"==".2hd" SET PC98DSK=%%~a
if /I "%%~xa"==".fdi" SET PC98DSK=%%~a
call :INJECTING
SET PC98DSK=
)
:INJECTING
if "%PC98DSK%"=="" goto :HDINJ
if /I "%PC98DSK%"=="%PC98DSK1%" exit /b
if /I "%PC98DSK%"=="%PC98DSK2%" exit /b
if /I "%PC98DSK%"=="%PC98DSK3%" exit /b
if /I "%PC98DSK%"=="%PC98DSK4%" exit /b
if /I "%PC98DSK%"=="%PC98DSK5%" exit /b
if /I "%PC98DSK%"=="%PC98DSK6%" exit /b
if /I "%PC98DSK%"=="%PC98DSK7%" exit /b
if /I "%PC98DSK%"=="%PC98DSK8%" exit /b
if /I "%PC98DSK%"=="%PC98DSK9%" exit /b
if /I "%PC98DSK%"=="%PC98DSK10%" exit /b
if /I "%PC98DSK%"=="%PC98DSK11%" exit /b
if /I "%PC98DSK%"=="%PC98DSK12%" exit /b
if /I "%PC98DSK%"=="%PC98DSK13%" exit /b
if /I "%PC98DSK%"=="%PC98DSK14%" exit /b
if /I "%PC98DSK%"=="%PC98DSK15%" exit /b
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NP2 tool] FD1NAME0=%PC98DSK%
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NP2 tool] FD2NAME0=%PC98DSK2%
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NP2 tool] FD2NAME1=%PC98DSK3%
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NP2 tool] FD1NAME1=%PC98DSK4%
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NP2 tool] FD2NAME2=%PC98DSK5%
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NP2 tool] FD1NAME2=%PC98DSK6%
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NP2 tool] FD2NAME3=%PC98DSK7%
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NP2 tool] FD1NAME3=%PC98DSK8%
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NP2 tool] FD2NAME4=%PC98DSK9%
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NP2 tool] FD1NAME4=%PC98DSK10%
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NP2 tool] FD2NAME5=%PC98DSK11%
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NP2 tool] FD1NAME5=%PC98DSK12%
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NP2 tool] FD2NAME6=%PC98DSK13%
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NP2 tool] FD1NAME6=%PC98DSK14%
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NP2 tool] FD2NAME7=%PC98DSK15%
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NekoProject21] FDFolder=[ROMPTH]
:HDINJ
if "%PC98HDD%" neq "" "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%PC98%\*.bat" [DSK1] --remove
if "%PC98HDD%" neq "" "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%PC98%\*.bat" [DSK2] --remove
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NekoProject21] HDD1FILE=%PC98HDD%
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NekoProject21] HDFolder=[ROMPTH]
goto :pc98end
:disking
if /I "%PC98DSK1%"=="%PC98DSK10%" exit /b
if /I "%PC98DSK1%"=="%PC98DSK11%" exit /b
if /I "%PC98DSK1%"=="%PC98DSK12%" exit /b
if /I "%PC98DSK1%"=="%PC98DSK13%" exit /b
if /I "%PC98DSK1%"=="%PC98DSK14%" exit /b
if /I "%PC98DSK1%"=="%PC98DSK15%" exit /b
"%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%PC98%\np21nt.ini" [NP2 tool] FD1NAME0=[ROMPTH]\%PC98DSK1%
exit /b
:pc98end
if "%PC98DSK2%"=="" "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%PC98%\*.bat" [DSK2] --remove
if "%PC98DSK1%" neq "" "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%PC98%\*.bat" [DSK] "%PC98DSK1%"
if "%PC98DSK2%" neq "" "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%PC98%\*.bat" [DSK2] "%PC98DSK2%"
if "%PC98DSK%" neq "" "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%PC98%\*.bat" [DSK] "%PC98DSK%"
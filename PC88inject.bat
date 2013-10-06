set PC88DSK=
set PC88DSK1=
set PC88DSK2=
set PC88DSK3=
set PC88DSK4=
set PC88EXT=

for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\*Disk 1*"') do (
if /I "%%~xa"==".d88" SET PC88DSK1%%~a
if /I "%%~xa"==".t88" SET PC88DSK1%%~a
if /I "%%~xa"==".td0" SET PC88DSK1%%~a
if /I "%%~xa"==".imd" SET PC88DSK1%%~a
if /I "%%~xa"==".dsk" SET PC88DSK1%%~a
if /I "%%~xa"==".cqm" SET PC88DSK1%%~a
if /I "%%~xa"==".d11" SET PC88DSK1%%~a
if /I "%%~xa"==".d77" SET PC88DSK1%%~a
if /I "%%~xa"==".fdi" SET PC88DSK1%%~a
if /I "%%~xa"==".2hd" SET PC88DSK1%%~a
if /I "%%~xa"==".xdf" SET PC88DSK1%%~a
call :disking
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\*Disk1*"') do (
if /I "%%~xa"==".d88" SET PC88DSK1%%~a
if /I "%%~xa"==".td0" SET PC88DSK1%%~a
if /I "%%~xa"==".imd" SET PC88DSK1%%~a
if /I "%%~xa"==".dsk" SET PC88DSK1%%~a
if /I "%%~xa"==".cqm" SET PC88DSK1%%~a
if /I "%%~xa"==".d11" SET PC88DSK1%%~a
if /I "%%~xa"==".d77" SET PC88DSK1%%~a
if /I "%%~xa"==".fdi" SET PC88DSK1%%~a
if /I "%%~xa"==".2hd" SET PC88DSK1%%~a
if /I "%%~xa"==".xdf" SET PC88DSK1%%~a
if /I "%%~xa"==".t88" SET PC88DSK1%%~a
call :disking
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\*Disk 01*"') do (
if /I "%%~xa"==".d88" SET PC88DSK1%%~a
if /I "%%~xa"==".t88" SET PC88DSK1%%~a
if /I "%%~xa"==".td0" SET PC88DSK1%%~a
if /I "%%~xa"==".imd" SET PC88DSK1%%~a
if /I "%%~xa"==".dsk" SET PC88DSK1%%~a
if /I "%%~xa"==".cqm" SET PC88DSK1%%~a
if /I "%%~xa"==".d11" SET PC88DSK1%%~a
if /I "%%~xa"==".d77" SET PC88DSK1%%~a
if /I "%%~xa"==".fdi" SET PC88DSK1%%~a
if /I "%%~xa"==".2hd" SET PC88DSK1%%~a
if /I "%%~xa"==".xdf" SET PC88DSK1%%~a
call :disking
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\*Disk1*"') do (
if /I "%%~xa"==".d88" SET PC88DSK1%%~a
if /I "%%~xa"==".t88" SET PC88DSK1%%~a
if /I "%%~xa"==".td0" SET PC88DSK1%%~a
if /I "%%~xa"==".imd" SET PC88DSK1%%~a
if /I "%%~xa"==".dsk" SET PC88DSK1%%~a
if /I "%%~xa"==".cqm" SET PC88DSK1%%~a
if /I "%%~xa"==".d11" SET PC88DSK1%%~a
if /I "%%~xa"==".d77" SET PC88DSK1%%~a
if /I "%%~xa"==".fdi" SET PC88DSK1%%~a
if /I "%%~xa"==".2hd" SET PC88DSK1%%~a
if /I "%%~xa"==".xdf" SET PC88DSK1%%~a
call :disking
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\*Disk_1*"') do (
if /I "%%~xa"==".d88" SET PC88DSK1%%~a
if /I "%%~xa"==".t88" SET PC88DSK1%%~a
if /I "%%~xa"==".td0" SET PC88DSK1%%~a
if /I "%%~xa"==".imd" SET PC88DSK1%%~a
if /I "%%~xa"==".dsk" SET PC88DSK1%%~a
if /I "%%~xa"==".cqm" SET PC88DSK1%%~a
if /I "%%~xa"==".d11" SET PC88DSK1%%~a
if /I "%%~xa"==".d77" SET PC88DSK1%%~a
if /I "%%~xa"==".fdi" SET PC88DSK1%%~a
if /I "%%~xa"==".2hd" SET PC88DSK1%%~a
if /I "%%~xa"==".xdf" SET PC88DSK1%%~a
call :disking
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\*Disk2*"') do (
if /I "%%~xa"==".d88" SET PC88DSK2=%%~a
if /I "%%~xa"==".t88" SET PC88DSK2=%%~a
if /I "%%~xa"==".td0" SET PC88DSK2=%%~a
if /I "%%~xa"==".imd" SET PC88DSK2=%%~a
if /I "%%~xa"==".dsk" SET PC88DSK2=%%~a
if /I "%%~xa"==".cqm" SET PC88DSK2=%%~a
if /I "%%~xa"==".d11" SET PC88DSK2=%%~a
if /I "%%~xa"==".d77" SET PC88DSK2=%%~a
if /I "%%~xa"==".fdi" SET PC88DSK2=%%~a
if /I "%%~xa"==".2hd" SET PC88DSK2=%%~a
if /I "%%~xa"==".xdf" SET PC88DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\*Disk 02*"') do (
if /I "%%~xa"==".d88" SET PC88DSK2=%%~a
if /I "%%~xa"==".t88" SET PC88DSK2=%%~a
if /I "%%~xa"==".td0" SET PC88DSK2=%%~a
if /I "%%~xa"==".imd" SET PC88DSK2=%%~a
if /I "%%~xa"==".dsk" SET PC88DSK2=%%~a
if /I "%%~xa"==".cqm" SET PC88DSK2=%%~a
if /I "%%~xa"==".d11" SET PC88DSK2=%%~a
if /I "%%~xa"==".d77" SET PC88DSK2=%%~a
if /I "%%~xa"==".fdi" SET PC88DSK2=%%~a
if /I "%%~xa"==".2hd" SET PC88DSK2=%%~a
if /I "%%~xa"==".xdf" SET PC88DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\*Disk02*"') do (
if /I "%%~xa"==".d88" SET PC88DSK2=%%~a
if /I "%%~xa"==".t88" SET PC88DSK2=%%~a
if /I "%%~xa"==".td0" SET PC88DSK2=%%~a
if /I "%%~xa"==".imd" SET PC88DSK2=%%~a
if /I "%%~xa"==".dsk" SET PC88DSK2=%%~a
if /I "%%~xa"==".cqm" SET PC88DSK2=%%~a
if /I "%%~xa"==".d11" SET PC88DSK2=%%~a
if /I "%%~xa"==".d77" SET PC88DSK2=%%~a
if /I "%%~xa"==".fdi" SET PC88DSK2=%%~a
if /I "%%~xa"==".2hd" SET PC88DSK2=%%~a
if /I "%%~xa"==".xdf" SET PC88DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\*Disk 2*"') do (
if /I "%%~xa"==".d88" SET PC88DSK2=%%~a
if /I "%%~xa"==".t88" SET PC88DSK2=%%~a
if /I "%%~xa"==".td0" SET PC88DSK2=%%~a
if /I "%%~xa"==".imd" SET PC88DSK2=%%~a
if /I "%%~xa"==".dsk" SET PC88DSK2=%%~a
if /I "%%~xa"==".cqm" SET PC88DSK2=%%~a
if /I "%%~xa"==".d11" SET PC88DSK2=%%~a
if /I "%%~xa"==".d77" SET PC88DSK2=%%~a
if /I "%%~xa"==".fdi" SET PC88DSK2=%%~a
if /I "%%~xa"==".2hd" SET PC88DSK2=%%~a
if /I "%%~xa"==".xdf" SET PC88DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\*Disk_2*"') do (
if /I "%%~xa"==".d88" SET PC88DSK2=%%~a
if /I "%%~xa"==".t88" SET PC88DSK2=%%~a
if /I "%%~xa"==".td0" SET PC88DSK2=%%~a
if /I "%%~xa"==".imd" SET PC88DSK2=%%~a
if /I "%%~xa"==".dsk" SET PC88DSK2=%%~a
if /I "%%~xa"==".cqm" SET PC88DSK2=%%~a
if /I "%%~xa"==".d11" SET PC88DSK2=%%~a
if /I "%%~xa"==".d77" SET PC88DSK2=%%~a
if /I "%%~xa"==".fdi" SET PC88DSK2=%%~a
if /I "%%~xa"==".2hd" SET PC88DSK2=%%~a
if /I "%%~xa"==".xdf" SET PC88DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\*Disk 3*"') do (
if /I "%%~xa"==".d88" SET PC88DSK3=%%~a
if /I "%%~xa"==".t88" SET PC88DSK3=%%~a
if /I "%%~xa"==".td0" SET PC88DSK3=%%~a
if /I "%%~xa"==".imd" SET PC88DSK3=%%~a
if /I "%%~xa"==".dsk" SET PC88DSK3=%%~a
if /I "%%~xa"==".cqm" SET PC88DSK3=%%~a
if /I "%%~xa"==".d11" SET PC88DSK3=%%~a
if /I "%%~xa"==".d77" SET PC88DSK3=%%~a
if /I "%%~xa"==".fdi" SET PC88DSK3=%%~a
if /I "%%~xa"==".2hd" SET PC88DSK3=%%~a
if /I "%%~xa"==".xdf" SET PC88DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\*Disk3*"') do (
if /I "%%~xa"==".d88" SET PC88DSK3=%%~a
if /I "%%~xa"==".t88" SET PC88DSK3=%%~a
if /I "%%~xa"==".td0" SET PC88DSK3=%%~a
if /I "%%~xa"==".imd" SET PC88DSK3=%%~a
if /I "%%~xa"==".dsk" SET PC88DSK3=%%~a
if /I "%%~xa"==".cqm" SET PC88DSK3=%%~a
if /I "%%~xa"==".d11" SET PC88DSK3=%%~a
if /I "%%~xa"==".d77" SET PC88DSK3=%%~a
if /I "%%~xa"==".fdi" SET PC88DSK3=%%~a
if /I "%%~xa"==".2hd" SET PC88DSK3=%%~a
if /I "%%~xa"==".xdf" SET PC88DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\*Disk_3*"') do (
if /I "%%~xa"==".d88" SET PC88DSK3=%%~a
if /I "%%~xa"==".t88" SET PC88DSK3=%%~a
if /I "%%~xa"==".td0" SET PC88DSK3=%%~a
if /I "%%~xa"==".imd" SET PC88DSK3=%%~a
if /I "%%~xa"==".dsk" SET PC88DSK3=%%~a
if /I "%%~xa"==".cqm" SET PC88DSK3=%%~a
if /I "%%~xa"==".d11" SET PC88DSK3=%%~a
if /I "%%~xa"==".d77" SET PC88DSK3=%%~a
if /I "%%~xa"==".fdi" SET PC88DSK3=%%~a
if /I "%%~xa"==".2hd" SET PC88DSK3=%%~a
if /I "%%~xa"==".xdf" SET PC88DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\*Disk4*"') do (
if /I "%%~xa"==".d88" SET PC88DSK4=%%~a
if /I "%%~xa"==".t88" SET PC88DSK4=%%~a
if /I "%%~xa"==".td0" SET PC88DSK4=%%~a
if /I "%%~xa"==".imd" SET PC88DSK4=%%~a
if /I "%%~xa"==".dsk" SET PC88DSK4=%%~a
if /I "%%~xa"==".cqm" SET PC88DSK4=%%~a
if /I "%%~xa"==".d11" SET PC88DSK4=%%~a
if /I "%%~xa"==".d77" SET PC88DSK4=%%~a
if /I "%%~xa"==".fdi" SET PC88DSK4=%%~a
if /I "%%~xa"==".2hd" SET PC88DSK4=%%~a
if /I "%%~xa"==".xdf" SET PC88DSK4=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\*Disk 4*"') do (
if /I "%%~xa"==".d88" SET PC88DSK4=%%~a
if /I "%%~xa"==".t88" SET PC88DSK4=%%~a
if /I "%%~xa"==".td0" SET PC88DSK4=%%~a
if /I "%%~xa"==".imd" SET PC88DSK4=%%~a
if /I "%%~xa"==".dsk" SET PC88DSK4=%%~a
if /I "%%~xa"==".cqm" SET PC88DSK4=%%~a
if /I "%%~xa"==".d11" SET PC88DSK4=%%~a
if /I "%%~xa"==".d77" SET PC88DSK4=%%~a
if /I "%%~xa"==".fdi" SET PC88DSK4=%%~a
if /I "%%~xa"==".2hd" SET PC88DSK4=%%~a
if /I "%%~xa"==".xdf" SET PC88DSK4=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\*Disk_4*"') do (
if /I "%%~xa"==".d88" SET PC88DSK4=%%~a
if /I "%%~xa"==".t88" SET PC88DSK4=%%~a
if /I "%%~xa"==".td0" SET PC88DSK4=%%~a
if /I "%%~xa"==".imd" SET PC88DSK4=%%~a
if /I "%%~xa"==".dsk" SET PC88DSK4=%%~a
if /I "%%~xa"==".cqm" SET PC88DSK4=%%~a
if /I "%%~xa"==".d11" SET PC88DSK4=%%~a
if /I "%%~xa"==".d77" SET PC88DSK4=%%~a
if /I "%%~xa"==".fdi" SET PC88DSK4=%%~a
if /I "%%~xa"==".2hd" SET PC88DSK4=%%~a
if /I "%%~xa"==".xdf" SET PC88DSK4=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%"') do (
if /I "%%~xa"==".d88" SET PC88DSK=%%~a
if /I "%%~xa"==".t88" SET PC88DSK=%%~a
if /I "%%~xa"==".td0" SET PC88DSK=%%~a
if /I "%%~xa"==".imd" SET PC88DSK=%%~a
if /I "%%~xa"==".dsk" SET PC88DSK=%%~a
if /I "%%~xa"==".cqm" SET PC88DSK=%%~a
if /I "%%~xa"==".d11" SET PC88DSK=%%~a
if /I "%%~xa"==".d77" SET PC88DSK=%%~a
if /I "%%~xa"==".fdi" SET PC88DSK=%%~a
if /I "%%~xa"==".2hd" SET PC88DSK=%%~a
if /I "%%~xa"==".xdf" SET PC88DSK=%%~a
call :INJECTION
)
exit /b
:INJECTION
if /I "%PC88DSK1%" NEQ "" "%GBC%\inifile.exe" "m88.ini" [M88p2 for Windows] d88=%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\%PC88DSK1%
if /I "%PC88DSK1%"=="" "%GBC%\inifile.exe" "m88.ini" [M88p2 for Windows] d88=%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\%PC88DSK%
if /I "%PC88DSK1%" NEQ "" "%GBC%\inifile.exe" "m88.ini" [M88p2 for Windows] FD1NAME0=%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\%PC88DSK1%
if /I "%PC88DSK1%"=="" "%GBC%\inifile.exe" "m88.ini" [M88p2 for Windows] FD1NAME0=%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\%PC88DSK%
"%GBC%\fart.exe" "*.bat" [ROMPTH] %GBG%\%GAM%\%CONS%\%PC88%\%CSTM%
"%GBC%\fart.exe" "*.bat" [DSK1] %PC88DSK1%
"%GBC%\fart.exe" "*.bat" [DSK1] %PC88DSK%
if /I "%PC88DSK3%" NEQ "" "%GBC%\inifile.exe" "m88.ini" [M88p2 for Windows] FD2NAME0=%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\%PC88DSK3%
if /I "%PC88DSK4%" NEQ ""  "%GBC%\inifile.exe" "m88.ini" [M88p2 for Windows] FD2NAME2=%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\%PC88DSK4%
if /I "%PC88DSK2%" NEQ "" "%GBC%\inifile.exe" "m88.ini" [M88p2 for Windows] FD1NAME1=%GBG%\%GAM%\%CONS%\%PC88%\%CSTM%\%PC88DSK2%

if "%PC88DSK2%"=="" "%GBC%\fart.exe" "m88.ini" [DSK2] --remove
if "%PC88DSK2%"=="" "%GBC%\fart.exe" "m88.ini" [DSK3] --remove
if "%PC88DSK2%"=="" "%GBC%\fart.exe" "m88.ini" [DSK4] --remove
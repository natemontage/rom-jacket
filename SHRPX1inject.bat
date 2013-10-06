SET SHPX1DSK=
SET SHPX1DSK1=
SET SHPX1DSK2=
SET SHPX1DSK3=
SET SHPX1DSK4=

for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk 1*"') do (
if /I "%%~xa"==".d88" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".d77" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".rom" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".tap" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".imd" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".td0" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".wav" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".1dd" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".cqm" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".fdi" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".dsk" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".2d" SET SHPX1DSK1=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk1*"') do (
if /I "%%~xa"==".d88" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".d77" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".rom" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".tap" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".imd" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".td0" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".1dd" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".wav" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".cqm" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".fdi" SET SHPX1DSK1=%%~a
if /I "%%~xa"==".dsk" SET SHPX1DSK1=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk 2*"') do (
if /I "%%~xa"==".d88" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".d77" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".rom" SET SHPX1DSK2=%%~a 
if /I "%%~xa"==".tap" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".imd" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".1dd" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".td0" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".wav" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".cqm" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".fdi" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".dsk" SET SHPX1DSK2=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk2*"') do (
if /I "%%~xa"==".d88" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".d77" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".rom" SET SHPX1DSK2=%%~a 
if /I "%%~xa"==".tap" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".imd" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".td0" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".wav" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".1dd" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".cqm" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".fdi" SET SHPX1DSK2=%%~a
if /I "%%~xa"==".dsk" SET SHPX1DSK2=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk 3*"') do (
if /I "%%~xa"==".d88" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".d77" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".rom" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".tap" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".imd" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".1dd" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".td0" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".wav" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".2d" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".cqm" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".fdi" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".dsk" SET SHPX1DSK3=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk3*"') do (
if /I "%%~xa"==".d88" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".d77" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".rom" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".1dd" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".tap" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".imd" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".td0" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".wav" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".cqm" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".fdi" SET SHPX1DSK3=%%~a
if /I "%%~xa"==".dsk" SET SHPX1DSK3=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk 4*"') do (
if /I "%%~xa"==".d88" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".d77" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".rom" SET SHPX1DSK4=%%~a 
if /I "%%~xa"==".1dd" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".tap" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".imd" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".td0" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".wav" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".cqm" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".fdi" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".dsk" SET SHPX1DSK4=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk4*"') do (
if /I "%%~xa"==".d88" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".d77" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".rom" SET SHPX1DSK4=%%~a 
if /I "%%~xa"==".tap" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".imd" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".td0" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".1dd" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".wav" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".cqm" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".fdi" SET SHPX1DSK4=%%~a
if /I "%%~xa"==".dsk" SET SHPX1DSK4=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%SHRPX1%\%CSTM%"') do (
if /I "%%~xa"==".d88" SET SHPX1DSK=%%~a
CALL :disking
if /I "%%~xa"==".d77" SET SHPX1DSK=%%~a
CALL :disking
if /I "%%~xa"==".rom" SET SHPX1DSK=%%~a
CALL :disking 
if /I "%%~xa"==".tap" SET SHPX1DSK=%%~a
CALL :disking
if /I "%%~xa"==".imd" SET SHPX1DSK=%%~a
CALL :disking
if /I "%%~xa"==".td0" SET SHPX1DSK=%%~a
CALL :disking
if /I "%%~xa"==".wav" SET SHPX1DSK=%%~a
CALL :disking
if /I "%%~xa"==".cqm" SET SHPX1DSK=%%~a
CALL :disking
if /I "%%~xa"==".fdi" SET SHPX1DSK=%%~a
CALL :disking
if /I "%%~xa"==".dsk" SET SHPX1DSK=%%~a
CALL :disking
if /I "%%~xa"==".1dd" SET SHPX1DSK=%%~a
CALL :disking
if /I "%%~xa"==".dsk" SET SHPX1DSK=%%~a
CALL :disking
if /I "%%~xa"=="." SET SHPX1DSK=%%~a
CALL :disking
)
goto :injec1s

:disking
if /I "%SHPX1DSK%"=="%SHPX1DSK2%" exit /b
if /I "%SHPX1DSK%"=="%SHPX1DSK3%" exit /b
if /I "%SHPX1DSK%"=="%SHPX1DSK4%" exit /b
if /I "%SHPX1DSK%"=="" exit /b

:injec1s
"%GBC%\fart.exe" "*.bat" [ROMPTH] "%GBG%\%GAM%\%CONS%\%SHRPX1%\%CSTM%"
"%GBC%\fart.exe" "*.bat" [ROM] "%SHPX1DSK1%"
"%GBC%\fart.exe" "*.bat" [ROM] "%SHPX1DSK%"
"%GBC%\fart.exe" "*.cfg" [ROMPTH] "%GBG%\%GAM%\%CONS%\%SHRPX1%\%CSTM%"
"%GBC%\fart.exe" "*.cfg" [DSK1] "%SHPX1DSK1%"
"%GBC%\fart.exe" "*.cfg" [DSK1] "%SHPX1DSK%"
"%GBC%\fart.exe" "*.cfg" [DSK2] "%SHPX1DSK2%"
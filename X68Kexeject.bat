SET X68KHDD=
SET X68KDSK=
SET X68KDSK1=
SET X68KDSK2=
SET X68KDSK3=
SET X68KDSK4=

for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CSTM%"') do (
if /I "%%~xa"==".hdf" SET X68KHDD=%%~a
if /I "%%~xa"==".hdf" SET X68KHDT=1
if /I "%%~xa"==".hds" SET X68KHDD=%%~a
if /I "%%~xa"==".hds" SET X68KHDT=1
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk 1*"') do (
if /I "%%~xa"==".d88" SET X68KDSK1=%%~a
if /I "%%~xa"==".d68" SET X68KDSK1=%%~a
if /I "%%~xa"==".88d" SET X68KDSK1=%%~a
if /I "%%~xa"==".hdf" SET X68KDSK1=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK1=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK1=%%~a
if /I "%%~xa"==".dup" SET X68KDSK1=%%~a
if /I "%%~xa"==".dim" SET X68KDSK1=%%~a
if /I "%%~xa"==".hds" SET X68KHDD1=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK1=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK1=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK1=%%~a
if /I "%%~xa"==".img" SET X68KDSK1=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK1=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk1*"') do (
if /I "%%~xa"==".d88" SET X68KDSK1=%%~a
if /I "%%~xa"==".d68" SET X68KDSK1=%%~a
if /I "%%~xa"==".88d" SET X68KDSK1=%%~a
if /I "%%~xa"==".hdf" SET X68KDSK1=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK1=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK1=%%~a
if /I "%%~xa"==".dup" SET X68KDSK1=%%~a
if /I "%%~xa"==".dim" SET X68KDSK1=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK1=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK1=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK1=%%~a
if /I "%%~xa"==".img" SET X68KDSK1=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk 2*"') do (
if /I "%%~xa"==".d88" SET X68KDSK2=%%~a
if /I "%%~xa"==".d68" SET X68KDSK2=%%~a
if /I "%%~xa"==".88d" SET X68KDSK2=%%~a 
if /I "%%~xa"==".hdf" SET X68KDSK2=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK2=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK2=%%~a
if /I "%%~xa"==".dup" SET X68KDSK2=%%~a
if /I "%%~xa"==".dim" SET X68KDSK2=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK2=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK2=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK2=%%~a
if /I "%%~xa"==".img" SET X68KDSK2=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk2*"') do (
if /I "%%~xa"==".d88" SET X68KDSK2=%%~a
if /I "%%~xa"==".d68" SET X68KDSK2=%%~a
if /I "%%~xa"==".88d" SET X68KDSK2=%%~a 
if /I "%%~xa"==".hdf" SET X68KDSK2=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK2=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK2=%%~a
if /I "%%~xa"==".dup" SET X68KDSK2=%%~a
if /I "%%~xa"==".dim" SET X68KDSK2=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK2=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK2=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK2=%%~a
if /I "%%~xa"==".img" SET X68KDSK2=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk 3*"') do (
if /I "%%~xa"==".d88" SET X68KDSK3=%%~a
if /I "%%~xa"==".d68" SET X68KDSK3=%%~a
if /I "%%~xa"==".88d" SET X68KDSK3=%%~a
if /I "%%~xa"==".hdf" SET X68KDSK3=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK3=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK3=%%~a
if /I "%%~xa"==".dup" SET X68KDSK3=%%~a
if /I "%%~xa"==".dim" SET X68KDSK3=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK3=%%~a
if /I "%%~xa"==".hdf" SET X68KHDD1=%%~a
if /I "%%~xa"==".hds" SET X68KHDD1=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK3=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK3=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK3=%%~a
if /I "%%~xa"==".img" SET X68KDSK3=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk3*"') do (
if /I "%%~xa"==".d88" SET X68KDSK3=%%~a
if /I "%%~xa"==".d68" SET X68KDSK3=%%~a
if /I "%%~xa"==".88d" SET X68KDSK3=%%~a
if /I "%%~xa"==".hdf" SET X68KDSK3=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK3=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK3=%%~a
if /I "%%~xa"==".dup" SET X68KDSK3=%%~a
if /I "%%~xa"==".dim" SET X68KDSK3=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK3=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK3=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK3=%%~a
if /I "%%~xa"==".img" SET X68KDSK3=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk 4*"') do (
if /I "%%~xa"==".d88" SET X68KDSK4=%%~a
if /I "%%~xa"==".d68" SET X68KDSK4=%%~a
if /I "%%~xa"==".88d" SET X68KDSK4=%%~a 
if /I "%%~xa"==".hdf" SET X68KDSK4=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK4=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK4=%%~a
if /I "%%~xa"==".dup" SET X68KDSK4=%%~a
if /I "%%~xa"==".dim" SET X68KDSK4=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK4=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK4=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK4=%%~a
if /I "%%~xa"==".img" SET X68KDSK4=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk4*"') do (
if /I "%%~xa"==".d88" SET X68KDSK4=%%~a
if /I "%%~xa"==".d68" SET X68KDSK4=%%~a
if /I "%%~xa"==".88d" SET X68KDSK4=%%~a 
if /I "%%~xa"==".hdf" SET X68KDSK4=%%~a
if /I "%%~xa"==".xdf" SET X68KDSK4=%%~a
if /I "%%~xa"==".hdm" SET X68KDSK4=%%~a
if /I "%%~xa"==".dup" SET X68KDSK4=%%~a
if /I "%%~xa"==".dim" SET X68KDSK4=%%~a
if /I "%%~xa"==".2hd" SET X68KDSK4=%%~a
if /I "%%~xa"==".2dd" SET X68KDSK4=%%~a
if /I "%%~xa"==".2hq" SET X68KDSK4=%%~a
if /I "%%~xa"==".img" SET X68KDSK4=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "%CSTM%"') do (
if /I "%%~xa"==".d88" SET X68KDSK=%%~a
CALL :disking
if /I "%%~xa"==".d68" SET X68KDSK=%%~a
CALL :disking
if /I "%%~xa"==".88d" SET X68KDSK=%%~a
CALL :disking 
if /I "%%~xa"==".hdf" SET X68KDSK=%%~a
CALL :disking
if /I "%%~xa"==".xdf" SET X68KDSK=%%~a
CALL :disking
if /I "%%~xa"==".hdm" SET X68KDSK=%%~a
CALL :disking
if /I "%%~xa"==".dup" SET X68KDSK=%%~a
CALL :disking
if /I "%%~xa"==".dim" SET X68KDSK=%%~a
CALL :disking
if /I "%%~xa"==".2dd" SET X68KDSK=%%~a
CALL :disking
if /I "%%~xa"==".2hq" SET X68KDSK=%%~a
CALL :disking
if /I "%%~xa"==".img" SET X68KDSK=%%~a
CALL :disking
)
goto :injecx68ks

:disking
if /I "%X68KDSK%"=="%X68KDSK2%" exit /b
if /I "%X68KDSK%"=="%X68KDSK3%" exit /b
if /I "%X68KDSK%"=="%X68KDSK4%" exit /b
if /I "%X68KDSK%"=="" exit /b

:injecx68ks
pushd "%CSTM%"
if "%X68KHDT%"=="1" "%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%X68K%\XM6.ini" [Resume] Path=[ROMPTH]
if "%X68KHDT%"=="1" "%GBC%\inifile.exe" "%GBC%\net\%EXECT%\%X68K%\XM6.ini" [SASI] File0=%X68KDSK%
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%X68K%\*.bat" [DSK1] "%X68KDSK%"
if "%X68KDSK2%"=="" "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%X68K%\*.bat" --remove [DSK2]
if "%X68KDSK2%" NEQ "" "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%X68K%\*.bat" [DSK2] "%X68KDSK2%"
if "%X68KDSK3%" NEQ "" "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%X68K%\*.bat" [DSK3]
if "%X68KDSK4%" NEQ "" "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%X68K%\*.bat" [DSK4] "%X68KDSK2%"
popd
goto :x68kend

:x68kend
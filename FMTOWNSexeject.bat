SET FMTOWNSDSK=
SET FMTOWNSDSK1=
SET FMTOWNSDSK2=
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk 1*"') do (
if /I "%%~xa"==".d88" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".d77" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".bin" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".imd" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".td0" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".1dd" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".cqm" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".fdi" SET FMTOWNSDSK1=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk1*"') do (
if /I "%%~xa"==".d88" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".d77" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".bin" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".imd" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".td0" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".wav" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".cqm" SET FMTOWNSDSK1=%%~a
if /I "%%~xa"==".fdi" SET FMTOWNSDSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk 2*"') do (
if /I "%%~xa"==".d88" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".d77" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".bin" SET FMTOWNSDSK2=%%~a 
if /I "%%~xa"==".imd" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".1dd" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".wav" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".cqm" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".fdi" SET FMTOWNSDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*Disk2*"') do (
if /I "%%~xa"==".d88" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".d77" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".bin" SET FMTOWNSDSK2=%%~a 
if /I "%%~xa"==".imd" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".td0" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".1dd" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".cqm" SET FMTOWNSDSK2=%%~a
if /I "%%~xa"==".fdi" SET FMTOWNSDSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "[ROMPTH]"') do (
if /I "%%~xa"==".d88" SET FMTOWNSDSK=%%~a
CALL :disking
if /I "%%~xa"==".d77" SET FMTOWNSDSK=%%~a
CALL :disking
if /I "%%~xa"==".bin" SET FMTOWNSDSK=%%~a
CALL :disking 
if /I "%%~xa"==".tap" SET FMTOWNSDSK=%%~a
CALL :disking
if /I "%%~xa"==".imd" SET FMTOWNSDSK=%%~a
CALL :disking
if /I "%%~xa"==".td0" SET FMTOWNSDSK=%%~a
CALL :disking
if /I "%%~xa"==".cqm" SET FMTOWNSDSK=%%~a
CALL :disking
if /I "%%~xa"==".fdi" SET FMTOWNSDSK=%%~a
CALL :disking
if /I "%%~xa"==".1dd" SET FMTOWNSDSK=%%~a
CALL :disking
)
goto :injec1s

:disking
if /I "%FMTOWNSDSK%"=="%FMTOWNSDSK2%" exit /b
if /I "%FMTOWNSDSK%"=="" exit /b

:injec1s
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%FMTOWNS%\*.bat" [ROMPTH] "%%CD%%"
if /i "%FMTOWNSDSK1%" NEQ "" %GBC%\fart.exe" "%GBC%\net\%EXECT%\%FMTOWNS%\*.bat" [DSK] "%FMTOWNSDSK1%"
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%FMTOWNS%\*.bat" [DSK] "%FMTOWNSDSK%"
"%GBC%\fart.exe" "%GBC%\net\%EXECT%\%FMTOWNS%\*.bat" [DSK1] "%FMTOWNSDSK2%"
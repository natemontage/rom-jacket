call "%GBC%\mklist.bat"
CALL "%GBC%\createConsoleDirectories.bat"
copy /y "%GBC%\cflct.set" "%GBC%\cflct.ini"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "%GBG%\%ROMJ%"') do (
SET SKIPALL=
set CHKFILE=
set ROMFULL=%%~dpnxa
SET ROMIS=%%~dpa
SET ROMID=%%~na
set ROMNAME=%%~nxa
set ROMXT=%%~xa
call :XTNZCHK
call :OUTCHK
)

"%GBC%\deleteEmpty.bat"
exit /b

:XTNZCHK
set ROMPTH=%ROMIS:~0,-1%
for /f "tokens=* delims= " %%a in ('type "%GBC%\cflct.ini"') do (
set XTNZ=%%~a
if /i "%ROMXT%"==".%%~a" SET ROMXT=.%%~a
if /i "%ROMXT%"==".%%~a" SET CHKFILE=1
)
exit /b

:OUTCHK
if "%SKIPALL%"=="1" exit /b
if "%QUITSEL%"=="1" exit /b
if "%CHKFILE%"=="" exit /b
if not exist "%ROMFULL%" exit /b
if /i "%ROMXT%"==".ccd" CALL "%GBC%\cdimage.bat"
if /i "%ROMXT%"==".cdz" CALL "%GBC%\cdimage.bat"
if /i "%ROMXT%"==".cdi" CALL "%GBC%\cdimage.bat"
if /i "%ROMXT%"==".iso" CALL "%GBC%\cdimage.bat"
if /i "%ROMXT%"==".img" CALL "%GBC%\cdimage.bat"
if /i "%ROMXT%"==".nrg" CALL "%GBC%\cdimage.bat"
if /i "%ROMXT%"==".mdf" CALL "%GBC%\cdimage.bat"
if /i "%ROMXT%"==".mds" CALL "%GBC%\cdimage.bat"
if /i "%ROMXT%"==".cue" CALL "%GBC%\cdimage.bat"

if /i "%ROMXT%"==".zip" CALL "%GBC%\confl.bat"

if /i "%ROMXT%"==".bin" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".adf" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".rom" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".do" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".po" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".2mg" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".cas" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".xdf" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".ipf" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".dsk" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".tap" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".hdf" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".dup" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".d88" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".2hd" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".2dd" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".fdi" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".dsd" CALL "%GBC%\confl.bat"
if /i "%ROMXT%"==".ssd" CALL "%GBC%\confl.bat"
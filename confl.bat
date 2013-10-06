SET OUTZIP=
SET INZIP=
call "%GBC%\romxt.bat">>"%GBC%\logs\romxt.log"
if "%OUTZIP%"=="1" SET ROMXT=zip
if "%OUTZIP%"=="1" goto :RMZIP
set CDPASS=
:ROMMENU
"%GBC%\wbox.exe" "Select System" "^^#########^#   %CONFLNUM%    #^#########^#Files to Sort#^#########^^The file ^''%ROMNAME%''^ has been identified.^^PICK:^Choose the system the rom belongs to.^^Select:^   Select a different rom to assign to a console.^^ALL:^Assigns all files with the ''%ROMXT%'' to a system.^" "Pick;Open;Skip;Skip %ROMXT%;Select;ALL %ROMXT%" /DB=1
if %ERRORLEVEL%==1 goto :PICK
if %ERRORLEVEL%==2 goto :openfolder
if %ERRORLEVEL%==3 goto :CONFLSUBNUM
if %ERRORLEVEL%==4 goto :SKIPALL
if %ERRORLEVEL%==5 goto :SELECTROM
if %ERRORLEVEL%==6 goto :moveall
goto :quitout

:RMZIP
set CDPASS=
"%GBC%\wbox.exe" "Select System" "^^#########^#   %CONFLNUM%    #^#########^#Files to Sort#^#########^^The file ^''%ROMNAME%''^ has been identified with ''%REALN%'' inside.^^PICK:^Choose the system the rom belongs to.^^Select:^   Select a different rom to assign to a console.^^ALL:^Assigns all files with the ''%ROMXT%'' to a system.^Extract:^Extract ''%ROMNAME%'' to a system.^Extract all ''%ROMXT%'' to a system." "Pick;Open;Skip;Skip %ROMXT%;Select;ALL;Extract;ExtractAll" /DB=1
if %ERRORLEVEL%==1 goto :PICK
if %ERRORLEVEL%==2 goto :openfolder
if %ERRORLEVEL%==3 goto :CONFLSUBNUM
if %ERRORLEVEL%==4 goto :SKIPALL
if %ERRORLEVEL%==5 goto :SELECTROM
if %ERRORLEVEL%==6 goto :moveall
if %ERRORLEVEL%==7 goto :EXTRACT
if %ERRORLEVEL%==8 goto :EXTRALL

goto :quitout


:SKIPALL
SET SKIPALL=1
pushd "%GBC%"
for %%a in ("%ROMXT%") do SET ROMSHT=%ROMXT:~1,5%
"%GBC%\fart.exe" "%GBC%\cflct.ini" "%ROMSHT%" --remove
popd
for /f "tokens=* delims= " %%a in ('dir /b/a-d/s "%GBG%\%ROMJ%\*%ROMXT%"') do set /A CONFLNUM+=-1
goto :quitnext

:SELECTROM
set FORROM=
"%GBC%\Wselect.exe" "%GBC%\sortlist.ini" "Select Rom" "set ROMFULL=$item" > "%GBC%\romsel.cmd"
if %errorlevel%==0 goto :ROMMENU
CALL "%GBC%\romsel.cmd"
if "%ROMFULL%"=="" goto :ROMMENU
for /f "tokens=* delims= " %%a in ("%ROMFULL%") do set ROMNAME=%%~nxa
for /f "tokens=* delims= " %%a in ("%ROMFULL%") do set ROMXT=%%~xa
for /f "tokens=* delims= " %%a in ("%ROMFULL%") do set ROMIS=%%~dpa
call "%GBC%\romxt.bat">>"%GBC%\logs\selromxt.log"
goto :PICK

:EXTRACT
set FORROM=
"%GBC%\Wselect.exe" "%GBC%\recmd.ini" "Select system for ''%ROMNAME%''" "set FORROM=$item" > "%GBC%\forroms.cmd"
if %errorlevel%==0 goto :CONFLSUBNUM
CALL "%GBC%\forroms.cmd"
set FORTMP=%FORROM:~0,1%
if "%FORROM%"=="" goto :CONFLSUBNUM
if "%FORTMP%"=="-" goto :EXTRACT
goto :EXTRONE


:EXTRONE
start "" "%GBC%\wbusy.exe" "%ROMXT%" "Extracting ''%ROMNAME%'' to ''%FORROM%''" /marquee
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "%ROMFULL%"') do (
"%SEVENZIP%" e -y "%%~a" -o"%GBG%\%GAM%\%CONS%\%FORROM%"
set /A CONFLNUM+=-1
)
start "" "%GBC%\wbusy.exe" "%ROMXT%" "Extracted" /Stop /Timeout:1
exit /b



:EXTRALL
set FORROM=
"%GBC%\Wselect.exe" "%GBC%\recmd.ini" "Select system for ''%ROMNAME%''" "set FORROM=$item" > "%GBC%\forroms.cmd"
if %errorlevel%==0 goto :CONFLSUBNUM
CALL "%GBC%\forroms.cmd"
set FORTMP=%FORROM:~0,1%
if "%FORROM%"=="" goto :CONFLSUBNUM
if "%FORTMP%"=="-" goto :EXTRALL
goto :EXTRACTION

:EXTRACTION
start "" "%GBC%\wbusy.exe" "%ROMXT%" "Extracting ''%ROMXT%'' files to ''%FORROM%''" /marquee
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "%GBG%\%ROMJ%\*%ROMXT%"') do (
"%SEVENZIP%" e -y "%%~a" -o"%GBG%\%GAM%\%CONS%\%FORROM%"
set /A CONFLNUM+=-1
)
start "" "%GBC%\wbusy.exe" "%ROMXT%" "Extracted" /Stop /Timeout:1
exit /b

:moveall
set FORROM=
"%GBC%\Wselect.exe" "%GBC%\recmd.ini" "Select system for ''%ROMNAME%''" "set FORROM=$item" > "%GBC%\forroms.cmd"
if %errorlevel%==0 goto :CONFLSUBNUM
CALL "%GBC%\forroms.cmd"
set FORTMP=%FORROM:~0,1%
if "%FORROM%"=="" goto :CONFLSUBNUM
if "%FORTMP%"=="-" goto :moveall

start "" "%GBC%\wbusy.exe" "%ROMXT%" "Moving ''%ROMXT%'' files to ''%FORROM%''" /marquee
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "%GBG%\%ROMJ%\*%ROMXT%"') do (
move /y "%%~a" "%FORROM%"
set /A CONFLNUM+=-1
)
start "" "%GBC%\wbusy.exe" "%ROMXT%" "Moved" /Stop /Timeout:1
exit /b
:PICK
set FORROM=
"%GBC%\Wselect.exe" "%GBC%\recmd.ini" "Select system for ''%ROMNAME%''" "set FORROM=$item" > "%GBC%\forrom.cmd"
if %errorlevel%==0 goto :CONFLSUBNUM
CALL "%GBC%\forrom.cmd"
if "%FORROM%"=="" goto :CONFLSUBNUM
set FORTMP=%FORROM:~0,1%
if "%FORTMP%"=="-" goto :PICK
move /y "%ROMFULL%" "%GBG%\%GAM%\%CONS%\%FORROM%"
set /A CONFLNUM+=-1
pushd "%GBC%"
"%GBC%\fart.exe" "sortlist.ini" "%ROMFULL%" --remove
popd
for /f "tokens=1 delims=([" %%a in ("%ROMID%") do set ROMSH=%%~nxa
mkdir "%GBG%\%GAM%\%CONS%\%FORROM%\%ROMSH%"
for /f "tokens=* delims= " %%a in ('type "%GBC%\extlist.set"') do (
set EXTLIST=%%~a
if exist "%ROMPTH%\%ROMSH%*.%%~a" call :EXTXE
)
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%ROMPTH%\%ROMSH%*.*"') do move /y "%ROMPTH%\%%~a" "%GBG%\%GAM%\%CONS%\%FORROM%"
exit /b

:EXTXE
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "%ROMPTH%\%ROMSH%*.%EXTLIST%"') do (
set /A CONFLNUM+=-1
move /y "%%~dpnxa" "%GBG%\%GAM%\%CONS%\%FORROM%\%ROMSH%"
pushd "%GBC%"
"%GBC%\fart.exe" "sortlist.ini" "%%~dpnxa" --remove
popd
)
exit /b

:CONFLSUBNUM
set /A CONFLNUM+=-1
goto :quitnext

:openfolder
explorer "%ROMPTH%"

:quitout
set QUITSEL=1
:quitnext
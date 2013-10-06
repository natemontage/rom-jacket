for %%R in ("%ROMFULL%") do if %%~zR leq 500000 goto :cueimg
for %%R in ("%ROMFULL%") do if %%~zR leq 8500000000 goto :cdimg
for %%R in ("%ROMFULL%") do if %%~zR gtr 2000000000 goto :dvdimg

:inbetween
SET ININAME=inbet.ini
if "%CDPASS%"=="1" goto :moverom
set FORROM=
"%GBC%\wbox.exe" "move" "^^#########^#   %CONFLNUM%    #^#########^#Files to Sort#^#########^^The file ^''%ROMNAME%''^ has been identified.^^PICK:^Choose the system the rom belongs to.^^Select:^   Select a rom to assign to a console.^^ALL:^Assigns all files with the ''%ROMXT%'' to a system.^" "Pick;Open;Skip;Skip %ROMXT%;Select;ALL %ROMXT%" /DB=1
if %ERRORLEVEL%==1 goto :moverom
if %ERRORLEVEL%==2 goto :openfolder
if %ERRORLEVEL%==3 goto :SKIP
if %ERRORLEVEL%==4 goto :SKIPALL
if %ERRORLEVEL%==5 goto :SELECTROM
if %ERRORLEVEL%==6 goto :MOVEALL
goto :quitnext

:cdimg
SET ININAME=cdimg.ini
if "%CDPASS%"=="1" goto :moverom
set FORROM=
"%GBC%\wbox.exe" "move" "^^#########^#   %CONFLNUM%    #^#########^#Files to Sort#^#########^^PICK:^Choose the system the rom belongs to^^The file ^''%ROMNAME%''^ has been identified.^^Select:^   Select a rom to assign to a console.^^ALL:^Assigns all files with the ''%ROMXT%'' to a system.^" "Pick;Open;Skip;Skip %ROMXT%;Select;ALL %ROMXT%" /DB=1
if %ERRORLEVEL%==1 goto :moverom
if %ERRORLEVEL%==2 goto :openfolder
if %ERRORLEVEL%==3 goto :SKIP
if %ERRORLEVEL%==4 goto :SKIPALL
if %ERRORLEVEL%==5 goto :SELECTROM
if %ERRORLEVEL%==6 goto :MOVEALL

goto :quitnext

:dvdimg
SET ININAME=dvdimg.ini
if "%CDPASS%"=="1" goto :moverom
set FORROM=
"%GBC%\wbox.exe" "move" "^^#########^#   %CONFLNUM%    #^#########^#Files to Sort#^#########^^^^PICK:^Choose the system the rom belongs to.v^^The file ^''%ROMNAME%''^ has been identified.^^Select:^   Select a rom to assign to a console.^^ALL:^Assigns all files with the ''%ROMXT%'' to a system.^" "Pick;Open;Skip;Skip %ROMXT%;Select;ALL %ROMXT%" /DB=1
if %ERRORLEVEL%==1 goto :moverom
if %ERRORLEVEL%==2 goto :openfolder
if %ERRORLEVEL%==3 goto :SKIP
if %ERRORLEVEL%==4 goto :SKIPALL
if %ERRORLEVEL%==5 goto :SELECTROM
if %ERRORLEVEL%==6 goto :MOVEALL
goto :quitnext

:cueimg
SET ININAME=discimg.ini
if "%CDPASS%"=="1" goto :moverom
set FORROM=
"%GBC%\wbox.exe" "move" "^^#########^#   %CONFLNUM%    #^#########^#Files to Sort#^#########^^The file ^''%ROMNAME%''^ has been identified.^^PICK:^Choose the system the rom belongs to.^^The file ^''%ROMNAME%''^ has been identified.^^Select:^   Select a rom to assign to a console.^^ALL:^Assigns all files with the ''%ROMXT%'' to a system.^" "Pick;Open;Skip;Skip %ROMXT%;Select;ALL %ROMXT%" /DB=1
if %ERRORLEVEL%==1 goto :moverom
if %ERRORLEVEL%==2 goto :openfolder
if %ERRORLEVEL%==3 goto :SKIP
if %ERRORLEVEL%==4 goto :SKIPALL
if %ERRORLEVEL%==5 goto :SELECTROM
if %ERRORLEVEL%==6 goto :MOVEALL
goto :quitnext

:SELECTROM
set FORROM=
"%GBC%\Wselect.exe" "%GBC%\%ININAME%" "Select Rom" "set ROMFULL=$item" > "%GBC%\romsel.cmd"
if %errorlevel%==0 goto :quitnext
CALL "%GBC%\romsel.cmd"
if "%ROMFULL%"=="" goto :SELECTROM
for /f "tokens=* delims= " %%a in ("%ROMFULL%") do set ROMNAME=%%~nxa
for /f "tokens=* delims= " %%a in ("%ROMFULL%") do set ROMXT=%%~xa
for /f "tokens=* delims= " %%a in ("%ROMFULL%") do set ROMIS=%%~dpa
call "%GBC%\romxt.bat">>"%GBC%\logs\selromxt.log"
goto :moverom

:SKIPALL
SET SKIPALL=1
pushd "%GBC%"
for %%a in ("%ROMXT%") do SET ROMSHT=%ROMXT:~1,5%
"%GBC%\fart.exe" "%GBC%\cflct.ini" "%ROMSHT%" --remove
popd
if "%ROMXT%"==".cue" goto :quitnext
if "%ROMXT%"==".mds" goto :quitnext
if "%ROMXT%"==".ccd" goto :quitnext
for /f "tokens=* delims= " %%a in ('dir /b/a-d/s "%GBG%\%ROMJ%\*%ROMXT%"') do set /A CONFLNUM+=-1
goto :quitnext

:MOVEALL
set FORROM=
"%GBC%\Wselect.exe" "%GBC%\%ININAME%" "System for ''%ROMXT%''" "set FORROM=$item" > "%GBC%\forroms.cmd"
if %errorlevel%==0 goto :quitnext
CALL "%GBC%\forroms.cmd"
set FORTMP=%FORROM:~0,1%
if "%FORROM%"=="" goto :quitnext
if "%FORTMP%"=="-" goto :moveall
start "" "%GBC%\wbusy.exe" "%ROMXT%" "Moving ''%ROMXT%'' files to ''%FORROM%''" /marquee
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "%GBG%\%ROMJ%\*%ROMXT%"') do (
move /y "%%~a" "%FORROM%"
if "%ROMXT%"==".ccd" goto :quitnext
if "%ROMXT%"==".cue" goto :quitnext
if "%ROMXT%"==".mds" goto :quitnext
set /A CONFLNUM+=-1
)
start "" "%GBC%\wbusy.exe" "%ROMXT%" "Moved" /Stop /Timeout:1
goto :quitnext

:moverom
"%GBC%\Wselect.exe" "%GBC%\%ININAME%" "Select system for ''%ROMNAME%''" "set FORROM=$item" > "%GBC%\forrom.cmd"
if %errorlevel%==0 goto :quitnext
CALL "%GBC%\forrom.cmd"
if "%FORROM%"=="" goto :quitnext
if "%FORROM%"=="----------" goto :quitnext
move /y "%ROMFULL%" "%GBG%\%GAM%\%CONS%\%FORROM%"
for /f "tokens=1 delims=(" %%a in ("%ROMID%") do set ROMSH=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%FORROM%\%ROMSH%"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%ROMPTH%\%ROMSH%*.*"') do move /y "%ROMPTH%\%%~a" "%GBG%\%GAM%\%CONS%\%FORROM%\%ROMSH%"
if "%ROMXT%"==".ccd" exit /b
if "%ROMXT%"==".cue" exit /b
if "%ROMXT%"==".mds" exit /b
set /A CONFLNUM+=-1
pushd "%GBC%"
"%GBC%\fart.exe" "sortlist.ini" "%ROMFULL%" --remove
popd
exit /b

:SKIP
if "%ROMXT%"==".ccd" exit /b
if "%ROMXT%"==".cue" exit /b
if "%ROMXT%"==".mds" exit /b
set /A CONFLNUM+=-1
goto :quitnext


:openfolder
explorer "%ROMPTH%"

:quitnext
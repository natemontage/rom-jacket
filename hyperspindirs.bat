SET CSTHYPS=	
SET HSDESCAPE=
:HS
start /w /min "" "%GBC%\wbox.exe" "HyperspinDirectories" "Choose a console for which to create a Hyperspin compatible mirror." "SELECT" /DB=1 /TM=2
if %ERRORLEVEL%==1 goto :HSCONSOLE
goto :HSCONSOLE

:HSCONSOLE
SET HYPCONNORM=1
SET HYPCONCUST=
SET CSTHYPS=1
del /q "%GBC%\curlist.ini"
echo ---->>"%GBC%\curlist.ini"
echo ALL>>"%GBC%\curlist.ini"
echo Current Library>>"%GBC%\curlist.ini"
echo ---->>"%GBC%\curlist.ini"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do echo %%~a>>"%GBC%\curlist.ini"
echo Other>>"%GBC%\curlist.ini"
"%GBC%\Wselect.exe" "%GBC%\curlist.ini" "Select A Console" "set HYPCONDIR=$item" > "%GBC%\hypCons.cmd"
if %errorlevel%==0 GOTO :HSDESCAPE
CALL "%GBC%\hypCons.cmd"
if "%HYPCONDIR%"=="----" GOTO :HS
if "%HYPCONDIR%"=="" GOTO :HSDESCAPE
if "%HYPCONDIR%"=="ALL" goto :ALLCONSOLE
if "%HYPCONDIR%"=="Current Library" goto :CLEANHOUSE
if "%HYPCONDIR%"=="Other" SET HYPCONCUST=1
if "%HYPCONDIR%"=="Other" CALL :GETCUST

:CREATING
if "%HYPCONCUST%"=="1" set DIRTOLIST=%HYPCONDIR%
if "%HYPCONNORM%"=="1" set DIRTOLIST=%GBG%\%GAM%\%CONS%\%HYPCONDIR%
cmd /c start "" "%GBC%\Wbusy.exe" "CreatingDirectory" "Creating HS Rom-Directory"  /marquee
if "%HYPCONNORM%"=="1" mkdir "%GBG%\%GAM%\%HYPS%\%HYPCONDIR%"
if not exist "%GBG%\%GAM%\%HYPS%\Favorites" mkdir "%GBG%\%GAM%\%HYPS%\Favorites"
if "%HYPCONCUST%"=="1" mkdir "%GBG%\%GAM%\%HYPS%\%HYPCONDIRNAME%"
for /f "tokens=* delims= " %%a in ('dir /b /ad "%DIRTOLIST%"') do (
set ROM=
set ROMNAME=
set ROMDIR=%%~a
pushd "%DIRTOLIST%\%%~a"
CALL :DIRLIST
popd
)

"%GBC%\Wbusy.exe" "CreatingDirectory" "Complete." /Stop /timeout:1
"%GBC%\wbox.exe" "Another" "Would you like to add another console to your Hyperspin setup?" "Yes;Complete" /DB=1
if %ERRORLEVEL%==1 goto :HSCONSOLE
if %ERRORLEVEL%==2 goto :ASKADD
goto :ASKADD

:GETCUST
pushd "%GBC%"
SET HYPCONNORM=
SET HYPCONDIR=
for /f "delims=" %%a in ('Wfolder.exe "SET HYPCONDIR=" "%GBG%\%GAM%\%CONS%" "Locate the Console's Directory" /noquote') do %%a
set HYPCONDRVL=%HYPCONDIR:*:=%
if "%HYPCONDIR%"=="" GOTO :HS
popd
for %%a in ("%HYPCONDIR%") do set HYPCONDIRNAME=%%~na
goto :CREATING


:DIRLIST
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "*.bat"') do (
SET ROM=%%~a
set ROMNAME=%%~na
CALL :romlink
)
exit /b

:romlink
if "%HYPCONCUST%"=="1" goto :FULLNAME
if "%HYPCONDIR%"=="%SEGM3%" goto :SPECIAL
if "%HYPCONDIR%"=="%SEGM2%" goto :SPECIAL
if "%HYPCONDIR%"=="%NEOGE%" goto :SPECIAL
if "%HYPCONDIR%"=="%NAOMI%" goto :SPECIAL
if "%HYPCONDIR%"=="%ATMS%" goto :SPECIAL
if "%HYPCONDIR%"=="%CPS%" goto :SPECIAL
if "%HYPCONDIR%"=="%CPS2%" goto :SPECIAL
if "%HYPCONDIR%"=="%CPS3%" goto :SPECIAL
if "%HYPCONDIR%"=="%ARCD%" goto :SPECIAL
"%GBC%\xxmklink.exe" "%GBG%\%GAM%\%HYPS%\%HYPCONDIR%\%ROMNAME%.lnk" "%GBG%\%GAM%\%CONS%\%HYPCONDIR%\%ROMDIR%\%ROM%" " " "%GBG%\%GAM%\%CONS%\%HYPCONDIR%\%ROMDIR%" "%ROMNAME%" 1 " "
exit /b

:FULLNAME
"%GBC%\xxmklink.exe" "%GBG%\%GAM%\%HYPS%\%HYPCONDIRNAME%\%ROMNAME%.lnk" "%HYPCONDIR%\%ROMDIR%\%ROM%" " " "%HYPCONDIR%\%ROMDIR%" "%ROMNAME%" 1 " "
exit /b

:SPECIAL
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%GBG%\%GAM%\%CONS%\%HYPCONDIR%\%ROMDIR%\*.zip"') do (
set ROMNAME=%%~na
CALL :XXMKS
)
exit /b

:XXMKS
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%HYPCONDIR%\%ROMDIR%\*.bat"') do (
SET ROMB=%%~a
CALL :LINKING
)
exit /b

:LINKING
"%GBC%\xxmklink.exe" "%GBG%\%GAM%\%HYPS%\%HYPCONDIR%\%ROMNAME%.lnk" "%GBG%\%GAM%\%CONS%\%HYPCONDIR%\%ROMDIR%\%ROMB%" " " "%GBG%\%GAM%\%CONS%\%HYPCONDIR%\%ROMDIR%" "%ROMNAME%" 1 " "
exit /b

:CLEANHOUSE
for /f "tokens=* delims= " %%a in ('dir /b/ad "%GBG%\%GAM%\%CONS%"') do (
pushd "%GBG%\%GAM%\%CONS%\%%~a"
call :CLEAR
popd
)
pushd "%GBG%\%GAM%\%CONS%"
call :CLEAR
popd
goto :ALLCONSOLE
:CLEAR
for /f "delims=" %%d in ('dir /b /ad^| sort /r') do rd "%%d"
exit /b
:ALLCONSOLE
SET CSTHYPS=0
cmd /c start "" "%GBC%\Wbusy.exe" "CreatingDirectories" "Creating HS Rom-Directories"  /marquee
mkdir "%GBG%\%GAM%\%HYPS%"
for /f "tokens=* delims= " %%a in ('dir /b/ad "%GBG%\%GAM%\%CONS%"') do (
set HSCONDIR=%%~a
mkdir "%GBG%\%GAM%\%HYPS%\%%~a"
CALL "%GBC%\romlink.bat"
)
goto :AUTOADD

:ASKADD
if "%CREATEDONLY%"=="1" goto :HSDCOMPLETE
"%GBC%\wbox.exe" "CreateDBs" "Would you like to create the databases for existing Hyperspin mirrored directories?" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :AUTOADD
if %ERRORLEVEL%==2 goto :HSDCOMPLETE
goto :HSDESCAPE

:AUTOADD
"%GBC%\Wbusy.exe" "CreatingDirectories" "Complete." /Stop /timeout:1
if "%CREATEDONLY%"=="1" goto :HSDCOMPLETE
:MANADD
cmd /c start "" "%GBC%\Wbusy.exe" "BuildingDB" "Building Databases"  /marquee
CALL "%GBC%\HLAdd.bat"
"%GBC%\Wbusy.exe" "BuildingDB" "Complete." /Stop /timeout:1
CALL "%GBC%\HLInj.bat"
exit /b

:CRHSLNKS
if "%HSCONDIR%"=="" exit /b
for /f "tokens=* delims= " %%a in ('dir /b/ad-h') do (
set ROM=
set ROMNAME=
set ROMDIR=%%~a

)

:HSDESCAPE
SET HSDESCAPE=1
:HSDCOMPLETE
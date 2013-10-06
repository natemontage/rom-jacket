SET RCALL=
:GENCUST
if "%DLGM%"=="1" goto :CSD
if "%DLGM%"=="0" goto :IND
:FOLDERQUERY
SET DLM= 
"%GBC%\wbox.exe" "FolderTest" "Would you like to consolidate your rom-collections?^^##############^#Consolidate#^#############^Groups roms according to the base-name.^^############^#Individuate#^############^Each rom gets it's own folder.^" "Consolidate;Individuate;Help" /DB=1
if %ERRORLEVEL%==1 goto :CSD
if %ERRORLEVEL%==2 goto :IND
if %ERRORLEVEL%==3 goto :HELP
goto :regen

:regen
SET RCALL=1
goto :generatedlib

:CSD
set DLM=0
goto :FOLDERBEGIN

:IND
set DLM=1
goto :FOLDERBEGIN

:HELP
"%GBC%\docs\select.html"
wbox "opening" "Help is opening" "OK" /TM=3
if %ERRORLEVEL%==1 goto :FOLDERQUERY
goto :FOLDERQUERY

:FOLDERBEGIN
start "" "%GBC%\wbusy.exe" "jacketizing" "Processing folders." /marquee
set CURNTA=conselect.set
if exist "%GBC%\conselect.ini" SET CURNTA=conselect.ini
for /f "tokens=* delims= " %%a in ('type "%GBC%\%CURNTA%"') do (
SET LDR=%%a
CALL :libiterate
)
start "" "%GBC%\wbusy.exe" "jacketizing" "Folders Processed" /Stop /timeout:1
goto :generatedlib

:libiterate
if not exist "%GBG%\%GAM%\%CONS%\%LDR%" goto :libout
pushd "%GBG%\%GAM%\%CONS%\%LDR%"
if "%LDR%"=="%ARCD%" CALL "%GBC%\mameAlias.bat"
if "%LDR%"=="%TAITX%" CALL "%GBC%\TAITXAlias.bat"
if "%LDR%"=="%SGFX%" CALL "%GBC%\necAlias.bat"
if "%LDR%"=="%PCENG%" CALL "%GBC%\necAlias.bat"
if "%LDR%"=="%TG16%" CALL "%GBC%\necAlias.bat"
if "%LDR%"=="%CPS%" CALL "%GBC%\cpsAlias.bat"
if "%LDR%"=="%CPS2%" CALL "%GBC%\cps2Alias.bat"
if "%LDR%"=="%CPS3%" CALL "%GBC%\cps3Alias.bat"
if "%LDR%"=="%NEOGE%" CALL "%GBC%\HNG64Alias.bat"
if "%LDR%"=="%NEOGE%" CALL "%GBC%\neogeoAlias.bat"
if "%LDR%"=="%SEGM2%" CALL "%GBC%\model2Alias.bat"
if "%LDR%"=="%SEGM3%" CALL "%GBC%\model3Alias.bat"
if "%LDR%"=="%NAOMI%" CALL "%GBC%\naomiAlias.bat"
if "%LDR%"=="%ATMS%" CALL "%GBC%\atomisAlias.bat"
if "%LDR%"=="%SEGAMD%" CALL "%GBC%\megaDriveAlias.bat"
if "%LDR%"=="%SEGAG%" CALL "%GBC%\megaDriveAlias.bat"
if "%DLM%"=="1" call :hidemeta
if "%DLM%"=="1" call :MOVEONE
if "%DLM%"=="1" exit /b

:MOVEREMAINING
del /q "%GBC%\ROMS*.ini"
for /f "tokens=* delims= " %%a in ('dir /b /a-d-h') do (
SET SNAME=
SET TOTALCOUNT=
SET RCOUNT=
SET ROMF=%%~na
SET ROMA=%%~a
CALL :DEFCHK
)

:BASE_NAME_PARENTH
for /f "tokens=* delims= " %%a in ('dir /b /a-d-h "*(*"') do (
SET RCOUNT=
SET TOTALCOUNT=
SET SNAME=
call :hidemeta
SET ROMK=%%~na
SET ROMX=%%~nxa
call :GETPARENTH
call :unhidemeta
)
goto :MOVELIST
exit /b

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::PROCEDURES:::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:DEFCHK
for /f "tokens=1 delims=(" %%a in ("%ROMF%") do SET SNAME=%%~nxa
if "%SNAME%" NEQ "%ROMF%" exit /b
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%ROMF%*"') do SET /A TOTALCOUNT+=1
echo."%ROMF%">>"%GBC%\ROMS-%TOTALCOUNT%-.ini" 
exit /b

:MOVEONE
for /f "Tokens=* delims= " %%a in ('dir /b/a-d-h') do (
md "%%~na" >null
move /y "%%~a" "%%~na"
)
exit /b

:MOVETRANSFORMED
exit /b

:MOVEALL
for %%a in ("%ROMF%") do set FOROM=%%~nxa
for /f "tokens=* delims= " %%a in ('dir /b /a-d-h "%ROMF%.*"') do (
move "%%~a" "%FOROM%"
)
exit /b

:UPDATE
if "%CLSTR%"=="~0,1" set CLSTR=
if "%CLSTR%"=="" exit /b
if "%CLCHNG%" NEQ "%CLSTR%" start "" "%GBC%\wbusy.exe" "jacketizing" "Processing the ''%CLSTR%'' cluster of the %CASTNAME% library." /marquee
SET CLCHNG=%CLSTR%
exit /b

:COUNTSHRT
for /f "tokens=* delims= " %%a in ("%SNAME%") do set SNAME=%%~nxa
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%SNAME%*"') do SET /A TOTALCOUNT+=1
exit /b

:GETPARENTH
SET CLSTR=
SET TOTALCOUNT=
for /f "tokens=1 delims=(" %%a in ("%ROMX%") do (
SET SNAME=%%~nxa
CALL :COUNTSHRT
)
set CLSTR=%SNAME:~0,1%
CALL :UPDATE
CALL :WRITEINI
exit /b

:GETEXTENSION
echo."%SNAME%" | findstr /C:"." 1>nul
if errorlevel 0 call :TRANSFORMNAME
exit /b

:WRITEINI
for %%a in ("%SNAME%") do echo."%%~nxa">>"%GBC%\ROMS-%TOTALCOUNT%-.ini"
mkdir "%SNAME%"
exit /b

:MOVELIST
start "" "%GBC%\wbusy.exe" "jacketizing" "Consolidating the %CASTNAME% library." /marquee
SET /A NEWNUM=0
for /f "tokens=* delims= " %%a in ('TYPE "%GBC%\hundo.set"') do (
SET NEWNUM=%%~a
call :chkfor
)
exit /b

:chkfor
if exist "%GBC%\ROMS-%NEWNUM%-.ini" CALL :COPYINI
exit /b

:COPYINI
"%GBC%\fart.exe" "%GBC%\ROMS-%NEWNUM%-.ini" \" --remove
for /f "tokens=* delims= " %%a in ('TYPE "%GBC%\ROMS-%NEWNUM%-.ini"') do (
mkdir "%%~a"
SET TOREN=%%~a
call :RENAME
)
exit /b

:RENAME
for /f "tokens=* delims= " %%a in ("%TOREN%") do SET SNAME=%%~nxa
move /y "%SNAME%*.*" "%SNAME%"
exit /b

:NUMEND
exit /b

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:MOVEIN_B
md "%ROMN%" >nul
for /f "tokens=* delims= " %%a in ('dir /b /a-d-h "%ROMN%*[*"') do (
move "%%~a" "%ROMN%"
)
exit /b

:MOVEIN_P
for /f "tokens=1 delims=(" %%a in ('dir /b/a-d-h "%SNAME%*"') do (
set SNAME=%%~nxa
mkdir "%%~nxa"
)

::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:CONCATNAME
for /f "tokens=1 delims=(" %%a in ('dir /b/a-d-h "%ROMF%") do set SNAME=%%~nxa
exit /b

:TRANSFORMNAME
for %%a in ("%SNAME%") do set SNAME=%%~nxa
exit /b

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:::::::::::::::::::::::METASKIP:::::::::::::::::::::::::::::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:hidemeta
for /f "tokens=* delims= " %%a in ('dir /b /a-d') do (
set ROMNCFGS=%%~a
set ROMXCFG=%%~xa
call :SETMETA
)
exit /b

:SETMETA
for /f "tokens=* delims= " %%a in (".settings" ".config" ".conf" ".cfg" ".ini" ".jpg" ".png" ".xml" ".nfo" ".tbn") do if "%ROMXFG%"=="%%~a" set attrib +h "%ROMNCFGS%"
for /f "tokens=* delims= " %%a in (".pdf"') do if "%ROMXFG%"=="%%~a" move /y "%%~a" ".Man"
for /f "tokens=* delims= " %%a in (".mp4"') do if "%ROMXFG%"=="%%~a" "backdrops"
for /f "tokens=* delims= " %%a in (".exe"') do if "%ROMXFG%"=="%%~a" SET EXEFLAG=1
exit /b

:unhidemeta
for /f "tokens=* delims= " %%a in (".settings" ".config" ".conf" ".cfg" ".ini" ".jpg" ".png" ".xml" ".nfo" ".tbn") do if "%ROMXFG%"=="%%~a" set attrib -h "%ROMNCFGS%"
for /f "tokens=* delims= " %%a in (".pdf"') do if "%ROMXFG%"=="%%~a" move /y "%%~a" ".Man"
for /f "tokens=* delims= " %%a in (".mp4"') do if "%ROMXFG%"=="%%~a" "backdrops"
for /f "tokens=* delims= " %%a in (".exe"') do if "%ROMXFG%"=="%%~a" SET EXEFLAG=1
exit /b

:libout
popd

:generatedlib
:FOLDERQUERY
SET DLM= 
"%GBC%\wbox.exe" "FolderTest" "Would you like to consolidate your rom-collections?^^##############^#Consolidate#^#############^Groups roms according to the base-name.^^############^#Individuate#^############^Each rom gets it's own folder.^" "Consolidate;Individuate;HELP" /DB=1
if %ERRORLEVEL%==1 goto :CSD
if %ERRORLEVEL%==2 goto :IND
if %ERRORLEVEL%==3 goto :HELP
goto :regen

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
pushd "%GBG%\%ROMJ%"
SET RMCHK=0
SET WSTMP=
set FZNCHK=
for /d %%G in (*) do (
set WSTMP=%%~G
CALL :FULLCHK
SET WSTMP=
set FZNCHK=
)
SET RMCHK=1
SET WSTMP=
set FZNCHK=
for /f "tokens=* delims= " %%a in ('dir /b/a-d') do (
set FZEXTCHK=%%~xa
set FZNCHK=%%~na
CALL :ROMJCHK
set FZNCHK=
)
goto :samef

:FULLCHK
if "%GBG%\%ROMJ%\%WSTMP%" EQU "%GBG%\%ROMJ%\" (goto :samef)

:setchkf
for %%i in (*) do (
set FZEXTCHK=%%~xi
set FZNCHK=%%~ni
SET CHKFILE=
call :CHKSUMf
)
goto :samef

:ROMJCHK
%GAMDIR%
if "%RMCHK%"=="1" cd "%GBG%\%ROMJ%"
SET CHKFILE=
:CHKSUMf
if /i "%FZEXTCHK%" EQU ".jpg" exit /b
if /i "%FZEXTCHK%" EQU ".bat" exit /b
if /i "%FZEXTCHK%" EQU ".png" exit /b
if /i "%FZEXTCHK%" EQU ".xml" exit /b
if /i "%FZEXTCHK%" EQU ".tbn" exit /b
if /i "%FZEXTCHK%" EQU ".nfo" exit /b
if /i "%FZEXTCHK%" EQU ".ini" exit /b
if /i "%FZEXTCHK%" EQU ".cfg" exit /b
if /i "%FZEXTCHK%" EQU ".conf" exit /b
if /i "%FZEXTCHK%" EQU ".config" exit /b
if /i "%FZEXTCHK%" EQU ".settings" exit /b
if /i "%FZEXTCHK%" EQU ".xpadderprofile" exit /b
if /i "%FZEXTCHK%" EQU ".nrg" set CHKFILE=%FZNCHK%
if /i "%FZEXTCHK%" EQU ".img" set CHKFILE=%FZNCHK%
if /i "%FZEXTCHK%" EQU ".iso" SET CHKFILE=%FZNCHK%
if /i "%FZEXTCHK%" EQU ".cdi" SET CHKFILE=%FZNCHK%
if /i "%FZEXTCHK%" EQU ".cdz" SET CHKFILE=%FZNCHK%
if /i "%FZEXTCHK%" EQU ".ccd" SET CHKFILE=%FZNCHK%
if /i "%FZEXTCHK%" EQU ".bin" SET CHKFILE=%FZNCHK%
if /i "%FZEXTCHK%" EQU ".mdf" SET CHKFILE=%FZNCHK%
if /i "%FZEXTCHK%" EQU ".mds" SET CHKFILE=%FZNCHK%
if /i "%FZEXTCHK%" EQU ".cue" SET CHKFILE=%FZNCHK%
if /i "%FZEXTCHK%" EQU ".rom" SET CHKFILE=%FZNCHK%
if "%CHKFILE%" EQU "" goto :samef
if "%RMCHK%"=="1" goto :renameR

:renamef
cd ..
move /Y "%GBG%\%ROMJ%\%WSTMP%" "%GBG%\%ROMJ%\%FZNCHK%"
goto :samef

:renameR
if "%DLM%"=="1" goto :INDIVID
for /f "tokens=1 delims=%DLM%" %%a in ('dir /b /a-d-h "*%FZEXTCHK%"') do (
SET NOPAR=%%~na
SET PAREN=%%~nxa
echo."%%~a" | findstr /C:"." 1>nul
CALL :NXT
)
goto :REST
:NXT
if errorlevel 1 (
  SET ROMF=%NOPAR%
  md "%NOPAR%" >nul
) ELSE (
  SET ROMF=%PAREN%
  md "%PAREN%" >nul
  )
CALL :MOVEIN
call :unhidemeta
exit /b
:REST
goto :samef
:MOVEIN
for /f "tokens=* delims= " %%a in ('dir /b /a-d-h "%ROMF%*"') do (
move "%%~a" "%ROMF%"	
) 
exit /b

:INDIVID
for /f "tokens=* delims= " %%a in ('dir /b /a-d-h "*%FZEXTCHK%"') do (
md "%%~na" >nul
move "%%~a" "%%~na"
)

:MOVEINB
for /f "tokens=* delims= " %%a in ('dir /b /a-d-h "%ROMF%"') do (
move "%%~a" "%ROMF%"	
) 
exit /b
:samef
popd
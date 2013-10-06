SET HSLNK=
SET LOCL=
if not exist "%PRGF%\%OBLYT%" goto :GETOBLYT
SET OBLY=%PRGF%\%OBLYT%
goto :OBLYSTART

:GETOBLYT
"%GBC%\wbox.exe" "GetInstall" "Would you like to download/install OblyTile^or^Locate your installation of Oblytile?" "Install;Locate"
if %ERRORLEVEL%==1 goto :DOWNLOADOBLY
if %ERRORLEVEL%==2 goto :LOCATEOBLY
goto :QUITOBLY

:DOWNLOADOBLY
call "%GBC%\getOblyTile.bat"
if "%OBLYINST%"=="1" goto :OBLYSTART
goto :QUITOBLY

:LOCATEOBLY
"%GBC%\Wfolder.exe" "SET OBLY=" "%PRGF%" "Locate OBLYTILE Directory" /noquote > "%GBC%\oblytile.cmd"
call "%GBC%\oblytile.cmd"
if "%OBLY%"=="" goto :QUITOBLY
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%OBLY%\%OBLYT%*.exe"') do set OBLYXE=%%~a
if not exist "%OBLY%\%OBLYXE%" goto :no_Obly
goto :OBLLYSTART

:no_Obly
"%GBC%\wbox.exe" "NoOblyTile" "OblyTile could not be found." "Locate;Install"
if %ERRORLEVEL%==1 goto :LOCATEOBLY
if %ERRORLEVEL%==2 goto :DOWNLOADOBLY
goto :QUITOBLY

:OBLYSTART
"%GBC%\wbox.exe" "Artwork" "Would you like to use artwork from^Local Folders^or^Hyperspin^" "Local;Hyperspin" /DB=1
if %ERRORLEVEL%==1 goto :LOCAL
if %ERRORLEVEL%==2 goto :HYPER
goto :QUITOBLY

:HYPER
if "%HPN%"=="" goto :NOHS
if "%HPN%"=="[HPN]" goto :NOHS
set HSLNK=1
for %%a in ("%GBG%\%GAM%\%HYPS%") do SET DIRTMP=%%~a
goto :START

:NOHS
"%GBC%\wbox.exe" "noHs" "Hyperspin was not found.^Would you like to locate it or install it?" "Locate;Menu" /DB=1
if %ERRORLEVEL%==1 goto :GETHYPERSPIN
if %ERRORLEVEL%==2 goto :OBLYSTART
goto :OBLYSTART

:GETHYPERSPIN
call "%GBC%\installHS.bat"
if "%HPN%"=="" goto :NOHS
if "%HPN%"=="[HPN]" goto :NOHS
goto :OBLYSTART

:LOCAL
set LOCL=1
for %%a in ("%GBG%\%GAM%\%CONS%") do SET DIRTMP=%%~a

:START
echo ---------->"%GBC%\hsmir.ini"
echo ALL CONSOLES>>"%GBC%\hsmir.ini"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%HYPS%"') do echo.%%~a>>"%GBC%\hsmir.ini"

:CHOOSE
"%GBC%\Wselect.exe" "%GBC%\hsmir.ini" "Select Mirror" "set DIRSEL=$item" > "%GBC%\dirsel.cmd"
if %errorlevel%==0 exit /b
CALL "%GBC%\dirsel.cmd"
if "%DIRSEL%"=="----------" goto :CHOOSE
if "%DIRSEL%"=="ALL CONSOLES" goto :ALLCONSOLES
if "%HSLNK%"=="1" goto :HSETUP

:BEGIN
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%GBG%\%GAM%\%HYPS%\%DIRSEL%\*.lnk"') do (
SET ROMNAME=%%~na
call :COPYIMG
)
exit /b

:COPYIMG
SET ROMNICK=%ROMNAME:~0,20%
SET ROMNICK=%ROMNICK:,=-%
SET ROMNICK=%ROMNICK:'=-%
SET ROMNICK=%ROMNICK:^=-%
SET ROMNICK=%ROMNICK:&=-%
SET ROMNICK=%ROMNICK:$=-%
SET ROMNICK=%ROMNICK:!=-%
SET ROMNICK=%ROMNICK:`=-%
SET ROMNICK=%ROMNICK:#=-%
set NEWIMG=
set EXTIMG=
if "%HSLNK%"=="1" call :IMGSET
if "%LOCL%"=="1" call :IMGSET2
if "%HSLNK%"=="1" "%OBLY%\%OBLYXE%" "%ROMNICK%" "%GBG%\%GAM%\%HYPS%\%DIRSEL%\%ROMNAME%.lnk" "" "%NEWIMG%" "" #2D8AEF #FFFFFF show admin yes no no
if "%LOCL%"=="1" "%OBLY%\%OBLYXE%" "%ROMNICK%" "%GBG%\%GAM%\%HYPS%\%DIRSEL%\%ROMNAME%.lnk" "" "%EXTIMG%" "" #2D8AEF #FFFFFF show admin yes no no
exit /b

:IMGSET
if exist "%HPN%\Media\%DIRSEL%\Images\%ARTNUM%\%ROMNAME%.png" set goto :SETIMG
for %%a in ("%GBG%\%GAM%\%CONS%\%DIRSEL%\Folder.png") do SET NEWIMG=%%~a
exit /b
:SETIMG
for %%a in ("%HPN%\Media\%DIRSEL%\Images\%ARTNUM%\%ROMNAME%.png") do set NEWIMG=%%~a
exit /b
:IMGSET2
if exist "%GBG%\%GAM%\%CONS%\%DIRSEL%\%ROMNAME%\Folder.jpg" call :SETIMG2
if exist "%GBG%\%GAM%\%CONS%\%DIRSEL%\%ROMNAME%\Folder.png" call :SETIMG2
for %%a in ("%GBG%\%GAM%\%CONS%\%DIRSEL%\Folder.png") do SET EXTIMG=%%~a
exit /b
:SETIMG2
for %%a in ("%GBG%\%GAM%\%CONS%\%DIRSEL%\%ROMNAME%\Folder.jpg") do set EXTIMG=%%~a
for %%a in ("%GBG%\%GAM%\%CONS%\%DIRSEL%\%ROMNAME%\Folder.png") do set EXTIMG=%%~a
exit /b
:HSETUP
start /w "" "%GBC%\wbox.exe" "Hyperspin" "Select the BoxArt Directory for %DIRSEL%" "OK" /TM=3
if %ERRORLEVEL%==1 goto :SELECT
:SELECT
del /q "%GBC%\artset.ini"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%HPN%\Media\%DIRSEL%\Images"') do echo.%%~a>>"%GBC%\artset.ini"
"%GBC%\Wselect.exe" "%GBC%\artset.ini" "Select BoxArt Directory" "set ARTNUM=$item" > "%GBC%\artSel.cmd"
if %errorlevel%==0 goto :HSETUP
CALL "%GBC%\artSel.cmd"
if "%ARTNUM%"=="" goto :SELECT
goto :BEGIN	

:ALLCONSOLES
if "%LOCL%"=="1" goto :ALLSTART
"%GBC%\Wselect.exe" "%GBC%\art.set" "Select BoxArt Directory" "set ARTNUM=$item" > "%GBC%\artSel.cmd"
if %errorlevel%==0 exit /b

:ALLSTART
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%DIRTMP%"') do (
SET DIRSEL=%%~a
CALL :BEGIN
)
exit /b

:QUITOBLY
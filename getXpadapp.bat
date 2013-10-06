SET xpdappancel=
if exist "%XPP%\%XPADR%.exe" goto :xppconfig
if exist "%GBE%\%EMUZ%\%XPADR%\%XPADR%.exe" goto :xppEmuDir
if exist "%PRGX%\%XPADR%\%XPADR%.exe" goto :xppDefDir

:xppinstall
"%GBC%\wbox.exe" "xpadder" "^^Would you like to install/configure Xpadder?^" "Install;MainMenu" /BW=150
if %ERRORLEVEL%==1 goto :install_XPADR
if %ERRORLEVEL%==1 goto :xpdappancel

:xpdappancel
SET xpdappancel=1
goto :xppconfig

:inst_XPADR
set xpdappancel=
if exist "%GBE%\%EMUZ%\%XPADR%\%XPADR%.exe" goto :xppEmuDir
if exist "%PRGX%\%XPADR%\%XPADR%.exe" goto :xppDefDir
if "%XPP%"=="[XPP]" goto :install_XPADR
if "%XPP%"=="" goto :locate_xpdapp
if not exist "%XPP%\xpadder.exe" goto :locate_xpdapp
goto :xppconfig

:no_xpadder
start "" "%GBC%\wbusy.exe" "installxpadder" "STOP" /Stop /timeout:1
SET XPP=[XPP]
set XPADDER=%XPL%\%XPADR%.exe
call "%GBC%\setlocset.bat"
:not_installed
"%GBC%\wbox.exe" "xppinfo" "^^xpadder was not found.^^" "Download;Okay" /DB=2 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :getxpadder
if %ERRORLEVEL%==2 goto :setnoXpd
goto :quitout

:setnoXpd
set XPP=[XPP]
goto :xpdappancel

:getxpadder
if "%XPP%"=="[XPP]" goto :locate_xpdapp
for %%A in ("%XPADDER:~0,12%") do set XPP=%%~A

:xppEmuDir
for %%A in ("%GBE%\%EMUZ%\%XPADR%") do set XPP=%%~A
for %%A in ("%GBE%\%EMUZ%\%XPADR%\%XPADR%.exe") do set XPADDER=%%~A
call "%GBC%\setlocset.bat"
goto :xppconfig

:xppDefDir
for %%A in ("%PRGX%\%XPADR%") do set XPP=%%~A
for %%A in ("%PRGX%\%XPADR%\%XPADR%.exe") do set XPADDER=%%~A
call "%GBC%\setlocset.bat"
goto :xppconfig

:checkdefaultxpadder
if exist "%PRGX%\Xpadder\Xpadder.exe" goto :xppDefDir
goto :locate_xpdapp


:install_XPADR
set xpdappancel=
start "" "%GBC%\wbusy.exe" "installxpadder" "Downloading xpadder" /marquee
SET urlNthL=102
SET /A urlNthL -= 1
CALL :XPDPFG2_LGrab
GOTO :XPDPFGAUTO

:XPDPFG2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET XPDPFGURL=%%A
GOTO :EOF
)

:XPDPFGAUTO
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%XPADR%" "%MIR1%/%XPDPFGURL%" "%MIR2%/%XPDPFGURL%" "%MIR3%/%XPDPFGURL%" "%MIR4%/%XPDPFGURL%" "%MIR5%/%XPDPFGURL%"
for %%A in ("%GBC%\net\%XPADR%\%XPADR%.7z") do set XPDPFGXE=%%~A
if "%XPDPFGXE%"=="" goto :no_xpadder
for /f "delims=" %%a in ('dir /b/a-d-h "%XPDPFGXE%"') do set XPDPFGFILE=%%~nxa
start "" "%GBC%\wbusy.exe" "installxpadder" "xpadder Downloaded" /Stop /timeout:1

:continue_xpadder
for /f "delims=" %%a in ('Wfolder.exe "SET _xpdapptmp=" "%GBE%\%EMUZ%" "Install xpadder to:?  eg:''%GBE%\%EMUZ%''" /noquote') do %%a
set xpdappdrv-ltr=%_xpdapptmp:*:=%
for %%A in ("%_xpdapptmp:~0,2%\") do set XPPDIR=%%~A
for %%A in ("is now %XPPDIR%") do set XPPDIR=%%~A
if "%_xpdapptmp%"=="" goto :no_xpadder
goto :xpdappdrvltr

:xpdappdrvltr
start "" "%GBC%\wbusy.exe" "installxpadder" "Installing xpadder" /marquee
for %%A in ("%_xpdapptmp%") do set XPL=%%~A
if "%xpdappdrv-ltr%"=="\" do set XPL=%_xpdapptmp:~0,2%
"%SEVENZIP%" x -y "%GBC%\net\%XPADR%\%XPDPFGFILE%" -o"%XPL%"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%XPL%\%XPADR%*"') do set XPADRTMPDIR=%%~a
move /Y "%XPL%\%XPADRTMPDIR%" "%XPL%\%XPADR%"
for %%A in ("%XPL%\%XPADR%\%XPADR%.exe") do set XPADDER=%%~A
for %%A in ("%XPL%\%XPADR%") do set XPP=%%~A
for %%A in ("%XPL%\%XPADR%\%XPADR%.exe") do set XPADDER=%%~A
call "%GBC%\setlocset.bat"
if 
if "%WINVER%" NEQ "XP" reg.exe Add "HKLM\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%XPADDER%" /d "WINXPSP3" /f
if "%WINVER%" NEQ "XP" reg.exe Add "HKCU\Software\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Layers" /v "%XPADDER%" /d "WINXPSP3" /f

:xpadder_confirm
start "" "%GBC%\wbusy.exe" "installxpadder" "xpadder is now installed" /Stop /timeout:1
exit /b

:locate_xpdapp
"%GBC%\wbox.exe" "locatexpdapp" "^^Locate the xpadder application or click cancel to download and install it.^^" "Okay" /BW=150 /TM=3
if %ERRORLEVEL%==1 (goto :selectxpdapp)
goto :selectxpdapp

:selectxpdapp
for /f "delims=" %%a in ('Wfile.exe "SET XPP=" "%PRGX%\%XPADR%\Xp*.exe" "Where is the xpadder application?" /noquote') do %%a
if "%XPP%"=="[XPP]" goto :inst_XPADR
if "%XPADDER%"=="" goto :inst_XPADR
exit /b

:xppconfig
"%GBC%\wbox.exe" "locatedxpdapp" "^^Xpadder has been detected. Would you like to download and install it to another location?^^" "Install;Quit"
if %ERRORLEVEL%==1 (goto :reinstall)
if %ERRORLEVEL%==2 (goto :EOF)
goto :EOF

:reinstall 
set XPP=[XPP]
goto :install_XPADR

:exitxpadder
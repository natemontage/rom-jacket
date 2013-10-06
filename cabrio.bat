SET cbcancel=
if exist "%CBR%\%CABR%.exe" goto :cabconfig
if exist "%GBE%\%EMUZ%\%CABR%\%CABR%.exe" goto :cabEmuDir
if exist "%PRGX%\%CABR%\%CABR%.exe" goto :cabDefDir

:cabinstall
"%GBC%\wbox.exe" "cabrio" "^^Would you like to install/configure Cabrio-FE?^" "Install;MainMenu" /BW=150
if %ERRORLEVEL%==1 goto :install_Cabr
if %ERRORLEVEL%==1 goto :cbcancel

:cbcancel
SET cbcancel=1
goto :cabconfig


:inst_Cabr
set cbcancel=
if exist "%GBE%\%EMUZ%\%CABR%\%CABR%.exe" goto :cabEmuDir
if exist "%PRGX%\%CABR%\%CABR%.exe" goto :cabDefDir
if "%CBR%"=="[CBR]" goto :install_Cabr
if "%CBR%"=="" goto :locate_cbr
if not exist "%CBR%\cabrio.exe" goto :locate_cbr
goto :cabconfig

:no_Cabrio
start "" "%GBC%\wbusy.exe" "installCabrio" "STOP" /Stop /timeout:1
SET CBR=[CBR]
set CABRIOFE=%CBE%\%CABR%.exe
call "%GBC%\setlocset.bat"
:not_installed
"%GBC%\wbox.exe" "cabinfo" "^^Cabrio was not found.^^" "Download;Okay" /DB=2 /BW=150 /TM=10
if %ERRORLEVEL%==1 goto :getCabrio
if %ERRORLEVEL%==2 goto :setnoCab
goto :quitout

:setnoCab
set CBR=[CBR]
goto :cbcancel

:getCabrio
if "%CBR%"=="[CBR]" goto :locate_cbr
for %%A in ("%CABRIOFE:~0,11%") do set CBR=%%~A

:cabEmuDir
for %%A in ("%GBE%\%EMUZ%\%CABR%") do set CBR=%%~A
for %%A in ("%GBE%\%EMUZ%\%CABR%\%CABR%.exe") do set CABRIOFE=%%~A
call "%GBC%\setlocset.bat"
goto :cabconfig

:cabDefDir
for %%A in ("%PRGX%\%CABR%") do set CBR=%%~A
for %%A in ("%PRGX%\%CABR%\%CABR%.exe") do set CABRIOFE=%%~A
call "%GBC%\setlocset.bat"
goto :cabconfig

:checkdefaultCabrio
if exist "%PRGX%\Cabrio\Cabrio.exe" goto :cabDefDir
goto :locate_cbr


:install_Cabr
set cbcancel=
start "" "%GBC%\wbusy.exe" "installCabrio" "Downloading Cabrio-FE" /marquee
SET urlNthL=80
SET /A urlNthL -= 1
CALL :CABCFG2_LGrab
GOTO :CABCFGAUTO

:CABCFG2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET CABCFGURL=%%A
GOTO :EOF
)

:CABCFGAUTO
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%CABR%" "%MIR1%/%CABCFGURL%" "%MIR2%/%CABCFGURL%" "%MIR3%/%CABCFGURL%" "%MIR4%/%CABCFGURL%" "%MIR5%/%CABCFGURL%"
for %%A in ("%GBC%\net\%CABR%\*.zip") do set CABCFGXE=%%~A
if "%CABCFGXE%"=="" goto :no_Cabrio
for /f "delims=" %%a in ('dir /b/a-d-h "%CABCFGXE%"') do set CABCFGFILE=%%~nxa
start "" "%GBC%\wbusy.exe" "installCabrio" "Cabrio-FE Downloaded" /Stop /timeout:1

:continue_Cabrio
for /f "delims=" %%a in ('Wfolder.exe "SET _cbrtmp=" "%PRGX%" "Install Cabrio to:?  eg:''%PRGX%''" /noquote') do %%a
set cbrdrv-ltr=%_cbrtmp:*:=%
for %%A in ("%_cbrtmp:~0,2%\") do set CABDIR=%%~A
efor %%A in ("is now %CABDIR%") do set CABDIR=%%~A
if "%_cbrtmp%"=="" goto :no_Cabrio
goto :cbrdrvltr

:cbrdrvltr
start "" "%GBC%\wbusy.exe" "installCabrio" "Installing Cabrio-FE" /marquee
for %%A in ("%_cbrtmp%") do set CBE=%%~A
if "%cbrdrv-ltr%"=="\" do set CBE=%_cbrtmp:~0,2%
"%SEVENZIP%" x -y "%GBC%\net\%CABR%\%CABCFGFILE%" -o"%CBE%"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%CBE%\%CABR%*"') do set CABRTMPDIR=%%~a
move /Y "%CBE%\%CABRTMPDIR%" "%CBE%\%CABR%"
for %%A in ("%CBE%\%CABR%\%CABR%.exe") do set CABRIOFE=%%~A
for %%A in ("%CBE%\%CABR%") do set CBR=%%~A
call "%GBC%\setlocset.bat"

:cabrio_confirm
start "" "%GBC%\wbusy.exe" "installCabrio" "Cabrio-FE is now installed" /Stop /timeout:1
goto :cabconfig

:locate_cbr
"%GBC%\wbox.exe" "locatecbr" "^^Locate the cabrio application or click cancel to download and install it.^^" "Okay" /BW=150 /TM=3
if %ERRORLEVEL%==1 (goto :selectcbr)
goto :selectcbr

:selectcbr
for /f "delims=" %%a in ('Wfile.exe "SET CBR=" "%PRGX%\%CABR%\*.exe" "Where is the Cabrio application?" /noquote') do %%a
if "%CBR%"=="[CBR]" goto :inst_Cabr
if "%CABRIOFE%"=="" goto :inst_Cabr

:cabconfig
CALL "%GBC%\cbAdd.bat"
:exitcabrio
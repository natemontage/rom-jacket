:BEGINCABRIO
del /q "%GBC%\cabtmp.ini"
del /q "%GBC%\net\%CABR%\*.tmp"
if "%cbcancel%"=="1" goto :cbout
"%GBC%\wbox.exe" "ConfigureCabrio" "Would you like to configure Cabrio-FE using^^-----SOME-----^of your Rom-Jacket console-libraries^or^^-----ALL-----^of your Rom-Jacket console-libraries?^" "Some;All;Menu" /DB=1
if %ERRORLEVEL%==1 goto :sellibs
if %ERRORLEVEL%==2 goto :ALLLIBS
if %ERRORLEVEL%==3 goto :cbout
goto :cbout

:sellibs
if exist "%HPN%\Media" call "%GBC%\artnum.bat"
type "%GBC%\net\%CABR%\config.start.set" >"%GBC%\net\%CABR%\config.xml"

:ADDLIB
del /q "%GBC%\consoles.ini"
echo --SELECT-->"%GBC%\consoles.ini"
echo ------->>"%GBC%\consoles.ini"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo.%%~a>>"%GBC%\consoles.ini"
"%GBC%\Wselect.exe" "%GBC%\consoles.ini" "Select A Console" "set CONSCAB=$item" > "%GBC%\conSel.cmd"
if %errorlevel%==0 GOTO :cbout
CALL "%GBC%\conSel.cmd"
if "%CONSCAB%" NEQ "--SELECT--" CALL :CONSCABD
if "%CONSCAB%"=="--SELECT--" CALL :SELECTCONSOLE
if "%CONSCAB%"=="-------" goto :ADDLIB
if "%CONSCAB%"=="" goto :BEGINCABRIO

for /f "tokens=* delims= " %%a in ('type "%GBC%\cabtmp.ini"') do (
set NEWNAME=%%~a
call :matchb
)
echo.%CONSCAB%>>"%GBC%\cabtmp.ini"
goto :ADDNOW

:matchb
if "%NEWNAME%"=="%CONSCAB%" GOTO :ADDED
echo "%CONSCAB%">>"%GBC%\cabtmp.ini"
exit /b

:ADDED
"%GBC%\wbox.exe" "added" "%CONSCAB% has already been added to your cabrio config" "Okay" /TM=1
if %ERRORLEVEL%==1 goto :ADDLIB
goto :ADDLIB
:ADDNOW
copy /Y "%GBC%\net\%CABR%\config.emu.set" "%GBC%\net\%CABR%\%CONSCAB%.cfg"

CALL "%GBC%\cabrConAdd.bat"

"%GBC%\wbox.exe" "AddMore" "Would you like to add another console to your Cabrio-FE configuration?^^" "Add;Complete" /DB=1
if %ERRORLEVEL%==1 goto :ADDLIB
if %ERRORLEVEL%==2 goto :FINLIB
goto :BEGINCABRIO

:FINLIB
start "" "%GBC%\wbusy.exe" "configCabrio" "Configuring Cabrio-FE" /marquee
type "%GBC%\net\%CABR%\config.emu-end.set">>"%GBC%\net\%CABR%\config.xml"
for /f "tokens=* delims= " %%a in ('dir /b /a-d-h "%GBC%\net\%CABR%\*.cfg"') do (
set CONSCAB=%%~na
CALL :CBGA
)
goto :CABCOMPILE

:CONSCABD
for /f "tokens=* delims= " %%a in ("%GBG%\%GAM%\%CONS%") do set CONSCABPTH=%%~a
exit /b

:CBGA
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%CONSCABPTH%\%CONSCAB%"') do (
SET CABRPTH=%CONSCABPTH%\%CONSCAB%
SET CABROM=%%~a
CALL :CABBAT
copy "%GBC%\net\%CABR%\config.game.set" "%GBC%\net\%CABR%\%%~a.tmp"
CALL "%GBC%\cabrGamAdd.bat"
)
exit /b

:CABBAT
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CONSCABPTH%\%CONSCAB%\%CABROM%\*.bat"') do set CABBAT=%%~a
exit

:ALLLIBS
CALL "%GBC%\cbAddAll.bat"
goto :CABCOMPILE

:SELECTCONSOLE
for /f "delims=" %%a in ('Wfolder.exe "SET CONSCABD=" "%CONSCABPTH%" "Select the console folder" /noquote') do %%a
for %%A in ("%CONSCABD%") do set CONSCAB=%%~nA
for %%A in ("%CONSCABD%") do set CONSCABTMP=%%~dpA
for %%A in ("%CONSCABTMP%") do set CONSCABPTH=%CONSCABTMP:~0,-1%
exit /b

:CABCOMPILE
type "%GBC%\net\%CABR%\config.end.set">>"%GBC%\net\%CABR%\config.xml"
start "" "%GBC%\wbusy.exe" "configCabrio" "Cabrio-FE Configured" /Stop /timeout:1
call "%GBC%\copyCabrioXml.bat"

:cbout
exit /b
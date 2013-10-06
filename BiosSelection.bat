%GBD%
cd "%GBC%\net\BIOS"
del /q "%GBC%\inzip*.ini"
if "%BIOSI%"=="" goto :bios_q
start "" "%GBC%\Wbusy.exe" "InstallingBios" "Installing Bios Files"  /marquee
SET AUTOCONFIG=1
cd "%GBC%\net\BIOS"
goto :biosProc

:bios_q
CALL "%GBC%\getBios.bat"
if "%BIOARC%"=="1" goto :biosFile
start "" "%GBC%\Wbusy.exe" "InstallingBios" "Installing Bios Files"  /marquee
goto :biosProc

:biosFile
set BIOSF=
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET BIOSF=" "%GBC%\net\BIOS\*.*" "Where is the ''bios file''?" /noquote') do %%a
if /I "%BIOSF%"=="" goto :quitbios
start "" "%GBC%\wbusy.exe" "CBF" "Copying bios files to the RJ-Bios-folder." /marquee
copy /Y "%BIOSF%" "%GBC%\net\BIOS"
start "" "%GBC%\wbusy.exe" "CBF" "Copy Complete" /Stop /timeout:1
for %%a in ("%BIOSF%") do (
set BIOSET=
set BIOSN=%%~nxa
set BIOSXT=%%~xa
)

start "" "%GBC%\Wbusy.exe" "InstallingBios" "Installing Bios Files"  /marquee
CALL :testarchivext
goto :anotherbios

:biosfin
SET BIOSI=
for /f "delims=" %%a in ('dir /b/a-d-h/s "%GBC%\net\BIOS"') do (
SET FROMDND=
SET BIOSN=%%~nxa
SET BIOSXT=%%~xa
call :DNDTEST
)

:OUTBIOS
start "" "%GBC%\Wbusy.exe" "InstallingBios" "Bios Files Installed" /Stop /timeout:1
goto :exitBios

:DNDTEST
for /f "tokens=* delims= " %%a in ('type "%GBC%\bioslist.ini"') do if "%%~a"=="%BIOSN%" SET FROMDND=1
if "%FROMDND%"=="1" exit /b
call :testarchivext
exit /b

:biosProc
call "%GBC%\biosProc.bat"
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBC%\net\BIOS"') do (
SET BIOSET=
SET BIOSN=%%~nxa
SET BIOSXT=%%~xa
call :testarchivext
call :inbios
)
if not exist "%GBE%\%EMUZ%\%MESS%" goto :FINBIOS
REM call "%GBC%\MessBios.bat"

:FINBIOS
if "%BIOSI%"=="1" goto :biosfin
start "" "%GBC%\Wbusy.exe" "InstallingBios" "Bios Files Installed" /Stop /timeout:1
goto :anotherbios

:biosProcF
call "%GBC%\biosProc.bat"
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBC%\net\BIOS"') do (
SET BIOSET=
SET BIOSN=%%~nxa
SET BIOSXT=%%~xa
call :testarchivext
)
start "" "%GBC%\Wbusy.exe" "InstallingBios" "Bios Files Installed" /Stop /timeout:1
goto :anotherbios

:inbios
if "%BIOSN%"=="" exit /b
if exist "%GBC%\inzipz.ini" call :ZIPIN
if exist "%GBC%\inzip7.ini" call :7ZIN
if exist "%GBC%\inzipt.ini" call :TARIN
if exist "%GBC%\inzipr.ini" call :RARIN
exit /b
:ZIPIN
for /f "tokens=1 delims=: %%a in ('type "%GBC%\inzipz.ini"') do "%SEVENZIP%" x -y "%%~nxa" -o"%GBC%\net\BIOS"
call :delempty
exit /b
:TARIN
for /f "tokens=1 delims=: %%a in ('type "%GBC%\inzipt.ini"') do "%SEVENZIP%" x -y "%%~nxa" -o"%GBC%\net\BIOS"
call :delempty
exit /b
:7ZIN
for /f "tokens=1 delims=: %%a in ('type "%GBC%\inzip7.ini"') do "%SEVENZIP%" x -y "%%~nxa" -o"%GBC%\net\BIOS"
call :delempty
exit /b
:RARIN
for /f "tokens=1 delims=: %%a in ('type "%GBC%\inzipr.ini"') do "%UNRAR%" e -y -o+"%%~nxa" "%GBC%\net\BIOS"
call :delempty
exit /b

:delempty
for /f "delims=" %%d in ('dir /s /b /ad-h "%GBC%\net\%BIOS%"^| sort /r') do rd "%%d"
exit /b

:testarchivext
if /I "%BIOSXT%"==".zip" call :BIOSzCONT
if /I "%BIOSXT%"==".tar" call :BIOStCONT
if /I "%BIOSXT%"==".7z" call :BIOS7CONT
if /I "%BIOSXT%"==".rar" call BIOSrCONT
:MESS
if exist "%GBE%\%EMUZ%\%MESS%" call "%GBC%\MessBios.bat"
CALL "%GBC%\allcrc.bat"
if "%BIOSA%"=="1" call "%GBC%\biosProc.bat"
if "%BIOSA%"=="1" goto :exitBios
if "%BIOSET%"=="" call "%GBC%\biosProc.bat"
if "%BIOSI%"=="1" exit /b
REM if "%AUTOCONFIG%"=="1" goto :exitBios
exit /b

:BIOSzCONT
:knowntest
call "%GBC%\mamebios.bat"
for /f "tokens=2 delims==" %%a in ('"%SEVENZIP%" l -slt "%BIOSN%"') do (
set BIOSZN=%%~a
set BIOSZX=%%~xa
call :CHECKARC
)
"%SEVENZIP%" e -y "%BIOSN%" -o"%GBC%\net\BIOS"
call "%GBC%\biosProc.bat"
set BIOSET=1
exit /b

:CHECKRAR
if "%BIOSZX%"==".zip" echo.%BIOSZR%:>>"%GBC%\inzipz.ini"
if "%BIOSZX%"==".rar" echo.%BIOSZR%:>>"%GBC%\inzipr.ini"
if "%BIOSZX%"==".7z" echo.%BIOSZR%:>>"%GBC%\inzip7.ini"
if "%BIOSZX%"==".tar" echo.%BIOSZR%:>>"%GBC%\inzipt.ini"
exit /b

:CHECKARC
SET BIOSZR=%BIOSZN:~1,999%
if "%BIOSZX%"==".zip" echo.%BIOSZR%:>>"%GBC%\inzipz.ini"
if "%BIOSZX%"==".rar" echo.%BIOSZR%:>>"%GBC%\inzipr.ini"
if "%BIOSZX%"==".7z" echo.%BIOSZR%:>>"%GBC%\inzip7.ini"
if "%BIOSZX%"==".tar" echo.%BIOSZR%:>>"%GBC%\inzipt.ini"
exit /b

:BIOStCONT
for /f "tokens=2 delims==" %%a in ('"%SEVENZIP%" l -slt "%BIOSN%"') do (
set BIOSZN=%%~a
set BIOSZX=%%~xa
call :CHECKARC
)

"%SEVENZIP%" e -y "%BIOSN%" -o"%GBC%\net\BIOS"
call "%GBC%\biosProc.bat"
set BIOSET=1
exit /b

:BIOSET
set BIOSET=1
exit /b

:BIOS7CONT
for /f "tokens=2 delims==" %%a in ('"%SEVENZIP%" l -slt "%BIOSN%"') do (
set BIOSZN=%%~a
set BIOSZX=%%~xa
call :CHECKARC
)

"%SEVENZIP%" e -y "%BIOSN%" -o"%GBC%\net\BIOS"
call "%GBC%\biosProc.bat"
set BIOSET=1
exit /b

:BIOSrCONT
for /f "tokens=* delims= " %%a in ('"%UNRAR%" vb "%BIOSN%"') do (
set BIOSZN=%%~a
set BIOSZX=%%~xa
call :CHECKRAR
)
"%UNRAR%" e -y -o+ "%BIOSN%"
call "%GBC%\biosProc.bat"
set BIOSET=1
exit /b

:anotherbios
if "%AUTOCONFIG%"=="1" goto :exitBios

start "" "%GBC%\Wbusy.exe" "InstallingBios" "Bios Files Installed" /Stop /timeout:1

"%GBC%\wbox.exe" "anotherbios" "^^Do you have another bios you'd like to install?^^" "Yes;No"
if %ERRORLEVEL%==1 goto :bios_q
if %ERRORLEVEL%==2 goto :quitBios
goto :exitBios

:explain_bios
"%GBC%\wbox.exe" "explain_bios" "A bios is needed by some console emulators to properly function.^^You can find and install them from the web^" "Locate;BiosMenu" /AL
if %ERRORLEVEL%==1 goto :bios_q
if %ERRORLEVEL%==2 goto :quitBios
goto :exitBios


:BIOSUAUTO
mkdir "%GBC%\net\BIOS\urlget"
REM start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\BIOS\urlget" "%MIR1%/%BIOSU%" "%MIR2%/%BIOSU%" "%MIR3%/%BIOSU%" "%MIR4%/%BIOSU%" "%MIR5%/%BIOSU%" 
start /min /w "" "%GBC%\wget.exe" -t 2 -nc -c  -w 1 "%MIR1%/%BIOSU%" -P "%GBC%\net\BIOS\urlget"
for /f "delims=" %%a in ('dir /b "%GBC%\net\BIOS\urlget"') do (
set BIOSN=%%~nxa
set BIOSXT=%%~xa
set BIOSA=1
)
move /Y "%GBC%\net\BIOS\urlget\%BIOSN%" "%GBC%\net\BIOS"

:biosurl_get
if "%BIOSN%"=="" goto :explain_bios
goto :testarchivext

:exitBios
start "" "%GBC%\Wbusy.exe" "InstallingBios" "Bios Files Installed" /Stop /timeout:1

:quitbios
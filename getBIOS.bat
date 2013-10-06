set BIOARC=
"%GBC%\wbox.exe" "GetHow" "Select a Bios File/Archive, a community Bios-List, a ''.TORRENT file'' or enter a URL." "File;List;Torrent;URL;Menu" /DB=1 /BW=100
if %ERRORLEVEL%==1 goto :SelArc
if %ERRORLEVEL%==2 goto :SelList
if %ERRORLEVEL%==3 goto :SelFile
if %ERRORLEVEL%==4 goto :URL
if %ERRORLEVEL%==5 goto :fingetbioses
goto :fingetbioses

:SelArc
set BIOARC=1
goto :fingetbioses

:URL
"%GBC%\Winput.exe" "set INURL=$input" "Enter the URL for a game torrent."  > "%GBC%\url.ini"
if %ERRORLEVEL%==1 goto :fingetbioses
pushd "%GBC%"
"%GBC%\fart.exe" "url.ini" "set INURL=" --remove
call :setURL
start "" "%GBC%\wbusy.exe" "Downloading" "Downloading bioses" /marquee
start /min /w "" "%GBC%\aria2c.exe" --check-integrity=true --seed-time=0 --continue=true --file-allocation=none --dir="%GBC%\net\BIOS" "%GETURLURL%"
start "" "%GBC%\wbusy.exe" "Downloading" "Complete." /Stop /timeout:2
goto :fingetbioses

:setURL
SET urlNthL=1
SET /A urlNthL -= 1
CALL :GETURL2_LGrab
GOTO :GETURLAUTO

:GETURL2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\url.ini"') DO (
SET GETURLURL=%%A
GOTO :EOF
)

:SelFile
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET TORURL=" "C:\*.torrent" "Where is the ''torrent file''?" /noquote') do %%a
if /I "%TORURL%"=="" goto :fingetbioses
start "" "%GBC%\wbusy.exe" "Downloading" "Downloading bioses" /marquee
start /min /w "" "%GBC%\aria2c.exe" --check-integrity=true --seed-time=0 --continue=true --file-allocation=none --dir="%GBC%\net\BIOS" --torrent-file="%TORURL%"
start "" "%GBC%\wbusy.exe" "Downloading" "Complete." /Stop /timeout:2
goto :fingetbioses

:SelList
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET TORLIST=" "C:\*.set" "Where is the ''List file''?" /noquote') do %%a
if /I "%TORLIST%"=="" goto :fingetbioses
"%GBC%\Wselect.exe" "%TORLIST%" "Select Torrent to download" "set URLNUM=$item" > "%GBC%\torlist.cmd"
if %errorlevel%==1 goto :fingetbioses
CALL "%GBC%\torlist.cmd"
for %%A in ("%URLNUM:~0,1%") do set URLABV=%%~A
if "%URLNUM%"=="" goto :fingetbioses
if "%URLABV%"=="-" goto :SelList
if "%URLNUM%"=="OTHER" goto :SelFile
start "" "%GBC%\wbusy.exe" "Downloading" "Downloading bioses" /marquee
start /min /w "" "%GBC%\aria2c.exe" --check-integrity=true --seed-time=0 --continue=true --file-allocation=none --dir="%GBC%\net\BIOS" "%URLNUM%"
start "" "%GBC%\wbusy.exe" "Downloading" "Complete." /Stop /timeout:2
goto :fingetbioses

:fingetbioses
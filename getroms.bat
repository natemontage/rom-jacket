
"%GBC%\wbox.exe" "GetHow" "Select a RoM-List, a ''.TORRENT file'' or enter a URL." "List;File;URL" /DB=1 /BW=100
if %ERRORLEVEL%==1 goto :SelList
if %ERRORLEVEL%==2 goto :SelFile
if %ERRORLEVEL%==3 goto :URL
goto :fingetroms

:URL
"%GBC%\Winput.exe" "set INURL=$input" "Enter the URL for a game torrent."  > "%GBC%\url.ini"
if %ERRORLEVEL%==1 goto :fingetroms
pushd "%GBC%"
"%GBC%\fart.exe" "url.ini" "set INURL=" --remove
call :setURL
start "" "%GBC%\wbusy.exe" "Downloading" "Downloading roms" /marquee
start /min /w "" "%GBC%\aria2c.exe" --check-integrity=true --seed-time=0 --continue=true --file-allocation=none --dir="%GBG%\%ROMJ%" "%GETURLURL%"
start "" "%GBC%\wbusy.exe" "Downloading" "Complete." /Stop /timeout:2
goto :fingetroms

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
if /I "%TORURL%"=="" goto :fingetroms
start "" "%GBC%\wbusy.exe" "Downloading" "Downloading roms" /marquee
start /min /w "" "%GBC%\aria2c.exe" --check-integrity=true --seed-time=0 --continue=true --file-allocation=none --dir="%GBG%\%ROMJ%" --torrent-file="%TORURL%"
start "" "%GBC%\wbusy.exe" "Downloading" "Complete." /Stop /timeout:2
goto :fingetroms

:SelList
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET TORLIST=" "C:\*.set" "Where is the ''List file''?" /noquote') do %%a
if /I "%TORLIST%"=="" goto :fingetroms
"%GBC%\Wselect.exe" "%TORLIST%" "Select Torrent to download" "set URLNUM=$item" > "%GBC%\torlist.cmd"
if %errorlevel%==1 goto :fingetroms
CALL "%GBC%\torlist.cmd"
for %%A in ("%URLNUM:~0,1%") do set URLABV=%%~A
if "%URLNUM%"=="" goto :fingetroms
if "%URLABV%"=="-" goto :SelList
if "%URLNUM%"=="OTHER" goto :SelFile
start "" "%GBC%\wbusy.exe" "Downloading" "Downloading roms" /marquee
start /min /w "" "%GBC%\aria2c.exe" --check-integrity=true --seed-time=0 --continue=true --file-allocation=none --dir="%GBG%\%ROMJ%" "%URLNUM%"
start "" "%GBC%\wbusy.exe" "Downloading" "Complete." /Stop /timeout:2
goto :fingetroms

:fingetroms
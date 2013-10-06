start "" "%GBC%\wbusy.exe" "romulating" "Cataloging Existing Directories" /marquee
CALL "%GBC%\delshort.bat"
CALL "%GBC%\CreateConsoleDirectories.bat"
CALL "%GBC%\delshort.bat"
CALL "%GBC%\unsort.bat">>"%GBC%\logs\unsort.log"
start "" "%GBC%\wbusy.exe" "romulating" "Cataloged" /Stop /timeout:1

:beginromulation
mkdir "%GBG%\%ROMJ%"
mkdir "%GBG%\%GAM%"
mkdir "%GBG%\%GAM%\%CONS%"
pushd "%GBG%\%ROMJ%"
mkdir "SORTED ARCHIVES"
ATTRIB +H "SORTED ARCHIVES"
popd
start "" "%GBC%\wbusy.exe" "romulating" "Cataloging files in the RJ-Sort-Folder" /marquee

REM CALL "%GBC%\ExtensionMove.bat"

if "%ARCVTST%"=="1" start "" "%GBC%\wbusy.exe" "romulating" "ARCHIVES FOUND" /Stop /timeout:1
if "%ARCVTST%"=="1" goto :ARCHVQ
goto :ARCHVY

:ARCHVQ
start "" "%GBC%\wbusy.exe" "romulating" "ARCHIVES FOUND" /Stop /timeout:1

"%GBC%\wbox.exe" "ARCHIVE_QUERY" "#######################^ARCHIVES DETECTED^#######################^^Would you like to search for identifiable roms inside the ZIP RAR & 7ZIP files of your rom-jacket.?^^---NOTE---^^This will search inside *every* archive in your rom-jacket folder.^" "Skip;Search" /DB=2
if %errorlevel%==1 goto :SKPARCH
if %errorlevel%==2 goto :ARCHVY
goto :SKPARCH

:ARCHVY
start "" "%GBC%\wbusy.exe" "romulating" "Cataloging files in your archives." /marquee

pushd "%GBG%\%ROMJ%"
CALL "%GBC%\rartest.bat"
CALL "%GBC%\7ztest.bat"
CALL "%GBC%\ziptest.bat"
popd

:SKPARCH
CALL "%GBC%\allmove.bat"
start "" "%GBC%\wbusy.exe" "romulating" "ARCHIVES FOUND" /Stop /timeout:1
popd

REM CALL "%GBC%\createConsoleDirectories.bat"
REM CALL "%GBC%\fuzzymove.bat"
REM CALL "%GBC%\singleMatch.bat"
pushd "%GBG%\%ROMJ%"

CALL "%GBC%\deleteEmpty.bat">>"%GBC%\logs\deleteEmpty.log"
for /f "tokens=* delims= " %%a in ('dir /b /a-h "%GBG%\%ROMJ%"') do set USROMS=%%~a
if "%USROMS%"=="" goto :injectLaunchers
CALL "%GBC%\extensionSort.bat"
CALL "%GBC%\romSort.bat"

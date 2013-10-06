:BEGINROMULATE
%GBD%
cd "%GBC%"
set ROMUSET=1
start "" "%GBC%\wbusy.exe" "romulating" "Indexing your RJ-Sort-Folder^" /marquee
del /q "%GBC%\copy.ini"
set ARCVTST=
set ARCVZIP=
set ARCVRAR=
set ARCVSVN=
mkdir "SORTED ARCHIVES"
ATTRIB +H "SORTED ARCHIVES"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h/s "%GBG%\%ROMJ%\SORTED ARCHIVES"') do ATTRIB +H "%%~a"
for /f  "delims=" %%c in ('dir /b /a-h /s "%GBG%\%ROMJ%"') do (
if "%%~xc"==".7z" SET ARCVTST=1
if "%%~xc"==".rar" SET ARCVTST=1
if "%%~xc"==".zip" SET ARCVTST=1
if "%%~xc"==".zip" SET ARCVZIP=1
if "%%~xc"==".rar" SET ARCVRAR=1
if "%%~xc"==".7z" SET ARCVSVN=1
echo.%%~nxc>>"%GBC%\copy.ini"
)
"%GBC%\wbusy.exe" "romulating" "Indexed" /Stop /timeout:1
for %%R in ("%GBC%\copy.ini") do if %%~zR equ 0 goto :endromulate
start "" "%GBC%\wbusy.exe" "romulating" "Indexing complete" /Stop /timeout:3

CALL "%GBC%\sortingLoose.bat"
if "%XPADDER%"=="DISABLED" goto :cleanupromulating
CALL "%GBC%\cleanup.bat"
CALL "%GBC%\deleteEmpty.bat"
CALL "%GBC%\emulatorcheck.bat"
for %%R in ("%GBC%\toInstall.ini") do if %%~zR leq 29 goto :METAUNHIDE
if exist CALL "%GBC%\toInstall.bat"
del /q "%GBC%\copy.ini"
exit /b

:cleanupromulating
start "" "%GBC%\wbusy.exe" "romulating" "Cleaning Up" /marquee
CALL "%GBC%\cleanup.bat"
CALL "%GBC%\deleteEmpty.bat"
start "" "%GBC%\wbusy.exe" "romulating" "Complete" /Stop /timeout:3
SET FIRSTRUN=0
CALL "%GBC%\emulatorcheck.bat"
for %%R in ("%GBC%\toInstall.ini") do if %%~zR leq 29 goto :METAUNHIDE
CALL "%GBC%\toInstall.bat"

:METAUNHIDE
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
SET GLR=%%~a
CALL :UNHIDE
)
start "" "%GBC%\wbusy.exe" "romulating" "Complete" /Stop /timeout:1
exit /b

:UNHIDE
%GAMDIR%
cd "%GBG%\%GAM%\%CONS%\%GLR%"
for /f "tokens=* delims= " %%a in ('dir /b /a "*.jpg"') do ATTRIB -H "%%~a"
for /f "tokens=* delims= " %%a in ('dir /b /a "*.png"') do ATTRIB -H "%%~a"
for /f "tokens=* delims= " %%a in ('dir /b /a "*.xml"') do ATTRIB -H "%%~a"
for /f "tokens=* delims= " %%a in ('dir /b /a "*.nfo"') do ATTRIB -H "%%~a"

:endromulate
del /q "%GBC%\copy.ini"
exit /b
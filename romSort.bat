:ROMSORT
set /A TOTALNUM=
if "%ROMUSET%"=="1" goto :ROMPCK
REM CALL "%GBC%\unsortedextmv.bat"

:ROMPCK
ATTRIB +H "%GBG%\%ROMJ%\SORTED ARCHIVES"
del /q "%GBC%\unsorted.ini"

for /f "tokens=* delims= " %%a in ('dir /b /a-h "%GBG%\%ROMJ%"') do echo.%%~a>>"%GBC%\unsorted.ini"

for %%R in ("%GBC%\unsorted.ini") do if "%%~zR" equ "" goto :romsortquit
for %%R in ("%GBC%\unsorted.ini") do if %%~zR equ 0 goto :romsortquit
CALL "%GBC%\createConsoleDirectories.bat"

start "" "%GBC%\wbusy.exe" "romulating" "...UNSORTED ROMS..." /Stop /timeout:1
"%GBC%\wbox.exe" "Select Roms" "^^The RJ-Sort-Folder contains items that were not automatically identified and must be assigned to a console manually.^^     [Open Rom-Jacket]^Opens the RJ-Sort-Folder for drag'n'drop console assignment.^^     [Continue]^Main Menu^^" "Open_Rom-Jacket;Continue" /AL /DB=2 /BW=150
if %ERRORLEVEL%==1 goto :expRJ
if %ERRORLEVEL%==2 goto :romsortquit
goto :romsortquit

:expRJ
CALL "%GBC%\mkshort.bat"
ATTRIB -H "%GBG%\%ROMJ%\SORTED ARCHIVES"
explorer "%GBG%\%ROMJ%"
goto :RSComplete

:romsortquit
ATTRIB +H "%GBG%\%ROMJ%\SORTED ARCHIVES"
CALL "%GBC%\delshort.bat"
CALL "%GBC%\cleanup.bat"
CALL "%GBC%\deleteEmpty.bat"
:RSComplete
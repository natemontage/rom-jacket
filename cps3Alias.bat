del "%GBC%\cps3roms.ini"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h') do echo %%~a>>"%GBC%\cps3roms.ini"
for %%R in ("%GBC%\cps3roms.ini") do if "%%~zR" equ "" goto :moveback
for %%R in ("%GBC%\cps3roms.ini") do if "%%~zR" equ "0" goto :moveback
goto :aliasbegin

:LINKN
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
exit /b

:WINV
mklink "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%" "%GBG%\%GAM%\%CONS%\%CPS3%\SOURCE\%ROM%"
exit /b
:WINLEG
"%GBC%\linkd.exe" "%GBG%\%GAM%\%CONS%\%CPS3%\SOURCE\%ROM%" "%GBG%\%GAM%\%CONS%\%CPS3%\%NWDIR%\%ROM%"
exit /b

:moveback
cd "SOURCE"
move "*.zip" "%GBG%\%GAM%\%CONS%\%CPS3%"
:aliasbegin
cd "%GBG%\%GAM%\%CONS%\%CPS3%"
mkdir "SOURCE"
ATTRIB +H "SOURCE"

for %%a in ("JoJo's Bizarre Adventure - Heritage for the Future") do set NWDIR=%%~a
for %%a in ("jojoba.zip") do set ROM=%%~a
call :LINKN
for %%a in ("JoJo's Venture") do set NWDIR=%%~a
for %%a in ("jojo.zip") do set ROM=%%~a
call :LINKN
for %%a in ("JoJo's Venture") do set NWDIR=%%~a
for %%a in ("jojoalt.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter III 2nd Impact - Giant Attack") do set NWDIR=%%~a
for %%a in ("sfiii2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter III 3rd Strike - Fight for the Future") do set NWDIR=%%~a
for %%a in ("sfiii3.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter III 3rd Strike - Fight for the Future (Alt)") do set NWDIR=%%~a
for %%a in ("sfiii3a.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter III - New Generation") do set NWDIR=%%~a
for %%a in ("sfiii.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Warzard") do set NWDIR=%%~a
for %%a in ("warzard.zip") do set ROM=%%~a
call :LINKN
for %%a in ("JoJo's Bizarre Adventure - Heritage for the Future") do set NWDIR=%%~a
for %%a in ("jojobachd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("JoJo's Venture") do set NWDIR=%%~a
for %%a in ("jojoaltchd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("JoJo's Venture") do set NWDIR=%%~a
for %%a in ("jojochd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter III 2nd Impact - Giant Attack (CHD)") do set NWDIR=%%~a
for %%a in ("sfiii2chd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter III 3rd Strike - Fight for the Future (Alt) (CHD)") do set NWDIR=%%~a
for %%a in ("sfiii3achd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter III 3rd Strike - Fight for the Future (CHD)") do set NWDIR=%%~a
for %%a in ("sfiii3chd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter III - New Generation (CHD)") do set NWDIR=%%~a
for %%a in ("sfiiichd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Warzard") do set NWDIR=%%~a
for %%a in ("warzardchd.zip") do set ROM=%%~a
call :LINKN
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*.zip"') do mkdir "%%~na" && move /Y "%%~a" "%%~na"
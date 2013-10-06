del "%GBC%\HNG64roms.ini"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h') do echo %%~a>>"%GBC%\HNG64oms.ini"
for %%R in ("%GBC%\HNG64roms.ini") do if "%%~zR" equ "" goto :moveback
for %%R in ("%GBC%\HNG64roms.ini") do if %%~zR equ 0 goto :moveback
goto :aliasbegin
:moveback
cd "SOURCE"
move "*.zip" "%GBG%\%GAM%\%CONS%\%HNG64%"
:aliasbegin
cd "%GBG%\%GAM%\%CONS%\%HNG64%"
mkdir "SOURCE"	
ATTRIB +H SOURCE

for %%a in ("Beast Busters 2nd Nightmare") do set NWDIR=%%~a
for %%a in ("bbust2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%ROM%" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE\%ROM%"
for %%a in ("Buriki One (rev.B)") do set NWDIR=%%~a
for %%a in ("buriki.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%ROM%" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE\%ROM%"
for %%a in ("Fatal Fury- Wild Ambition (rev.A)") do set NWDIR=%%~a
for %%a in ("fatfurwa.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%ROM%" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE\%ROM%"
for %%a in ("Roads Edge / Round Trip (rev.B)") do set NWDIR=%%~a
for %%a in ("roadedge.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%ROM%" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE\%ROM%"
for %%a in ("Samurai Shodown 64 / Samurai Spirits 64") do set NWDIR=%%~a
for %%a in ("sams64.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%ROM%" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE\%ROM%"
for %%a in ("Samurai Shodown- Warrior's Rage / Samurai Spirits 2- Asura Zanmaden") do set NWDIR=%%~a
for %%a in ("sams64_2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%ROM%" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE\%ROM%"
for %%a in ("XtremeRally/OffBeatRacer!") do set NWDIR=%%~a
for %%a in ("xrally.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%ROM%" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE\%ROM%"
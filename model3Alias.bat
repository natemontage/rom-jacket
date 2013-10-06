del "%GBC%\model3roms.ini"
for /f "tokens=* delims= " %%a in ('dir /b /a-d-h') do echo %%~a>>"%GBC%\model3roms.ini"
for %%R in ("%GBC%\model3roms.ini") do if "%%~zR" equ "" goto :moveback
for %%R in ("%GBC%\model3roms.ini") do if %%~zR equ 0 goto :moveback
goto :aliasbegin
:moveback
cd "SOURCE"
move "*.zip" "%GBG%\%GAM%\%CONS%\%SEGM3%"
:aliasbegin
mkdir SOURCE
ATTRIB +H SOURCE
for %%a in ("Sega Bass Fishing") do set NWDIR=%%~a
for %%a in ("bass.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Daytona USA 2 Power Edition") do set NWDIR=%%~a
for %%a in ("dayto2pe.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Daytona USA 2 (Revision A)") do set NWDIR=%%~a
for %%a in ("daytona2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Dirt Devils (Revision A)") do set NWDIR=%%~a
for %%a in ("dirtdvls.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Dirt Devils (alt) (Revision A)") do set NWDIR=%%~a
for %%a in ("dirtdvlsa.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Emergency Call Ambulance") do set NWDIR=%%~a
for %%a in ("eca.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Emergency Call Ambulance (Export)") do set NWDIR=%%~a
for %%a in ("ecax.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Fighting Vipers 2 (Revision A)") do set NWDIR=%%~a
for %%a in ("fvipers2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Get Bass") do set NWDIR=%%~a
for %%a in ("getbass.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Harley-Davidson and L.A. Riders (Revision A)") do set NWDIR=%%~a
for %%a in ("harley.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Harley-Davidson and L.A. Riders (Revision B)") do set NWDIR=%%~a
for %%a in ("harleyb.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("L.A. Machineguns") do set NWDIR=%%~a
for %%a in ("lamachin.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("LeMans 24") do set NWDIR=%%~a
for %%a in ("lemans24.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("The Lost World") do set NWDIR=%%~a
for %%a in ("lostwsga.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Magical Truck Adventure") do set NWDIR=%%~a
for %%a in ("magtruck.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("The Ocean Hunter") do set NWDIR=%%~a
for %%a in ("oceanhun.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Scud Race (Australia)") do set NWDIR=%%~a
for %%a in ("scud.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Scud Race (Export)") do set NWDIR=%%~a
for %%a in ("scuda.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Scud Race (Japan)") do set NWDIR=%%~a
for %%a in ("scudj.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Scud Race Plus (Revision A)") do set NWDIR=%%~a
for %%a in ("scudp.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Ski Champ") do set NWDIR=%%~a
for %%a in ("skichamp.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Spikeout Final Edition") do set NWDIR=%%~a
for %%a in ("spikeofe.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Spikeout (Revision C)") do set NWDIR=%%~a
for %%a in ("spikeout.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Sega Rally 2") do set NWDIR=%%~a
for %%a in ("srally2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Sega Rally 2 DX") do set NWDIR=%%~a
for %%a in ("srally2x.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Star Wars Trilogy (Revision A)") do set NWDIR=%%~a
for %%a in ("swtrilgy.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Star Wars Trilogy") do set NWDIR=%%~a
for %%a in ("swtrilgya.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Virtua Fighter 3 (Revision C)") do set NWDIR=%%~a
for %%a in ("vf3.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Virtua Fighter 3 (Revision A)") do set NWDIR=%%~a
for %%a in ("vf3a.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Virtua Fighter 3 Team Battle") do set NWDIR=%%~a
for %%a in ("vf3tb.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Virtual On 2: Oratorio Tangram (Revision B)") do set NWDIR=%%~a
for %%a in ("von2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Virtual On 2: Oratorio Tangram (ver 5.4g)") do set NWDIR=%%~a
for %%a in ("von254g.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Virtua Striker 2 (Step 2.0)") do set NWDIR=%%~a
for %%a in ("vs2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Virtua Striker 2 (Step 1.5)") do set NWDIR=%%~a
for %%a in ("vs215.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Virtua Striker 2 '98 (Step 2.0)") do set NWDIR=%%~a
for %%a in ("vs298.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Virtua Striker 2 '98 (Step 1.5)") do set NWDIR=%%~a
for %%a in ("vs29815.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Virtua Striker 2 '99") do set NWDIR=%%~a
for %%a in ("vs299.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Virtua Striker 2 '99 (Revision A)") do set NWDIR=%%~a
for %%a in ("vs299a.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Virtua Striker 2 '99 (Revision B)") do set NWDIR=%%~a
for %%a in ("vs299b.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
for %%a in ("Virtua Striker 2 '99.1 (Revision B)") do set NWDIR=%%~a
for %%a in ("vs2v991.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%" & mklink /J "%CD%\%NWDIR%\SOURCE" "%CD%\SOURCE"
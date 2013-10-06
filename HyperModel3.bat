if "%HYPTYPE%"=="BA" do pushd "%HSMETA%\%SEGM3%\Images\%ARTNUM%" && set MODEL3NAME=Folder.png
if "%HYPTYPE%"=="VD" do pushd "%HSMETA%\%SEGM3%\Video" && set MODEL3NAME=.trailer\%%~a
if "%HYPTYPE%"=="BN" do pushd "%HSMETA%\%SEGM3%\Images\Wheel" && set MODEL3NAME=Banner.png
for %%a in ("Sega Bass Fishing") do set NWDIR=%%~a
for %%a in ("bass.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Daytona USA 2 Power Edition") do set NWDIR=%%~a
for %%a in ("dayto2pe.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Daytona USA 2 (Revision A)") do set NWDIR=%%~a
for %%a in ("daytona2.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Dirt Devils (Revision A)") do set NWDIR=%%~a
for %%a in ("dirtdvls.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Dirt Devils (alt) (Revision A)") do set NWDIR=%%~a
for %%a in ("dirtdvlsa.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Emergency Call Ambulance") do set NWDIR=%%~a
for %%a in ("eca.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Emergency Call Ambulance (Export)") do set NWDIR=%%~a
for %%a in ("ecax.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Fighting Vipers 2 (Revision A)") do set NWDIR=%%~a
for %%a in ("fvipers2.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Get Bass") do set NWDIR=%%~a
for %%a in ("getbass.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Harley-Davidson and L.A. Riders (Revision A)") do set NWDIR=%%~a
for %%a in ("harley.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Harley-Davidson and L.A. Riders (Revision B)") do set NWDIR=%%~a
for %%a in ("harleyb.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("L.A. Machineguns") do set NWDIR=%%~a
for %%a in ("lamachin.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("LeMans 24") do set NWDIR=%%~a
for %%a in ("lemans24.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("The Lost World") do set NWDIR=%%~a
for %%a in ("lostwsga.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Magical Truck Adventure") do set NWDIR=%%~a
for %%a in ("magtruck.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("The Ocean Hunter") do set NWDIR=%%~a
for %%a in ("oceanhun.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Scud Race (Australia)") do set NWDIR=%%~a
for %%a in ("scud.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Scud Race (Export)") do set NWDIR=%%~a
for %%a in ("scuda.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Scud Race (Japan)") do set NWDIR=%%~a
for %%a in ("scudj.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Scud Race Plus (Revision A)") do set NWDIR=%%~a
for %%a in ("scudp.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Ski Champ") do set NWDIR=%%~a
for %%a in ("skichamp.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Spikeout Final Edition") do set NWDIR=%%~a
for %%a in ("spikeofe.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Spikeout (Revision C)") do set NWDIR=%%~a
for %%a in ("spikeout.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Sega Rally 2") do set NWDIR=%%~a
for %%a in ("srally2.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Sega Rally 2 DX") do set NWDIR=%%~a
for %%a in ("srally2x.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Star Wars Trilogy (Revision A)") do set NWDIR=%%~a
for %%a in ("swtrilgy.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Star Wars Trilogy") do set NWDIR=%%~a
for %%a in ("swtrilgya.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Virtua Fighter 3 (Revision C)") do set NWDIR=%%~a
for %%a in ("vf3.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Virtua Fighter 3 (Revision A)") do set NWDIR=%%~a
for %%a in ("vf3a.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Virtua Fighter 3 Team Battle") do set NWDIR=%%~a
for %%a in ("vf3tb.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Virtual On 2: Oratorio Tangram (Revision B)") do set NWDIR=%%~a
for %%a in ("von2.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Virtual On 2: Oratorio Tangram (ver 5.4g)") do set NWDIR=%%~a
for %%a in ("von254g.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Virtua Striker 2 (Step 2.0)") do set NWDIR=%%~a
for %%a in ("vs2.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Virtua Striker 2 (Step 1.5)") do set NWDIR=%%~a
for %%a in ("vs215.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Virtua Striker 2 '98 (Step 2.0)") do set NWDIR=%%~a
for %%a in ("vs298.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Virtua Striker 2 '98 (Step 1.5)") do set NWDIR=%%~a
for %%a in ("vs29815.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Virtua Striker 2 '99") do set NWDIR=%%~a
for %%a in ("vs299.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Virtua Striker 2 '99 (Revision A)") do set NWDIR=%%~a
for %%a in ("vs299a.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Virtua Striker 2 '99 (Revision B)") do set NWDIR=%%~a
for %%a in ("vs299b.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

for %%a in ("Virtua Striker 2 '99.1 (Revision B)") do set NWDIR=%%~a
for %%a in ("vs2v991.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM3%\%NWDIR%\%MODEL3NAME%"

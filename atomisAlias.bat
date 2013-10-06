cd "%GBG%\%GAM%\%CONS%\%ATMS%"
del "%GBC%\atomisroms.ini"

for /f "tokens=* delims= " %%a in ('dir /b /a-h') do echo %%~a>>"%GBC%\atomisroms.ini"
for %%R in ("%GBC%\atomisroms.ini") do if "%%~zR" equ "" goto :moveback
for %%R in ("%GBC%\atomisroms.ini") do if "%%~zR" equ "0" goto :moveback

for %%a in ("awbios.zip") do set ROM=%%~a
if exist "%ROM%" move /Y "%ROM%" "%GBE%\%EMUZ%\%DMUL%"

for %%a in ("Animal Basket") do set NWDIR=%%~a
for %%a in ("anmlbskt.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Demolish Fist") do set NWDIR=%%~a
for %%a in ("demofist.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Dirty Pigskin Football") do set NWDIR=%%~a
for %%a in ("dirtypig.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Dolphin Blue") do set NWDIR=%%~a
for %%a in ("dolphin.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Fist Of The North Star") do set NWDIR=%%~a
for %%a in ("fotns.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Faster Than Speed") do set NWDIR=%%~a
for %%a in ("ftspeed.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Guilty Gear Isuka") do set NWDIR=%%~a
for %%a in ("ggisuka.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Guilty Gear X Ver. 1.5") do set NWDIR=%%~a
for %%a in ("ggx15.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("The King of Fighters - Neo Wave (EN)") do set NWDIR=%%~a
for %%a in ("kofnw.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("The King of Fighters - Neo Wave (JP)") do set NWDIR=%%~a
for %%a in ("kofnwj.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("The King of Fighters XI") do set NWDIR=%%~a
for %%a in ("kofxi.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Knights of Valor - The Seven Spirits") do set NWDIR=%%~a
for %%a in ("kov7sprt.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Maximum Speed") do set NWDIR=%%~a
for %%a in ("maxspeed.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Metal Slug 6") do set NWDIR=%%~a
for %%a in ("mslug6.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Neo-Geo Battle Coliseum") do set NWDIR=%%~a
for %%a in ("ngbc.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Salary Man Kintaro") do set NWDIR=%%~a
for %%a in ("salmankt.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Smurai Shodown VI") do set NWDIR=%%~a
for %%a in ("samsptk.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Sports Shooting USA") do set NWDIR=%%~a
for %%a in ("sprtshot.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Ranger Mission") do set NWDIR=%%~a
for %%a in ("rangrmsn.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("The Rumble Fish") do set NWDIR=%%~a
for %%a in ("rumblef.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("The Rumble Fish 2") do set NWDIR=%%~a
for %%a in ("rumblef2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Extreme Hunting") do set NWDIR=%%~a
for %%a in ("xtrmhunt.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Extreme Hunting 2") do set NWDIR=%%~a
for %%a in ("xtrmhnt2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Net Select Keiba Victory Furlong") do set NWDIR=%%~a
for %%a in ("vfurlong.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Sega Bass Fishing") do set NWDIR=%%~a
for %%a in ("bass.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Fighter 3 (Rev. C)") do set NWDIR=%%~a
for %%a in ("vf3.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Fighter 3 (Rev. A)") do set NWDIR=%%~a
for %%a in ("vf3a.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Fighter 3 Team Battle") do set NWDIR=%%~a
for %%a in ("vf3tb.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Get Bass") do set NWDIR=%%~a
for %%a in ("getbass.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("LeMans 24") do set NWDIR=%%~a
for %%a in ("lemans24.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Scud Race (AUS)") do set NWDIR=%%~a
for %%a in ("scud.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Scud Race (JAP)") do set NWDIR=%%~a
for %%a in ("scudj.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Scud Race (EXP)") do set NWDIR=%%~a
for %%a in ("scuda.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Scud Race Plus") do set NWDIR=%%~a
for %%a in ("scudp.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Striker 2") do set NWDIR=%%~a
for %%a in ("vs215.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Striker 2 '98") do set NWDIR=%%~a
for %%a in ("vs29815.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("The Lost World") do set NWDIR=%%~a
for %%a in ("lostwsga.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Striker 2 (Step 2.0)") do set NWDIR=%%~a
for %%a in ("vs2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Harley-Davidson and L.A. Riders (Rev. A)") do set NWDIR=%%~a
for %%a in ("harley.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Harley-Davidson and L.A. Riders (Rev. B)") do set NWDIR=%%~a
for %%a in ("harleyb.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("L.A. Machineguns") do set NWDIR=%%~a
for %%a in ("lamachin.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("The Ocean Hunter") do set NWDIR=%%~a
for %%a in ("oceanhun.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Ski Champ") do set NWDIR=%%~a
for %%a in ("skichamp.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Sega Rally 2") do set NWDIR=%%~a
for %%a in ("srally2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Sega Rally 2 DX") do set NWDIR=%%~a
for %%a in ("srally2x.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtual On 2: Oratorio Tangram (Rev. B)") do set NWDIR=%%~a
for %%a in ("von2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtual On 2: Oratorio Tangram (Ver. 5.4g)") do set NWDIR=%%~a
for %%a in ("von254g.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Fighting Vipers 2 (Rev. A)") do set NWDIR=%%~a
for %%a in ("fvipers2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Striker 2 '98 (Step 2.0)") do set NWDIR=%%~a
for %%a in ("vs298.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Striker 2 '99.1 (Rev. B)") do set NWDIR=%%~a
for %%a in ("vs2v991.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Striker 2 '99 (Rev. B)") do set NWDIR=%%~a
for %%a in ("vs299b.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Striker 2 '99 (Rev. A)") do set NWDIR=%%~a
for %%a in ("vs299a.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Striker 2 '99") do set NWDIR=%%~a
for %%a in ("vs299.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Daytona USA 2 (Revision A)") do set NWDIR=%%~a
for %%a in ("daytona2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Daytona USA 2 Power Edition") do set NWDIR=%%~a
for %%a in ("dayto2pe.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Dirt Devils (Rev. A)") do set NWDIR=%%~a
for %%a in ("dirtdvls.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Dirt Devils (alt) (Rev. A)") do set NWDIR=%%~a
for %%a in ("dirtdvlsa.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Star Wars Trilogy (Rev. A)") do set NWDIR=%%~a
for %%a in ("swtrilgy.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Star Wars Trilogy") do set NWDIR=%%~a
for %%a in ("swtrilgya.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Spikeout") do set NWDIR=%%~a
for %%a in ("spikeout.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Spikeout Final Edition") do set NWDIR=%%~a
for %%a in ("spikeofe.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Magical Truck Adventure") do set NWDIR=%%~a
for %%a in ("magtruck.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Emergency Call Ambulance") do set NWDIR=%%~a
for %%a in ("eca.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Emergency Call Ambulance (EXP)") do set NWDIR=%%~a
for %%a in ("ecax.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
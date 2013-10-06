if "%HYPTYPE%"=="BA" do pushd "%HSMETA%\%ATMS%\Images\%ARTNUM%" && set ATMSNAME=Folder.png
if "%HYPTYPE%"=="VD" do pushd "%HSMETA%\%ATMS%\Video" && set ATMSNAME=.trailer\%%~a
if "%HYPTYPE%"=="BN" do pushd "%HSMETA%\%ATMS%\Images\Wheel" && set ATMSNAME=Banner.png
for %%a in ("Animal Basket") do set NWDIR=%%~a
for %%a in ("anmlbskt.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Demolish Fist") do set NWDIR=%%~a
for %%a in ("demofist.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Dirty Pigskin Football") do set NWDIR=%%~a
for %%a in ("dirtypig.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Dolphin Blue") do set NWDIR=%%~a
for %%a in ("dolphin.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Fist Of The North Star") do set NWDIR=%%~a
for %%a in ("fotns.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Faster Than Speed") do set NWDIR=%%~a
for %%a in ("ftspeed.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Guilty Gear Isuka") do set NWDIR=%%~a
for %%a in ("ggisuka.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Guilty Gear X Ver. 1.5") do set NWDIR=%%~a
for %%a in ("ggx15.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("The King of Fighters - Neo Wave (EN)") do set NWDIR=%%~a
for %%a in ("kofnw.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("The King of Fighters - Neo Wave (JP)") do set NWDIR=%%~a
for %%a in ("kofnwj.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("The King of Fighters XI") do set NWDIR=%%~a
for %%a in ("kofxi.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Knights of Valor - The Seven Spirits") do set NWDIR=%%~a
for %%a in ("kov7sprt.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Maximum Speed") do set NWDIR=%%~a
for %%a in ("maxspeed.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Metal Slug 6") do set NWDIR=%%~a
for %%a in ("mslug6.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Neo-Geo Battle Coliseum") do set NWDIR=%%~a
for %%a in ("ngbc.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Salary Man Kintaro") do set NWDIR=%%~a
for %%a in ("salmankt.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Smurai Shodown VI") do set NWDIR=%%~a
for %%a in ("samsptk.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Sports Shooting USA") do set NWDIR=%%~a
for %%a in ("sprtshot.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Ranger Mission") do set NWDIR=%%~a
for %%a in ("rangrmsn.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("The Rumble Fish") do set NWDIR=%%~a
for %%a in ("rumblef.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("The Rumble Fish 2") do set NWDIR=%%~a
for %%a in ("rumblef2.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Extreme Hunting") do set NWDIR=%%~a
for %%a in ("xtrmhunt.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Extreme Hunting 2") do set NWDIR=%%~a
for %%a in ("xtrmhnt2.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Net Select Keiba Victory Furlong") do set NWDIR=%%~a
for %%a in ("vfurlong.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Sega Bass Fishing") do set NWDIR=%%~a
for %%a in ("bass.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Virtua Fighter 3 (Rev. C)") do set NWDIR=%%~a
for %%a in ("vf3.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Virtua Fighter 3 (Rev. A)") do set NWDIR=%%~a
for %%a in ("vf3a.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Virtua Fighter 3 Team Battle") do set NWDIR=%%~a
for %%a in ("vf3tb.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Get Bass") do set NWDIR=%%~a
for %%a in ("getbass.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("LeMans 24") do set NWDIR=%%~a
for %%a in ("lemans24.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Scud Race (AUS)") do set NWDIR=%%~a
for %%a in ("scud.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Scud Race (JAP)") do set NWDIR=%%~a
for %%a in ("scudj.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Scud Race (EXP)") do set NWDIR=%%~a
for %%a in ("scuda.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Scud Race Plus") do set NWDIR=%%~a
for %%a in ("scudp.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Virtua Striker 2") do set NWDIR=%%~a
for %%a in ("vs215.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Virtua Striker 2 '98") do set NWDIR=%%~a
for %%a in ("vs29815.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("The Lost World") do set NWDIR=%%~a
for %%a in ("lostwsga.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Virtua Striker 2 (Step 2.0)") do set NWDIR=%%~a
for %%a in ("vs2.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Harley-Davidson and L.A. Riders (Rev. A)") do set NWDIR=%%~a
for %%a in ("harley.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Harley-Davidson and L.A. Riders (Rev. B)") do set NWDIR=%%~a
for %%a in ("harleyb.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("L.A. Machineguns") do set NWDIR=%%~a
for %%a in ("lamachin.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("The Ocean Hunter") do set NWDIR=%%~a
for %%a in ("oceanhun.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Ski Champ") do set NWDIR=%%~a
for %%a in ("skichamp.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Sega Rally 2") do set NWDIR=%%~a
for %%a in ("srally2.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Sega Rally 2 DX") do set NWDIR=%%~a
for %%a in ("srally2x.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Virtual On 2: Oratorio Tangram (Rev. B)") do set NWDIR=%%~a
for %%a in ("von2.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Virtual On 2: Oratorio Tangram (Ver. 5.4g)") do set NWDIR=%%~a
for %%a in ("von254g.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Fighting Vipers 2 (Rev. A)") do set NWDIR=%%~a
for %%a in ("fvipers2.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Virtua Striker 2 '98 (Step 2.0)") do set NWDIR=%%~a
for %%a in ("vs298.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Virtua Striker 2 '99.1 (Rev. B)") do set NWDIR=%%~a
for %%a in ("vs2v991.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Virtua Striker 2 '99 (Rev. B)") do set NWDIR=%%~a
for %%a in ("vs299b.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Virtua Striker 2 '99 (Rev. A)") do set NWDIR=%%~a
for %%a in ("vs299a.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Virtua Striker 2 '99") do set NWDIR=%%~a
for %%a in ("vs299.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Daytona USA 2 (Revision A)") do set NWDIR=%%~a
for %%a in ("daytona2.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Daytona USA 2 Power Edition") do set NWDIR=%%~a
for %%a in ("dayto2pe.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Dirt Devils (Rev. A)") do set NWDIR=%%~a
for %%a in ("dirtdvls.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Dirt Devils (alt) (Rev. A)") do set NWDIR=%%~a
for %%a in ("dirtdvlsa.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Star Wars Trilogy (Rev. A)") do set NWDIR=%%~a
for %%a in ("swtrilgy.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Star Wars Trilogy") do set NWDIR=%%~a
for %%a in ("swtrilgya.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Spikeout") do set NWDIR=%%~a
for %%a in ("spikeout.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Spikeout Final Edition") do set NWDIR=%%~a
for %%a in ("spikeofe.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Magical Truck Adventure") do set NWDIR=%%~a
for %%a in ("magtruck.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Emergency Call Ambulance") do set NWDIR=%%~a
for %%a in ("eca.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"
for %%a in ("Emergency Call Ambulance (EXP)") do set NWDIR=%%~a
for %%a in ("ecax.png") do if exist %GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%ATMS%\%NWDIR%\%ATMSNAME%"

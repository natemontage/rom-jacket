if "%HYPTYPE%"=="BA" do pushd "%HSMETA%\%SEGM2%\Images\%ARTNUM%" && set MODEL2NAME=Folder.png
if "%HYPTYPE%"=="VD" do pushd "%HSMETA%\%SEGM2%\Video" && set MODEL2NAME=.trailer\%%~a
if "%HYPTYPE%"=="BN" do pushd "%HSMETA%\%SEGM2%\Images\Wheel" && set MODEL2NAME=Banner.png
for %%a in ("Behind Enemy Lines") do set NWDIR=%%~a
for %%a in ("bel.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Daytona USA Deluxe '93") do set NWDIR=%%~a
for %%a in ("dayton93.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Daytona USA (Japan, Revision A)") do set NWDIR=%%~a
for %%a in ("daytona.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Daytona USA - GTX 2004 Edition") do set NWDIR=%%~a
for %%a in ("daytonagtx.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Daytona USA (Japan, To The MAXX)") do set NWDIR=%%~a
for %%a in ("daytonam.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Daytona USA (With Saturn Adverts)") do set NWDIR=%%~a
for %%a in ("daytonas.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Daytona USA Turbo") do set NWDIR=%%~a
for %%a in ("daytonat.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Desert Tank") do set NWDIR=%%~a
for %%a in ("desert.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Dead or Alive (Model 2B, Revision B)") do set NWDIR=%%~a
for %%a in ("doa.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Dead or Alive (Model 2A, Revision A)") do set NWDIR=%%~a
for %%a in ("doaa.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Dynamite Baseball '97 (Revision A)") do set NWDIR=%%~a
for %%a in ("dynabb.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Dynamite Cop (Export, Model 2A)") do set NWDIR=%%~a
for %%a in ("dynamcop.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Dynamite Deka 2 (Japan, Model 2B)") do set NWDIR=%%~a
for %%a in ("dyndek2b.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Dynamite Deka 2 (Japan, Model 2A)") do set NWDIR=%%~a
for %%a in ("dyndeka2.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Dynamite Cop (Export, Model 2B)") do set NWDIR=%%~a
for %%a in ("dynmcopb.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Dynamite Cop (USA, Model 2C)") do set NWDIR=%%~a
for %%a in ("dynmcopc.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Fighting Vipers (Revision D)") do set NWDIR=%%~a
for %%a in ("fvipers.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Gunblade NY (Revision A)") do set NWDIR=%%~a
for %%a in ("gunblade.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("House of the Dead") do set NWDIR=%%~a
for %%a in ("hotd.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("INDY 500 Twin (Revision A)") do set NWDIR=%%~a
for %%a in ("indy500.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("INDY 500 Deluxe (Revision A)") do set NWDIR=%%~a
for %%a in ("indy500d.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Last Bronx (Japan, Revision A)") do set NWDIR=%%~a
for %%a in ("lastbrnj.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Last Bronx (Export, Revision A)") do set NWDIR=%%~a
for %%a in ("lastbrnx.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Manx TT Superbike") do set NWDIR=%%~a
for %%a in ("manxtt.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Motoraid") do set NWDIR=%%~a
for %%a in ("motoraid.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Over Rev (Revision A)") do set NWDIR=%%~a
for %%a in ("overrev.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Pilot Kids (Model 2B, Revision A)") do set NWDIR=%%~a
for %%a in ("pltkids.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Pilot Kids (Model 2A)") do set NWDIR=%%~a
for %%a in ("pltkidsa.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Rail Chase 2 (Revision A)") do set NWDIR=%%~a
for %%a in ("rchase2.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Sonic The Fighters") do set NWDIR=%%~a
for %%a in ("schamp.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Sega Water Ski") do set NWDIR=%%~a
for %%a in ("segawski.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Super GT 24h") do set NWDIR=%%~a
for %%a in ("sgt24h.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Sega Ski Super G") do set NWDIR=%%~a
for %%a in ("skisuprg.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Sky Target") do set NWDIR=%%~a
for %%a in ("skytargt.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Sega Rally Championship") do set NWDIR=%%~a
for %%a in ("srallyc.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Sega Rally Pro Drivin'") do set NWDIR=%%~a
for %%a in ("srallyp.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Sega Touring Car Championship (Revision A)") do set NWDIR=%%~a
for %%a in ("stcc.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Top Skater (Export, Revision A)") do set NWDIR=%%~a
for %%a in ("topskatr.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Top Skater (USA)") do set NWDIR=%%~a
for %%a in ("topskatu.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Virtua Cop (Revision B)") do set NWDIR=%%~a
for %%a in ("vcop.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Virtua Cop 2") do set NWDIR=%%~a
for %%a in ("vcop2.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Virtua Fighter 2 (Version 2.1)") do set NWDIR=%%~a
for %%a in ("vf2.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Virtua Fighter 2 (Revision A)") do set NWDIR=%%~a
for %%a in ("vf2a.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Virtua Fighter 2 (Revision B)") do set NWDIR=%%~a
for %%a in ("vf2b.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Virtua Fighter 2") do set NWDIR=%%~a
for %%a in ("vf2o.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Virtual On Cyber Troopers (US, Revision B)") do set NWDIR=%%~a
for %%a in ("von.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Virtual On Cyber Troopers (Japan, Revision B)") do set NWDIR=%%~a
for %%a in ("vonj.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Virtua Striker (Revision A)") do set NWDIR=%%~a
for %%a in ("vstriker.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Virtua Striker") do set NWDIR=%%~a
for %%a in ("vstrikro.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Wave Runner (Japan, Revision A)") do set NWDIR=%%~a
for %%a in ("waverunr.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Zero Gunner (Model 2B)") do set NWDIR=%%~a
for %%a in ("zerogun.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Zero Gunner (Model 2A)") do set NWDIR=%%~a
for %%a in ("zeroguna.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"
for %%a in ("Zero Gunner (Japan Model 2B)") do set NWDIR=%%~a
for %%a in ("zerogunj.png") do if exist %GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%SEGM2%\%NWDIR%\%MODEL2NAME%"

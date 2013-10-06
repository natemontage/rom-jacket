del "%GBC%\model2roms.ini"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h') do echo %%~a>>"%GBC%\model2roms.ini"
for %%R in ("%GBC%\model2roms.ini") do if "%%~zR" equ "" goto :moveback
for %%R in ("%GBC%\model2roms.ini") do if %%~zR equ 0 goto :moveback
goto :aliasbegin
:moveback
cd "SOURCE"
move "*.zip" "%GBG%\%GAM%\%CONS%\%SEGM2%"
:aliasbegin
mkdir SOURCE
ATTRIB +H SOURCE
for %%a in ("Behind Enemy Lines") do set NWDIR=%%~a
for %%a in ("bel.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Daytona USA Deluxe '93") do set NWDIR=%%~a
for %%a in ("dayton93.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Daytona USA (Japan, Revision A)") do set NWDIR=%%~a
for %%a in ("daytona.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Daytona USA - GTX 2004 Edition") do set NWDIR=%%~a
for %%a in ("daytonagtx.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Daytona USA (Japan, To The MAXX)") do set NWDIR=%%~a
for %%a in ("daytonam.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Daytona USA (With Saturn Adverts)") do set NWDIR=%%~a
for %%a in ("daytonas.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Daytona USA Turbo") do set NWDIR=%%~a
for %%a in ("daytonat.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Desert Tank") do set NWDIR=%%~a
for %%a in ("desert.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Dead or Alive (Model 2B, Revision B)") do set NWDIR=%%~a
for %%a in ("doa.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Dead or Alive (Model 2A, Revision A)") do set NWDIR=%%~a
for %%a in ("doaa.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Dynamite Baseball '97 (Revision A)") do set NWDIR=%%~a
for %%a in ("dynabb.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Dynamite Cop (Export, Model 2A)") do set NWDIR=%%~a
for %%a in ("dynamcop.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Dynamite Deka 2 (Japan, Model 2B)") do set NWDIR=%%~a
for %%a in ("dyndek2b.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Dynamite Deka 2 (Japan, Model 2A)") do set NWDIR=%%~a
for %%a in ("dyndeka2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Dynamite Cop (Export, Model 2B)") do set NWDIR=%%~a
for %%a in ("dynmcopb.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Dynamite Cop (USA, Model 2C)") do set NWDIR=%%~a
for %%a in ("dynmcopc.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Fighting Vipers (Revision D)") do set NWDIR=%%~a
for %%a in ("fvipers.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Gunblade NY (Revision A)") do set NWDIR=%%~a
for %%a in ("gunblade.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("House of the Dead") do set NWDIR=%%~a
for %%a in ("hotd.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("INDY 500 Twin (Revision A)") do set NWDIR=%%~a
for %%a in ("indy500.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("INDY 500 Deluxe (Revision A)") do set NWDIR=%%~a
for %%a in ("indy500d.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Last Bronx (Japan, Revision A)") do set NWDIR=%%~a
for %%a in ("lastbrnj.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Last Bronx (Export, Revision A)") do set NWDIR=%%~a
for %%a in ("lastbrnx.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Manx TT Superbike") do set NWDIR=%%~a
for %%a in ("manxtt.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Motoraid") do set NWDIR=%%~a
for %%a in ("motoraid.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Over Rev (Revision A)") do set NWDIR=%%~a
for %%a in ("overrev.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Pilot Kids (Model 2B, Revision A)") do set NWDIR=%%~a
for %%a in ("pltkids.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Pilot Kids (Model 2A)") do set NWDIR=%%~a
for %%a in ("pltkidsa.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Rail Chase 2 (Revision A)") do set NWDIR=%%~a
for %%a in ("rchase2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Sonic The Fighters") do set NWDIR=%%~a
for %%a in ("schamp.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Sega Water Ski") do set NWDIR=%%~a
for %%a in ("segawski.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Super GT 24h") do set NWDIR=%%~a
for %%a in ("sgt24h.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Sega Ski Super G") do set NWDIR=%%~a
for %%a in ("skisuprg.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Sky Target") do set NWDIR=%%~a
for %%a in ("skytargt.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Sega Rally Championship") do set NWDIR=%%~a
for %%a in ("srallyc.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Sega Rally Pro Drivin'") do set NWDIR=%%~a
for %%a in ("srallyp.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Sega Touring Car Championship (Revision A)") do set NWDIR=%%~a
for %%a in ("stcc.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Top Skater (Export, Revision A)") do set NWDIR=%%~a
for %%a in ("topskatr.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Top Skater (USA)") do set NWDIR=%%~a
for %%a in ("topskatu.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Virtua Cop (Revision B)") do set NWDIR=%%~a
for %%a in ("vcop.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Virtua Cop 2") do set NWDIR=%%~a
for %%a in ("vcop2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Virtua Fighter 2 (Version 2.1)") do set NWDIR=%%~a
for %%a in ("vf2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Virtua Fighter 2 (Revision A)") do set NWDIR=%%~a
for %%a in ("vf2a.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Virtua Fighter 2 (Revision B)") do set NWDIR=%%~a
for %%a in ("vf2b.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Virtua Fighter 2") do set NWDIR=%%~a
for %%a in ("vf2o.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Virtual On Cyber Troopers (US, Revision B)") do set NWDIR=%%~a
for %%a in ("von.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Virtual On Cyber Troopers (Japan, Revision B)") do set NWDIR=%%~a
for %%a in ("vonj.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Virtua Striker (Revision A)") do set NWDIR=%%~a
for %%a in ("vstriker.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Virtua Striker") do set NWDIR=%%~a
for %%a in ("vstrikro.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Wave Runner (Japan, Revision A)") do set NWDIR=%%~a
for %%a in ("waverunr.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Zero Gunner (Model 2B)") do set NWDIR=%%~a
for %%a in ("zerogun.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Zero Gunner (Model 2A)") do set NWDIR=%%~a
for %%a in ("zeroguna.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Zero Gunner (Japan Model 2B)") do set NWDIR=%%~a
for %%a in ("zerogunj.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%CD%\%NWDIR%" & move /Y "%ROM%" "%CD%\SOURCE" & mklink "%CD%\%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
move "*.zip" "SOURCE"
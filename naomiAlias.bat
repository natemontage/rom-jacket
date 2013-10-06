cd "%GBG%\%GAM%\%CONS%\%NAOMI%"
del "%GBC%\naomiroms.ini"
for /f "tokens=* delims= " %%a in ('dir /b /a-h') do echo %%~a>>"%GBC%\naomiroms.ini"
for %%R in ("%GBC%\naomiroms.ini") do if "%%~zR" equ "" goto :naomiout
for %%R in ("%GBC%\naomiroms.ini") do if %%~zR equ 0 goto :naomiout

move /Y dc.zip "%GBE%\%EMUZ%\%DMUL%"
move /Y naomi2.zip "%GBE%\%EMUZ%\%DMUL%"
move /Y naomi.zip "%GBE%\%EMUZ%\%DMUL%"
move /Y naomigd.zip "%GBE%\%EMUZ%\%DMUL%"
move /Y awbios.zip "%GBE%\%EMUZ%\%DMUL%"
move /Y ngdup23a.zip "%GBE%\%EMUZ%\%DMUL%"
move /Y ngdup23c.zip "%GBE%\%EMUZ%\%DMUL%"
move /Y ngdup23e.zip "%GBE%\%EMUZ%\%DMUL%"
move /Y ngdup42a.zip "%GBE%\%EMUZ%\%DMUL%"
move /Y mie.zip "%GBE%\%EMUZ%\%DMUL%"

for %%a in ("18 Wheeler DX") do set NWDIR=%%~a
for %%a in ("18wheelr.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("18 Wheeler DX (Rev. A)") do set NWDIR=%%~a
for %%a in ("18wheels.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("18 Wheeler") do set NWDIR=%%~a
for %%a in ("18whlrur.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Alien Front") do set NWDIR=%%~a
for %%a in ("alienfnt.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Alien Front (Rev. A)") do set NWDIR=%%~a
for %%a in ("alienfnta.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Airline Pilots Deluxe") do set NWDIR=%%~a
for %%a in ("alpiltdx.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Airline Pilots") do set NWDIR=%%~a
for %%a in ("alpilota.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Dynamite Deka EX") do set NWDIR=%%~a
for %%a in ("asndynmt.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Akatsuki Blitzkampf Ausf. Achse") do set NWDIR=%%~a
for %%a in ("ausfache.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Capcom Vs. SNK Millennium Fight 2000") do set NWDIR=%%~a
for %%a in ("capsnk.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Capcom Vs. SNK Millennium Fight 2000 (Rev. A)") do set NWDIR=%%~a
for %%a in ("capsnka.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Crack'n DJ") do set NWDIR=%%~a
for %%a in ("crackndj.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Crazy Taxi") do set NWDIR=%%~a
for %%a in ("crzytaxi.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Cosmic Smash (Rev. A)") do set NWDIR=%%~a
for %%a in ("csmash.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Cosmic Smash") do set NWDIR=%%~a
for %%a in ("csmasho.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Cannon Spike") do set NWDIR=%%~a
for %%a in ("cspike.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Death Crimson OX") do set NWDIR=%%~a
for %%a in ("deathcox.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Derby Owners Club") do set NWDIR=%%~a
for %%a in ("derbyoc.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Derby Owners Club 2000 Ver.2") do set NWDIR=%%~a
for %%a in ("derbyo2k.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Derby Owners Club World Edition") do set NWDIR=%%~a
for %%a in ("derbyocw.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Derby Owners Club World Edition (Rev. C)") do set NWDIR=%%~a
for %%a in ("drbyocwc.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Derby Owners Club II") do set NWDIR=%%~a
for %%a in ("derbyoc2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Dead or Alive 2") do set NWDIR=%%~a
for %%a in ("doa2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Dead or Alive 2 Millennium") do set NWDIR=%%~a
for %%a in ("doa2m.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("World Series 99") do set NWDIR=%%~a
for %%a in ("dybb99.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Dynamite Baseball") do set NWDIR=%%~a
for %%a in ("dybbnao.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Ferrari F355 Challenge") do set NWDIR=%%~a
for %%a in ("f355.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Ferrari F355 Challenge (Twin)") do set NWDIR=%%~a
for %%a in ("f355twin.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Ferrari F355 Challenge 2") do set NWDIR=%%~a
for %%a in ("f355twn2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Giant Gram - All Japan Pro Wrestling 2") do set NWDIR=%%~a
for %%a in ("ggram2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Guilty Gear X") do set NWDIR=%%~a
for %%a in ("ggx.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Giant Gram 2000") do set NWDIR=%%~a
for %%a in ("gram2000.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Mobile Suit Gundam - Federation Vs. Zeon") do set NWDIR=%%~a
for %%a in ("gundmct.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Gun Survivor 2 Biohazard Code - Veronica") do set NWDIR=%%~a
for %%a in ("gunsur2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Giga Wing 2") do set NWDIR=%%~a
for %%a in ("gwing2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Heavy Metal Geomatrix") do set NWDIR=%%~a
for %%a in ("hmgeo.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Hopper Board") do set NWDIR=%%~a
for %%a in ("hopperbd.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("House of the Dead 2") do set NWDIR=%%~a
for %%a in ("hotd2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("House of the Dead 2 (original)") do set NWDIR=%%~a
for %%a in ("hotd2o.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("House of the Dead 2 (prototype)") do set NWDIR=%%~a
for %%a in ("hotd2p.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Illmatic Envelope") do set NWDIR=%%~a
for %%a in ("illvelo.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Inu No Osanpo") do set NWDIR=%%~a
for %%a in ("inunoos.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Jambo! Safari") do set NWDIR=%%~a
for %%a in ("jambo.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Kick '4' Cash") do set NWDIR=%%~a
for %%a in ("kick4csh.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Mamoru-kun wa Norowarete Shimatta!") do set NWDIR=%%~a
for %%a in ("mamonoro.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Mazan - Flash of The Blade") do set NWDIR=%%~a
for %%a in ("mazan.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Melty Blood Actress Again") do set NWDIR=%%~a
for %%a in ("mbaa.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Melty Blood Actress Again (Ver. A)") do set NWDIR=%%~a
for %%a in ("mbaaa.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Mushiking The King Of Beetles II ENG (Ver. 1.001)") do set NWDIR=%%~a
for %%a in ("mushik2e.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Mushiking The King Of Beetles II") do set NWDIR=%%~a
for %%a in ("mushi2ea.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Mushiking The King Of Beetles 2k3 2nd") do set NWDIR=%%~a
for %%a in ("mtkob2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Marvel Vs. Capcom 2 New Age of Heroes") do set NWDIR=%%~a
for %%a in ("mvsc2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Oinori") do set NWDIR=%%~a
for %%a in ("oinori.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("OutTrigger") do set NWDIR=%%~a
for %%a in ("otrigger.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Project Justice") do set NWDIR=%%~a
for %%a in ("pjustic.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Manic Panic Ghosts!") do set NWDIR=%%~a
for %%a in ("pokasuka.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Power Stone") do set NWDIR=%%~a
for %%a in ("pstone.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Power Stone 2") do set NWDIR=%%~a
for %%a in ("pstone2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Puyo Puyo Da!") do set NWDIR=%%~a
for %%a in ("puyoda.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Quiz Ah Megamisama") do set NWDIR=%%~a
for %%a in ("qmegamis.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Radirgy Noa") do set NWDIR=%%~a
for %%a in ("radirgyn.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Ring Out 4x4") do set NWDIR=%%~a
for %%a in ("ringout.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Samba De Amigo") do set NWDIR=%%~a
for %%a in ("samba.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Samba De Amigo Ver. 2000") do set NWDIR=%%~a
for %%a in ("samba2k.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Sega Tetris") do set NWDIR=%%~a
for %%a in ("sgtetris.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Dengen Tenshi Taisen Janshi Shangri-la") do set NWDIR=%%~a
for %%a in ("shangril.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Shootout Pool") do set NWDIR=%%~a
for %%a in ("shootopl.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Shootout Pool") do set NWDIR=%%~a
for %%a in ("shootpl.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Shootout Pool Medal") do set NWDIR=%%~a
for %%a in ("shootplm.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Shooting Love 2007") do set NWDIR=%%~a
for %%a in ("sl2007.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Slashout") do set NWDIR=%%~a
for %%a in ("slasho.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Sega Marine Fishing") do set NWDIR=%%~a
for %%a in ("smarinef.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Super Major League 99") do set NWDIR=%%~a
for %%a in ("smlg99.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Spawn In the Demon's Hand") do set NWDIR=%%~a
for %%a in ("spawn.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Sega Strike Fighter") do set NWDIR=%%~a
for %%a in ("sstrkfgt.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Idol Janshi Suchie-Pai 3") do set NWDIR=%%~a
for %%a in ("suchie3.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Touch De Uno! 2") do set NWDIR=%%~a
for %%a in ("tduno2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("The Typing of the Dead") do set NWDIR=%%~a
for %%a in ("totd.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Shin Nihon Prowrestling Toukon Retsuden 4 Arcade Edition") do set NWDIR=%%~a
for %%a in ("toukon4.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Toy Fighter") do set NWDIR=%%~a
for %%a in ("toyfight.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua NBA") do set NWDIR=%%~a
for %%a in ("virnba.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua NBA (original)") do set NWDIR=%%~a
for %%a in ("virnbao.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua NBA (prototype)") do set NWDIR=%%~a
for %%a in ("virnbap.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtual ON Oratorio Tangram M.S.B.S. Ver. 5.66") do set NWDIR=%%~a
for %%a in ("vonot.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Striker 2 Ver. 2000 (Rev. C)") do set NWDIR=%%~a
for %%a in ("vs2_2k.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Tennis") do set NWDIR=%%~a
for %%a in ("vtennis.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Tennis 2") do set NWDIR=%%~a
for %%a in ("vtenis2c.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("World Kicks") do set NWDIR=%%~a
for %%a in ("wldkicks.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Wave Runner GP") do set NWDIR=%%~a
for %%a in ("wrungp.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("WWF Royal Rumble") do set NWDIR=%%~a
for %%a in ("wwfroyal.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Zero Gunner 2") do set NWDIR=%%~a
for %%a in ("zerogu2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Zombie Revenge") do set NWDIR=%%~a
for %%a in ("zombrvn.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Touch de Zunou") do set NWDIR=%%~a
for %%a in ("zunou.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Azumanga Daioh Puzzle Bobble") do set NWDIR=%%~a
for %%a in ("azumanga.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Border Down") do set NWDIR=%%~a
for %%a in ("bdrdown.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Chaos Field") do set NWDIR=%%~a
for %%a in ("cfield.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Musapey's Choco Marker") do set NWDIR=%%~a
for %%a in ("chocomk.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Cleopatra Fortune Plus") do set NWDIR=%%~a
for %%a in ("cleoftp.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Confidential Mission") do set NWDIR=%%~a
for %%a in ("confmiss.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Capcom vs SNK 2 Millionaire Fighting 2001") do set NWDIR=%%~a
for %%a in ("cvs2gd.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Capcom vs SNK Millenium Fight 2000 Pro") do set NWDIR=%%~a
for %%a in ("cvsgd.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Golf") do set NWDIR=%%~a
for %%a in ("dygolf.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Guilty Gear XX") do set NWDIR=%%~a
for %%a in ("ggxx.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Guilty Gear XX Accent Core") do set NWDIR=%%~a
for %%a in ("ggxxac.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Guilty Gear XX #Reload") do set NWDIR=%%~a
for %%a in ("ggxxrl.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Guilty Gear XX Slash") do set NWDIR=%%~a
for %%a in ("ggxxsla.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Mobile Suit Gundam - Federation Vs. Zeon") do set NWDIR=%%~a
for %%a in ("gundmgd.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Mobile Suit Gundam - Federation Vs. Zeon DX") do set NWDIR=%%~a
for %%a in ("gundmxgd.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Ikaruga (GDL-0010)") do set NWDIR=%%~a
for %%a in ("ikaruga.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Jingi Storm - The Arcade") do set NWDIR=%%~a
for %%a in ("jingystm.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Karous") do set NWDIR=%%~a
for %%a in ("karous.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("La Keyboard") do set NWDIR=%%~a
for %%a in ("keyboard.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Kurukuru Chameleon") do set NWDIR=%%~a
for %%a in ("kurucham.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Lupin The Third - The Shooting") do set NWDIR=%%~a
for %%a in ("lupinsho.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Lupin The Third - The Typing") do set NWDIR=%%~a
for %%a in ("luptype.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Melty Blood Act Cadenza") do set NWDIR=%%~a
for %%a in ("meltyb.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Melty Blood Act Cadenza Ver B (Rev. A)") do set NWDIR=%%~a
for %%a in ("meltyba.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Melty Blood Act Cadenza Ver A") do set NWDIR=%%~a
for %%a in ("meltybld.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Moeru Casinyo") do set NWDIR=%%~a
for %%a in ("moeru.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Maze of the Kings, The") do set NWDIR=%%~a
for %%a in ("mok.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Monkey Ball") do set NWDIR=%%~a
for %%a in ("monkeyba.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Psyvariar 2 - The Will To Fabricate") do set NWDIR=%%~a
for %%a in ("psyvar2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Puyo Puyo Fever") do set NWDIR=%%~a
for %%a in ("puyofev.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Quiz Keitai Q mode") do set NWDIR=%%~a
for %%a in ("quizqgd.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Radirgy") do set NWDIR=%%~a
for %%a in ("radirgy.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Senko No Ronde NEW") do set NWDIR=%%~a
for %%a in ("senko.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Senko No Ronde") do set NWDIR=%%~a
for %%a in ("senkoo.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Senko No Ronde Special") do set NWDIR=%%~a
for %%a in ("senkosp.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Street Fighter Zero 3 Upper") do set NWDIR=%%~a
for %%a in ("sfz3ugd.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Shakatto Tambourine Cho Powerup Chu") do set NWDIR=%%~a
for %%a in ("shaktamb.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("The Castle of Shikigami II") do set NWDIR=%%~a
for %%a in ("shikgam2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Slashout") do set NWDIR=%%~a
for %%a in ("slashout.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Spikers Battle") do set NWDIR=%%~a
for %%a in ("spkrbtl.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Sports Jam") do set NWDIR=%%~a
for %%a in ("sprtjam.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Super Shanghai 2005") do set NWDIR=%%~a
for %%a in ("ss2005.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Super Shanghai 2005 (Rev. A)") do set NWDIR=%%~a
for %%a in ("ss2005a.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Doki Doki Idol Star Seeker") do set NWDIR=%%~a
for %%a in ("starseek.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Noukone Puzzle Takoron") do set NWDIR=%%~a
for %%a in ("takoron.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Tetris Kiwamemichi") do set NWDIR=%%~a
for %%a in ("tetkiwam.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Trigger Heart Exelica") do set NWDIR=%%~a
for %%a in ("trgheart.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Trizeal") do set NWDIR=%%~a
for %%a in ("trizeal.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Under Defeat") do set NWDIR=%%~a
for %%a in ("undefeat.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Usagui - Yamashiro Mahjong Hen") do set NWDIR=%%~a
for %%a in ("usagiym.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Athletics") do set NWDIR=%%~a
for %%a in ("vathlete.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Tennis 2") do set NWDIR=%%~a
for %%a in ("vtennis2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Tennis") do set NWDIR=%%~a
for %%a in ("vtennisg.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("World Series Baseball") do set NWDIR=%%~a
for %%a in ("wsbbgd.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Club Kart - European Session (2001)") do set NWDIR=%%~a
for %%a in ("clubkrte.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Club Kart - European Session (2001) (Rev. D)") do set NWDIR=%%~a
for %%a in ("clubkrtd.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Club Kart - European Session (2003)") do set NWDIR=%%~a
for %%a in ("clubk2k3.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("King of Route 66, The") do set NWDIR=%%~a
for %%a in ("kingrt66.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Soul Surfer") do set NWDIR=%%~a
for %%a in ("soulsurf.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Fighter 4 (Cart)") do set NWDIR=%%~a
for %%a in ("vf4cart.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Fighter 4 Evolution") do set NWDIR=%%~a
for %%a in ("vf4evoct.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Striker 3 (Rev. C)") do set NWDIR=%%~a
for %%a in ("vstrik3c.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Striker 3 (Rev. B)") do set NWDIR=%%~a
for %%a in ("vstrik3cb.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Wild Rider") do set NWDIR=%%~a
for %%a in ("wldrider.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Beach Spikers") do set NWDIR=%%~a
for %%a in ("beachspi.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Initial D Arcade Stage") do set NWDIR=%%~a
for %%a in ("initd.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Initial D Arcade Stage (Export)") do set NWDIR=%%~a
for %%a in ("initdexp.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Initial D Arcade Stage Ver. 2") do set NWDIR=%%~a
for %%a in ("initdv2e.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Initial D Arcade Stage Ver. 2 (Japan)") do set NWDIR=%%~a
for %%a in ("initdv2jo.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Initial D Arcade Stage Ver. 2 (Japan) (Rev. B) (GDS-0026B)") do set NWDIR=%%~a
for %%a in ("initdv2j.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Initial D Arcade Stage Ver. 3 (Export)") do set NWDIR=%%~a
for %%a in ("initdv3e.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Initial D Arcade Stage Ver. 3 (Japan) (Rev. B) (GDS-0032B)") do set NWDIR=%%~a
for %%a in ("initdv3jb.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Initial D Arcade Stage Ver. 3 (Japan)") do set NWDIR=%%~a
for %%a in ("initdv3j.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Fighter 4") do set NWDIR=%%~a
for %%a in ("vf4.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Fighter 4 (Rev. B)") do set NWDIR=%%~a
for %%a in ("vf4b.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Fighter 4 (Rev. C)") do set NWDIR=%%~a
for %%a in ("vf4c.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Fighter 4 Evolution") do set NWDIR=%%~a
for %%a in ("vf4evo.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Fighter 4 Evolution (Rev. A)") do set NWDIR=%%~a
for %%a in ("vf4evoa.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Fighter 4 Final Tuned") do set NWDIR=%%~a
for %%a in ("vf4tuned.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Fighter 4 Final Tuned (Rev. A)") do set NWDIR=%%~a
for %%a in ("vf4tuneda.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Fighter 4 Final Tuned (Rev. D)") do set NWDIR=%%~a
for %%a in ("vf4tunedd.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Striker 3") do set NWDIR=%%~a
for %%a in ("vstrik3.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Net Select Keiba Victory Furlong") do set NWDIR=%%~a
for %%a in ("vfurlong.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Sega Bass Fishing") do set NWDIR=%%~a
for %%a in ("bass.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Fighter 3") do set NWDIR=%%~a
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
for %%a in ("Scud Race") do set NWDIR=%%~a
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
for %%a in ("Virtua Striker 2 (Step 1.5)") do set NWDIR=%%~a
for %%a in ("vs215.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Striker 2 '98") do set NWDIR=%%~a
for %%a in ("vs29815.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("The Lost World") do set NWDIR=%%~a
for %%a in ("lostwsga.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Striker 2") do set NWDIR=%%~a
for %%a in ("vs2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Harley-Davidson and L.A. Riders") do set NWDIR=%%~a
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
for %%a in ("Virtual On 2 - Oratorio Tangram") do set NWDIR=%%~a
for %%a in ("von2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtual On 2 - Oratorio Tangram (Ver. 5.4g)") do set NWDIR=%%~a
for %%a in ("von254g.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Fighting Vipers 2") do set NWDIR=%%~a
for %%a in ("fvipers2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Striker 2 '98") do set NWDIR=%%~a
for %%a in ("vs298.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Virtua Striker 2 '99.1") do set NWDIR=%%~a
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
for %%a in ("Daytona USA 2") do set NWDIR=%%~a
for %%a in ("daytona2.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Daytona USA 2 Power Edition") do set NWDIR=%%~a
for %%a in ("dayto2pe.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Dirt Devils") do set NWDIR=%%~a
for %%a in ("dirtdvls.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
for %%a in ("Dirt Devils (Rev. A)") do set NWDIR=%%~a
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
for %%a in ("Usagi - Yamashiro Mahjong Hen (GDL-0022)") do set NWDIR=%%~a
for %%a in ("usagui.zip") do set ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "%NWDIR%"
:naomiout
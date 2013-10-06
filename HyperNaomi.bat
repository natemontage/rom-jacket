if "%HYPTYPE%"=="BA" do pushd "%HSMETA%\%NAOMI%\Images\%ARTNUM%" && set NAOMINAME=Folder.png
if "%HYPTYPE%"=="VD" do pushd "%HSMETA%\%NAOMI%\Video" && set NAOMINAME=.trailer\%%~a
if "%HYPTYPE%"=="BN" do pushd "%HSMETA%\%NAOMI%\Images\Wheel" && set NAOMINAME=Banner.png
for %%a in ("18 Wheeler DX") do set NWDIR=%%~a
for %%a in ("18wheelr.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("18 Wheeler DX (Rev. A)") do set NWDIR=%%~a
for %%a in ("18wheels.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("18 Wheeler") do set NWDIR=%%~a
for %%a in ("18whlrur.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Alien Front") do set NWDIR=%%~a
for %%a in ("alienfnt.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Alien Front (Rev. A)") do set NWDIR=%%~a
for %%a in ("alienfnta.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Airline Pilots Deluxe") do set NWDIR=%%~a
for %%a in ("alpiltdx.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Airline Pilots") do set NWDIR=%%~a
for %%a in ("alpilota.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Dynamite Deka EX") do set NWDIR=%%~a
for %%a in ("asndynmt.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Akatsuki Blitzkampf Ausf. Achse") do set NWDIR=%%~a
for %%a in ("ausfache.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Capcom Vs. SNK Millennium Fight 2000") do set NWDIR=%%~a
for %%a in ("capsnk.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Capcom Vs. SNK Millennium Fight 2000 (Rev. A)") do set NWDIR=%%~a
for %%a in ("capsnka.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Crack'n DJ") do set NWDIR=%%~a
for %%a in ("crackndj.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Crazy Taxi") do set NWDIR=%%~a
for %%a in ("crzytaxi.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Cosmic Smash (Rev. A)") do set NWDIR=%%~a
for %%a in ("csmash.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Cosmic Smash") do set NWDIR=%%~a
for %%a in ("csmasho.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Cannon Spike") do set NWDIR=%%~a
for %%a in ("cspike.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Death Crimson OX") do set NWDIR=%%~a
for %%a in ("deathcox.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Derby Owners Club") do set NWDIR=%%~a
for %%a in ("derbyoc.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Derby Owners Club 2000 Ver.2") do set NWDIR=%%~a
for %%a in ("derbyo2k.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Derby Owners Club World Edition") do set NWDIR=%%~a
for %%a in ("derbyocw.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Derby Owners Club World Edition (Rev. C)") do set NWDIR=%%~a
for %%a in ("drbyocwc.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Derby Owners Club II") do set NWDIR=%%~a
for %%a in ("derbyoc2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Dead or Alive 2") do set NWDIR=%%~a
for %%a in ("doa2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Dead or Alive 2 Millennium") do set NWDIR=%%~a
for %%a in ("doa2m.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("World Series 99") do set NWDIR=%%~a
for %%a in ("dybb99.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Dynamite Baseball") do set NWDIR=%%~a
for %%a in ("dybbnao.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Ferrari F355 Challenge") do set NWDIR=%%~a
for %%a in ("f355.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Ferrari F355 Challenge (Twin)") do set NWDIR=%%~a
for %%a in ("f355twin.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Ferrari F355 Challenge 2") do set NWDIR=%%~a
for %%a in ("f355twn2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Giant Gram - All Japan Pro Wrestling 2") do set NWDIR=%%~a
for %%a in ("ggram2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Guilty Gear X") do set NWDIR=%%~a
for %%a in ("ggx.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Giant Gram 2000") do set NWDIR=%%~a
for %%a in ("gram2000.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Mobile Suit Gundam - Federation Vs. Zeon") do set NWDIR=%%~a
for %%a in ("gundmct.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Gun Survivor 2 Biohazard Code - Veronica") do set NWDIR=%%~a
for %%a in ("gunsur2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Giga Wing 2") do set NWDIR=%%~a
for %%a in ("gwing2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Heavy Metal Geomatrix") do set NWDIR=%%~a
for %%a in ("hmgeo.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Hopper Board") do set NWDIR=%%~a
for %%a in ("hopperbd.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("House of the Dead 2") do set NWDIR=%%~a
for %%a in ("hotd2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("House of the Dead 2 (original)") do set NWDIR=%%~a
for %%a in ("hotd2o.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("House of the Dead 2 (prototype)") do set NWDIR=%%~a
for %%a in ("hotd2p.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Illmatic Envelope") do set NWDIR=%%~a
for %%a in ("illvelo.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Inu No Osanpo") do set NWDIR=%%~a
for %%a in ("inunoos.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Jambo! Safari") do set NWDIR=%%~a
for %%a in ("jambo.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Kick '4' Cash") do set NWDIR=%%~a
for %%a in ("kick4csh.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Mamoru-kun wa Norowarete Shimatta!") do set NWDIR=%%~a
for %%a in ("mamonoro.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Mazan - Flash of The Blade") do set NWDIR=%%~a
for %%a in ("mazan.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Melty Blood Actress Again") do set NWDIR=%%~a
for %%a in ("mbaa.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Melty Blood Actress Again (Ver. A)") do set NWDIR=%%~a
for %%a in ("mbaaa.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Mushiking The King Of Beetles II ENG (Ver. 1.001)") do set NWDIR=%%~a
for %%a in ("mushik2e.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Mushiking The King Of Beetles II") do set NWDIR=%%~a
for %%a in ("mushi2ea.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Mushiking The King Of Beetles 2k3 2nd") do set NWDIR=%%~a
for %%a in ("mtkob2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Marvel Vs. Capcom 2 New Age of Heroes") do set NWDIR=%%~a
for %%a in ("mvsc2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Oinori") do set NWDIR=%%~a
for %%a in ("oinori.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("OutTrigger") do set NWDIR=%%~a
for %%a in ("otrigger.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Project Justice") do set NWDIR=%%~a
for %%a in ("pjustic.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Manic Panic Ghosts!") do set NWDIR=%%~a
for %%a in ("pokasuka.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Power Stone") do set NWDIR=%%~a
for %%a in ("pstone.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Power Stone 2") do set NWDIR=%%~a
for %%a in ("pstone2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Puyo Puyo Da!") do set NWDIR=%%~a
for %%a in ("puyoda.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Quiz Ah Megamisama") do set NWDIR=%%~a
for %%a in ("qmegamis.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Radirgy Noa") do set NWDIR=%%~a
for %%a in ("radirgyn.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Ring Out 4x4") do set NWDIR=%%~a
for %%a in ("ringout.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Samba De Amigo") do set NWDIR=%%~a
for %%a in ("samba.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Samba De Amigo Ver. 2000") do set NWDIR=%%~a
for %%a in ("samba2k.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Sega Tetris") do set NWDIR=%%~a
for %%a in ("sgtetris.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Dengen Tenshi Taisen Janshi Shangri-la") do set NWDIR=%%~a
for %%a in ("shangril.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Shootout Pool") do set NWDIR=%%~a
for %%a in ("shootopl.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Shootout Pool") do set NWDIR=%%~a
for %%a in ("shootpl.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Shootout Pool Medal") do set NWDIR=%%~a
for %%a in ("shootplm.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Shooting Love 2007") do set NWDIR=%%~a
for %%a in ("sl2007.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Slashout") do set NWDIR=%%~a
for %%a in ("slasho.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Sega Marine Fishing") do set NWDIR=%%~a
for %%a in ("smarinef.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Super Major League 99") do set NWDIR=%%~a
for %%a in ("smlg99.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Spawn In the Demon's Hand") do set NWDIR=%%~a
for %%a in ("spawn.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Sega Strike Fighter") do set NWDIR=%%~a
for %%a in ("sstrkfgt.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Idol Janshi Suchie-Pai 3") do set NWDIR=%%~a
for %%a in ("suchie3.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Touch De Uno! 2") do set NWDIR=%%~a
for %%a in ("tduno2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("The Typing of the Dead") do set NWDIR=%%~a
for %%a in ("totd.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Shin Nihon Prowrestling Toukon Retsuden 4 Arcade Edition") do set NWDIR=%%~a
for %%a in ("toukon4.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Toy Fighter") do set NWDIR=%%~a
for %%a in ("toyfight.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua NBA") do set NWDIR=%%~a
for %%a in ("virnba.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua NBA (original)") do set NWDIR=%%~a
for %%a in ("virnbao.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua NBA (prototype)") do set NWDIR=%%~a
for %%a in ("virnbap.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtual ON Oratorio Tangram M.S.B.S. Ver. 5.66") do set NWDIR=%%~a
for %%a in ("vonot.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Striker 2 Ver. 2000 (Rev. C)") do set NWDIR=%%~a
for %%a in ("vs2_2k.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Tennis") do set NWDIR=%%~a
for %%a in ("vtennis.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Tennis 2") do set NWDIR=%%~a
for %%a in ("vtenis2c.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("World Kicks") do set NWDIR=%%~a
for %%a in ("wldkicks.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Wave Runner GP") do set NWDIR=%%~a
for %%a in ("wrungp.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("WWF Royal Rumble") do set NWDIR=%%~a
for %%a in ("wwfroyal.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Zero Gunner 2") do set NWDIR=%%~a
for %%a in ("zerogu2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Zombie Revenge") do set NWDIR=%%~a
for %%a in ("zombrvn.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Touch de Zunou") do set NWDIR=%%~a
for %%a in ("zunou.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Azumanga Daioh Puzzle Bobble") do set NWDIR=%%~a
for %%a in ("azumanga.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Border Down") do set NWDIR=%%~a
for %%a in ("bdrdown.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Chaos Field") do set NWDIR=%%~a
for %%a in ("cfield.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Musapey's Choco Marker") do set NWDIR=%%~a
for %%a in ("chocomk.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Cleopatra Fortune Plus") do set NWDIR=%%~a
for %%a in ("cleoftp.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Confidential Mission") do set NWDIR=%%~a
for %%a in ("confmiss.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Capcom vs SNK 2 Millionaire Fighting 2001") do set NWDIR=%%~a
for %%a in ("cvs2gd.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Capcom vs SNK Millenium Fight 2000 Pro") do set NWDIR=%%~a
for %%a in ("cvsgd.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Golf") do set NWDIR=%%~a
for %%a in ("dygolf.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Guilty Gear XX") do set NWDIR=%%~a
for %%a in ("ggxx.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Guilty Gear XX Accent Core") do set NWDIR=%%~a
for %%a in ("ggxxac.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Guilty Gear XX #Reload") do set NWDIR=%%~a
for %%a in ("ggxxrl.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Guilty Gear XX Slash") do set NWDIR=%%~a
for %%a in ("ggxxsla.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Mobile Suit Gundam - Federation Vs. Zeon") do set NWDIR=%%~a
for %%a in ("gundmgd.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Mobile Suit Gundam - Federation Vs. Zeon DX") do set NWDIR=%%~a
for %%a in ("gundmxgd.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Ikaruga (GDL-0010)") do set NWDIR=%%~a
for %%a in ("ikaruga.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Jingi Storm - The Arcade") do set NWDIR=%%~a
for %%a in ("jingystm.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Karous") do set NWDIR=%%~a
for %%a in ("karous.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("La Keyboard") do set NWDIR=%%~a
for %%a in ("keyboard.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Kurukuru Chameleon") do set NWDIR=%%~a
for %%a in ("kurucham.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Lupin The Third - The Shooting") do set NWDIR=%%~a
for %%a in ("lupinsho.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Lupin The Third - The Typing") do set NWDIR=%%~a
for %%a in ("luptype.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Melty Blood Act Cadenza") do set NWDIR=%%~a
for %%a in ("meltyb.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Melty Blood Act Cadenza Ver B (Rev. A)") do set NWDIR=%%~a
for %%a in ("meltyba.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Melty Blood Act Cadenza Ver A") do set NWDIR=%%~a
for %%a in ("meltybld.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Moeru Casinyo") do set NWDIR=%%~a
for %%a in ("moeru.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Maze of the Kings, The") do set NWDIR=%%~a
for %%a in ("mok.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Monkey Ball") do set NWDIR=%%~a
for %%a in ("monkeyba.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Psyvariar 2 - The Will To Fabricate") do set NWDIR=%%~a
for %%a in ("psyvar2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Puyo Puyo Fever") do set NWDIR=%%~a
for %%a in ("puyofev.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Quiz Keitai Q mode") do set NWDIR=%%~a
for %%a in ("quizqgd.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Radirgy") do set NWDIR=%%~a
for %%a in ("radirgy.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Senko No Ronde NEW") do set NWDIR=%%~a
for %%a in ("senko.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Senko No Ronde") do set NWDIR=%%~a
for %%a in ("senkoo.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Senko No Ronde Special") do set NWDIR=%%~a
for %%a in ("senkosp.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Street Fighter Zero 3 Upper") do set NWDIR=%%~a
for %%a in ("sfz3ugd.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Shakatto Tambourine Cho Powerup Chu") do set NWDIR=%%~a
for %%a in ("shaktamb.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("The Castle of Shikigami II") do set NWDIR=%%~a
for %%a in ("shikgam2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Slashout") do set NWDIR=%%~a
for %%a in ("slashout.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Spikers Battle") do set NWDIR=%%~a
for %%a in ("spkrbtl.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Sports Jam") do set NWDIR=%%~a
for %%a in ("sprtjam.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Super Shanghai 2005") do set NWDIR=%%~a
for %%a in ("ss2005.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Super Shanghai 2005 (Rev. A)") do set NWDIR=%%~a
for %%a in ("ss2005a.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Doki Doki Idol Star Seeker") do set NWDIR=%%~a
for %%a in ("starseek.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Noukone Puzzle Takoron") do set NWDIR=%%~a
for %%a in ("takoron.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Tetris Kiwamemichi") do set NWDIR=%%~a
for %%a in ("tetkiwam.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Trigger Heart Exelica") do set NWDIR=%%~a
for %%a in ("trgheart.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Trizeal") do set NWDIR=%%~a
for %%a in ("trizeal.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Under Defeat") do set NWDIR=%%~a
for %%a in ("undefeat.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Usagui - Yamashiro Mahjong Hen") do set NWDIR=%%~a
for %%a in ("usagiym.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Athletics") do set NWDIR=%%~a
for %%a in ("vathlete.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Tennis 2") do set NWDIR=%%~a
for %%a in ("vtennis2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Tennis") do set NWDIR=%%~a
for %%a in ("vtennisg.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("World Series Baseball") do set NWDIR=%%~a
for %%a in ("wsbbgd.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Club Kart - European Session (2001)") do set NWDIR=%%~a
for %%a in ("clubkrte.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Club Kart - European Session (2001) (Rev. D)") do set NWDIR=%%~a
for %%a in ("clubkrtd.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Club Kart - European Session (2003)") do set NWDIR=%%~a
for %%a in ("clubk2k3.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("King of Route 66, The") do set NWDIR=%%~a
for %%a in ("kingrt66.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Soul Surfer") do set NWDIR=%%~a
for %%a in ("soulsurf.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Fighter 4 (Cart)") do set NWDIR=%%~a
for %%a in ("vf4cart.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Fighter 4 Evolution") do set NWDIR=%%~a
for %%a in ("vf4evoct.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Striker 3 (Rev. C)") do set NWDIR=%%~a
for %%a in ("vstrik3c.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Striker 3 (Rev. B)") do set NWDIR=%%~a
for %%a in ("vstrik3cb.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Wild Rider") do set NWDIR=%%~a
for %%a in ("wldrider.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Beach Spikers") do set NWDIR=%%~a
for %%a in ("beachspi.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Initial D Arcade Stage") do set NWDIR=%%~a
for %%a in ("initd.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Initial D Arcade Stage (Export)") do set NWDIR=%%~a
for %%a in ("initdexp.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Initial D Arcade Stage Ver. 2") do set NWDIR=%%~a
for %%a in ("initdv2e.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Initial D Arcade Stage Ver. 2 (Japan)") do set NWDIR=%%~a
for %%a in ("initdv2jo.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Initial D Arcade Stage Ver. 2 (Japan) (Rev. B) (GDS-0026B)") do set NWDIR=%%~a
for %%a in ("initdv2j.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Initial D Arcade Stage Ver. 3 (Export)") do set NWDIR=%%~a
for %%a in ("initdv3e.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Initial D Arcade Stage Ver. 3 (Japan) (Rev. B) (GDS-0032B)") do set NWDIR=%%~a
for %%a in ("initdv3jb.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Initial D Arcade Stage Ver. 3 (Japan)") do set NWDIR=%%~a
for %%a in ("initdv3j.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Fighter 4") do set NWDIR=%%~a
for %%a in ("vf4.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Fighter 4 (Rev. B)") do set NWDIR=%%~a
for %%a in ("vf4b.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Fighter 4 (Rev. C)") do set NWDIR=%%~a
for %%a in ("vf4c.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Fighter 4 Evolution") do set NWDIR=%%~a
for %%a in ("vf4evo.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Fighter 4 Evolution (Rev. A)") do set NWDIR=%%~a
for %%a in ("vf4evoa.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Fighter 4 Final Tuned") do set NWDIR=%%~a
for %%a in ("vf4tuned.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Fighter 4 Final Tuned (Rev. A)") do set NWDIR=%%~a
for %%a in ("vf4tuneda.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Fighter 4 Final Tuned (Rev. D)") do set NWDIR=%%~a
for %%a in ("vf4tunedd.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Striker 3") do set NWDIR=%%~a
for %%a in ("vstrik3.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Net Select Keiba Victory Furlong") do set NWDIR=%%~a
for %%a in ("vfurlong.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Sega Bass Fishing") do set NWDIR=%%~a
for %%a in ("bass.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Fighter 3") do set NWDIR=%%~a
for %%a in ("vf3.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Fighter 3 (Rev. A)") do set NWDIR=%%~a
for %%a in ("vf3a.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Fighter 3 Team Battle") do set NWDIR=%%~a
for %%a in ("vf3tb.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Get Bass") do set NWDIR=%%~a
for %%a in ("getbass.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("LeMans 24") do set NWDIR=%%~a
for %%a in ("lemans24.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Scud Race") do set NWDIR=%%~a
for %%a in ("scud.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Scud Race (JAP)") do set NWDIR=%%~a
for %%a in ("scudj.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Scud Race (EXP)") do set NWDIR=%%~a
for %%a in ("scuda.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Scud Race Plus") do set NWDIR=%%~a
for %%a in ("scudp.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Striker 2 (Step 1.5)") do set NWDIR=%%~a
for %%a in ("vs215.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Striker 2 '98") do set NWDIR=%%~a
for %%a in ("vs29815.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("The Lost World") do set NWDIR=%%~a
for %%a in ("lostwsga.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Striker 2") do set NWDIR=%%~a
for %%a in ("vs2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Harley-Davidson and L.A. Riders") do set NWDIR=%%~a
for %%a in ("harley.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Harley-Davidson and L.A. Riders (Rev. B)") do set NWDIR=%%~a
for %%a in ("harleyb.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("L.A. Machineguns") do set NWDIR=%%~a
for %%a in ("lamachin.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("The Ocean Hunter") do set NWDIR=%%~a
for %%a in ("oceanhun.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Ski Champ") do set NWDIR=%%~a
for %%a in ("skichamp.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Sega Rally 2") do set NWDIR=%%~a
for %%a in ("srally2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Sega Rally 2 DX") do set NWDIR=%%~a
for %%a in ("srally2x.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtual On 2 - Oratorio Tangram") do set NWDIR=%%~a
for %%a in ("von2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtual On 2 - Oratorio Tangram (Ver. 5.4g)") do set NWDIR=%%~a
for %%a in ("von254g.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Fighting Vipers 2") do set NWDIR=%%~a
for %%a in ("fvipers2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Striker 2 '98") do set NWDIR=%%~a
for %%a in ("vs298.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Striker 2 '99.1") do set NWDIR=%%~a
for %%a in ("vs2v991.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Striker 2 '99 (Rev. B)") do set NWDIR=%%~a
for %%a in ("vs299b.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Striker 2 '99 (Rev. A)") do set NWDIR=%%~a
for %%a in ("vs299a.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Virtua Striker 2 '99") do set NWDIR=%%~a
for %%a in ("vs299.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Daytona USA 2") do set NWDIR=%%~a
for %%a in ("daytona2.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Daytona USA 2 Power Edition") do set NWDIR=%%~a
for %%a in ("dayto2pe.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Dirt Devils") do set NWDIR=%%~a
for %%a in ("dirtdvls.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Dirt Devils (Rev. A)") do set NWDIR=%%~a
for %%a in ("dirtdvlsa.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Star Wars Trilogy (Rev. A)") do set NWDIR=%%~a
for %%a in ("swtrilgy.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Star Wars Trilogy") do set NWDIR=%%~a
for %%a in ("swtrilgya.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Spikeout") do set NWDIR=%%~a
for %%a in ("spikeout.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Spikeout Final Edition") do set NWDIR=%%~a
for %%a in ("spikeofe.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Magical Truck Adventure") do set NWDIR=%%~a
for %%a in ("magtruck.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Emergency Call Ambulance") do set NWDIR=%%~a
for %%a in ("eca.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"
for %%a in ("Emergency Call Ambulance (EXP)") do set NWDIR=%%~a
for %%a in ("ecax.png") do if exist %GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NAOMI%\%NWDIR%\%NAOMINAME%"

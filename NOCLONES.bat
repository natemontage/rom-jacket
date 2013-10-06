goto :SORTOUT
:INTO
if exist "%ROM%" mkdir "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%ARCD%\%NWDIR%\%ROM%" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE\%ROM%"
:SORTOUT
for %%a in ("1 on 1 Government") do set NWDIR=%%~a
for %%a in ("1on1gov.zip") do set ROM=%%~a
call :INTO
for %%a in ("1000 Miglia - Great 1000 Miles Rally") do set NWDIR=%%~a
for %%a in ("gtmr.zip") do set ROM=%%~a
call :INTO
for %%a in ("10-Yard Fight") do set NWDIR=%%~a
for %%a in ("10yard.zip") do set ROM=%%~a
call :INTO
for %%a in ("18 Holes Pro Golf") do set NWDIR=%%~a
for %%a in ("progolf.zip") do set ROM=%%~a
call :INTO
for %%a in ("1941 - Counter Attack") do set NWDIR=%%~a
for %%a in ("1941.zip") do set ROM=%%~a
call :INTO
for %%a in ("1942") do set NWDIR=%%~a
for %%a in ("1942.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- 1942") do set NWDIR=%%~a
for %%a in ("pc_1942.zip") do set ROM=%%~a
call :INTO
for %%a in ("1943 Kai") do set NWDIR=%%~a
for %%a in ("1943kai.zip") do set ROM=%%~a
call :INTO
for %%a in ("1943 - The Battle of Midway") do set NWDIR=%%~a
for %%a in ("1943.zip") do set ROM=%%~a
call :INTO
for %%a in ("1944 - The Loop Master") do set NWDIR=%%~a
for %%a in ("1944.zip") do set ROM=%%~a
call :INTO
for %%a in ("1945k III") do set NWDIR=%%~a
for %%a in ("1945kiii.zip") do set ROM=%%~a
call :INTO
for %%a in ("19XX - The War Against Destiny") do set NWDIR=%%~a
for %%a in ("19xx.zip") do set ROM=%%~a
call :INTO
for %%a in ("2 On 2 Open Ice Challenge") do set NWDIR=%%~a
for %%a in ("openice.zip") do set ROM=%%~a
call :INTO
for %%a in ("2020 Super Baseball") do set NWDIR=%%~a
for %%a in ("2020bb.zip") do set ROM=%%~a
call :INTO
for %%a in ("3 Count Bout - Fire Suplex") do set NWDIR=%%~a
for %%a in ("3countb.zip") do set ROM=%%~a
call :INTO
for %%a in ("30 Test") do set NWDIR=%%~a
for %%a in ("30test.zip") do set ROM=%%~a
call :INTO
for %%a in ("39 in 1 MAME bootleg") do set NWDIR=%%~a
for %%a in ("39in1.zip") do set ROM=%%~a
call :INTO
for %%a in ("4 En Raya") do set NWDIR=%%~a
for %%a in ("4enraya.zip") do set ROM=%%~a
call :INTO
for %%a in ("4 Fun in 1") do set NWDIR=%%~a
for %%a in ("4in1.zip") do set ROM=%%~a
call :INTO
for %%a in ("4-D Warriors") do set NWDIR=%%~a
for %%a in ("4dwarrio.zip") do set ROM=%%~a
call :INTO
for %%a in ("4nin-uchi Mahjong Jantotsu") do set NWDIR=%%~a
for %%a in ("jantotsu.zip") do set ROM=%%~a
call :INTO
for %%a in ("64th. Street - A Detective Story") do set NWDIR=%%~a
for %%a in ("64street.zip") do set ROM=%%~a
call :INTO
for %%a in ("7 e Mezzo") do set NWDIR=%%~a
for %%a in ("7mezzo.zip") do set ROM=%%~a
call :INTO
for %%a in ("7 Ordi") do set NWDIR=%%~a
for %%a in ("7ordi.zip") do set ROM=%%~a
call :INTO
for %%a in ("720 Degrees") do set NWDIR=%%~a
for %%a in ("720.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong 7 Dimensions") do set NWDIR=%%~a
for %%a in ("7jigen.zip") do set ROM=%%~a
call :INTO
for %%a in ("88 Games") do set NWDIR=%%~a
for %%a in ("88games.zip") do set ROM=%%~a
call :INTO
for %%a in ("9-Ball Shootout") do set NWDIR=%%~a
for %%a in ("9ballsht.zip") do set ROM=%%~a
call :INTO
for %%a in ("A Question of Sport") do set NWDIR=%%~a
for %%a in ("qos.zip") do set ROM=%%~a
call :INTO
for %%a in ("A. D. 2083") do set NWDIR=%%~a
for %%a in ("ad2083.zip") do set ROM=%%~a
call :INTO
for %%a in ("A.B. Cop") do set NWDIR=%%~a
for %%a in ("abcop.zip") do set ROM=%%~a
call :INTO
for %%a in ("Abunai Houkago - Mou Matenai") do set NWDIR=%%~a
for %%a in ("abunai.zip") do set ROM=%%~a
call :INTO
for %%a in ("Acclaim PSX") do set NWDIR=%%~a
for %%a in ("acpsx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ace") do set NWDIR=%%~a
for %%a in ("ace.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ace Driver - Racing Evolution") do set NWDIR=%%~a
for %%a in ("acedrvrw.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ace Driver - Victory Lap") do set NWDIR=%%~a
for %%a in ("victlapw.zip") do set ROM=%%~a
call :INTO
for %%a in ("Acrobat Mission") do set NWDIR=%%~a
for %%a in ("acrobatm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Acrobatic Dog-Fight") do set NWDIR=%%~a
for %%a in ("dogfgt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Act-Fancer Cybernetick Hyper Weapon") do set NWDIR=%%~a
for %%a in ("actfancr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Action 2000") do set NWDIR=%%~a
for %%a in ("act2000.zip") do set ROM=%%~a
call :INTO
for %%a in ("Action Fighter") do set NWDIR=%%~a
for %%a in ("afighter.zip") do set ROM=%%~a
call :INTO
for %%a in ("Action Hollywood") do set NWDIR=%%~a
for %%a in ("actionhw.zip") do set ROM=%%~a
call :INTO
for %%a in ("Adventure Quiz 2 Hatena Hatena no Dai-Bouken") do set NWDIR=%%~a
for %%a in ("hatena.zip") do set ROM=%%~a
call :INTO
for %%a in ("Adventure Quiz Capcom World 2") do set NWDIR=%%~a
for %%a in ("cworld2j.zip") do set ROM=%%~a
call :INTO
for %%a in ("Aero Fighters") do set NWDIR=%%~a
for %%a in ("aerofgt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Aero Fighters 2 - Sonic Wings 2") do set NWDIR=%%~a
for %%a in ("sonicwi2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Aero Fighters 3 - Sonic Wings 3") do set NWDIR=%%~a
for %%a in ("sonicwi3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Aero Fighters Special") do set NWDIR=%%~a
for %%a in ("aerofgts.zip") do set ROM=%%~a
call :INTO
for %%a in ("After Burner II") do set NWDIR=%%~a
for %%a in ("aburner2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Age Of Heroes - Silkroad 2") do set NWDIR=%%~a
for %%a in ("aoh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Agent Super Bond") do set NWDIR=%%~a
for %%a in ("superbon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Aggressors of Dark Kombat") do set NWDIR=%%~a
for %%a in ("aodk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Agress") do set NWDIR=%%~a
for %%a in ("agress.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ah Eikou no Koshien") do set NWDIR=%%~a
for %%a in ("koshien.zip") do set ROM=%%~a
call :INTO
for %%a in ("Air Attack") do set NWDIR=%%~a
for %%a in ("airattck.zip") do set ROM=%%~a
call :INTO
for %%a in ("Air Buster - Trouble Specialty Raid Unit") do set NWDIR=%%~a
for %%a in ("airbustr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Air Duel") do set NWDIR=%%~a
for %%a in ("airduel.zip") do set ROM=%%~a
call :INTO
for %%a in ("Air Gallet") do set NWDIR=%%~a
for %%a in ("agallet.zip") do set ROM=%%~a
call :INTO
for %%a in ("Air Race") do set NWDIR=%%~a
for %%a in ("airrace.zip") do set ROM=%%~a
call :INTO
for %%a in ("Air Rescue") do set NWDIR=%%~a
for %%a in ("arescue.zip") do set ROM=%%~a
call :INTO
for %%a in ("Airwolf") do set NWDIR=%%~a
for %%a in ("airwolf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ajax") do set NWDIR=%%~a
for %%a in ("ajax.zip") do set ROM=%%~a
call :INTO
for %%a in ("Aladdin") do set NWDIR=%%~a
for %%a in ("aladmdb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Alcon") do set NWDIR=%%~a
for %%a in ("alcon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Alex Kidd - The Lost Stars") do set NWDIR=%%~a
for %%a in ("alexkidd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ali Baba and 40 Thieves") do set NWDIR=%%~a
for %%a in ("alibaba.zip") do set ROM=%%~a
call :INTO
for %%a in ("Alien Arena") do set NWDIR=%%~a
for %%a in ("alienar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Alien Challenge") do set NWDIR=%%~a
for %%a in ("aliencha.zip") do set ROM=%%~a
call :INTO
for %%a in ("Alien Crush") do set NWDIR=%%~a
for %%a in ("aliencr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Alien Sector") do set NWDIR=%%~a
for %%a in ("aliensec.zip") do set ROM=%%~a
call :INTO
for %%a in ("Alien Storm") do set NWDIR=%%~a
for %%a in ("astorm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Alien Syndrome") do set NWDIR=%%~a
for %%a in ("aliensyn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Alien") do set NWDIR=%%~a
for %%a in ("avsp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Alien3 - The Gun") do set NWDIR=%%~a
for %%a in ("alien3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Aliens") do set NWDIR=%%~a
for %%a in ("aliens.zip") do set ROM=%%~a
call :INTO
for %%a in ("All American Football") do set NWDIR=%%~a
for %%a in ("aafb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Alley Master") do set NWDIR=%%~a
for %%a in ("alleymas.zip") do set ROM=%%~a
call :INTO
for %%a in ("Allied System") do set NWDIR=%%~a
for %%a in ("allied.zip") do set ROM=%%~a
call :INTO
for %%a in ("Almond Pinky") do set NWDIR=%%~a
for %%a in ("mjapinky.zip") do set ROM=%%~a
call :INTO
for %%a in ("Alpha Fighter - Head On") do set NWDIR=%%~a
for %%a in ("alphaho.zip") do set ROM=%%~a
call :INTO
for %%a in ("Alpha Mission II - ASO II - Last Guardian") do set NWDIR=%%~a
for %%a in ("alpham2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Alpine Racer") do set NWDIR=%%~a
for %%a in ("alpinerd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Alpine Racer 2") do set NWDIR=%%~a
for %%a in ("alpinr2b.zip") do set ROM=%%~a
call :INTO
for %%a in ("Alpine Ski") do set NWDIR=%%~a
for %%a in ("alpine.zip") do set ROM=%%~a
call :INTO
for %%a in ("Altair") do set NWDIR=%%~a
for %%a in ("altair.zip") do set ROM=%%~a
call :INTO
for %%a in ("Altered Beast") do set NWDIR=%%~a
for %%a in ("altbeast.zip") do set ROM=%%~a
call :INTO
for %%a in ("Amazing Maze") do set NWDIR=%%~a
for %%a in ("maze.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ambush") do set NWDIR=%%~a
for %%a in ("ambush.zip") do set ROM=%%~a
call :INTO
for %%a in ("American Horseshoes") do set NWDIR=%%~a
for %%a in ("horshoes.zip") do set ROM=%%~a
call :INTO
for %%a in ("American Poker II") do set NWDIR=%%~a
for %%a in ("ampoker2.zip") do set ROM=%%~a
call :INTO
for %%a in ("American Speedway") do set NWDIR=%%~a
for %%a in ("amspdwy.zip") do set ROM=%%~a
call :INTO
for %%a in ("AmeriDarts") do set NWDIR=%%~a
for %%a in ("amerdart.zip") do set ROM=%%~a
call :INTO
for %%a in ("Amidar") do set NWDIR=%%~a
for %%a in ("amidar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Amuse") do set NWDIR=%%~a
for %%a in ("amuse.zip") do set ROM=%%~a
call :INTO
for %%a in ("Andro Dunos") do set NWDIR=%%~a
for %%a in ("androdun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Angel Kids") do set NWDIR=%%~a
for %%a in ("angelkds.zip") do set ROM=%%~a
call :INTO
for %%a in ("Animal Bonus") do set NWDIR=%%~a
for %%a in ("anibonus.zip") do set ROM=%%~a
call :INTO
for %%a in ("Animal Bonus Nudge") do set NWDIR=%%~a
for %%a in ("abnudge.zip") do set ROM=%%~a
call :INTO
for %%a in ("Animal Catch") do set NWDIR=%%~a
for %%a in ("animalc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Animal Treasure Hunt") do set NWDIR=%%~a
for %%a in ("anithunt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Anteater") do set NWDIR=%%~a
for %%a in ("anteater.zip") do set ROM=%%~a
call :INTO
for %%a in ("Apache 3") do set NWDIR=%%~a
for %%a in ("apache3.zip") do set ROM=%%~a
call :INTO
for %%a in ("APB - All Points Bulletin") do set NWDIR=%%~a
for %%a in ("apb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Apparel Night") do set NWDIR=%%~a
for %%a in ("apparel.zip") do set ROM=%%~a
call :INTO
for %%a in ("Apple 10") do set NWDIR=%%~a
for %%a in ("apple10.zip") do set ROM=%%~a
call :INTO
for %%a in ("Appoooh") do set NWDIR=%%~a
for %%a in ("appoooh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Aqua Jack") do set NWDIR=%%~a
for %%a in ("aquajack.zip") do set ROM=%%~a
call :INTO
for %%a in ("Aqua Jet") do set NWDIR=%%~a
for %%a in ("aquajet.zip") do set ROM=%%~a
call :INTO
for %%a in ("Aqua Rush") do set NWDIR=%%~a
for %%a in ("aquarush.zip") do set ROM=%%~a
call :INTO
for %%a in ("Aquarium") do set NWDIR=%%~a
for %%a in ("aquarium.zip") do set ROM=%%~a
call :INTO
for %%a in ("Arabian") do set NWDIR=%%~a
for %%a in ("arabian.zip") do set ROM=%%~a
call :INTO
for %%a in ("Arabian Fight") do set NWDIR=%%~a
for %%a in ("arabfgt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Arabian Magic") do set NWDIR=%%~a
for %%a in ("arabianm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Arbalester") do set NWDIR=%%~a
for %%a in ("arbalest.zip") do set ROM=%%~a
call :INTO
for %%a in ("Arcade Classics") do set NWDIR=%%~a
for %%a in ("arcadecl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Arch Rivals") do set NWDIR=%%~a
for %%a in ("archrivl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Area 51") do set NWDIR=%%~a
for %%a in ("area51.zip") do set ROM=%%~a
call :INTO
for %%a in ("Area 51 - Maximum Force Duo") do set NWDIR=%%~a
for %%a in ("area51mx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Argus") do set NWDIR=%%~a
for %%a in ("argus.zip") do set ROM=%%~a
call :INTO
for %%a in ("Argus (Prototype)") do set NWDIR=%%~a
for %%a in ("argusg.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ark Area") do set NWDIR=%%~a
for %%a in ("arkarea.zip") do set ROM=%%~a
call :INTO
for %%a in ("Arkanoid") do set NWDIR=%%~a
for %%a in ("arkanoid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Arkanoid - Revenge of DOH") do set NWDIR=%%~a
for %%a in ("arknoid2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Arkanoid Returns") do set NWDIR=%%~a
for %%a in ("arkretrn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Arlington Horse Racing") do set NWDIR=%%~a
for %%a in ("arlingtn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Arm Champs II") do set NWDIR=%%~a
for %%a in ("armchmp2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Arm Wrestling") do set NWDIR=%%~a
for %%a in ("armwrest.zip") do set ROM=%%~a
call :INTO
for %%a in ("Armed Formation") do set NWDIR=%%~a
for %%a in ("armedf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Armed Police Batrider") do set NWDIR=%%~a
for %%a in ("batrider.zip") do set ROM=%%~a
call :INTO
for %%a in ("Armored Car") do set NWDIR=%%~a
for %%a in ("armorcar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Armored Warriors") do set NWDIR=%%~a
for %%a in ("armwar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Around The World") do set NWDIR=%%~a
for %%a in ("atworld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Art of Fighting") do set NWDIR=%%~a
for %%a in ("aof.zip") do set ROM=%%~a
call :INTO
for %%a in ("Art of Fighting 2") do set NWDIR=%%~a
for %%a in ("aof2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Art of Fighting 3 - The Path of the Warrior") do set NWDIR=%%~a
for %%a in ("aof3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ashura Blaster") do set NWDIR=%%~a
for %%a in ("ashura.zip") do set ROM=%%~a
call :INTO
for %%a in ("ASO - Armored Scrum Object") do set NWDIR=%%~a
for %%a in ("aso.zip") do set ROM=%%~a
call :INTO
for %%a in ("Assault") do set NWDIR=%%~a
for %%a in ("assault.zip") do set ROM=%%~a
call :INTO
for %%a in ("Asterix") do set NWDIR=%%~a
for %%a in ("asterix.zip") do set ROM=%%~a
call :INTO
for %%a in ("Asteroids") do set NWDIR=%%~a
for %%a in ("asteroid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Asteroids Deluxe") do set NWDIR=%%~a
for %%a in ("astdelux.zip") do set ROM=%%~a
call :INTO
for %%a in ("Astra SuperStars") do set NWDIR=%%~a
for %%a in ("astrass.zip") do set ROM=%%~a
call :INTO
for %%a in ("Astro Chase") do set NWDIR=%%~a
for %%a in ("mf_achas.zip") do set ROM=%%~a
call :INTO
for %%a in ("Astro Fantasia") do set NWDIR=%%~a
for %%a in ("castfant.zip") do set ROM=%%~a
call :INTO
for %%a in ("Astro Wars") do set NWDIR=%%~a
for %%a in ("astrowar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Astropal") do set NWDIR=%%~a
for %%a in ("astropal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Asuka & Asuka") do set NWDIR=%%~a
for %%a in ("asuka.zip") do set ROM=%%~a
call :INTO
for %%a in ("Asura Blade - Sword of Dynasty") do set NWDIR=%%~a
for %%a in ("asurabld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Asura Buster - Eternal Warriors") do set NWDIR=%%~a
for %%a in ("asurabus.zip") do set ROM=%%~a
call :INTO
for %%a in ("Asylum") do set NWDIR=%%~a
for %%a in ("asylum.zip") do set ROM=%%~a
call :INTO
for %%a in ("Atari Baseball") do set NWDIR=%%~a
for %%a in ("abaseb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Atari Football") do set NWDIR=%%~a
for %%a in ("atarifb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Atari Mini Golf") do set NWDIR=%%~a
for %%a in ("mgolf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Atari PSX") do set NWDIR=%%~a
for %%a in ("atpsx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Atari Soccer") do set NWDIR=%%~a
for %%a in ("soccer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ataxx") do set NWDIR=%%~a
for %%a in ("ataxx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Athena") do set NWDIR=%%~a
for %%a in ("athena.zip") do set ROM=%%~a
call :INTO
for %%a in ("Athena no Hatena") do set NWDIR=%%~a
for %%a in ("atehate.zip") do set ROM=%%~a
call :INTO
for %%a in ("Atlus PSX") do set NWDIR=%%~a
for %%a in ("atluspsx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Atomic Point") do set NWDIR=%%~a
for %%a in ("atomicp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Atomic Robo-kid") do set NWDIR=%%~a
for %%a in ("robokid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Attack Ufo") do set NWDIR=%%~a
for %%a in ("attckufo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Aurail") do set NWDIR=%%~a
for %%a in ("aurail.zip") do set ROM=%%~a
call :INTO
for %%a in ("Avalanche") do set NWDIR=%%~a
for %%a in ("avalnche.zip") do set ROM=%%~a
call :INTO
for %%a in ("Avengers") do set NWDIR=%%~a
for %%a in ("avengers.zip") do set ROM=%%~a
call :INTO
for %%a in ("Avengers In Galactic Storm") do set NWDIR=%%~a
for %%a in ("avengrgs.zip") do set ROM=%%~a
call :INTO
for %%a in ("Avenging Spirit") do set NWDIR=%%~a
for %%a in ("avspirit.zip") do set ROM=%%~a
call :INTO
for %%a in ("Aztarac") do set NWDIR=%%~a
for %%a in ("aztarac.zip") do set ROM=%%~a
call :INTO
for %%a in ("Azurian Attack") do set NWDIR=%%~a
for %%a in ("azurian.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bonks Adventure") do set NWDIR=%%~a
for %%a in ("bonkadv.zip") do set ROM=%%~a
call :INTO
for %%a in ("B.C. Story") do set NWDIR=%%~a
for %%a in ("bcstry.zip") do set ROM=%%~a
call :INTO
for %%a in ("B.Rap Boys") do set NWDIR=%%~a
for %%a in ("brapboys.zip") do set ROM=%%~a
call :INTO
for %%a in ("Baby Phoenix-GV System") do set NWDIR=%%~a
for %%a in ("konamigv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Back Fire") do set NWDIR=%%~a
for %%a in ("backfirt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Back Street Soccer") do set NWDIR=%%~a
for %%a in ("bssoccer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Backfire!") do set NWDIR=%%~a
for %%a in ("backfire.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bad Dudes") do set NWDIR=%%~a
for %%a in ("baddudes.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bad Lands") do set NWDIR=%%~a
for %%a in ("badlands.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bagman") do set NWDIR=%%~a
for %%a in ("bagman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bakatonosama Mahjong Manyuuki") do set NWDIR=%%~a
for %%a in ("bakatono.zip") do set ROM=%%~a
call :INTO
for %%a in ("Baku Baku Animal") do set NWDIR=%%~a
for %%a in ("bakubaku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bakuretsu Quiz Ma-Q Dai Bouken") do set NWDIR=%%~a
for %%a in ("bkrtmaq.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bakutotsu Kijuutei") do set NWDIR=%%~a
for %%a in ("bakutotu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bal Cube") do set NWDIR=%%~a
for %%a in ("balcube.zip") do set ROM=%%~a
call :INTO
for %%a in ("Balloon Brothers") do set NWDIR=%%~a
for %%a in ("ballbros.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Balloon Fight") do set NWDIR=%%~a
for %%a in ("pc_bfght.zip") do set ROM=%%~a
call :INTO
for %%a in ("Baluba-louk no Densetsu") do set NWDIR=%%~a
for %%a in ("baluba.zip") do set ROM=%%~a
call :INTO
for %%a in ("BanBam") do set NWDIR=%%~a
for %%a in ("banbam.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bang Bang Ball") do set NWDIR=%%~a
for %%a in ("bangball.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bang Bead") do set NWDIR=%%~a
for %%a in ("bangbead.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bang!") do set NWDIR=%%~a
for %%a in ("bang.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bank Panic") do set NWDIR=%%~a
for %%a in ("bankp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Barline") do set NWDIR=%%~a
for %%a in ("barline.zip") do set ROM=%%~a
call :INTO
for %%a in ("Barricade") do set NWDIR=%%~a
for %%a in ("barricad.zip") do set ROM=%%~a
call :INTO
for %%a in ("Baryon - Future Assault") do set NWDIR=%%~a
for %%a in ("baryon.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Baseball") do set NWDIR=%%~a
for %%a in ("pc_bball.zip") do set ROM=%%~a
call :INTO
for %%a in ("Baseball Stars 2") do set NWDIR=%%~a
for %%a in ("bstars2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Baseball Stars Professional") do set NWDIR=%%~a
for %%a in ("bstars.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Baseball Stars - Be a Champ!") do set NWDIR=%%~a
for %%a in ("pc_bstar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Baseball - The Season II") do set NWDIR=%%~a
for %%a in ("basebal2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Basketball") do set NWDIR=%%~a
for %%a in ("bsktball.zip") do set ROM=%%~a
call :INTO
for %%a in ("Batman") do set NWDIR=%%~a
for %%a in ("batman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Batman Forever") do set NWDIR=%%~a
for %%a in ("batmanfr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Batsugun") do set NWDIR=%%~a
for %%a in ("batsugun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battlantis") do set NWDIR=%%~a
for %%a in ("battlnts.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battle Arena Toshinden 2") do set NWDIR=%%~a
for %%a in ("ts2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battle Bakraid - Unlimited Version") do set NWDIR=%%~a
for %%a in ("bbakraid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battle Chopper") do set NWDIR=%%~a
for %%a in ("bchopper.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battle Circuit") do set NWDIR=%%~a
for %%a in ("batcir.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battle Cross") do set NWDIR=%%~a
for %%a in ("battlex.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battle Cruiser M-12") do set NWDIR=%%~a
for %%a in ("bcruzm12.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battle Flip Shot") do set NWDIR=%%~a
for %%a in ("flipshot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battle Garegga") do set NWDIR=%%~a
for %%a in ("bgaregga.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battle K-Road") do set NWDIR=%%~a
for %%a in ("btlkroad.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battle Lane! Vol. 5") do set NWDIR=%%~a
for %%a in ("battlane.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battle of Atlantis") do set NWDIR=%%~a
for %%a in ("atlantis.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battle of the Solar System") do set NWDIR=%%~a
for %%a in ("botss.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battle Rangers") do set NWDIR=%%~a
for %%a in ("battlera.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battle Shark") do set NWDIR=%%~a
for %%a in ("bshark.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battle Toads") do set NWDIR=%%~a
for %%a in ("btoads.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battle Zone") do set NWDIR=%%~a
for %%a in ("bzone.zip") do set ROM=%%~a
call :INTO
for %%a in ("Battlecry") do set NWDIR=%%~a
for %%a in ("battlcry.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bay Route") do set NWDIR=%%~a
for %%a in ("bayroute.zip") do set ROM=%%~a
call :INTO
for %%a in ("Beach Festival World Championship 1997") do set NWDIR=%%~a
for %%a in ("wbbc97.zip") do set ROM=%%~a
call :INTO
for %%a in ("Beam Invader") do set NWDIR=%%~a
for %%a in ("beaminv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Beast Busters") do set NWDIR=%%~a
for %%a in ("bbusters.zip") do set ROM=%%~a
call :INTO
for %%a in ("Beastorizer") do set NWDIR=%%~a
for %%a in ("beastrzr.zip") do set ROM=%%~a
call :INTO
for %%a in ("BeatHead") do set NWDIR=%%~a
for %%a in ("beathead.zip") do set ROM=%%~a
call :INTO
for %%a in ("beatmania") do set NWDIR=%%~a
for %%a in ("bm1stmix.zip") do set ROM=%%~a
call :INTO
for %%a in ("beatmania 2nd MIX") do set NWDIR=%%~a
for %%a in ("bm2ndmix.zip") do set ROM=%%~a
call :INTO
for %%a in ("beatmania 3rd MIX") do set NWDIR=%%~a
for %%a in ("bm3rdmix.zip") do set ROM=%%~a
call :INTO
for %%a in ("beatmania 4th MIX") do set NWDIR=%%~a
for %%a in ("bm4thmix.zip") do set ROM=%%~a
call :INTO
for %%a in ("beatmania 5th MIX") do set NWDIR=%%~a
for %%a in ("bm5thmix.zip") do set ROM=%%~a
call :INTO
for %%a in ("beatmania 6th MIX") do set NWDIR=%%~a
for %%a in ("bm6thmix.zip") do set ROM=%%~a
call :INTO
for %%a in ("beatmania 7th MIX") do set NWDIR=%%~a
for %%a in ("bm7thmix.zip") do set ROM=%%~a
call :INTO
for %%a in ("beatmania Club MIX") do set NWDIR=%%~a
for %%a in ("bmclubmx.zip") do set ROM=%%~a
call :INTO
for %%a in ("beatmania complete MIX") do set NWDIR=%%~a
for %%a in ("bmcompmx.zip") do set ROM=%%~a
call :INTO
for %%a in ("beatmania complete MIX 2") do set NWDIR=%%~a
for %%a in ("bmcompm2.zip") do set ROM=%%~a
call :INTO
for %%a in ("beatmania CORE REMIX") do set NWDIR=%%~a
for %%a in ("bmcorerm.zip") do set ROM=%%~a
call :INTO
for %%a in ("beatmania featuring Dreams Come True") do set NWDIR=%%~a
for %%a in ("bmdct.zip") do set ROM=%%~a
call :INTO
for %%a in ("beatmania THE FINAL") do set NWDIR=%%~a
for %%a in ("bmfinal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Beezer") do set NWDIR=%%~a
for %%a in ("beezer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bells & Whistles") do set NWDIR=%%~a
for %%a in ("blswhstl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ben Bero Beh") do set NWDIR=%%~a
for %%a in ("benberob.zip") do set ROM=%%~a
call :INTO
for %%a in ("Beraboh Man") do set NWDIR=%%~a
for %%a in ("berabohm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bermuda Triangle") do set NWDIR=%%~a
for %%a in ("bermudat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Berzerk") do set NWDIR=%%~a
for %%a in ("berzerk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Best Bout Boxing") do set NWDIR=%%~a
for %%a in ("bbbxing.zip") do set ROM=%%~a
call :INTO
for %%a in ("Best Of Best") do set NWDIR=%%~a
for %%a in ("bestbest.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bestri") do set NWDIR=%%~a
for %%a in ("bestri.zip") do set ROM=%%~a
call :INTO
for %%a in ("Big 10") do set NWDIR=%%~a
for %%a in ("big10.zip") do set ROM=%%~a
call :INTO
for %%a in ("Big Apple Games") do set NWDIR=%%~a
for %%a in ("bigappg.zip") do set ROM=%%~a
call :INTO
for %%a in ("Big Bucks") do set NWDIR=%%~a
for %%a in ("bigbucks.zip") do set ROM=%%~a
call :INTO
for %%a in ("Big Deal") do set NWDIR=%%~a
for %%a in ("bigdeal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Big Event Golf") do set NWDIR=%%~a
for %%a in ("bigevglf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Big Fight - Big Trouble In The Atlantic Ocean") do set NWDIR=%%~a
for %%a in ("bigfight.zip") do set ROM=%%~a
call :INTO
for %%a in ("Big Karnak") do set NWDIR=%%~a
for %%a in ("bigkarnk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Big Run") do set NWDIR=%%~a
for %%a in ("bigrun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Big Striker") do set NWDIR=%%~a
for %%a in ("bigstrik.zip") do set ROM=%%~a
call :INTO
for %%a in ("Big Twin") do set NWDIR=%%~a
for %%a in ("bigtwin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bigfoot Bonkers") do set NWDIR=%%~a
for %%a in ("bbonk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bijokko Gakuen") do set NWDIR=%%~a
for %%a in ("bijokkog.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bijokko Yume Monogatari") do set NWDIR=%%~a
for %%a in ("bijokkoy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bikkuri Card") do set NWDIR=%%~a
for %%a in ("bikkuric.zip") do set ROM=%%~a
call :INTO
for %%a in ("Billiard") do set NWDIR=%%~a
for %%a in ("bilyard.zip") do set ROM=%%~a
call :INTO
for %%a in ("Billiard Academy Real Break") do set NWDIR=%%~a
for %%a in ("realbrk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bingo") do set NWDIR=%%~a
for %%a in ("bingowng.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bio Attack") do set NWDIR=%%~a
for %%a in ("bioatack.zip") do set ROM=%%~a
call :INTO
for %%a in ("BioFreaks") do set NWDIR=%%~a
for %%a in ("biofreak.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bio-hazard Battle") do set NWDIR=%%~a
for %%a in ("mp_bio.zip") do set ROM=%%~a
call :INTO
for %%a in ("Biomechanical Toy") do set NWDIR=%%~a
for %%a in ("biomtoy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bionic Commando") do set NWDIR=%%~a
for %%a in ("bionicc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bio-ship Paladin") do set NWDIR=%%~a
for %%a in ("bioship.zip") do set ROM=%%~a
call :INTO
for %%a in ("Birdie King") do set NWDIR=%%~a
for %%a in ("bking.zip") do set ROM=%%~a
call :INTO
for %%a in ("Birdie King 2") do set NWDIR=%%~a
for %%a in ("bking2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Birdie King 3") do set NWDIR=%%~a
for %%a in ("bking3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Birdie Try") do set NWDIR=%%~a
for %%a in ("birdtry.zip") do set ROM=%%~a
call :INTO
for %%a in ("Birdiy") do set NWDIR=%%~a
for %%a in ("birdiy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bishi Bashi Championship Mini Game Senshuken") do set NWDIR=%%~a
for %%a in ("bishi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bishou Jan") do set NWDIR=%%~a
for %%a in ("bishjan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bishoujo Janshi Pretty Sailor 18-kin") do set NWDIR=%%~a
for %%a in ("psailor1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bishoujo Janshi Pretty Sailor 2") do set NWDIR=%%~a
for %%a in ("psailor2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Black Heart") do set NWDIR=%%~a
for %%a in ("blkheart.zip") do set ROM=%%~a
call :INTO
for %%a in ("Black Hole") do set NWDIR=%%~a
for %%a in ("blkhole.zip") do set ROM=%%~a
call :INTO
for %%a in ("Black Panther") do set NWDIR=%%~a
for %%a in ("blkpnthr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Black Tiger") do set NWDIR=%%~a
for %%a in ("blktiger.zip") do set ROM=%%~a
call :INTO
for %%a in ("Black Touch") do set NWDIR=%%~a
for %%a in ("blktouch.zip") do set ROM=%%~a
call :INTO
for %%a in ("Black Widow") do set NWDIR=%%~a
for %%a in ("bwidow.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blade Master") do set NWDIR=%%~a
for %%a in ("bmaster.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blades of Steel") do set NWDIR=%%~a
for %%a in ("bladestl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blandia") do set NWDIR=%%~a
for %%a in ("blandia.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blast Off") do set NWDIR=%%~a
for %%a in ("blastoff.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blasted") do set NWDIR=%%~a
for %%a in ("blasted.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blaster") do set NWDIR=%%~a
for %%a in ("blaster.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blasteroids") do set NWDIR=%%~a
for %%a in ("blstroid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blaze On") do set NWDIR=%%~a
for %%a in ("blazeon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blazer") do set NWDIR=%%~a
for %%a in ("blazer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blazing Lazers") do set NWDIR=%%~a
for %%a in ("blazlaz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blazing Star") do set NWDIR=%%~a
for %%a in ("blazstar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blazing Tornado") do set NWDIR=%%~a
for %%a in ("blzntrnd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Block Block") do set NWDIR=%%~a
for %%a in ("block.zip") do set ROM=%%~a
call :INTO
for %%a in ("Block Carnival - Thunder & Lightning 2") do set NWDIR=%%~a
for %%a in ("blockcar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Block Gal") do set NWDIR=%%~a
for %%a in ("blockgal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Block Hole") do set NWDIR=%%~a
for %%a in ("blockhl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Block Out") do set NWDIR=%%~a
for %%a in ("blockout.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blocken") do set NWDIR=%%~a
for %%a in ("blocken.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blomby Car") do set NWDIR=%%~a
for %%a in ("blmbycar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blood Bros.") do set NWDIR=%%~a
for %%a in ("bloodbro.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blood Storm") do set NWDIR=%%~a
for %%a in ("bloodstm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blood Warrior") do set NWDIR=%%~a
for %%a in ("bloodwar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bloody Roar 2") do set NWDIR=%%~a
for %%a in ("bldyror2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bloxeed") do set NWDIR=%%~a
for %%a in ("bloxeed.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blue Hawk") do set NWDIR=%%~a
for %%a in ("bluehawk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blue Print") do set NWDIR=%%~a
for %%a in ("blueprnt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blue Shark") do set NWDIR=%%~a
for %%a in ("blueshrk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Blue's Journey - Raguy") do set NWDIR=%%~a
for %%a in ("bjourney.zip") do set ROM=%%~a
call :INTO
for %%a in ("BnB Arcade") do set NWDIR=%%~a
for %%a in ("bballoon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Boardwalk Casino") do set NWDIR=%%~a
for %%a in ("bwcasino.zip") do set ROM=%%~a
call :INTO
for %%a in ("Body Slam") do set NWDIR=%%~a
for %%a in ("bodyslam.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bogey Manor") do set NWDIR=%%~a
for %%a in ("bogeyman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Boggy '84") do set NWDIR=%%~a
for %%a in ("boggy84.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bomb Bee") do set NWDIR=%%~a
for %%a in ("bombbee.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bomb Jack") do set NWDIR=%%~a
for %%a in ("bombjack.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bomb Kick") do set NWDIR=%%~a
for %%a in ("bombkick.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bomber Man World - New Dyna Blaster - Global Quest") do set NWDIR=%%~a
for %%a in ("bbmanw.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bombjack Twin") do set NWDIR=%%~a
for %%a in ("bjtwin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bonanza Bros") do set NWDIR=%%~a
for %%a in ("bnzabros.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bongo") do set NWDIR=%%~a
for %%a in ("bongo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bonze Adventure") do set NWDIR=%%~a
for %%a in ("bonzeadv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Boogie Wings") do set NWDIR=%%~a
for %%a in ("boogwing.zip") do set ROM=%%~a
call :INTO
for %%a in ("Boomer Rang'r - Genesis") do set NWDIR=%%~a
for %%a in ("boomrang.zip") do set ROM=%%~a
call :INTO
for %%a in ("Boong-Ga Boong-Ga") do set NWDIR=%%~a
for %%a in ("boonggab.zip") do set ROM=%%~a
call :INTO
for %%a in ("Boot Hill") do set NWDIR=%%~a
for %%a in ("boothill.zip") do set ROM=%%~a
call :INTO
for %%a in ("Borderline") do set NWDIR=%%~a
for %%a in ("brdrline.zip") do set ROM=%%~a
call :INTO
for %%a in ("Borench") do set NWDIR=%%~a
for %%a in ("borench.zip") do set ROM=%%~a
call :INTO
for %%a in ("Born To Fight") do set NWDIR=%%~a
for %%a in ("borntofi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bosconian") do set NWDIR=%%~a
for %%a in ("bosco.zip") do set ROM=%%~a
call :INTO
for %%a in ("Botanic") do set NWDIR=%%~a
for %%a in ("botanic.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bottle 10") do set NWDIR=%%~a
for %%a in ("bottle10.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bottom of the Ninth") do set NWDIR=%%~a
for %%a in ("bottom9.zip") do set ROM=%%~a
call :INTO
for %%a in ("Boulder Dash") do set NWDIR=%%~a
for %%a in ("cbdash.zip") do set ROM=%%~a
call :INTO
for %%a in ("Boulder Dash") do set NWDIR=%%~a
for %%a in ("mf_bdash.zip") do set ROM=%%~a
call :INTO
for %%a in ("Boulder Dash - Boulder Dash Part 2") do set NWDIR=%%~a
for %%a in ("bouldash.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bouncing Balls") do set NWDIR=%%~a
for %%a in ("bballs.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bowling Alley") do set NWDIR=%%~a
for %%a in ("bowler.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bowl-O-Rama") do set NWDIR=%%~a
for %%a in ("bowlrama.zip") do set ROM=%%~a
call :INTO
for %%a in ("Boxer") do set NWDIR=%%~a
for %%a in ("boxer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Boxy Boy") do set NWDIR=%%~a
for %%a in ("boxyboy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bra$il") do set NWDIR=%%~a
for %%a in ("brasil.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bradley Trainer") do set NWDIR=%%~a
for %%a in ("bradley.zip") do set ROM=%%~a
call :INTO
for %%a in ("Brain") do set NWDIR=%%~a
for %%a in ("brain.zip") do set ROM=%%~a
call :INTO
for %%a in ("Brasil 86") do set NWDIR=%%~a
for %%a in ("brasil86.zip") do set ROM=%%~a
call :INTO
for %%a in ("Brasil 87") do set NWDIR=%%~a
for %%a in ("brasil87.zip") do set ROM=%%~a
call :INTO
for %%a in ("Brasil 89") do set NWDIR=%%~a
for %%a in ("brasil89.zip") do set ROM=%%~a
call :INTO
for %%a in ("Brasil 93") do set NWDIR=%%~a
for %%a in ("brasil93.zip") do set ROM=%%~a
call :INTO
for %%a in ("Brave Blade") do set NWDIR=%%~a
for %%a in ("brvblade.zip") do set ROM=%%~a
call :INTO
for %%a in ("Break Thru") do set NWDIR=%%~a
for %%a in ("brkthru.zip") do set ROM=%%~a
call :INTO
for %%a in ("Breakers") do set NWDIR=%%~a
for %%a in ("breakers.zip") do set ROM=%%~a
call :INTO
for %%a in ("Breakers Revenge") do set NWDIR=%%~a
for %%a in ("breakrev.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bristles") do set NWDIR=%%~a
for %%a in ("mf_brist.zip") do set ROM=%%~a
call :INTO
for %%a in ("Brodjaga") do set NWDIR=%%~a
for %%a in ("brod.zip") do set ROM=%%~a
call :INTO
for %%a in ("Brute Force") do set NWDIR=%%~a
for %%a in ("brutforc.zip") do set ROM=%%~a
call :INTO
for %%a in ("BSMT2000") do set NWDIR=%%~a
for %%a in ("bsmt2000.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bubble 2000") do set NWDIR=%%~a
for %%a in ("bubl2000.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bubble Bobble") do set NWDIR=%%~a
for %%a in ("bublbobl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bubble Bobble II") do set NWDIR=%%~a
for %%a in ("bublbob2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bubble Memories - The Story Of Bubble Bobble III") do set NWDIR=%%~a
for %%a in ("bubblem.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bubble Trouble") do set NWDIR=%%~a
for %%a in ("bubbletr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bubbles") do set NWDIR=%%~a
for %%a in ("bubbles.zip") do set ROM=%%~a
call :INTO
for %%a in ("Buccaneers") do set NWDIR=%%~a
for %%a in ("buccanrs.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bucky O'Hare") do set NWDIR=%%~a
for %%a in ("bucky.zip") do set ROM=%%~a
call :INTO
for %%a in ("Buena Suerte") do set NWDIR=%%~a
for %%a in ("bsuerte.zip") do set ROM=%%~a
call :INTO
for %%a in ("Buena Suerte '94") do set NWDIR=%%~a
for %%a in ("bs94.zip") do set ROM=%%~a
call :INTO
for %%a in ("Buggy Boy-Speed Buggy") do set NWDIR=%%~a
for %%a in ("buggyboy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Buggy Challenge") do set NWDIR=%%~a
for %%a in ("buggychl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bugs Fever") do set NWDIR=%%~a
for %%a in ("bugfever.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bullet") do set NWDIR=%%~a
for %%a in ("bullet.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bullfight") do set NWDIR=%%~a
for %%a in ("bullfgt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bulls Eye Darts") do set NWDIR=%%~a
for %%a in ("bullsdrt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Burger Time") do set NWDIR=%%~a
for %%a in ("btime.zip") do set ROM=%%~a
call :INTO
for %%a in ("Burger Time") do set NWDIR=%%~a
for %%a in ("cbtime.zip") do set ROM=%%~a
call :INTO
for %%a in ("Burglar X") do set NWDIR=%%~a
for %%a in ("burglarx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Burnin' Rubber") do set NWDIR=%%~a
for %%a in ("brubber.zip") do set ROM=%%~a
call :INTO
for %%a in ("Burnin' Rubber") do set NWDIR=%%~a
for %%a in ("cburnrub.zip") do set ROM=%%~a
call :INTO
for %%a in ("Burning Fight") do set NWDIR=%%~a
for %%a in ("burningf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Burning Force") do set NWDIR=%%~a
for %%a in ("burnforc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Burning Rival") do set NWDIR=%%~a
for %%a in ("brival.zip") do set ROM=%%~a
call :INTO
for %%a in ("Butasan - Pig's & Bomber's") do set NWDIR=%%~a
for %%a in ("butasan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Butterfly Video Game") do set NWDIR=%%~a
for %%a in ("butrfly.zip") do set ROM=%%~a
call :INTO
for %%a in ("B-Wings") do set NWDIR=%%~a
for %%a in ("bwings.zip") do set ROM=%%~a
call :INTO
for %%a in ("Bygone") do set NWDIR=%%~a
for %%a in ("bygone.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cabal") do set NWDIR=%%~a
for %%a in ("cabal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cachat") do set NWDIR=%%~a
for %%a in ("cachat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cadash") do set NWDIR=%%~a
for %%a in ("cadash.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cadillacs and Dinosaurs") do set NWDIR=%%~a
for %%a in ("dino.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cal Omega - Game 12.8") do set NWDIR=%%~a
for %%a in ("comg128.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cal Omega - Game 17.51") do set NWDIR=%%~a
for %%a in ("comg175.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cal Omega - Game 23.9") do set NWDIR=%%~a
for %%a in ("comg239.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cal Omega - Game 24.0") do set NWDIR=%%~a
for %%a in ("comg240.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cal Omega - Game 7.4") do set NWDIR=%%~a
for %%a in ("comg074.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cal Omega - Game 7.6") do set NWDIR=%%~a
for %%a in ("comg076.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cal Omega - Game 8.0") do set NWDIR=%%~a
for %%a in ("comg080.zip") do set ROM=%%~a
call :INTO
for %%a in ("Caliber 50") do set NWDIR=%%~a
for %%a in ("calibr50.zip") do set ROM=%%~a
call :INTO
for %%a in ("California Speed") do set NWDIR=%%~a
for %%a in ("calspeed.zip") do set ROM=%%~a
call :INTO
for %%a in ("Calipso") do set NWDIR=%%~a
for %%a in ("calipso.zip") do set ROM=%%~a
call :INTO
for %%a in ("Calorie Kun") do set NWDIR=%%~a
for %%a in ("calorie.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cameltry") do set NWDIR=%%~a
for %%a in ("cameltry.zip") do set ROM=%%~a
call :INTO
for %%a in ("Candy Candy") do set NWDIR=%%~a
for %%a in ("candy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Candy Puzzle") do set NWDIR=%%~a
for %%a in ("cndypuzl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cannon Ball") do set NWDIR=%%~a
for %%a in ("cannball.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cannon Ball") do set NWDIR=%%~a
for %%a in ("cannonbp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cannonball") do set NWDIR=%%~a
for %%a in ("cball.zip") do set ROM=%%~a
call :INTO
for %%a in ("Canvas Croquis") do set NWDIR=%%~a
for %%a in ("canvas.zip") do set ROM=%%~a
call :INTO
for %%a in ("Canyon Bomber") do set NWDIR=%%~a
for %%a in ("canyon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Capcom Baseball") do set NWDIR=%%~a
for %%a in ("cbasebal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Capcom Bowling") do set NWDIR=%%~a
for %%a in ("capbowl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Capcom Sports Club") do set NWDIR=%%~a
for %%a in ("csclub.zip") do set ROM=%%~a
call :INTO
for %%a in ("Capcom World") do set NWDIR=%%~a
for %%a in ("cworld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Captain America and The Avengers") do set NWDIR=%%~a
for %%a in ("captaven.zip") do set ROM=%%~a
call :INTO
for %%a in ("Captain Commando") do set NWDIR=%%~a
for %%a in ("captcomm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Captain Silver") do set NWDIR=%%~a
for %%a in ("csilver.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Captain Sky Hawk") do set NWDIR=%%~a
for %%a in ("pc_cshwk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Captain Tomaday") do set NWDIR=%%~a
for %%a in ("ctomaday.zip") do set ROM=%%~a
call :INTO
for %%a in ("Car Jamboree") do set NWDIR=%%~a
for %%a in ("carjmbre.zip") do set ROM=%%~a
call :INTO
for %%a in ("Car Polo") do set NWDIR=%%~a
for %%a in ("carpolo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Card Line") do set NWDIR=%%~a
for %%a in ("cardline.zip") do set ROM=%%~a
call :INTO
for %%a in ("CarnEvil") do set NWDIR=%%~a
for %%a in ("carnevil.zip") do set ROM=%%~a
call :INTO
for %%a in ("Carrera") do set NWDIR=%%~a
for %%a in ("carrera.zip") do set ROM=%%~a
call :INTO
for %%a in ("Carrier Air Wing") do set NWDIR=%%~a
for %%a in ("cawing.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cash Quiz") do set NWDIR=%%~a
for %%a in ("cashquiz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Casino Black Jack") do set NWDIR=%%~a
for %%a in ("casbjack.zip") do set ROM=%%~a
call :INTO
for %%a in ("Casino Fever 1k") do set NWDIR=%%~a
for %%a in ("cfever1k.zip") do set ROM=%%~a
call :INTO
for %%a in ("Casino Fever 4.0") do set NWDIR=%%~a
for %%a in ("cfever40.zip") do set ROM=%%~a
call :INTO
for %%a in ("Casino Fever 5.0") do set NWDIR=%%~a
for %%a in ("cfever50.zip") do set ROM=%%~a
call :INTO
for %%a in ("Casino Fever 5.1") do set NWDIR=%%~a
for %%a in ("cfever51.zip") do set ROM=%%~a
call :INTO
for %%a in ("Casino Fever 6.1") do set NWDIR=%%~a
for %%a in ("cfever61.zip") do set ROM=%%~a
call :INTO
for %%a in ("Casino Five") do set NWDIR=%%~a
for %%a in ("casino5.zip") do set ROM=%%~a
call :INTO
for %%a in ("Casino Poker") do set NWDIR=%%~a
for %%a in ("caspoker.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Castlevania") do set NWDIR=%%~a
for %%a in ("pc_cvnia.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cat and Mouse") do set NWDIR=%%~a
for %%a in ("catnmous.zip") do set ROM=%%~a
call :INTO
for %%a in ("Catacomb") do set NWDIR=%%~a
for %%a in ("catacomb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Catch") do set NWDIR=%%~a
for %%a in ("catchp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cavelon") do set NWDIR=%%~a
for %%a in ("cavelon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Caveman Ninja") do set NWDIR=%%~a
for %%a in ("cninja.zip") do set ROM=%%~a
call :INTO
for %%a in ("Centipede") do set NWDIR=%%~a
for %%a in ("centiped.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cerberus") do set NWDIR=%%~a
for %%a in ("cerberus.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chack'n Pop") do set NWDIR=%%~a
for %%a in ("chaknpop.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chain Reaction") do set NWDIR=%%~a
for %%a in ("chainrec.zip") do set ROM=%%~a
call :INTO
for %%a in ("Challenger") do set NWDIR=%%~a
for %%a in ("challeng.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chameleon") do set NWDIR=%%~a
for %%a in ("chameleo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Champion Base Ball") do set NWDIR=%%~a
for %%a in ("champbas.zip") do set ROM=%%~a
call :INTO
for %%a in ("Champion Base Ball Part-2 - Pair Play") do set NWDIR=%%~a
for %%a in ("champbb2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Champion Boxing") do set NWDIR=%%~a
for %%a in ("chboxing.zip") do set ROM=%%~a
call :INTO
for %%a in ("Champion Italian PK") do set NWDIR=%%~a
for %%a in ("cpokerpk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Champion League") do set NWDIR=%%~a
for %%a in ("chleague.zip") do set ROM=%%~a
call :INTO
for %%a in ("Champion Poker") do set NWDIR=%%~a
for %%a in ("cpoker.zip") do set ROM=%%~a
call :INTO
for %%a in ("Champion Pro Wrestling") do set NWDIR=%%~a
for %%a in ("chwrestl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Champion Skill") do set NWDIR=%%~a
for %%a in ("csk227it.zip") do set ROM=%%~a
call :INTO
for %%a in ("Champion Super 3") do set NWDIR=%%~a
for %%a in ("chsuper3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Champion Wrestler") do set NWDIR=%%~a
for %%a in ("champwr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Championship Bowling") do set NWDIR=%%~a
for %%a in ("champbwl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Championship Sprint") do set NWDIR=%%~a
for %%a in ("csprint.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chanbara") do set NWDIR=%%~a
for %%a in ("chanbara.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chance Kun") do set NWDIR=%%~a
for %%a in ("chkun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chance Thirty Two") do set NWDIR=%%~a
for %%a in ("chance32.zip") do set ROM=%%~a
call :INTO
for %%a in ("Change Air Blade") do set NWDIR=%%~a
for %%a in ("cairblad.zip") do set ROM=%%~a
call :INTO
for %%a in ("Change Lanes") do set NWDIR=%%~a
for %%a in ("changela.zip") do set ROM=%%~a
call :INTO
for %%a in ("Changes") do set NWDIR=%%~a
for %%a in ("changes.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chaos Heat") do set NWDIR=%%~a
for %%a in ("chaoshea.zip") do set ROM=%%~a
call :INTO
for %%a in ("Charlie Ninja") do set NWDIR=%%~a
for %%a in ("charlien.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chase Bombers") do set NWDIR=%%~a
for %%a in ("cbombers.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chase H.Q.") do set NWDIR=%%~a
for %%a in ("chasehq.zip") do set ROM=%%~a
call :INTO
for %%a in ("Check Man") do set NWDIR=%%~a
for %%a in ("checkman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Checkmate") do set NWDIR=%%~a
for %%a in ("checkmat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cheeky Mouse") do set NWDIR=%%~a
for %%a in ("cheekyms.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cheese Chase") do set NWDIR=%%~a
for %%a in ("cheesech.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chelnov - Atomic Runner") do set NWDIR=%%~a
for %%a in ("chelnov.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chequered Flag") do set NWDIR=%%~a
for %%a in ("chqflag.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cherry 10") do set NWDIR=%%~a
for %%a in ("chry10.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cherry Bonus III") do set NWDIR=%%~a
for %%a in ("ncb3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cherry Gold I") do set NWDIR=%%~a
for %%a in ("chrygld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cherry Master") do set NWDIR=%%~a
for %%a in ("cmv4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cherry Master") do set NWDIR=%%~a
for %%a in ("cmv801.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cherry Master '91") do set NWDIR=%%~a
for %%a in ("cmast91.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cherry Master I") do set NWDIR=%%~a
for %%a in ("cmaster.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cheyenne") do set NWDIR=%%~a
for %%a in ("cheyenne.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chibi Marukochan Deluxe Quiz") do set NWDIR=%%~a
for %%a in ("marukodq.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chicken Farm") do set NWDIR=%%~a
for %%a in ("cfarm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chicken Shift") do set NWDIR=%%~a
for %%a in ("cshift.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chiller") do set NWDIR=%%~a
for %%a in ("chiller.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chimera Beast") do set NWDIR=%%~a
for %%a in ("chimerab.zip") do set ROM=%%~a
call :INTO
for %%a in ("China Gate") do set NWDIR=%%~a
for %%a in ("chinagat.zip") do set ROM=%%~a
call :INTO
for %%a in ("China Town") do set NWDIR=%%~a
for %%a in ("chinatwn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chinese Casino") do set NWDIR=%%~a
for %%a in ("ccasino.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chinese Hero") do set NWDIR=%%~a
for %%a in ("chinhero.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Chip'n Dale - Rescue Rangers") do set NWDIR=%%~a
for %%a in ("pc_rrngr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Choky! Choky!") do set NWDIR=%%~a
for %%a in ("chokchok.zip") do set ROM=%%~a
call :INTO
for %%a in ("Choplifter") do set NWDIR=%%~a
for %%a in ("choplift.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chopper I") do set NWDIR=%%~a
for %%a in ("chopper.zip") do set ROM=%%~a
call :INTO
for %%a in ("Choutetsu Brikin'ger - Iron clad") do set NWDIR=%%~a
for %%a in ("ironclad.zip") do set ROM=%%~a
call :INTO
for %%a in ("ChuckECheese's Match Game") do set NWDIR=%%~a
for %%a in ("cecmatch.zip") do set ROM=%%~a
call :INTO
for %%a in ("Chuka Taisen") do set NWDIR=%%~a
for %%a in ("chukatai.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ciclone") do set NWDIR=%%~a
for %%a in ("ciclone.zip") do set ROM=%%~a
call :INTO
for %%a in ("Circus Charlie") do set NWDIR=%%~a
for %%a in ("circusc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cisco Heat") do set NWDIR=%%~a
for %%a in ("cischeat.zip") do set ROM=%%~a
call :INTO
for %%a in ("City Bomber") do set NWDIR=%%~a
for %%a in ("citybomb.zip") do set ROM=%%~a
call :INTO
for %%a in ("City Connection") do set NWDIR=%%~a
for %%a in ("citycon.zip") do set ROM=%%~a
call :INTO
for %%a in ("City Love") do set NWDIR=%%~a
for %%a in ("citylove.zip") do set ROM=%%~a
call :INTO
for %%a in ("Clash-Road") do set NWDIR=%%~a
for %%a in ("clshroad.zip") do set ROM=%%~a
call :INTO
for %%a in ("Classic Edition") do set NWDIR=%%~a
for %%a in ("classice.zip") do set ROM=%%~a
call :INTO
for %%a in ("Clay Pigeon") do set NWDIR=%%~a
for %%a in ("claypign.zip") do set ROM=%%~a
call :INTO
for %%a in ("Clay Shoot") do set NWDIR=%%~a
for %%a in ("clayshoo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cleopatra Fortune") do set NWDIR=%%~a
for %%a in ("cleopatr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cliff Hanger") do set NWDIR=%%~a
for %%a in ("cliffhgr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cloak & Dagger") do set NWDIR=%%~a
for %%a in ("cloak.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cloud 9") do set NWDIR=%%~a
for %%a in ("cloud9.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cluedo") do set NWDIR=%%~a
for %%a in ("cluedo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cluster Buster - Graplop") do set NWDIR=%%~a
for %%a in ("cgraplop.zip") do set ROM=%%~a
call :INTO
for %%a in ("Clutch Hitter") do set NWDIR=%%~a
for %%a in ("cltchitr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cobra-Command") do set NWDIR=%%~a
for %%a in ("cobracom.zip") do set ROM=%%~a
call :INTO
for %%a in ("Colony 7") do set NWDIR=%%~a
for %%a in ("colony7.zip") do set ROM=%%~a
call :INTO
for %%a in ("Columns") do set NWDIR=%%~a
for %%a in ("columns.zip") do set ROM=%%~a
call :INTO
for %%a in ("Columns '97") do set NWDIR=%%~a
for %%a in ("colmns97.zip") do set ROM=%%~a
call :INTO
for %%a in ("Columns II - The Voyage Through Time") do set NWDIR=%%~a
for %%a in ("columns2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Columns III") do set NWDIR=%%~a
for %%a in ("mp_col3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Combat") do set NWDIR=%%~a
for %%a in ("combat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Combat Hawk") do set NWDIR=%%~a
for %%a in ("combh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Combat School") do set NWDIR=%%~a
for %%a in ("combatsc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Command War - Super Special Battle & War Game") do set NWDIR=%%~a
for %%a in ("commandw.zip") do set ROM=%%~a
call :INTO
for %%a in ("Commando") do set NWDIR=%%~a
for %%a in ("commando.zip") do set ROM=%%~a
call :INTO
for %%a in ("Commando") do set NWDIR=%%~a
for %%a in ("commsega.zip") do set ROM=%%~a
call :INTO
for %%a in ("Competition Golf Final Round") do set NWDIR=%%~a
for %%a in ("compgolf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Complex X") do set NWDIR=%%~a
for %%a in ("complexx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Connect 4") do set NWDIR=%%~a
for %%a in ("m4conn4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Continental Circus") do set NWDIR=%%~a
for %%a in ("contcirc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Contra") do set NWDIR=%%~a
for %%a in ("contra.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Contra") do set NWDIR=%%~a
for %%a in ("pc_cntra.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cookie & Bibi") do set NWDIR=%%~a
for %%a in ("cookbib.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cookie & Bibi 2") do set NWDIR=%%~a
for %%a in ("cookbib2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cookie & Bibi 3") do set NWDIR=%%~a
for %%a in ("cookbib3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cool Boarders Arcade Jam") do set NWDIR=%%~a
for %%a in ("cbaj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cool Minigame Collection") do set NWDIR=%%~a
for %%a in ("coolmini.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cool Pool") do set NWDIR=%%~a
for %%a in ("coolpool.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cop 01") do set NWDIR=%%~a
for %%a in ("cop01.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cops'n Robbers") do set NWDIR=%%~a
for %%a in ("copsnrob.zip") do set ROM=%%~a
call :INTO
for %%a in ("Coronation Street Quiz Game") do set NWDIR=%%~a
for %%a in ("coronatn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cosmic Avenger") do set NWDIR=%%~a
for %%a in ("cavenger.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cosmic Chasm") do set NWDIR=%%~a
for %%a in ("cchasm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cosmic Cop") do set NWDIR=%%~a
for %%a in ("cosmccop.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cosmo Gang the Puzzle") do set NWDIR=%%~a
for %%a in ("cgangpzl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cosmo Gang the Video") do set NWDIR=%%~a
for %%a in ("cosmogng.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cosmos") do set NWDIR=%%~a
for %%a in ("cosmos.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cotton") do set NWDIR=%%~a
for %%a in ("cotton.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cotton 2") do set NWDIR=%%~a
for %%a in ("cotton2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cotton Boomerang") do set NWDIR=%%~a
for %%a in ("cottonbm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Country Club") do set NWDIR=%%~a
for %%a in ("countryc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Country Girl") do set NWDIR=%%~a
for %%a in ("cntrygrl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crack Down") do set NWDIR=%%~a
for %%a in ("crkdown.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crackshot") do set NWDIR=%%~a
for %%a in ("cracksht.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crater Raider") do set NWDIR=%%~a
for %%a in ("crater.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crayon Shinchan Orato Asobo") do set NWDIR=%%~a
for %%a in ("qcrayon2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crazy Balloon") do set NWDIR=%%~a
for %%a in ("crbaloon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crazy Climber") do set NWDIR=%%~a
for %%a in ("cclimber.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crazy Climber 2") do set NWDIR=%%~a
for %%a in ("cclimbr2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crazy Fight") do set NWDIR=%%~a
for %%a in ("crazyfgt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crazy Kong") do set NWDIR=%%~a
for %%a in ("ckong.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crazy Kong Part II") do set NWDIR=%%~a
for %%a in ("ckongpt2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crazy Monkey") do set NWDIR=%%~a
for %%a in ("crzmon_8.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crazy Rally") do set NWDIR=%%~a
for %%a in ("crzrally.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crazy War") do set NWDIR=%%~a
for %%a in ("crazywar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crazzy Clownz") do set NWDIR=%%~a
for %%a in ("cclownz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Credit Poker") do set NWDIR=%%~a
for %%a in ("cgip30cs.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crime City") do set NWDIR=%%~a
for %%a in ("crimec.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crime Fighters") do set NWDIR=%%~a
for %%a in ("crimfght.zip") do set ROM=%%~a
call :INTO
for %%a in ("Critter Crusher") do set NWDIR=%%~a
for %%a in ("critcrsh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cross Pang") do set NWDIR=%%~a
for %%a in ("crospang.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crossbow") do set NWDIR=%%~a
for %%a in ("crossbow.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crossed Swords") do set NWDIR=%%~a
for %%a in ("crsword.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crowns Golf") do set NWDIR=%%~a
for %%a in ("crgolf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crowns Golf in Hawaii") do set NWDIR=%%~a
for %%a in ("crgolfhi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crude Buster") do set NWDIR=%%~a
for %%a in ("cbuster.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cruis'n USA") do set NWDIR=%%~a
for %%a in ("crusnusa.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cruis'n World") do set NWDIR=%%~a
for %%a in ("crusnwld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crush Roller") do set NWDIR=%%~a
for %%a in ("crush.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crusher Makochan") do set NWDIR=%%~a
for %%a in ("crusherm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crypt Killer") do set NWDIR=%%~a
for %%a in ("cryptklr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crystal Castles") do set NWDIR=%%~a
for %%a in ("ccastles.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crystal Gal") do set NWDIR=%%~a
for %%a in ("crystalg.zip") do set ROM=%%~a
call :INTO
for %%a in ("Crystal Gal 2") do set NWDIR=%%~a
for %%a in ("crystal2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cube Quest") do set NWDIR=%%~a
for %%a in ("cubeqst.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cuby Bop") do set NWDIR=%%~a
for %%a in ("cubybop.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cue Brick") do set NWDIR=%%~a
for %%a in ("cuebrick.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cuore 1") do set NWDIR=%%~a
for %%a in ("cuoreuno.zip") do set ROM=%%~a
call :INTO
for %%a in ("Curve Ball") do set NWDIR=%%~a
for %%a in ("curvebal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cutie Q") do set NWDIR=%%~a
for %%a in ("cutieq.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cybattler") do set NWDIR=%%~a
for %%a in ("cybattlr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cyber Commando") do set NWDIR=%%~a
for %%a in ("cybrcomm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cyber Cycles") do set NWDIR=%%~a
for %%a in ("cybrcycc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cyber Sled") do set NWDIR=%%~a
for %%a in ("cybsled.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cyberball") do set NWDIR=%%~a
for %%a in ("cyberbal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cyberbots - Fullmetal Madness") do set NWDIR=%%~a
for %%a in ("cybots.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cyber-Lip") do set NWDIR=%%~a
for %%a in ("cyberlip.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cycle Warriors") do set NWDIR=%%~a
for %%a in ("cyclwarr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Cyvern") do set NWDIR=%%~a
for %%a in ("cyvern.zip") do set ROM=%%~a
call :INTO
for %%a in ("Czernyj Korabl") do set NWDIR=%%~a
for %%a in ("black.zip") do set ROM=%%~a
call :INTO
for %%a in ("D. D. Crew") do set NWDIR=%%~a
for %%a in ("ddcrew.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dacholer") do set NWDIR=%%~a
for %%a in ("dacholer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dai-Dai-Kakumei") do set NWDIR=%%~a
for %%a in ("dai2kaku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Daikaiju no Gyakushu") do set NWDIR=%%~a
for %%a in ("daikaiju.zip") do set ROM=%%~a
call :INTO
for %%a in ("Daioh") do set NWDIR=%%~a
for %%a in ("daioh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Daisu-Kiss") do set NWDIR=%%~a
for %%a in ("daiskiss.zip") do set ROM=%%~a
call :INTO
for %%a in ("Daisyarin") do set NWDIR=%%~a
for %%a in ("daisyari.zip") do set ROM=%%~a
call :INTO
for %%a in ("Daitoride") do set NWDIR=%%~a
for %%a in ("daitorid.zip") do set ROM=%%~a
call :INTO
for %%a in ("DakkoChan House") do set NWDIR=%%~a
for %%a in ("dakkochn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dambusters") do set NWDIR=%%~a
for %%a in ("dambustr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dance Dance Revolution 2nd Mix") do set NWDIR=%%~a
for %%a in ("ddr2m.zip") do set ROM=%%~a
call :INTO
for %%a in ("Danchi de Hanafuda") do set NWDIR=%%~a
for %%a in ("danchih.zip") do set ROM=%%~a
call :INTO
for %%a in ("Danchi de Quiz Okusan Yontaku Desuyo!") do set NWDIR=%%~a
for %%a in ("danchiq.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dancing Eyes") do set NWDIR=%%~a
for %%a in ("danceyes.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dancing Stage") do set NWDIR=%%~a
for %%a in ("dstage.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dancing Stage featuring TRUE KiSS DESTiNATiON") do set NWDIR=%%~a
for %%a in ("dsftkd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dangar - Ufo Robo") do set NWDIR=%%~a
for %%a in ("dangar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Danger Zone") do set NWDIR=%%~a
for %%a in ("dangerz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dangerous Dungeons") do set NWDIR=%%~a
for %%a in ("ddungeon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dangerous Seed") do set NWDIR=%%~a
for %%a in ("dangseed.zip") do set ROM=%%~a
call :INTO
for %%a in ("Danny Sullivan's Indy Heat") do set NWDIR=%%~a
for %%a in ("indyheat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Daraku Tenshi - The Fallen Angels") do set NWDIR=%%~a
for %%a in ("daraku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Darius") do set NWDIR=%%~a
for %%a in ("darius.zip") do set ROM=%%~a
call :INTO
for %%a in ("Darius Gaiden - Silver Hawk") do set NWDIR=%%~a
for %%a in ("dariusg.zip") do set ROM=%%~a
call :INTO
for %%a in ("Darius II") do set NWDIR=%%~a
for %%a in ("darius2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dark Edge") do set NWDIR=%%~a
for %%a in ("darkedge.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dark Horse Legend") do set NWDIR=%%~a
for %%a in ("darkhleg.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dark Planet") do set NWDIR=%%~a
for %%a in ("darkplnt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dark Seal") do set NWDIR=%%~a
for %%a in ("darkseal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dark Tower") do set NWDIR=%%~a
for %%a in ("darktowr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dark Warrior") do set NWDIR=%%~a
for %%a in ("darkwar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Darkstalkers - The Night Warriors") do set NWDIR=%%~a
for %%a in ("dstlk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Darwin 4078") do set NWDIR=%%~a
for %%a in ("darwin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Date Quiz Go Go") do set NWDIR=%%~a
for %%a in ("dquizgo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Date Quiz Go Go Episode 2") do set NWDIR=%%~a
for %%a in ("dquizgo2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Datsun 280 Zzzap") do set NWDIR=%%~a
for %%a in ("280zzzap.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dazzler") do set NWDIR=%%~a
for %%a in ("dazzler.zip") do set ROM=%%~a
call :INTO
for %%a in ("D-Con") do set NWDIR=%%~a
for %%a in ("dcon.zip") do set ROM=%%~a
call :INTO
for %%a in ("D-Day") do set NWDIR=%%~a
for %%a in ("dday.zip") do set ROM=%%~a
call :INTO
for %%a in ("D-Day") do set NWDIR=%%~a
for %%a in ("ddayjlc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dead Angle") do set NWDIR=%%~a
for %%a in ("deadang.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dead Connection") do set NWDIR=%%~a
for %%a in ("deadconx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dead Eye") do set NWDIR=%%~a
for %%a in ("deadeye.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dead Or Alive ++") do set NWDIR=%%~a
for %%a in ("doapp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Deal 'Em") do set NWDIR=%%~a
for %%a in ("v4dealem.zip") do set ROM=%%~a
call :INTO
for %%a in ("Deer Hunting USA V4.3") do set NWDIR=%%~a
for %%a in ("deerhunt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Defend the Terra Attack on the Red UFO") do set NWDIR=%%~a
for %%a in ("redufo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Defender") do set NWDIR=%%~a
for %%a in ("defender.zip") do set ROM=%%~a
call :INTO
for %%a in ("Deluxe 5") do set NWDIR=%%~a
for %%a in ("deluxe5.zip") do set ROM=%%~a
call :INTO
for %%a in ("Deluxe Trivia  Whiz") do set NWDIR=%%~a
for %%a in ("dtrvwz5.zip") do set ROM=%%~a
call :INTO
for %%a in ("Demolition Derby") do set NWDIR=%%~a
for %%a in ("demoderb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Demon") do set NWDIR=%%~a
for %%a in ("demon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Demon Front") do set NWDIR=%%~a
for %%a in ("dmnfrnt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Demons & Dragons") do set NWDIR=%%~a
for %%a in ("demndrgn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Demon's World - Horror Story") do set NWDIR=%%~a
for %%a in ("demonwld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Denjin Makai") do set NWDIR=%%~a
for %%a in ("denjinmk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Densha de GO!") do set NWDIR=%%~a
for %%a in ("dendego.zip") do set ROM=%%~a
call :INTO
for %%a in ("Densha de GO! 2 Kousoku-hen") do set NWDIR=%%~a
for %%a in ("dendego2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Deroon DeroDero") do set NWDIR=%%~a
for %%a in ("deroon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Desert Breaker") do set NWDIR=%%~a
for %%a in ("desertbr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Desert Gun") do set NWDIR=%%~a
for %%a in ("desertgu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Desert War - Wangan Sensou") do set NWDIR=%%~a
for %%a in ("desertwr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Destroyer") do set NWDIR=%%~a
for %%a in ("destroyr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Destroyer") do set NWDIR=%%~a
for %%a in ("destryer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Devastators") do set NWDIR=%%~a
for %%a in ("devstors.zip") do set ROM=%%~a
call :INTO
for %%a in ("Devil Fish") do set NWDIR=%%~a
for %%a in ("devilfsh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Devil Island") do set NWDIR=%%~a
for %%a in ("dvisland.zip") do set ROM=%%~a
call :INTO
for %%a in ("Devil World") do set NWDIR=%%~a
for %%a in ("devilw.zip") do set ROM=%%~a
call :INTO
for %%a in ("Devil Zone") do set NWDIR=%%~a
for %%a in ("devzone.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dharma Doujou") do set NWDIR=%%~a
for %%a in ("dharma.zip") do set ROM=%%~a
call :INTO
for %%a in ("Diamond Run") do set NWDIR=%%~a
for %%a in ("diamond.zip") do set ROM=%%~a
call :INTO
for %%a in ("Die Hard Arcade") do set NWDIR=%%~a
for %%a in ("diehard.zip") do set ROM=%%~a
call :INTO
for %%a in ("Diet Family") do set NWDIR=%%~a
for %%a in ("dtfamily.zip") do set ROM=%%~a
call :INTO
for %%a in ("Diet Go Go") do set NWDIR=%%~a
for %%a in ("dietgo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dig Dug") do set NWDIR=%%~a
for %%a in ("digdug.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dig Dug II") do set NWDIR=%%~a
for %%a in ("digdug2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Digger") do set NWDIR=%%~a
for %%a in ("digger.zip") do set ROM=%%~a
call :INTO
for %%a in ("Digger (CVS)") do set NWDIR=%%~a
for %%a in ("diggerc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Digger Man") do set NWDIR=%%~a
for %%a in ("diggerma.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dimahoo") do set NWDIR=%%~a
for %%a in ("dimahoo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dingo") do set NWDIR=%%~a
for %%a in ("dingo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dino Rex") do set NWDIR=%%~a
for %%a in ("dinorex.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dirt Dash") do set NWDIR=%%~a
for %%a in ("dirtdash.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dirt Fox") do set NWDIR=%%~a
for %%a in ("dirtfoxj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Disco Boy") do set NWDIR=%%~a
for %%a in ("discoboy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Disco Mahjong Otachidai no Okite") do set NWDIR=%%~a
for %%a in ("otatidai.zip") do set ROM=%%~a
call :INTO
for %%a in ("Disco No.1") do set NWDIR=%%~a
for %%a in ("cdiscon1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Disco No.1") do set NWDIR=%%~a
for %%a in ("disco.zip") do set ROM=%%~a
call :INTO
for %%a in ("Discs of Tron") do set NWDIR=%%~a
for %%a in ("dotron.zip") do set ROM=%%~a
call :INTO
for %%a in ("Diver Boy") do set NWDIR=%%~a
for %%a in ("diverboy.zip") do set ROM=%%~a
call :INTO
for %%a in ("DJ Boy") do set NWDIR=%%~a
for %%a in ("djboy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Do! Run Run") do set NWDIR=%%~a
for %%a in ("dorunrun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dock Man") do set NWDIR=%%~a
for %%a in ("dockman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dodgem") do set NWDIR=%%~a
for %%a in ("dodgem.zip") do set ROM=%%~a
call :INTO
for %%a in ("DoDonPachi") do set NWDIR=%%~a
for %%a in ("ddonpach.zip") do set ROM=%%~a
call :INTO
for %%a in ("DoDonPachi Dai-Ou-Jou V101") do set NWDIR=%%~a
for %%a in ("ddpdoj.zip") do set ROM=%%~a
call :INTO
for %%a in ("DoDonPachi II - Bee Storm") do set NWDIR=%%~a
for %%a in ("ddp2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dog Fight") do set NWDIR=%%~a
for %%a in ("dogfight.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dog Patch") do set NWDIR=%%~a
for %%a in ("dogpatch.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dogyuun") do set NWDIR=%%~a
for %%a in ("dogyuun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dokaben") do set NWDIR=%%~a
for %%a in ("dokaben.zip") do set ROM=%%~a
call :INTO
for %%a in ("Doki Doki Idol Star Seeker") do set NWDIR=%%~a
for %%a in ("starseek.zip") do set ROM=%%~a
call :INTO
for %%a in ("Doki Doki Penguin Land") do set NWDIR=%%~a
for %%a in ("dokidoki.zip") do set ROM=%%~a
call :INTO
for %%a in ("Domino Block") do set NWDIR=%%~a
for %%a in ("dominob.zip") do set ROM=%%~a
call :INTO
for %%a in ("Domino Man") do set NWDIR=%%~a
for %%a in ("domino.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dominos") do set NWDIR=%%~a
for %%a in ("dominos.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dommy") do set NWDIR=%%~a
for %%a in ("dommy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Don Den Lover Vol. 1 - Shiro Kuro Tsukeyo!") do set NWDIR=%%~a
for %%a in ("ddenlovj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Don Den Mahjong") do set NWDIR=%%~a
for %%a in ("dondenmj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Don Doko Don") do set NWDIR=%%~a
for %%a in ("dondokod.zip") do set ROM=%%~a
call :INTO
for %%a in ("Donkey Kong") do set NWDIR=%%~a
for %%a in ("dkong.zip") do set ROM=%%~a
call :INTO
for %%a in ("Donkey Kong 3") do set NWDIR=%%~a
for %%a in ("dkong3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Donkey Kong Junior") do set NWDIR=%%~a
for %%a in ("dkongjr.zip") do set ROM=%%~a
call :INTO
for %%a in ("DonPachi") do set NWDIR=%%~a
for %%a in ("donpachi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dorachan") do set NWDIR=%%~a
for %%a in ("dorachan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Doraemon no Eawase Montage") do set NWDIR=%%~a
for %%a in ("doraemon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dorodon") do set NWDIR=%%~a
for %%a in ("dorodon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dottori Kun") do set NWDIR=%%~a
for %%a in ("dotrikun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Double Axle") do set NWDIR=%%~a
for %%a in ("dblaxle.zip") do set ROM=%%~a
call :INTO
for %%a in ("Double Challenge") do set NWDIR=%%~a
for %%a in ("dblchal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Double Cheese") do set NWDIR=%%~a
for %%a in ("dcheese.zip") do set ROM=%%~a
call :INTO
for %%a in ("Double Dealer") do set NWDIR=%%~a
for %%a in ("ddealer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Double Dragon") do set NWDIR=%%~a
for %%a in ("ddragon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Double Dragon") do set NWDIR=%%~a
for %%a in ("doubledr.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Double Dragon") do set NWDIR=%%~a
for %%a in ("pc_ddrgn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Double Dragon 3 - The Rosetta Stone") do set NWDIR=%%~a
for %%a in ("ddragon3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Double Dragon II - The Revenge") do set NWDIR=%%~a
for %%a in ("ddragon2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Double Dribble") do set NWDIR=%%~a
for %%a in ("ddribble.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Double Dribble") do set NWDIR=%%~a
for %%a in ("pc_dbldr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Double Joker Poker") do set NWDIR=%%~a
for %%a in ("df_djpkr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Double Play") do set NWDIR=%%~a
for %%a in ("dplay.zip") do set ROM=%%~a
call :INTO
for %%a in ("Double Point") do set NWDIR=%%~a
for %%a in ("dblpoint.zip") do set ROM=%%~a
call :INTO
for %%a in ("DownTown - Mokugeki") do set NWDIR=%%~a
for %%a in ("downtown.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Dr. Mario") do set NWDIR=%%~a
for %%a in ("pc_drmro.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dr. Micro") do set NWDIR=%%~a
for %%a in ("drmicro.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dr. Tomy") do set NWDIR=%%~a
for %%a in ("drtomy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dr. Toppel's Adventure") do set NWDIR=%%~a
for %%a in ("drtoppel.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dr.Who The Timelord") do set NWDIR=%%~a
for %%a in ("sc2drwho.zip") do set ROM=%%~a
call :INTO
for %%a in ("Draco") do set NWDIR=%%~a
for %%a in ("draco.zip") do set ROM=%%~a
call :INTO
for %%a in ("Drag Race") do set NWDIR=%%~a
for %%a in ("dragrace.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dragon Ball Z V.R.V.S.") do set NWDIR=%%~a
for %%a in ("dbzvrvs.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dragon Blaze") do set NWDIR=%%~a
for %%a in ("dragnblz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dragon Bowl") do set NWDIR=%%~a
for %%a in ("drgnbowl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dragon Breed") do set NWDIR=%%~a
for %%a in ("dbreed.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dragon Buster") do set NWDIR=%%~a
for %%a in ("drgnbstr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dragon Gun") do set NWDIR=%%~a
for %%a in ("dragngun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dragon Master") do set NWDIR=%%~a
for %%a in ("drgnmst.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dragon Punch") do set NWDIR=%%~a
for %%a in ("drgpunch.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dragon Saber") do set NWDIR=%%~a
for %%a in ("dsaber.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dragon Spirit") do set NWDIR=%%~a
for %%a in ("dspirit.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dragon Unit - Castle of Dragon") do set NWDIR=%%~a
for %%a in ("drgnunit.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dragon World") do set NWDIR=%%~a
for %%a in ("drgnwrld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dragonball Z") do set NWDIR=%%~a
for %%a in ("dbz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dragonball Z 2 - Super Battle") do set NWDIR=%%~a
for %%a in ("dbz2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dragoon Might") do set NWDIR=%%~a
for %%a in ("dragoona.zip") do set ROM=%%~a
call :INTO
for %%a in ("Drakton") do set NWDIR=%%~a
for %%a in ("drakton.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dramatic Adventure Quiz Keith & Lucy") do set NWDIR=%%~a
for %%a in ("keithlcy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Draw Poker - Joker's Wild") do set NWDIR=%%~a
for %%a in ("mdrawpkr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Draw Poker III - Dwarfs Den") do set NWDIR=%%~a
for %%a in ("dwarfd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dream 9 Final") do set NWDIR=%%~a
for %%a in ("d9final.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dream Shopper") do set NWDIR=%%~a
for %%a in ("dremshpr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dream Soccer '94") do set NWDIR=%%~a
for %%a in ("dsoccr94.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dream World") do set NWDIR=%%~a
for %%a in ("dreamwld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dribbling") do set NWDIR=%%~a
for %%a in ("dribling.zip") do set ROM=%%~a
call :INTO
for %%a in ("Drift Out") do set NWDIR=%%~a
for %%a in ("driftout.zip") do set ROM=%%~a
call :INTO
for %%a in ("Drift Out '94 - The Hard Order") do set NWDIR=%%~a
for %%a in ("drifto94.zip") do set ROM=%%~a
call :INTO
for %%a in ("Driver's Edge") do set NWDIR=%%~a
for %%a in ("drivedge.zip") do set ROM=%%~a
call :INTO
for %%a in ("Driving Force") do set NWDIR=%%~a
for %%a in ("drivfrcp.zip") do set ROM=%%~a
call :INTO
for %%a in ("DS Telejan") do set NWDIR=%%~a
for %%a in ("cdsteljn.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Duck Hunt") do set NWDIR=%%~a
for %%a in ("pc_duckh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dungeons & Dragons - Shadow over Mystara") do set NWDIR=%%~a
for %%a in ("ddsom.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dungeons & Dragons - Tower of Doom") do set NWDIR=%%~a
for %%a in ("ddtod.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dunk Mania") do set NWDIR=%%~a
for %%a in ("dunkmnia.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dunk Shot") do set NWDIR=%%~a
for %%a in ("dunkshot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dyger") do set NWDIR=%%~a
for %%a in ("dyger.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dyna Gear") do set NWDIR=%%~a
for %%a in ("dynagear.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dynablaster - Bomber Man") do set NWDIR=%%~a
for %%a in ("dynablst.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dynamic Country Club") do set NWDIR=%%~a
for %%a in ("dcclub.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dynamic Dice") do set NWDIR=%%~a
for %%a in ("dynadice.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dynamic Shooting") do set NWDIR=%%~a
for %%a in ("dynashot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dynamic Ski") do set NWDIR=%%~a
for %%a in ("dynamski.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dynamite Bomber") do set NWDIR=%%~a
for %%a in ("dynabomb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dynamite Duke") do set NWDIR=%%~a
for %%a in ("dynduke.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dynamite Dux") do set NWDIR=%%~a
for %%a in ("ddux.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dynamite League") do set NWDIR=%%~a
for %%a in ("dleague.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dynasty Wars") do set NWDIR=%%~a
for %%a in ("dynwar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Dyno Bop") do set NWDIR=%%~a
for %%a in ("dynobop.zip") do set ROM=%%~a
call :INTO
for %%a in ("E.D.F.  - Earth Defense Force") do set NWDIR=%%~a
for %%a in ("edf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Eagle Shot Golf") do set NWDIR=%%~a
for %%a in ("eaglshot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Eco Fighters") do set NWDIR=%%~a
for %%a in ("ecofghtr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Egg Hunt") do set NWDIR=%%~a
for %%a in ("egghunt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Egg Venture") do set NWDIR=%%~a
for %%a in ("eggventr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Eggor") do set NWDIR=%%~a
for %%a in ("eggor.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ehrgeiz") do set NWDIR=%%~a
for %%a in ("ehrgeiz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Eight Ball Action") do set NWDIR=%%~a
for %%a in ("8ballact.zip") do set ROM=%%~a
call :INTO
for %%a in ("Eight Forces") do set NWDIR=%%~a
for %%a in ("eightfrc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Eight Man") do set NWDIR=%%~a
for %%a in ("eightman.zip") do set ROM=%%~a
call :INTO
for %%a in ("E-Jan High School") do set NWDIR=%%~a
for %%a in ("ejanhs.zip") do set ROM=%%~a
call :INTO
for %%a in ("E-Jan Sakurasou") do set NWDIR=%%~a
for %%a in ("ejsakura.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ejihon Tantei Jimusyo") do set NWDIR=%%~a
for %%a in ("ejihon.zip") do set ROM=%%~a
call :INTO
for %%a in ("El Grande - 5 Card Draw") do set NWDIR=%%~a
for %%a in ("elgrande.zip") do set ROM=%%~a
call :INTO
for %%a in ("Elephant Family") do set NWDIR=%%~a
for %%a in ("elephfam.zip") do set ROM=%%~a
call :INTO
for %%a in ("Elevator Action") do set NWDIR=%%~a
for %%a in ("elevator.zip") do set ROM=%%~a
call :INTO
for %%a in ("Elevator Action Returns") do set NWDIR=%%~a
for %%a in ("elvactr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Embargo") do set NWDIR=%%~a
for %%a in ("embargo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Emeraldia") do set NWDIR=%%~a
for %%a in ("emeralda.zip") do set ROM=%%~a
call :INTO
for %%a in ("Empire City - 1931") do set NWDIR=%%~a
for %%a in ("empcity.zip") do set ROM=%%~a
call :INTO
for %%a in ("Enduro Racer") do set NWDIR=%%~a
for %%a in ("enduror.zip") do set ROM=%%~a
call :INTO
for %%a in ("Enforce") do set NWDIR=%%~a
for %%a in ("enforce.zip") do set ROM=%%~a
call :INTO
for %%a in ("Enigma II") do set NWDIR=%%~a
for %%a in ("enigma2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Erotictac-Tactic") do set NWDIR=%%~a
for %%a in ("ertictac.zip") do set ROM=%%~a
call :INTO
for %%a in ("Escape from the Planet of the Robot Monsters") do set NWDIR=%%~a
for %%a in ("eprom.zip") do set ROM=%%~a
call :INTO
for %%a in ("Escape Kids") do set NWDIR=%%~a
for %%a in ("esckids.zip") do set ROM=%%~a
call :INTO
for %%a in ("ESP Ra.De.") do set NWDIR=%%~a
for %%a in ("esprade.zip") do set ROM=%%~a
call :INTO
for %%a in ("Espgaluda") do set NWDIR=%%~a
for %%a in ("espgal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Espial") do set NWDIR=%%~a
for %%a in ("espial.zip") do set ROM=%%~a
call :INTO
for %%a in ("E-Swat - Cyber Police") do set NWDIR=%%~a
for %%a in ("eswat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Every Second Counts") do set NWDIR=%%~a
for %%a in ("escounts.zip") do set ROM=%%~a
call :INTO
for %%a in ("Evil Stone") do set NWDIR=%%~a
for %%a in ("evilston.zip") do set ROM=%%~a
call :INTO
for %%a in ("Evolution Soccer") do set NWDIR=%%~a
for %%a in ("evosocc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Excelsior") do set NWDIR=%%~a
for %%a in ("excelsr.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Excite Bike") do set NWDIR=%%~a
for %%a in ("pc_ebike.zip") do set ROM=%%~a
call :INTO
for %%a in ("Excite League") do set NWDIR=%%~a
for %%a in ("exctleag.zip") do set ROM=%%~a
call :INTO
for %%a in ("Exciting Animal Land Jr.") do set NWDIR=%%~a
for %%a in ("animaljr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Exciting Soccer") do set NWDIR=%%~a
for %%a in ("exctsccr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Exciting Soccer II") do set NWDIR=%%~a
for %%a in ("exctscc2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Exed Exes") do set NWDIR=%%~a
for %%a in ("exedexes.zip") do set ROM=%%~a
call :INTO
for %%a in ("Exerion") do set NWDIR=%%~a
for %%a in ("exerion.zip") do set ROM=%%~a
call :INTO
for %%a in ("Explosive Breaker") do set NWDIR=%%~a
for %%a in ("explbrkr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Express Card - Top Card") do set NWDIR=%%~a
for %%a in ("expcard.zip") do set ROM=%%~a
call :INTO
for %%a in ("Express Raider") do set NWDIR=%%~a
for %%a in ("exprraid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Extermination") do set NWDIR=%%~a
for %%a in ("extrmatn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Exterminator") do set NWDIR=%%~a
for %%a in ("exterm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Extra Bases") do set NWDIR=%%~a
for %%a in ("ebases.zip") do set ROM=%%~a
call :INTO
for %%a in ("Extra Inning") do set NWDIR=%%~a
for %%a in ("einning.zip") do set ROM=%%~a
call :INTO
for %%a in ("Extreme Downhill") do set NWDIR=%%~a
for %%a in ("extdwnhl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Exvania") do set NWDIR=%%~a
for %%a in ("exvania.zip") do set ROM=%%~a
call :INTO
for %%a in ("Exzisus") do set NWDIR=%%~a
for %%a in ("exzisus.zip") do set ROM=%%~a
call :INTO
for %%a in ("Eyes") do set NWDIR=%%~a
for %%a in ("eyes.zip") do set ROM=%%~a
call :INTO
for %%a in ("F-1 Dream") do set NWDIR=%%~a
for %%a in ("f1dream.zip") do set ROM=%%~a
call :INTO
for %%a in ("F1 Exhaust Note") do set NWDIR=%%~a
for %%a in ("f1en.zip") do set ROM=%%~a
call :INTO
for %%a in ("F-1 Grand Prix") do set NWDIR=%%~a
for %%a in ("f1gp.zip") do set ROM=%%~a
call :INTO
for %%a in ("F-1 Grand Prix Part II") do set NWDIR=%%~a
for %%a in ("f1gp2.zip") do set ROM=%%~a
call :INTO
for %%a in ("F-1 Grand Prix Star II") do set NWDIR=%%~a
for %%a in ("f1gpstr2.zip") do set ROM=%%~a
call :INTO
for %%a in ("F-15 Strike Eagle") do set NWDIR=%%~a
for %%a in ("f15se.zip") do set ROM=%%~a
call :INTO
for %%a in ("Face Off") do set NWDIR=%%~a
for %%a in ("faceoff.zip") do set ROM=%%~a
call :INTO
for %%a in ("Falcons Wild - Wild Card 1991") do set NWDIR=%%~a
for %%a in ("falcnwld.zip") do set ROM=%%~a
call :INTO
for %%a in ("FamicomBox") do set NWDIR=%%~a
for %%a in ("famibox.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fancy World - Earth of Crisis") do set NWDIR=%%~a
for %%a in ("fncywld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fantasia") do set NWDIR=%%~a
for %%a in ("fantasia.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fantasia II") do set NWDIR=%%~a
for %%a in ("fantsia2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fantastic") do set NWDIR=%%~a
for %%a in ("fantastc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fantastic Journey") do set NWDIR=%%~a
for %%a in ("fantjour.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fantasy '95") do set NWDIR=%%~a
for %%a in ("fantsy95.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fantasy Land") do set NWDIR=%%~a
for %%a in ("fantland.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fantasy Zone") do set NWDIR=%%~a
for %%a in ("fantzone.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fantasy Zone 2") do set NWDIR=%%~a
for %%a in ("fantzn2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Far East of Eden - Kabuki Klash - Tengai Makyou - Shin Den") do set NWDIR=%%~a
for %%a in ("kabukikl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fast Lane") do set NWDIR=%%~a
for %%a in ("fastlane.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fatal Fury - King of Fighters - Garou Densetsu - shukumei no tatakai") do set NWDIR=%%~a
for %%a in ("fatfury1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fatal Fury 2 - Garou Densetsu 2 - arata-naru tatakai") do set NWDIR=%%~a
for %%a in ("fatfury2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fatal Fury 3 - Road to the Final Victory - Garou Densetsu 3 - haruka-naru tatakai") do set NWDIR=%%~a
for %%a in ("fatfury3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fatal Fury Special - Garou Densetsu Special") do set NWDIR=%%~a
for %%a in ("fatfursp.zip") do set ROM=%%~a
call :INTO
for %%a in ("FAX") do set NWDIR=%%~a
for %%a in ("fax.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fever Soccer") do set NWDIR=%%~a
for %%a in ("feversoc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fever SOS") do set NWDIR=%%~a
for %%a in ("feversos.zip") do set ROM=%%~a
call :INTO
for %%a in ("Field Combat") do set NWDIR=%%~a
for %%a in ("fcombat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Field Day") do set NWDIR=%%~a
for %%a in ("fieldday.zip") do set ROM=%%~a
call :INTO
for %%a in ("Field Goal") do set NWDIR=%%~a
for %%a in ("fgoal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fight Fever") do set NWDIR=%%~a
for %%a in ("fightfev.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fighter & Attacker") do set NWDIR=%%~a
for %%a in ("fghtatck.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fighter's History") do set NWDIR=%%~a
for %%a in ("fghthist.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fighters' Impact A") do set NWDIR=%%~a
for %%a in ("ftimpcta.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fighting Basketball") do set NWDIR=%%~a
for %%a in ("fghtbskt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fighting Golf") do set NWDIR=%%~a
for %%a in ("fitegolf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fighting Hawk") do set NWDIR=%%~a
for %%a in ("fhawk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fighting Ice Hockey") do set NWDIR=%%~a
for %%a in ("cfghtice.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fighting Layer") do set NWDIR=%%~a
for %%a in ("fgtlayer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fighting Roller") do set NWDIR=%%~a
for %%a in ("fightrol.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fighting Soccer") do set NWDIR=%%~a
for %%a in ("fsoccer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Filetto") do set NWDIR=%%~a
for %%a in ("filetto.zip") do set ROM=%%~a
call :INTO
for %%a in ("Final Blow") do set NWDIR=%%~a
for %%a in ("finalb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Final Fight") do set NWDIR=%%~a
for %%a in ("ffight.zip") do set ROM=%%~a
call :INTO
for %%a in ("Final Fight 2") do set NWDIR=%%~a
for %%a in ("ffight2b.zip") do set ROM=%%~a
call :INTO
for %%a in ("Final Godori") do set NWDIR=%%~a
for %%a in ("finalgdr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Final Lap") do set NWDIR=%%~a
for %%a in ("finallap.zip") do set ROM=%%~a
call :INTO
for %%a in ("Final Lap 2") do set NWDIR=%%~a
for %%a in ("finalap2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Final Lap 3") do set NWDIR=%%~a
for %%a in ("finalap3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Final Lap R") do set NWDIR=%%~a
for %%a in ("finalapr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Final Star Force") do set NWDIR=%%~a
for %%a in ("fstarfrc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Final Tetris") do set NWDIR=%%~a
for %%a in ("finalttr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Finalizer - Super Transformation") do set NWDIR=%%~a
for %%a in ("finalizr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Find Out") do set NWDIR=%%~a
for %%a in ("findout.zip") do set ROM=%%~a
call :INTO
for %%a in ("Finest Hour") do set NWDIR=%%~a
for %%a in ("finehour.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fire Barrel") do set NWDIR=%%~a
for %%a in ("firebarr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fire Battle") do set NWDIR=%%~a
for %%a in ("firebatl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fire Fox") do set NWDIR=%%~a
for %%a in ("firefox.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fire Hawk") do set NWDIR=%%~a
for %%a in ("firehawk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fire One") do set NWDIR=%%~a
for %%a in ("fireone.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fire Shark") do set NWDIR=%%~a
for %%a in ("fireshrk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fire Trap") do set NWDIR=%%~a
for %%a in ("firetrap.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fire Truck - Smokey Joe") do set NWDIR=%%~a
for %%a in ("firetrk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Firebeast") do set NWDIR=%%~a
for %%a in ("firebeas.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fisherman's Bait - A Bass Challenge") do set NWDIR=%%~a
for %%a in ("fbaitbc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fisherman's Bait - Marlin Challenge") do set NWDIR=%%~a
for %%a in ("fbaitmc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fisherman's Bait 2 - A Bass Challenge") do set NWDIR=%%~a
for %%a in ("fbait2bc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fishin' Frenzy") do set NWDIR=%%~a
for %%a in ("fishfren.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fishing Maniac 3") do set NWDIR=%%~a
for %%a in ("fmaniac3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fit of Fighting") do set NWDIR=%%~a
for %%a in ("fitfight.zip") do set ROM=%%~a
call :INTO
for %%a in ("Five a Side Soccer") do set NWDIR=%%~a
for %%a in ("fiveside.zip") do set ROM=%%~a
call :INTO
for %%a in ("Five Clown") do set NWDIR=%%~a
for %%a in ("5clown.zip") do set ROM=%%~a
call :INTO
for %%a in ("FixEight") do set NWDIR=%%~a
for %%a in ("fixeight.zip") do set ROM=%%~a
call :INTO
for %%a in ("Flame Gunner") do set NWDIR=%%~a
for %%a in ("flamegun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Flash Point") do set NWDIR=%%~a
for %%a in ("fpoint.zip") do set ROM=%%~a
call :INTO
for %%a in ("Flashgal") do set NWDIR=%%~a
for %%a in ("flashgal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Flicky") do set NWDIR=%%~a
for %%a in ("flicky.zip") do set ROM=%%~a
call :INTO
for %%a in ("Flip & Flop") do set NWDIR=%%~a
for %%a in ("mf_flip.zip") do set ROM=%%~a
call :INTO
for %%a in ("Flip Maze") do set NWDIR=%%~a
for %%a in ("flipmaze.zip") do set ROM=%%~a
call :INTO
for %%a in ("Flower") do set NWDIR=%%~a
for %%a in ("flower.zip") do set ROM=%%~a
call :INTO
for %%a in ("Flyball") do set NWDIR=%%~a
for %%a in ("flyball.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fly-Boy") do set NWDIR=%%~a
for %%a in ("flyboy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Flying Ball") do set NWDIR=%%~a
for %%a in ("cflyball.zip") do set ROM=%%~a
call :INTO
for %%a in ("Flying Shark") do set NWDIR=%%~a
for %%a in ("fshark.zip") do set ROM=%%~a
call :INTO
for %%a in ("Flying Tiger") do set NWDIR=%%~a
for %%a in ("flytiger.zip") do set ROM=%%~a
call :INTO
for %%a in ("Food Fight") do set NWDIR=%%~a
for %%a in ("foodf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Football Champ") do set NWDIR=%%~a
for %%a in ("footchmp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Football Frenzy") do set NWDIR=%%~a
for %%a in ("fbfrenzy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Forgotten Worlds") do set NWDIR=%%~a
for %%a in ("forgottn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Formation Z") do set NWDIR=%%~a
for %%a in ("formatz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fortress 2 Blue Arcade") do set NWDIR=%%~a
for %%a in ("fort2b.zip") do set ROM=%%~a
call :INTO
for %%a in ("Forty-Love") do set NWDIR=%%~a
for %%a in ("40love.zip") do set ROM=%%~a
call :INTO
for %%a in ("Four Trax") do set NWDIR=%%~a
for %%a in ("fourtrax.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fred Flintstones' Memory Match") do set NWDIR=%%~a
for %%a in ("fredmem.zip") do set ROM=%%~a
call :INTO
for %%a in ("Free Kick") do set NWDIR=%%~a
for %%a in ("freekick.zip") do set ROM=%%~a
call :INTO
for %%a in ("Freeze") do set NWDIR=%%~a
for %%a in ("freeze.zip") do set ROM=%%~a
call :INTO
for %%a in ("Freeze") do set NWDIR=%%~a
for %%a in ("freezeat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Frenzy") do set NWDIR=%%~a
for %%a in ("frenzy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Frisky Tom") do set NWDIR=%%~a
for %%a in ("friskyt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Frog & Spiders") do set NWDIR=%%~a
for %%a in ("fspiderb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Frogger") do set NWDIR=%%~a
for %%a in ("frogger.zip") do set ROM=%%~a
call :INTO
for %%a in ("Front Line") do set NWDIR=%%~a
for %%a in ("frontlin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fruit Bonus '06 - 10th anniversary") do set NWDIR=%%~a
for %%a in ("fb6.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fruit Bonus 2000 - New Cherry 2000") do set NWDIR=%%~a
for %%a in ("ch2000.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fruit Bonus 2004") do set NWDIR=%%~a
for %%a in ("fb4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fruit Bonus 2005") do set NWDIR=%%~a
for %%a in ("fb5.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fruit Bonus 2006 Special Edition") do set NWDIR=%%~a
for %%a in ("fb6se.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fruit Bonus 2nd Edition") do set NWDIR=%%~a
for %%a in ("fb2nd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fruit Bonus 2nd Generation") do set NWDIR=%%~a
for %%a in ("fb2gen.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fruit Bonus 3G") do set NWDIR=%%~a
for %%a in ("fb3g.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fruit Bonus Deluxe") do set NWDIR=%%~a
for %%a in ("fbdeluxe.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fruit Carnival Nudge") do set NWDIR=%%~a
for %%a in ("fcnudge.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fruit Cocktail") do set NWDIR=%%~a
for %%a in ("fcockt_8.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fruit Cocktail 2") do set NWDIR=%%~a
for %%a in ("fcockt2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fun River") do set NWDIR=%%~a
for %%a in ("funriver.zip") do set ROM=%%~a
call :INTO
for %%a in ("Fun World Quiz") do set NWDIR=%%~a
for %%a in ("funquiz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Funcube 2") do set NWDIR=%%~a
for %%a in ("funcube2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Funcube 3") do set NWDIR=%%~a
for %%a in ("funcube3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Funcube 4") do set NWDIR=%%~a
for %%a in ("funcube4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Funcube 5") do set NWDIR=%%~a
for %%a in ("funcube5.zip") do set ROM=%%~a
call :INTO
for %%a in ("Funky Bee") do set NWDIR=%%~a
for %%a in ("funkybee.zip") do set ROM=%%~a
call :INTO
for %%a in ("Funky Fish") do set NWDIR=%%~a
for %%a in ("fnkyfish.zip") do set ROM=%%~a
call :INTO
for %%a in ("Funky Head Boxers") do set NWDIR=%%~a
for %%a in ("fhboxers.zip") do set ROM=%%~a
call :INTO
for %%a in ("Funky Jet") do set NWDIR=%%~a
for %%a in ("funkyjet.zip") do set ROM=%%~a
call :INTO
for %%a in ("Funny Bubble") do set NWDIR=%%~a
for %%a in ("funybubl.zip") do set ROM=%%~a
call :INTO
for %%a in ("G.E.A.") do set NWDIR=%%~a
for %%a in ("victor5.zip") do set ROM=%%~a
call :INTO
for %%a in ("G.I. Joe") do set NWDIR=%%~a
for %%a in ("gijoe.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gaia Crusaders") do set NWDIR=%%~a
for %%a in ("gaia.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gaiapolis") do set NWDIR=%%~a
for %%a in ("gaiapols.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gain Ground") do set NWDIR=%%~a
for %%a in ("gground.zip") do set ROM=%%~a
call :INTO
for %%a in ("Galactic Storm") do set NWDIR=%%~a
for %%a in ("galastrm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Galactic Warriors") do set NWDIR=%%~a
for %%a in ("gwarrior.zip") do set ROM=%%~a
call :INTO
for %%a in ("Galactica - Batalha Espacial") do set NWDIR=%%~a
for %%a in ("galactic.zip") do set ROM=%%~a
call :INTO
for %%a in ("Galaga") do set NWDIR=%%~a
for %%a in ("galaga.zip") do set ROM=%%~a
call :INTO
for %%a in ("Galaga '88") do set NWDIR=%%~a
for %%a in ("galaga88.zip") do set ROM=%%~a
call :INTO
for %%a in ("Galaxi") do set NWDIR=%%~a
for %%a in ("galaxi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Galaxia") do set NWDIR=%%~a
for %%a in ("galaxia.zip") do set ROM=%%~a
call :INTO
for %%a in ("Galaxian") do set NWDIR=%%~a
for %%a in ("galaxian.zip") do set ROM=%%~a
call :INTO
for %%a in ("Galaxy Fight - Universal Warriors") do set NWDIR=%%~a
for %%a in ("galaxyfg.zip") do set ROM=%%~a
call :INTO
for %%a in ("Galaxy Force 2") do set NWDIR=%%~a
for %%a in ("gforce2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Galaxy Game") do set NWDIR=%%~a
for %%a in ("galgame.zip") do set ROM=%%~a
call :INTO
for %%a in ("Galaxy Games StarPak 2") do set NWDIR=%%~a
for %%a in ("galgame2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Galaxy Gunners") do set NWDIR=%%~a
for %%a in ("galaxygn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Galivan - Cosmo Police") do set NWDIR=%%~a
for %%a in ("galivan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gallop Racer") do set NWDIR=%%~a
for %%a in ("glpracr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gallop Racer 3") do set NWDIR=%%~a
for %%a in ("glpracr3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Galmedes") do set NWDIR=%%~a
for %%a in ("galmedes.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gals Hustler") do set NWDIR=%%~a
for %%a in ("galhustl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gals Panic") do set NWDIR=%%~a
for %%a in ("galpanic.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gals Panic") do set NWDIR=%%~a
for %%a in ("galsnew.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gals Panic 3") do set NWDIR=%%~a
for %%a in ("galpani3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gals Panic 4") do set NWDIR=%%~a
for %%a in ("galpani4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gals Panic S - Extra Edition") do set NWDIR=%%~a
for %%a in ("galpanis.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gals Panic S2") do set NWDIR=%%~a
for %%a in ("galpans2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gals Panic S3") do set NWDIR=%%~a
for %%a in ("galpans3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gals Pinball") do set NWDIR=%%~a
for %%a in ("galspnbl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gamball") do set NWDIR=%%~a
for %%a in ("m4gambal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Games V18.2") do set NWDIR=%%~a
for %%a in ("usg182.zip") do set ROM=%%~a
call :INTO
for %%a in ("Games V18.7C") do set NWDIR=%%~a
for %%a in ("usg185.zip") do set ROM=%%~a
call :INTO
for %%a in ("Games V25.4X") do set NWDIR=%%~a
for %%a in ("usg252.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ganbare Chinsan Ooshoubu") do set NWDIR=%%~a
for %%a in ("chinsan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ganbare Ginkun") do set NWDIR=%%~a
for %%a in ("ginkun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gang Busters") do set NWDIR=%%~a
for %%a in ("gbusters.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gang Wars") do set NWDIR=%%~a
for %%a in ("gangwars.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ganryu - Musashi Ganryuki") do set NWDIR=%%~a
for %%a in ("ganryu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Garage") do set NWDIR=%%~a
for %%a in ("garage_5.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gardia") do set NWDIR=%%~a
for %%a in ("gardia.zip") do set ROM=%%~a
call :INTO
for %%a in ("Garogun Seroyang") do set NWDIR=%%~a
for %%a in ("garogun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Garou - Mark of the Wolves") do set NWDIR=%%~a
for %%a in ("garou.zip") do set ROM=%%~a
call :INTO
for %%a in ("Garyo Retsuden") do set NWDIR=%%~a
for %%a in ("garyoret.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gauntlet") do set NWDIR=%%~a
for %%a in ("gauntlet.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Gauntlet") do set NWDIR=%%~a
for %%a in ("pc_gntlt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gauntlet Dark Legacy") do set NWDIR=%%~a
for %%a in ("gauntdl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gauntlet II") do set NWDIR=%%~a
for %%a in ("gaunt2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gauntlet Legends") do set NWDIR=%%~a
for %%a in ("gauntleg.zip") do set ROM=%%~a
call :INTO
for %%a in ("G-Darius Ver.2") do set NWDIR=%%~a
for %%a in ("gdarius2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gee Bee") do set NWDIR=%%~a
for %%a in ("geebee.zip") do set ROM=%%~a
call :INTO
for %%a in ("GeGeGe no Kitarou Youkai Slot") do set NWDIR=%%~a
for %%a in ("gegege.zip") do set ROM=%%~a
call :INTO
for %%a in ("GEI Multi Game") do set NWDIR=%%~a
for %%a in ("geimulti.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gekirindan") do set NWDIR=%%~a
for %%a in ("gekiridn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gemini Wing") do set NWDIR=%%~a
for %%a in ("gemini.zip") do set ROM=%%~a
call :INTO
for %%a in ("Genie") do set NWDIR=%%~a
for %%a in ("genie.zip") do set ROM=%%~a
call :INTO
for %%a in ("Genix Family") do set NWDIR=%%~a
for %%a in ("genix.zip") do set ROM=%%~a
call :INTO
for %%a in ("Genpei ToumaDen") do set NWDIR=%%~a
for %%a in ("genpeitd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ghost Chaser Densei") do set NWDIR=%%~a
for %%a in ("denseib.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ghost Hunter") do set NWDIR=%%~a
for %%a in ("ghoshunt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ghost Pilots") do set NWDIR=%%~a
for %%a in ("gpilots.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ghostlop") do set NWDIR=%%~a
for %%a in ("ghostlop.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ghostmuncher Galaxian") do set NWDIR=%%~a
for %%a in ("gmgalax.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ghosts'n Goblins") do set NWDIR=%%~a
for %%a in ("gng.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ghoul Panic") do set NWDIR=%%~a
for %%a in ("ghlpanic.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ghouls'n Ghosts") do set NWDIR=%%~a
for %%a in ("ghouls.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ghox") do set NWDIR=%%~a
for %%a in ("ghox.zip") do set ROM=%%~a
call :INTO
for %%a in ("Giga Wing") do set NWDIR=%%~a
for %%a in ("gigawing.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gigandes") do set NWDIR=%%~a
for %%a in ("gigandes.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gigas Mark II") do set NWDIR=%%~a
for %%a in ("gigasm2b.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gimme A Break") do set NWDIR=%%~a
for %%a in ("gimeabrk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ginga NinkyouDen") do set NWDIR=%%~a
for %%a in ("ginganin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gionbana") do set NWDIR=%%~a
for %%a in ("gionbana.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gionbana") do set NWDIR=%%~a
for %%a in ("mgion.zip") do set ROM=%%~a
call :INTO
for %%a in ("GiroTutto") do set NWDIR=%%~a
for %%a in ("girotutt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Give us a Break") do set NWDIR=%%~a
for %%a in ("guab.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gladiator") do set NWDIR=%%~a
for %%a in ("gladiatr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gladiator 1984") do set NWDIR=%%~a
for %%a in ("sgladiat.zip") do set ROM=%%~a
call :INTO
for %%a in ("G-LOC Air Battle") do set NWDIR=%%~a
for %%a in ("gloc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gnome") do set NWDIR=%%~a
for %%a in ("gnome_3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Go 2000") do set NWDIR=%%~a
for %%a in ("go2000.zip") do set ROM=%%~a
call :INTO
for %%a in ("Go Go Mr. Yamaguchi - Yuke Yuke Yamaguchi-kun") do set NWDIR=%%~a
for %%a in ("yamagchi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Go Go! Mile Smile") do set NWDIR=%%~a
for %%a in ("gogomile.zip") do set ROM=%%~a
call :INTO
for %%a in ("Goal! Goal! Goal!") do set NWDIR=%%~a
for %%a in ("goalx3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Goalie Ghost") do set NWDIR=%%~a
for %%a in ("gghost.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gogetsuji Legends") do set NWDIR=%%~a
for %%a in ("plegends.zip") do set ROM=%%~a
call :INTO
for %%a in ("Goindol") do set NWDIR=%%~a
for %%a in ("goindol.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gold Bug") do set NWDIR=%%~a
for %%a in ("goldbug.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gold Medalist") do set NWDIR=%%~a
for %%a in ("goldmedl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Arrow") do set NWDIR=%%~a
for %%a in ("gldarrow.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Axe") do set NWDIR=%%~a
for %%a in ("goldnaxe.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Axe - The Duel") do set NWDIR=%%~a
for %%a in ("gaxeduel.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Axe II") do set NWDIR=%%~a
for %%a in ("mp_gaxe2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Axe - The Revenge of Death Adder") do set NWDIR=%%~a
for %%a in ("ga2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Crown") do set NWDIR=%%~a
for %%a in ("gldncrwn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Fire II") do set NWDIR=%%~a
for %%a in ("gfire2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Par Golf") do set NWDIR=%%~a
for %%a in ("gpgolf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Poker Double Up") do set NWDIR=%%~a
for %%a in ("goldnpkr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Star") do set NWDIR=%%~a
for %%a in ("goldstar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Tee 2K") do set NWDIR=%%~a
for %%a in ("gt2k.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Tee 3D Golf") do set NWDIR=%%~a
for %%a in ("gt3d.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Tee '97") do set NWDIR=%%~a
for %%a in ("gt97.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Tee '98") do set NWDIR=%%~a
for %%a in ("gt98.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Tee '99") do set NWDIR=%%~a
for %%a in ("gt99.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Tee Classic") do set NWDIR=%%~a
for %%a in ("gtclassc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Tee Golf") do set NWDIR=%%~a
for %%a in ("gtg.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golden Tee Golf II") do set NWDIR=%%~a
for %%a in ("gtg2.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Golf") do set NWDIR=%%~a
for %%a in ("pc_golf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golfing Greats") do set NWDIR=%%~a
for %%a in ("glfgreat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golgo 13") do set NWDIR=%%~a
for %%a in ("golgo13.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golgo 13 Kiseki no Dandou") do set NWDIR=%%~a
for %%a in ("g13knd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Golly! Ghost!") do set NWDIR=%%~a
for %%a in ("gollygho.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gomoku Narabe Renju") do set NWDIR=%%~a
for %%a in ("gomoku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gondomania") do set NWDIR=%%~a
for %%a in ("gondo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Good") do set NWDIR=%%~a
for %%a in ("good.zip") do set ROM=%%~a
call :INTO
for %%a in ("Good E Jong") do set NWDIR=%%~a
for %%a in ("goodejan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Got-cha Mini Game Festival") do set NWDIR=%%~a
for %%a in ("gotcha.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gourmet Battle Quiz Ryohrioh CooKing") do set NWDIR=%%~a
for %%a in ("ryorioh.zip") do set ROM=%%~a
call :INTO
for %%a in ("GP Rider") do set NWDIR=%%~a
for %%a in ("gprider.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Gradius") do set NWDIR=%%~a
for %%a in ("pc_grdus.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gradius 4 - Fukkatsu") do set NWDIR=%%~a
for %%a in ("gradius4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gradius III") do set NWDIR=%%~a
for %%a in ("gradius3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Grand Champion") do set NWDIR=%%~a
for %%a in ("grchamp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Grand Cross") do set NWDIR=%%~a
for %%a in ("gcpinbal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Grand Prix Star") do set NWDIR=%%~a
for %%a in ("f1gpstar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Grand Slam") do set NWDIR=%%~a
for %%a in ("mp_gslam.zip") do set ROM=%%~a
call :INTO
for %%a in ("Grand Striker") do set NWDIR=%%~a
for %%a in ("gstriker.zip") do set ROM=%%~a
call :INTO
for %%a in ("Grand Striker 2") do set NWDIR=%%~a
for %%a in ("gstrik2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Grand Tour") do set NWDIR=%%~a
for %%a in ("grndtour.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gratia - Second Earth") do set NWDIR=%%~a
for %%a in ("gratia.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gravitar") do set NWDIR=%%~a
for %%a in ("gravitar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Great Sluggers") do set NWDIR=%%~a
for %%a in ("gslugrsj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Great Sluggers '94") do set NWDIR=%%~a
for %%a in ("gslgr94u.zip") do set ROM=%%~a
call :INTO
for %%a in ("Great Swordsman") do set NWDIR=%%~a
for %%a in ("gsword.zip") do set ROM=%%~a
call :INTO
for %%a in ("Green Beret") do set NWDIR=%%~a
for %%a in ("gberet.zip") do set ROM=%%~a
call :INTO
for %%a in ("Grid Seeker - Project Storm Hammer") do set NWDIR=%%~a
for %%a in ("gseeker.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gridiron Fight") do set NWDIR=%%~a
for %%a in ("gridiron.zip") do set ROM=%%~a
call :INTO
for %%a in ("Grind Stormer") do set NWDIR=%%~a
for %%a in ("grindstm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Grobda") do set NWDIR=%%~a
for %%a in ("grobda.zip") do set ROM=%%~a
call :INTO
for %%a in ("Groove on Fight - Gouketsuji Ichizoku 3") do set NWDIR=%%~a
for %%a in ("groovef.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ground Effects - Super Ground Effects") do set NWDIR=%%~a
for %%a in ("groundfx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Growl") do set NWDIR=%%~a
for %%a in ("growl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Grudge Match") do set NWDIR=%%~a
for %%a in ("grmatch.zip") do set ROM=%%~a
call :INTO
for %%a in ("Grudge Match") do set NWDIR=%%~a
for %%a in ("grudge.zip") do set ROM=%%~a
call :INTO
for %%a in ("G-Stream G2020") do set NWDIR=%%~a
for %%a in ("gstream.zip") do set ROM=%%~a
call :INTO
for %%a in ("Guardian") do set NWDIR=%%~a
for %%a in ("getstar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Guardian Force") do set NWDIR=%%~a
for %%a in ("grdforce.zip") do set ROM=%%~a
call :INTO
for %%a in ("Guardian Storm") do set NWDIR=%%~a
for %%a in ("grdnstrm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Guardians - Denjin Makai II") do set NWDIR=%%~a
for %%a in ("grdians.zip") do set ROM=%%~a
call :INTO
for %%a in ("Guardians of the 'Hood") do set NWDIR=%%~a
for %%a in ("guardian.zip") do set ROM=%%~a
call :INTO
for %%a in ("Guerrilla War") do set NWDIR=%%~a
for %%a in ("gwar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Guitar Freaks") do set NWDIR=%%~a
for %%a in ("gtrfrks.zip") do set ROM=%%~a
call :INTO
for %%a in ("Guitar Freaks 2nd Mix Ver 1.01") do set NWDIR=%%~a
for %%a in ("gtrfrk2m.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gulf Storm") do set NWDIR=%%~a
for %%a in ("gulfstrm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gulf War II") do set NWDIR=%%~a
for %%a in ("gulfwar2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gumbo") do set NWDIR=%%~a
for %%a in ("gumbo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gun & Frontier") do set NWDIR=%%~a
for %%a in ("gunfront.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gun Dealer") do set NWDIR=%%~a
for %%a in ("gundealr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gun Dealer '94") do set NWDIR=%%~a
for %%a in ("gundl94.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gun Force II") do set NWDIR=%%~a
for %%a in ("gunforc2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gun Master") do set NWDIR=%%~a
for %%a in ("gunmast.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gun.Smoke") do set NWDIR=%%~a
for %%a in ("gunsmoke.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gunbarich") do set NWDIR=%%~a
for %%a in ("gnbarich.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gunbird") do set NWDIR=%%~a
for %%a in ("gunbird.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gunbird 2") do set NWDIR=%%~a
for %%a in ("gunbird2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gunbuster") do set NWDIR=%%~a
for %%a in ("gunbustr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gundhara") do set NWDIR=%%~a
for %%a in ("gundhara.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gunforce - Battle Fire Engulfed Terror Island") do set NWDIR=%%~a
for %%a in ("gunforce.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gunlock") do set NWDIR=%%~a
for %%a in ("gunlock.zip") do set ROM=%%~a
call :INTO
for %%a in ("GunNail") do set NWDIR=%%~a
for %%a in ("gunnail.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gururin") do set NWDIR=%%~a
for %%a in ("gururin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Guts n' Glory") do set NWDIR=%%~a
for %%a in ("guts.zip") do set ROM=%%~a
call :INTO
for %%a in ("Guts'n") do set NWDIR=%%~a
for %%a in ("gutsn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Guwange") do set NWDIR=%%~a
for %%a in ("guwange.zip") do set ROM=%%~a
call :INTO
for %%a in ("Guzzler") do set NWDIR=%%~a
for %%a in ("guzzler.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gyakuten!! Puzzle Bancho") do set NWDIR=%%~a
for %%a in ("pbancho.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gypsy Juggler") do set NWDIR=%%~a
for %%a in ("gypsyjug.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gyrodine") do set NWDIR=%%~a
for %%a in ("gyrodine.zip") do set ROM=%%~a
call :INTO
for %%a in ("Gyruss") do set NWDIR=%%~a
for %%a in ("gyruss.zip") do set ROM=%%~a
call :INTO
for %%a in ("H63484") do set NWDIR=%%~a
for %%a in ("h63484.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hacha Mecha Fighter") do set NWDIR=%%~a
for %%a in ("hachamf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hachoo!") do set NWDIR=%%~a
for %%a in ("hachoo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hae Hae Ka Ka Ka") do set NWDIR=%%~a
for %%a in ("haekaka.zip") do set ROM=%%~a
call :INTO
for %%a in ("HAL21") do set NWDIR=%%~a
for %%a in ("hal21.zip") do set ROM=%%~a
call :INTO
for %%a in ("Halley's Comet") do set NWDIR=%%~a
for %%a in ("halleys.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hammer") do set NWDIR=%%~a
for %%a in ("hammer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hammerin' Harry") do set NWDIR=%%~a
for %%a in ("hharry.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hana Awase") do set NWDIR=%%~a
for %%a in ("hanaawas.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hana Jingi") do set NWDIR=%%~a
for %%a in ("hjingi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hana Kagerou") do set NWDIR=%%~a
for %%a in ("hkagerou.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hana Kanzashi") do set NWDIR=%%~a
for %%a in ("hanakanz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hana Kochou") do set NWDIR=%%~a
for %%a in ("hnkochou.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hana to Ojisan") do set NWDIR=%%~a
for %%a in ("hanaoji.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hana wo Yaraneba!") do set NWDIR=%%~a
for %%a in ("hanayara.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hana Yayoi") do set NWDIR=%%~a
for %%a in ("hnayayoi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hanafuda Hana Ginga") do set NWDIR=%%~a
for %%a in ("hginga.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hanafuda Hana Gokou") do set NWDIR=%%~a
for %%a in ("hgokou.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hanafuda Hana Tengoku") do set NWDIR=%%~a
for %%a in ("htengoku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hanagumi Taisen Columns - Sakura Wars") do set NWDIR=%%~a
for %%a in ("hanagumi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hanaroku") do set NWDIR=%%~a
for %%a in ("hanaroku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Handle Champ") do set NWDIR=%%~a
for %%a in ("hndlchmp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hangman") do set NWDIR=%%~a
for %%a in ("hangman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hangman") do set NWDIR=%%~a
for %%a in ("hngmnjpm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hang-On") do set NWDIR=%%~a
for %%a in ("hangon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hang-On Jr.") do set NWDIR=%%~a
for %%a in ("hangonjr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Happy Jackie") do set NWDIR=%%~a
for %%a in ("jackie.zip") do set ROM=%%~a
call :INTO
for %%a in ("Happy Tour") do set NWDIR=%%~a
for %%a in ("hapytour.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hard Drivin'") do set NWDIR=%%~a
for %%a in ("harddriv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hard Drivin's Airborne") do set NWDIR=%%~a
for %%a in ("hdrivair.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hard Dunk") do set NWDIR=%%~a
for %%a in ("harddunk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hard Hat") do set NWDIR=%%~a
for %%a in ("hardhat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hard Head") do set NWDIR=%%~a
for %%a in ("hardhead.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hard Head 2") do set NWDIR=%%~a
for %%a in ("hardhea2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hard Times") do set NWDIR=%%~a
for %%a in ("hrdtimes.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hard Yardage") do set NWDIR=%%~a
for %%a in ("hardyard.zip") do set ROM=%%~a
call :INTO
for %%a in ("Harem Challenge") do set NWDIR=%%~a
for %%a in ("haremchl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hasamu") do set NWDIR=%%~a
for %%a in ("hasamu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hat Trick") do set NWDIR=%%~a
for %%a in ("hattrick.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hatch Catch") do set NWDIR=%%~a
for %%a in ("htchctch.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hatris") do set NWDIR=%%~a
for %%a in ("hatris.zip") do set ROM=%%~a
call :INTO
for %%a in ("Haunted Castle") do set NWDIR=%%~a
for %%a in ("hcastle.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hayaoshi Quiz Grand Champion Taikai") do set NWDIR=%%~a
for %%a in ("hayaosi2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hayaoshi Quiz Nettou Namahousou") do set NWDIR=%%~a
for %%a in ("hayaosi3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hayaoshi Quiz Ouza Ketteisen - The King Of Quiz") do set NWDIR=%%~a
for %%a in ("hayaosi1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hayaoshi Taisen Quiz Hyhoo") do set NWDIR=%%~a
for %%a in ("hyhoo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hayaoshi Taisen Quiz Hyhoo 2") do set NWDIR=%%~a
for %%a in ("hyhoo2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Head On") do set NWDIR=%%~a
for %%a in ("headon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Head On 2") do set NWDIR=%%~a
for %%a in ("headon2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Head Panic") do set NWDIR=%%~a
for %%a in ("hedpanic.zip") do set ROM=%%~a
call :INTO
for %%a in ("Heart Attack") do set NWDIR=%%~a
for %%a in ("heartatk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Heaven's Gate") do set NWDIR=%%~a
for %%a in ("hvnsgate.zip") do set ROM=%%~a
call :INTO
for %%a in ("Heavy Barrel") do set NWDIR=%%~a
for %%a in ("hbarrel.zip") do set ROM=%%~a
call :INTO
for %%a in ("Heavy Metal") do set NWDIR=%%~a
for %%a in ("hvymetal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Heavy Smash") do set NWDIR=%%~a
for %%a in ("hvysmsh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Heavy Unit") do set NWDIR=%%~a
for %%a in ("hvyunit.zip") do set ROM=%%~a
call :INTO
for %%a in ("Heavyweight Champ") do set NWDIR=%%~a
for %%a in ("hwchamp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hebereke no Popoon") do set NWDIR=%%~a
for %%a in ("heberpop.zip") do set ROM=%%~a
call :INTO
for %%a in ("Heiankyo Alien") do set NWDIR=%%~a
for %%a in ("heiankyo.zip") do set ROM=%%~a
call :INTO
for %%a in ("HeliFire") do set NWDIR=%%~a
for %%a in ("helifire.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hellfire") do set NWDIR=%%~a
for %%a in ("hellfire.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hero") do set NWDIR=%%~a
for %%a in ("hero.zip") do set ROM=%%~a
call :INTO
for %%a in ("Heuk Sun Baek Sa") do set NWDIR=%%~a
for %%a in ("heuksun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hexa") do set NWDIR=%%~a
for %%a in ("hexa.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hexion") do set NWDIR=%%~a
for %%a in ("hexion.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hidden Catch") do set NWDIR=%%~a
for %%a in ("hidnctch.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hidden Catch 2") do set NWDIR=%%~a
for %%a in ("hidctch2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hidden Catch 3") do set NWDIR=%%~a
for %%a in ("hidctch3.zip") do set ROM=%%~a
call :INTO
for %%a in ("High Impact Football") do set NWDIR=%%~a
for %%a in ("hiimpact.zip") do set ROM=%%~a
call :INTO
for %%a in ("High Way Race") do set NWDIR=%%~a
for %%a in ("hwrace.zip") do set ROM=%%~a
call :INTO
for %%a in ("Highway Chase") do set NWDIR=%%~a
for %%a in ("chwy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Himeshikibu") do set NWDIR=%%~a
for %%a in ("himesiki.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hippodrome") do set NWDIR=%%~a
for %%a in ("hippodrm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hit Me") do set NWDIR=%%~a
for %%a in ("hitme.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hit 'n Miss") do set NWDIR=%%~a
for %%a in ("hitnmiss.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hit the Ice") do set NWDIR=%%~a
for %%a in ("hitice.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hoccer") do set NWDIR=%%~a
for %%a in ("hoccer.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Hogan's Alley") do set NWDIR=%%~a
for %%a in ("pc_hgaly.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hold & Spin I") do set NWDIR=%%~a
for %%a in ("hldspin1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hold & Spin II") do set NWDIR=%%~a
for %%a in ("hldspin2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hole Land") do set NWDIR=%%~a
for %%a in ("holeland.zip") do set ROM=%%~a
call :INTO
for %%a in ("Holosseum") do set NWDIR=%%~a
for %%a in ("holo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Honey Dolls") do set NWDIR=%%~a
for %%a in ("honeydol.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hook") do set NWDIR=%%~a
for %%a in ("hook.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hoops '96") do set NWDIR=%%~a
for %%a in ("hoops96.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hopper Robo") do set NWDIR=%%~a
for %%a in ("hopprobo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hopping Mappy") do set NWDIR=%%~a
for %%a in ("hopmappy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Horizon") do set NWDIR=%%~a
for %%a in ("horizon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hot Blocks - Tetrix II") do set NWDIR=%%~a
for %%a in ("hotblock.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hot Chase") do set NWDIR=%%~a
for %%a in ("hotchase.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hot Mind") do set NWDIR=%%~a
for %%a in ("hotmind.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hot Pinball") do set NWDIR=%%~a
for %%a in ("hotpinbl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hot Rod") do set NWDIR=%%~a
for %%a in ("hotrod.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hot Shocker") do set NWDIR=%%~a
for %%a in ("hotshock.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hot Shots Tennis") do set NWDIR=%%~a
for %%a in ("hstennis.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hotdog Storm") do set NWDIR=%%~a
for %%a in ("hotdogst.zip") do set ROM=%%~a
call :INTO
for %%a in ("House Mannequin") do set NWDIR=%%~a
for %%a in ("housemnq.zip") do set ROM=%%~a
call :INTO
for %%a in ("House Mannequin Roppongi Live hen") do set NWDIR=%%~a
for %%a in ("housemn2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hunchback") do set NWDIR=%%~a
for %%a in ("hunchbak.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hunchback Olympic") do set NWDIR=%%~a
for %%a in ("huncholy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hydra") do set NWDIR=%%~a
for %%a in ("hydra.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hyper Athlete") do set NWDIR=%%~a
for %%a in ("hyperath.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hyper Bishi Bashi Champ") do set NWDIR=%%~a
for %%a in ("hyperbbc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hyper Bishi Bashi Champ - 2 Player") do set NWDIR=%%~a
for %%a in ("hypbbc2p.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hyper Crash") do set NWDIR=%%~a
for %%a in ("hcrash.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hyper Duel") do set NWDIR=%%~a
for %%a in ("hyprduel.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hyper Pacman") do set NWDIR=%%~a
for %%a in ("hyperpac.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hyper Sports") do set NWDIR=%%~a
for %%a in ("hyperspt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hyper Street Fighter 2 - The Anniversary Edition") do set NWDIR=%%~a
for %%a in ("hsf2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Hyperdrive") do set NWDIR=%%~a
for %%a in ("hyprdriv.zip") do set ROM=%%~a
call :INTO
for %%a in ("I, Robot") do set NWDIR=%%~a
for %%a in ("irobot.zip") do set ROM=%%~a
call :INTO
for %%a in ("IDE Baseboard") do set NWDIR=%%~a
for %%a in ("ide_baseboard.zip") do set ROM=%%~a
call :INTO
for %%a in ("IDE Hard Disk") do set NWDIR=%%~a
for %%a in ("hdd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Idol Janshi Suchie-Pai Special") do set NWDIR=%%~a
for %%a in ("suchipi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Idol Janshi Su-Chi-Pie 2") do set NWDIR=%%~a
for %%a in ("47pie2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Idol no Himitsu") do set NWDIR=%%~a
for %%a in ("idhimitu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Idol-Mahjong Final Romance") do set NWDIR=%%~a
for %%a in ("fromance.zip") do set ROM=%%~a
call :INTO
for %%a in ("Idol-Mahjong Housoukyoku") do set NWDIR=%%~a
for %%a in ("idolmj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Iemoto") do set NWDIR=%%~a
for %%a in ("iemoto.zip") do set ROM=%%~a
call :INTO
for %%a in ("IGMO") do set NWDIR=%%~a
for %%a in ("igmo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ikari III - The Rescue") do set NWDIR=%%~a
for %%a in ("ikari3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ikari Warriors") do set NWDIR=%%~a
for %%a in ("ikari.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ikki") do set NWDIR=%%~a
for %%a in ("ikki.zip") do set ROM=%%~a
call :INTO
for %%a in ("I'm Sorry") do set NWDIR=%%~a
for %%a in ("imsorry.zip") do set ROM=%%~a
call :INTO
for %%a in ("Image Fight") do set NWDIR=%%~a
for %%a in ("imgfight.zip") do set ROM=%%~a
call :INTO
for %%a in ("Imago") do set NWDIR=%%~a
for %%a in ("imago.zip") do set ROM=%%~a
call :INTO
for %%a in ("Imekura Mahjong") do set NWDIR=%%~a
for %%a in ("imekura.zip") do set ROM=%%~a
call :INTO
for %%a in ("Imola Grand Prix") do set NWDIR=%%~a
for %%a in ("imolagp.zip") do set ROM=%%~a
call :INTO
for %%a in ("In The Hunt") do set NWDIR=%%~a
for %%a in ("inthunt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Inca") do set NWDIR=%%~a
for %%a in ("inca.zip") do set ROM=%%~a
call :INTO
for %%a in ("Indiana Jones and the Temple of Doom") do set NWDIR=%%~a
for %%a in ("indytemp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Indoor Soccer") do set NWDIR=%%~a
for %%a in ("idsoccer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Inferno") do set NWDIR=%%~a
for %%a in ("inferno.zip") do set ROM=%%~a
call :INTO
for %%a in ("Inferno") do set NWDIR=%%~a
for %%a in ("minferno.zip") do set ROM=%%~a
call :INTO
for %%a in ("Insector") do set NWDIR=%%~a
for %%a in ("insector.zip") do set ROM=%%~a
call :INTO
for %%a in ("Insector X") do set NWDIR=%%~a
for %%a in ("insectx.zip") do set ROM=%%~a
call :INTO
for %%a in ("International Cup '94") do set NWDIR=%%~a
for %%a in ("intcup94.zip") do set ROM=%%~a
call :INTO
for %%a in ("Intrepid") do set NWDIR=%%~a
for %%a in ("intrepid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Invasion - The Abductors") do set NWDIR=%%~a
for %%a in ("invasnab.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ippatsu Gyakuten") do set NWDIR=%%~a
for %%a in ("ippatsu.zip") do set ROM=%%~a
call :INTO
for %%a in ("IQ-Block") do set NWDIR=%%~a
for %%a in ("iqblock.zip") do set ROM=%%~a
call :INTO
for %%a in ("Iron") do set NWDIR=%%~a
for %%a in ("iron.zip") do set ROM=%%~a
call :INTO
for %%a in ("Iron Fortress") do set NWDIR=%%~a
for %%a in ("ironfort.zip") do set ROM=%%~a
call :INTO
for %%a in ("Iron Horse") do set NWDIR=%%~a
for %%a in ("ironhors.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ironman Ivan Stewart's Super Off-Road") do set NWDIR=%%~a
for %%a in ("offroad.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ironman Ivan Stewart's Super Off-Road Track-Pak") do set NWDIR=%%~a
for %%a in ("offroadt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Island") do set NWDIR=%%~a
for %%a in ("island.zip") do set ROM=%%~a
call :INTO
for %%a in ("Island 2") do set NWDIR=%%~a
for %%a in ("island2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Itazura Monkey") do set NWDIR=%%~a
for %%a in ("itazuram.zip") do set ROM=%%~a
call :INTO
for %%a in ("Itazura Tenshi") do set NWDIR=%%~a
for %%a in ("itaten.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ixion") do set NWDIR=%%~a
for %%a in ("ixion.zip") do set ROM=%%~a
call :INTO
for %%a in ("J. J. Squawkers") do set NWDIR=%%~a
for %%a in ("jjsquawk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jack Potten's Poker") do set NWDIR=%%~a
for %%a in ("pottnpkr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jack Rabbit") do set NWDIR=%%~a
for %%a in ("jackrabt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jack the Giantkiller") do set NWDIR=%%~a
for %%a in ("jack.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jackal") do set NWDIR=%%~a
for %%a in ("jackal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jackie Chan - The Kung-Fu Master") do set NWDIR=%%~a
for %%a in ("jchan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jackie Chan in Fists of Fire") do set NWDIR=%%~a
for %%a in ("jchan2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jackpot Joker Poker") do set NWDIR=%%~a
for %%a in ("jjpoker.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jail Break") do set NWDIR=%%~a
for %%a in ("jailbrek.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jan Jan Paradise") do set NWDIR=%%~a
for %%a in ("jjparads.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jan Jan Paradise 2") do set NWDIR=%%~a
for %%a in ("jjparad2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jangou") do set NWDIR=%%~a
for %%a in ("jangou.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jangou Lady") do set NWDIR=%%~a
for %%a in ("jngolady.zip") do set ROM=%%~a
call :INTO
for %%a in ("Janken Man Kattara Ageru") do set NWDIR=%%~a
for %%a in ("jankenmn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Janpai Puzzle Choukou") do set NWDIR=%%~a
for %%a in ("choko.zip") do set ROM=%%~a
call :INTO
for %%a in ("Janputer '96") do set NWDIR=%%~a
for %%a in ("janptr96.zip") do set ROM=%%~a
call :INTO
for %%a in ("Janputer Special") do set NWDIR=%%~a
for %%a in ("janptrsp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jibun wo Migaku Culture School Mahjong Hen") do set NWDIR=%%~a
for %%a in ("cultures.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jin") do set NWDIR=%%~a
for %%a in ("jin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jitsuroku Maru-chi Mahjong") do set NWDIR=%%~a
for %%a in ("jituroku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jitsuryoku!! Pro Yakyuu") do set NWDIR=%%~a
for %%a in ("jitsupro.zip") do set ROM=%%~a
call :INTO
for %%a in ("J-League Soccer V-Shoot") do set NWDIR=%%~a
for %%a in ("vshoot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jockey Club") do set NWDIR=%%~a
for %%a in ("jockeyc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jockey Grand Prix") do set NWDIR=%%~a
for %%a in ("jockeygp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Joe & Mac Returns") do set NWDIR=%%~a
for %%a in ("joemacr.zip") do set ROM=%%~a
call :INTO
for %%a in ("John Elway's Team Quarterback") do set NWDIR=%%~a
for %%a in ("teamqb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Joinem") do set NWDIR=%%~a
for %%a in ("joinem.zip") do set ROM=%%~a
call :INTO
for %%a in ("JoJo no Kimyouna Bouken - Miraie no Isan") do set NWDIR=%%~a
for %%a in ("jojoba.zip") do set ROM=%%~a
call :INTO
for %%a in ("JoJo's Venture") do set NWDIR=%%~a
for %%a in ("jojo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Joker Poker") do set NWDIR=%%~a
for %%a in ("jokpoker.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jolli Witch") do set NWDIR=%%~a
for %%a in ("witchjol.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jolly Card") do set NWDIR=%%~a
for %%a in ("jollycrd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jolly Jogger") do set NWDIR=%%~a
for %%a in ("jollyjgr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jolly Joker") do set NWDIR=%%~a
for %%a in ("jolyjokr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jong Tou Ki") do set NWDIR=%%~a
for %%a in ("jantouki.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jongkyo") do set NWDIR=%%~a
for %%a in ("jongkyo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Joryuu Syougi Kyoushitsu") do set NWDIR=%%~a
for %%a in ("jsk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Joshi Volleyball") do set NWDIR=%%~a
for %%a in ("josvolly.zip") do set ROM=%%~a
call :INTO
for %%a in ("Joust") do set NWDIR=%%~a
for %%a in ("joust.zip") do set ROM=%%~a
call :INTO
for %%a in ("Joust 2 - Survival of the Fittest") do set NWDIR=%%~a
for %%a in ("joust2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Joyful Road") do set NWDIR=%%~a
for %%a in ("joyfulr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jr. Pac-Man") do set NWDIR=%%~a
for %%a in ("jrpacman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Judge Dredd") do set NWDIR=%%~a
for %%a in ("jdredd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Judge Dredd") do set NWDIR=%%~a
for %%a in ("jdreddp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jue Zhan Tian Huang") do set NWDIR=%%~a
for %%a in ("jzth.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jump Bug") do set NWDIR=%%~a
for %%a in ("jumpbug.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jump Coaster") do set NWDIR=%%~a
for %%a in ("jumpcoas.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jump Kids") do set NWDIR=%%~a
for %%a in ("jumpkids.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jump Shot") do set NWDIR=%%~a
for %%a in ("jumpshot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jumping Break") do set NWDIR=%%~a
for %%a in ("jmpbreak.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jumping Cross") do set NWDIR=%%~a
for %%a in ("jcross.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jumping Jack") do set NWDIR=%%~a
for %%a in ("jjack.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jumping Pop") do set NWDIR=%%~a
for %%a in ("jpopnics.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jumping Pop") do set NWDIR=%%~a
for %%a in ("jumppop.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jungle King") do set NWDIR=%%~a
for %%a in ("junglek.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jungler") do set NWDIR=%%~a
for %%a in ("jungler.zip") do set ROM=%%~a
call :INTO
for %%a in ("Juno First") do set NWDIR=%%~a
for %%a in ("junofrst.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jurassic Park") do set NWDIR=%%~a
for %%a in ("jpark.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jyangokushi - Haoh no Saihai") do set NWDIR=%%~a
for %%a in ("jyangoku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Jyanshin Densetsu - Quest of Jongmaster") do set NWDIR=%%~a
for %%a in ("janshin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kabuki-Z") do set NWDIR=%%~a
for %%a in ("kabukiz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kageki") do set NWDIR=%%~a
for %%a in ("kageki.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kaiser Knuckle") do set NWDIR=%%~a
for %%a in ("kaiserkn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kaitei Takara Sagashi") do set NWDIR=%%~a
for %%a in ("kaitei.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kamikaze Cabbie") do set NWDIR=%%~a
for %%a in ("kamikcab.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kanatsuen no Onna") do set NWDIR=%%~a
for %%a in ("kanatuen.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kangaroo") do set NWDIR=%%~a
for %%a in ("kangaroo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kaos") do set NWDIR=%%~a
for %%a in ("kaos.zip") do set ROM=%%~a
call :INTO
for %%a in ("Karaoke Quiz Intro Don Don!") do set NWDIR=%%~a
for %%a in ("introdon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Karate Blazers") do set NWDIR=%%~a
for %%a in ("karatblz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Karate Champ") do set NWDIR=%%~a
for %%a in ("kchamp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Karian Cross") do set NWDIR=%%~a
for %%a in ("karianx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Karnov") do set NWDIR=%%~a
for %%a in ("karnov.zip") do set ROM=%%~a
call :INTO
for %%a in ("Karnov's Revenge - Fighter's History Dynamite") do set NWDIR=%%~a
for %%a in ("karnovr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kasino '89") do set NWDIR=%%~a
for %%a in ("kas89.zip") do set ROM=%%~a
call :INTO
for %%a in ("Keith Courage In Alpha Zones") do set NWDIR=%%~a
for %%a in ("keith.zip") do set ROM=%%~a
call :INTO
for %%a in ("Keks") do set NWDIR=%%~a
for %%a in ("keks_2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ken-Go") do set NWDIR=%%~a
for %%a in ("kengo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kero Kero Keroppi no Issyoni Asobou") do set NWDIR=%%~a
for %%a in ("keroppi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ketsui - Kizuna Jigoku Tachi") do set NWDIR=%%~a
for %%a in ("ket.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kick") do set NWDIR=%%~a
for %%a in ("kick.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kick and Run") do set NWDIR=%%~a
for %%a in ("kicknrun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kick Boy") do set NWDIR=%%~a
for %%a in ("kickboy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kick Goal") do set NWDIR=%%~a
for %%a in ("kickgoal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kick Off") do set NWDIR=%%~a
for %%a in ("kickoff.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kick Rider") do set NWDIR=%%~a
for %%a in ("kickridr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kick Start Wheelie King") do set NWDIR=%%~a
for %%a in ("kikstart.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kicker") do set NWDIR=%%~a
for %%a in ("kicker.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kid Niki - Radical Ninja") do set NWDIR=%%~a
for %%a in ("kidniki.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kid no Hore Hore Daisakusen") do set NWDIR=%%~a
for %%a in ("horekid.zip") do set ROM=%%~a
call :INTO
for %%a in ("KiKi KaiKai") do set NWDIR=%%~a
for %%a in ("kikikai.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kikiippatsu Mayumi-chan") do set NWDIR=%%~a
for %%a in ("mayumi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Killer Comet") do set NWDIR=%%~a
for %%a in ("killcom.zip") do set ROM=%%~a
call :INTO
for %%a in ("Killer Instinct") do set NWDIR=%%~a
for %%a in ("kinst.zip") do set ROM=%%~a
call :INTO
for %%a in ("Killer Instinct") do set NWDIR=%%~a
for %%a in ("kinstb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Killer Instinct 2") do set NWDIR=%%~a
for %%a in ("kinst2.zip") do set ROM=%%~a
call :INTO
for %%a in ("King & Balloon") do set NWDIR=%%~a
for %%a in ("kingball.zip") do set ROM=%%~a
call :INTO
for %%a in ("King Derby") do set NWDIR=%%~a
for %%a in ("kingdrby.zip") do set ROM=%%~a
call :INTO
for %%a in ("King of Boxer") do set NWDIR=%%~a
for %%a in ("kingofb.zip") do set ROM=%%~a
call :INTO
for %%a in ("King of Dynast Gear") do set NWDIR=%%~a
for %%a in ("kdynastg.zip") do set ROM=%%~a
call :INTO
for %%a in ("King of the Monsters") do set NWDIR=%%~a
for %%a in ("kotm.zip") do set ROM=%%~a
call :INTO
for %%a in ("King of the Monsters 2 - The Next Thing") do set NWDIR=%%~a
for %%a in ("kotm2.zip") do set ROM=%%~a
call :INTO
for %%a in ("King Pin") do set NWDIR=%%~a
for %%a in ("kingpin.zip") do set ROM=%%~a
call :INTO
for %%a in ("King Pin Multi-Game") do set NWDIR=%%~a
for %%a in ("kingpinm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kingdom Grandprix") do set NWDIR=%%~a
for %%a in ("kingdmgp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kirameki Star Road") do set NWDIR=%%~a
for %%a in ("kirameki.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kitten Kaboodle") do set NWDIR=%%~a
for %%a in ("kittenk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kizuna Encounter - Super Tag Battle - Fu'un Super Tag Battle") do set NWDIR=%%~a
for %%a in ("kizuna.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kkot No Li") do set NWDIR=%%~a
for %%a in ("kkotnoli.zip") do set ROM=%%~a
call :INTO
for %%a in ("Klad - Labyrinth") do set NWDIR=%%~a
for %%a in ("phklad.zip") do set ROM=%%~a
call :INTO
for %%a in ("Klax") do set NWDIR=%%~a
for %%a in ("klax.zip") do set ROM=%%~a
call :INTO
for %%a in ("KlonDike+") do set NWDIR=%%~a
for %%a in ("klondkp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Knightmare") do set NWDIR=%%~a
for %%a in ("kngtmare.zip") do set ROM=%%~a
call :INTO
for %%a in ("Knights of the Round") do set NWDIR=%%~a
for %%a in ("knights.zip") do set ROM=%%~a
call :INTO
for %%a in ("Knights of Valour - Sangoku Senki") do set NWDIR=%%~a
for %%a in ("kov.zip") do set ROM=%%~a
call :INTO
for %%a in ("Knights of Valour 2 - Sangoku Senki 2") do set NWDIR=%%~a
for %%a in ("kov2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Knights of Valour Plus - Sangoku Senki Plus") do set NWDIR=%%~a
for %%a in ("kovplus.zip") do set ROM=%%~a
call :INTO
for %%a in ("Knights of Valour Super Heroes - Sangoku Senki Super Heroes") do set NWDIR=%%~a
for %%a in ("kovsh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Knuckle Bash") do set NWDIR=%%~a
for %%a in ("kbash.zip") do set ROM=%%~a
call :INTO
for %%a in ("Knuckle Bash 2") do set NWDIR=%%~a
for %%a in ("kbash2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Knuckle Heads") do set NWDIR=%%~a
for %%a in ("knckhead.zip") do set ROM=%%~a
call :INTO
for %%a in ("Knuckle Joe") do set NWDIR=%%~a
for %%a in ("kncljoe.zip") do set ROM=%%~a
call :INTO
for %%a in ("Koi Koi Part 2") do set NWDIR=%%~a
for %%a in ("koikoi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Koi Koi Shimasho") do set NWDIR=%%~a
for %%a in ("koikois.zip") do set ROM=%%~a
call :INTO
for %%a in ("Koi Koi Shimasho 2 - Super Real Hanafuda") do set NWDIR=%%~a
for %%a in ("koikois2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kokontouzai Eto Monogatari") do set NWDIR=%%~a
for %%a in ("eto.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kollon") do set NWDIR=%%~a
for %%a in ("kollon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Konami 80's AC Special") do set NWDIR=%%~a
for %%a in ("konam80s.zip") do set ROM=%%~a
call :INTO
for %%a in ("Konami GT") do set NWDIR=%%~a
for %%a in ("konamigt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Konami's Ping-Pong") do set NWDIR=%%~a
for %%a in ("pingpong.zip") do set ROM=%%~a
call :INTO
for %%a in ("Konek-Gorbunok") do set NWDIR=%%~a
for %%a in ("konek.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kong") do set NWDIR=%%~a
for %%a in ("kong.zip") do set ROM=%%~a
call :INTO
for %%a in ("Konkyuu no Hoshi") do set NWDIR=%%~a
for %%a in ("bmcbowl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Koro Koro Quest") do set NWDIR=%%~a
for %%a in ("korokoro.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kosodate Quiz My Angel") do set NWDIR=%%~a
for %%a in ("myangel.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kosodate Quiz My Angel 2") do set NWDIR=%%~a
for %%a in ("myangel2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kosodate Quiz My Angel 3") do set NWDIR=%%~a
for %%a in ("myangel3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Koutetsu Yousai Strahl") do set NWDIR=%%~a
for %%a in ("strahl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kozmik Kroozr") do set NWDIR=%%~a
for %%a in ("kroozr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kram") do set NWDIR=%%~a
for %%a in ("kram.zip") do set ROM=%%~a
call :INTO
for %%a in ("Krazy Bowl") do set NWDIR=%%~a
for %%a in ("krzybowl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Krull") do set NWDIR=%%~a
for %%a in ("krull.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Kung Fu") do set NWDIR=%%~a
for %%a in ("pc_kngfu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kung-Fu Master") do set NWDIR=%%~a
for %%a in ("kungfum.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kung-Fu Roushi") do set NWDIR=%%~a
for %%a in ("kungfur.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kung-Fu Taikun") do set NWDIR=%%~a
for %%a in ("kungfut.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kuri Kinton") do set NWDIR=%%~a
for %%a in ("kurikint.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kusayakyuu") do set NWDIR=%%~a
for %%a in ("ksayakyu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kyros") do set NWDIR=%%~a
for %%a in ("kyros.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kyuukai Douchuuki") do set NWDIR=%%~a
for %%a in ("kyukaidk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Kyuukyoku no Othello") do set NWDIR=%%~a
for %%a in ("kothello.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lady Bug") do set NWDIR=%%~a
for %%a in ("ladybug.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lady Frog") do set NWDIR=%%~a
for %%a in ("ladyfrog.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lady Killer") do set NWDIR=%%~a
for %%a in ("ladykill.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lady Liner") do set NWDIR=%%~a
for %%a in ("ladylinr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lady Master of Kung Fu") do set NWDIR=%%~a
for %%a in ("ladymstr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Laguna Racer") do set NWDIR=%%~a
for %%a in ("lagunar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Land Breaker") do set NWDIR=%%~a
for %%a in ("landbrk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Land Maker") do set NWDIR=%%~a
for %%a in ("landmakr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Land Sea Air Squad - Riku Kai Kuu Saizensen") do set NWDIR=%%~a
for %%a in ("lsasquad.zip") do set ROM=%%~a
call :INTO
for %%a in ("Landing Gear") do set NWDIR=%%~a
for %%a in ("landgear.zip") do set ROM=%%~a
call :INTO
for %%a in ("Las Vegas Girl") do set NWDIR=%%~a
for %%a in ("lvgirl94.zip") do set ROM=%%~a
call :INTO
for %%a in ("Laser Battle") do set NWDIR=%%~a
for %%a in ("laserbat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Laser Ghost") do set NWDIR=%%~a
for %%a in ("lghost.zip") do set ROM=%%~a
call :INTO
for %%a in ("Laser Quiz 2 Italy") do set NWDIR=%%~a
for %%a in ("lsrquiz2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Laser Quiz Italy") do set NWDIR=%%~a
for %%a in ("lsrquiz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Laser Strixx 2") do set NWDIR=%%~a
for %%a in ("lasstixx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lasso") do set NWDIR=%%~a
for %%a in ("lasso.zip") do set ROM=%%~a
call :INTO
for %%a in ("Last Duel") do set NWDIR=%%~a
for %%a in ("lastduel.zip") do set ROM=%%~a
call :INTO
for %%a in ("Last Fighting") do set NWDIR=%%~a
for %%a in ("lastfght.zip") do set ROM=%%~a
call :INTO
for %%a in ("Last Fortress - Toride") do set NWDIR=%%~a
for %%a in ("lastfort.zip") do set ROM=%%~a
call :INTO
for %%a in ("Last Mission") do set NWDIR=%%~a
for %%a in ("lastmisn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Last Resort") do set NWDIR=%%~a
for %%a in ("lresort.zip") do set ROM=%%~a
call :INTO
for %%a in ("Last Striker - Kyuukyoku no Striker") do set NWDIR=%%~a
for %%a in ("kyustrkr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lazer Command") do set NWDIR=%%~a
for %%a in ("lazercmd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Leader Board") do set NWDIR=%%~a
for %%a in ("ar_ldrb.zip") do set ROM=%%~a
call :INTO
for %%a in ("League Bowling") do set NWDIR=%%~a
for %%a in ("lbowling.zip") do set ROM=%%~a
call :INTO
for %%a in ("Legend") do set NWDIR=%%~a
for %%a in ("legend.zip") do set ROM=%%~a
call :INTO
for %%a in ("Legend of Hero Tonma") do set NWDIR=%%~a
for %%a in ("loht.zip") do set ROM=%%~a
call :INTO
for %%a in ("Legend of Heroes") do set NWDIR=%%~a
for %%a in ("legendoh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Legend of Makai") do set NWDIR=%%~a
for %%a in ("lomakai.zip") do set ROM=%%~a
call :INTO
for %%a in ("Legend of Success Joe - Ashitano Joe Densetsu") do set NWDIR=%%~a
for %%a in ("legendos.zip") do set ROM=%%~a
call :INTO
for %%a in ("Legend of Success Joe - Ashitano Joe Densetsu") do set NWDIR=%%~a
for %%a in ("lwings.zip") do set ROM=%%~a
call :INTO
for %%a in ("Legion - Spinner-87") do set NWDIR=%%~a
for %%a in ("legion.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lemmings") do set NWDIR=%%~a
for %%a in ("lemmings.zip") do set ROM=%%~a
call :INTO
for %%a in ("Leprechaun") do set NWDIR=%%~a
for %%a in ("leprechn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lethal Crash Race") do set NWDIR=%%~a
for %%a in ("crshrace.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lethal Enforcers") do set NWDIR=%%~a
for %%a in ("lethalen.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lethal Enforcers II - Gun Fighters") do set NWDIR=%%~a
for %%a in ("le2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lethal Justice") do set NWDIR=%%~a
for %%a in ("lethalj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lethal Thunder") do set NWDIR=%%~a
for %%a in ("lethalth.zip") do set ROM=%%~a
call :INTO
for %%a in ("Levers") do set NWDIR=%%~a
for %%a in ("levers.zip") do set ROM=%%~a
call :INTO
for %%a in ("Libble Rabble") do set NWDIR=%%~a
for %%a in ("liblrabl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Liberation") do set NWDIR=%%~a
for %%a in ("liberate.zip") do set ROM=%%~a
call :INTO
for %%a in ("Liberator") do set NWDIR=%%~a
for %%a in ("liberatr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Libero Grande") do set NWDIR=%%~a
for %%a in ("lbgrande.zip") do set ROM=%%~a
call :INTO
for %%a in ("Light Bringer") do set NWDIR=%%~a
for %%a in ("lightbr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lightning Fighters") do set NWDIR=%%~a
for %%a in ("lgtnfght.zip") do set ROM=%%~a
call :INTO
for %%a in ("Line of Fire - Bakudan Yarou") do set NWDIR=%%~a
for %%a in ("loffire.zip") do set ROM=%%~a
call :INTO
for %%a in ("Liquid Kids") do set NWDIR=%%~a
for %%a in ("liquidk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Little Casino") do set NWDIR=%%~a
for %%a in ("ltcasino.zip") do set ROM=%%~a
call :INTO
for %%a in ("Live Gal") do set NWDIR=%%~a
for %%a in ("livegal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Live Quiz Show") do set NWDIR=%%~a
for %%a in ("livequiz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lizard Wizard") do set NWDIR=%%~a
for %%a in ("lizwiz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lock'n'Chase") do set NWDIR=%%~a
for %%a in ("clocknch.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lock'n'Chase") do set NWDIR=%%~a
for %%a in ("lnc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lock-On") do set NWDIR=%%~a
for %%a in ("lockon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Loco-Motion") do set NWDIR=%%~a
for %%a in ("locomotn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lode Runner") do set NWDIR=%%~a
for %%a in ("ldrun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lode Runner - The Dig Fight") do set NWDIR=%%~a
for %%a in ("loderndf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lode Runner II - The Bungeling Strikes Back") do set NWDIR=%%~a
for %%a in ("ldrun2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lode Runner III - The Golden Labyrinth") do set NWDIR=%%~a
for %%a in ("ldrun3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lode Runner IV - Teikoku Karano Dasshutsu") do set NWDIR=%%~a
for %%a in ("ldrun4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Logger") do set NWDIR=%%~a
for %%a in ("logger.zip") do set ROM=%%~a
call :INTO
for %%a in ("Logic Pro") do set NWDIR=%%~a
for %%a in ("logicpro.zip") do set ROM=%%~a
call :INTO
for %%a in ("Logic Pro 2") do set NWDIR=%%~a
for %%a in ("logicpr2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Logic Pro Adventure") do set NWDIR=%%~a
for %%a in ("lpadv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Long Hu Bang") do set NWDIR=%%~a
for %%a in ("lhb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Long Hu Bang II") do set NWDIR=%%~a
for %%a in ("lhb2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Looping") do set NWDIR=%%~a
for %%a in ("looping.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lord of Gun") do set NWDIR=%%~a
for %%a in ("lordgun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lost Tomb") do set NWDIR=%%~a
for %%a in ("losttomb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lot Lot") do set NWDIR=%%~a
for %%a in ("lotlot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lotto Fun") do set NWDIR=%%~a
for %%a in ("lottofun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lotto Fun 2") do set NWDIR=%%~a
for %%a in ("lottof2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lovely Cards") do set NWDIR=%%~a
for %%a in ("lvcards.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lovely Pop Mahjong JangJang Shimasho") do set NWDIR=%%~a
for %%a in ("janjans1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lovely Pop Mahjong JangJang Shimasho 2") do set NWDIR=%%~a
for %%a in ("janjans2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lover Boy") do set NWDIR=%%~a
for %%a in ("loverboy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lucky & Wild") do set NWDIR=%%~a
for %%a in ("luckywld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lucky 74") do set NWDIR=%%~a
for %%a in ("lucky74.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lucky Boom") do set NWDIR=%%~a
for %%a in ("luckboom.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lucky Girl") do set NWDIR=%%~a
for %%a in ("luckgrln.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lucky Haunter") do set NWDIR=%%~a
for %%a in ("lhaunt_6.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lucky Poker") do set NWDIR=%%~a
for %%a in ("cluckypo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lucky Roulette Plus") do set NWDIR=%%~a
for %%a in ("luckyrlt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lucky Today") do set NWDIR=%%~a
for %%a in ("luctoday.zip") do set ROM=%%~a
call :INTO
for %%a in ("Lunar Lander") do set NWDIR=%%~a
for %%a in ("llander.zip") do set ROM=%%~a
call :INTO
for %%a in ("M.A.C.H. 3") do set NWDIR=%%~a
for %%a in ("mach3.zip") do set ROM=%%~a
call :INTO
for %%a in ("M.I.A. - Missing in Action") do set NWDIR=%%~a
for %%a in ("mia.zip") do set ROM=%%~a
call :INTO
for %%a in ("M-79 Ambush") do set NWDIR=%%~a
for %%a in ("m79amb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mace - The Dark Age") do set NWDIR=%%~a
for %%a in ("mace.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mach Breakers - Numan Athletics 2") do set NWDIR=%%~a
for %%a in ("machbrkr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Macho Mouse") do set NWDIR=%%~a
for %%a in ("machomou.zip") do set ROM=%%~a
call :INTO
for %%a in ("Macross Plus") do set NWDIR=%%~a
for %%a in ("macrossp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mad Alien") do set NWDIR=%%~a
for %%a in ("madalien.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mad Ball V2.0") do set NWDIR=%%~a
for %%a in ("madball.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mad Crasher") do set NWDIR=%%~a
for %%a in ("madcrash.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mad Donna") do set NWDIR=%%~a
for %%a in ("maddonna.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mad Gear") do set NWDIR=%%~a
for %%a in ("madgear.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mad Motor") do set NWDIR=%%~a
for %%a in ("madmotor.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mad Planets") do set NWDIR=%%~a
for %%a in ("mplanets.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mad Shark") do set NWDIR=%%~a
for %%a in ("madshark.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mad Zoo") do set NWDIR=%%~a
for %%a in ("madzoo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mag Max") do set NWDIR=%%~a
for %%a in ("magmax.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magic Bubble") do set NWDIR=%%~a
for %%a in ("magicbub.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magic Card II") do set NWDIR=%%~a
for %%a in ("magicrd2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magic Fly") do set NWDIR=%%~a
for %%a in ("magicfly.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magic Johnson's Fast Break") do set NWDIR=%%~a
for %%a in ("ar_fast.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magic Joker") do set NWDIR=%%~a
for %%a in ("magjoker.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magic Number") do set NWDIR=%%~a
for %%a in ("mgnumber.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magic Premium") do set NWDIR=%%~a
for %%a in ("mgprem11.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magic Sticks") do set NWDIR=%%~a
for %%a in ("magicstk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magic Sword - Heroic Fantasy") do set NWDIR=%%~a
for %%a in ("msword.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magic Train") do set NWDIR=%%~a
for %%a in ("mtrain.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magical Cat Adventure") do set NWDIR=%%~a
for %%a in ("mcatadv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magical Crystals") do set NWDIR=%%~a
for %%a in ("mgcrystl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magical Date EX - Magical Date - sotsugyou kokuhaku daisakusen") do set NWDIR=%%~a
for %%a in ("mgcldtex.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magical Drop II") do set NWDIR=%%~a
for %%a in ("magdrop2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magical Drop III") do set NWDIR=%%~a
for %%a in ("magdrop3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magical Error wo Sagase") do set NWDIR=%%~a
for %%a in ("magerror.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magical Odds") do set NWDIR=%%~a
for %%a in ("magodds.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magical Spot") do set NWDIR=%%~a
for %%a in ("magspot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magical Spot II") do set NWDIR=%%~a
for %%a in ("magspot2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magician Lord") do set NWDIR=%%~a
for %%a in ("maglord.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magic's 10") do set NWDIR=%%~a
for %%a in ("magic10.zip") do set ROM=%%~a
call :INTO
for %%a in ("Magix - Rock") do set NWDIR=%%~a
for %%a in ("magix.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong 4P Simasyo") do set NWDIR=%%~a
for %%a in ("4psimasy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Angel Kiss") do set NWDIR=%%~a
for %%a in ("akiss.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Angels - Comic Theater Vol.2") do set NWDIR=%%~a
for %%a in ("mjangels.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Banana Dream") do set NWDIR=%%~a
for %%a in ("bananadr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Block Jongbou") do set NWDIR=%%~a
for %%a in ("jongbou.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Cafe Time") do set NWDIR=%%~a
for %%a in ("cafetime.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Camera Kozou") do set NWDIR=%%~a
for %%a in ("mjcamera.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Camera Kozou") do set NWDIR=%%~a
for %%a in ("mjcamerb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Campus Hunting") do set NWDIR=%%~a
for %%a in ("mcnpshnt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Channel Zoom In") do set NWDIR=%%~a
for %%a in ("mjzoomin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Chinmoku no Hentai") do set NWDIR=%%~a
for %%a in ("chinmoku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Chuukanejyo") do set NWDIR=%%~a
for %%a in ("mjchuuka.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Circuit no Mehyou") do set NWDIR=%%~a
for %%a in ("cmehyou.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Clinic") do set NWDIR=%%~a
for %%a in ("mjclinic.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Club") do set NWDIR=%%~a
for %%a in ("mjclub.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong CLUB 90's") do set NWDIR=%%~a
for %%a in ("club90s.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Comic Gekijou Vol.1") do set NWDIR=%%~a
for %%a in ("mjcomv1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Daimyojin") do set NWDIR=%%~a
for %%a in ("daimyojn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Daireikai") do set NWDIR=%%~a
for %%a in ("daireika.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Daiyogen") do set NWDIR=%%~a
for %%a in ("daiyogen.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Derringer") do set NWDIR=%%~a
for %%a in ("mjderngr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Dial Q2") do set NWDIR=%%~a
for %%a in ("mjdialq2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Diplomat") do set NWDIR=%%~a
for %%a in ("mjdiplob.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Doukyuusei") do set NWDIR=%%~a
for %%a in ("dokyusei.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Doukyuusei Special") do set NWDIR=%%~a
for %%a in ("dokyusp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Dunhuang") do set NWDIR=%%~a
for %%a in ("dunhuang.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Electron Base") do set NWDIR=%%~a
for %%a in ("mjelctrn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Erotica Golf") do set NWDIR=%%~a
for %%a in ("mjegolf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Fantasic Love") do set NWDIR=%%~a
for %%a in ("mjflove.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Focus") do set NWDIR=%%~a
for %%a in ("mjfocus.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Friday") do set NWDIR=%%~a
for %%a in ("mjfriday.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Fun Club - Idol Saizensen") do set NWDIR=%%~a
for %%a in ("mfunclub.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Gaiden") do set NWDIR=%%~a
for %%a in ("mjgaiden.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Gakuen") do set NWDIR=%%~a
for %%a in ("mgakuen.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Gakuen 2 Gakuen-chou no Fukushuu") do set NWDIR=%%~a
for %%a in ("mgakuen2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Gakuensai") do set NWDIR=%%~a
for %%a in ("gakusai.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Gakuensai 2") do set NWDIR=%%~a
for %%a in ("gakusai2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Gal 10-renpatsu") do set NWDIR=%%~a
for %%a in ("gal10ren.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Gal no Kaika") do set NWDIR=%%~a
for %%a in ("galkaika.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Gal no Kokuhaku") do set NWDIR=%%~a
for %%a in ("galkoku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Gekisha") do set NWDIR=%%~a
for %%a in ("gekisha.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong G-MEN'89") do set NWDIR=%%~a
for %%a in ("mgmen89.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Gottsu ee-kanji") do set NWDIR=%%~a
for %%a in ("mjgottsu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong G-Taste") do set NWDIR=%%~a
for %%a in ("mjgtaste.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Hana no Momoko gumi") do set NWDIR=%%~a
for %%a in ("hanamomo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Hot Gimmick Integral") do set NWDIR=%%~a
for %%a in ("hotgmcki.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Hourouki Gaiden") do set NWDIR=%%~a
for %%a in ("mhgaiden.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Hourouki Okite") do set NWDIR=%%~a
for %%a in ("mjhokite.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Hourouki Part 1 - Seisyun Hen") do set NWDIR=%%~a
for %%a in ("hourouki.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Housoukyoku Honbanchuu") do set NWDIR=%%~a
for %%a in ("mhhonban.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Hyper Reaction") do set NWDIR=%%~a
for %%a in ("hypreact.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Hyper Reaction 2") do set NWDIR=%%~a
for %%a in ("hypreac2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong If...") do set NWDIR=%%~a
for %%a in ("mjifb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Ikaga Desu ka") do set NWDIR=%%~a
for %%a in ("mjikaga.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Janjan Baribari") do set NWDIR=%%~a
for %%a in ("janbari.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Jikken Love Story") do set NWDIR=%%~a
for %%a in ("mjlstory.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Jogakuen") do set NWDIR=%%~a
for %%a in ("jogakuen.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Jong-Tei") do set NWDIR=%%~a
for %%a in ("jongtei.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Kaguyahime") do set NWDIR=%%~a
for %%a in ("kaguya.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Kaguyahime Sono2") do set NWDIR=%%~a
for %%a in ("kaguya2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Kakumei") do set NWDIR=%%~a
for %%a in ("kakumei.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Kakumei 2 - Princess League") do set NWDIR=%%~a
for %%a in ("kakumei2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Keibaou") do set NWDIR=%%~a
for %%a in ("mkeibaou.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Kinjirareta Asobi") do set NWDIR=%%~a
for %%a in ("mjkinjas.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Koi no Magic Potion") do set NWDIR=%%~a
for %%a in ("koinomp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Koi Uranai") do set NWDIR=%%~a
for %%a in ("mjkoiura.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Kojinkyouju") do set NWDIR=%%~a
for %%a in ("mjkojink.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Kyo Retsuden") do set NWDIR=%%~a
for %%a in ("mahretsu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Kyou Jidai") do set NWDIR=%%~a
for %%a in ("mjkjidai.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong La Man") do set NWDIR=%%~a
for %%a in ("mjlaman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Lemon Angel") do set NWDIR=%%~a
for %%a in ("lemnangl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Man Guan Da Heng") do set NWDIR=%%~a
for %%a in ("mgdh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Nanpa Story") do set NWDIR=%%~a
for %%a in ("mjnanpas.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Natsu Monogatari") do set NWDIR=%%~a
for %%a in ("mjnatsu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Nerae! Top Star") do set NWDIR=%%~a
for %%a in ("ntopstar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Neruton Haikujiradan") do set NWDIR=%%~a
for %%a in ("neruton.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Oh") do set NWDIR=%%~a
for %%a in ("mahjngoh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Pachinko Monogatari") do set NWDIR=%%~a
for %%a in ("patimono.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Panic Stadium") do set NWDIR=%%~a
for %%a in ("pstadium.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Pon Chin Kan") do set NWDIR=%%~a
for %%a in ("ponchin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Private") do set NWDIR=%%~a
for %%a in ("mjprivat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Quest") do set NWDIR=%%~a
for %%a in ("mjnquest.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Reach") do set NWDIR=%%~a
for %%a in ("mjreach.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Reach Ippatsu") do set NWDIR=%%~a
for %%a in ("mjreach1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Ren-ai Club") do set NWDIR=%%~a
for %%a in ("renaiclb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Rokumeikan") do set NWDIR=%%~a
for %%a in ("mrokumei.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Sailor Wars") do set NWDIR=%%~a
for %%a in ("sailorws.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Satsujin Jiken") do set NWDIR=%%~a
for %%a in ("msjiken.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Scout Man") do set NWDIR=%%~a
for %%a in ("mscoutm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Seiryu Densetsu") do set NWDIR=%%~a
for %%a in ("sryudens.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Shikaku") do set NWDIR=%%~a
for %%a in ("mjsikaku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Shinkirou Deja Vu") do set NWDIR=%%~a
for %%a in ("mjdejavu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Sisters") do set NWDIR=%%~a
for %%a in ("mjsister.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Studio 101") do set NWDIR=%%~a
for %%a in ("majs101b.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Super Da Man Guan II") do set NWDIR=%%~a
for %%a in ("sdmg2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Tenkaigen") do set NWDIR=%%~a
for %%a in ("tenkai.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong The Dai Chuuka Ken") do set NWDIR=%%~a
for %%a in ("mjdchuka.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong The Lady Hunter") do set NWDIR=%%~a
for %%a in ("mladyhtr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong The Mysterious Orient") do set NWDIR=%%~a
for %%a in ("mjmyornt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong The Mysterious Universe") do set NWDIR=%%~a
for %%a in ("mjmyuniv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong The Mysterious World") do set NWDIR=%%~a
for %%a in ("mjmyster.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Tian Jiang Shen Bing") do set NWDIR=%%~a
for %%a in ("tjsb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Triple Wars") do set NWDIR=%%~a
for %%a in ("triplew1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Triple Wars 2") do set NWDIR=%%~a
for %%a in ("triplew2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Uchuu yori Ai wo komete") do set NWDIR=%%~a
for %%a in ("uchuuai.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Uranai Densetsu") do set NWDIR=%%~a
for %%a in ("mjuraden.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Vanilla Syndrome") do set NWDIR=%%~a
for %%a in ("vanilla.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Vegas") do set NWDIR=%%~a
for %%a in ("mjvegasa.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Vitamin C") do set NWDIR=%%~a
for %%a in ("vitaminc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Wakuwaku Catcher") do set NWDIR=%%~a
for %%a in ("wcatcher.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong X-Tal 7 - Crystal Mahjong - Mahjong Diamond 7") do set NWDIR=%%~a
for %%a in ("majxtal7.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Yarunara") do set NWDIR=%%~a
for %%a in ("yarunara.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Yoshimoto Gekijou") do set NWDIR=%%~a
for %%a in ("yosimoto.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong Yuugi") do set NWDIR=%%~a
for %%a in ("mjyuugi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong-yougo no Kisotairyoku") do set NWDIR=%%~a
for %%a in ("mjyougo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mahjong-zukino Korinai Menmen") do set NWDIR=%%~a
for %%a in ("korinai.zip") do set ROM=%%~a
call :INTO
for %%a in ("Maikobana") do set NWDIR=%%~a
for %%a in ("maiko.zip") do set ROM=%%~a
call :INTO
for %%a in ("Maikobana") do set NWDIR=%%~a
for %%a in ("mmaiko.zip") do set ROM=%%~a
call :INTO
for %%a in ("Main Event") do set NWDIR=%%~a
for %%a in ("mainsnk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mainline Double Joker Poker") do set NWDIR=%%~a
for %%a in ("mainline.zip") do set ROM=%%~a
call :INTO
for %%a in ("Major Havoc") do set NWDIR=%%~a
for %%a in ("mhavoc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Major League") do set NWDIR=%%~a
for %%a in ("mjleague.zip") do set ROM=%%~a
call :INTO
for %%a in ("Major Poker") do set NWDIR=%%~a
for %%a in ("majorpkr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Major Title") do set NWDIR=%%~a
for %%a in ("majtitle.zip") do set ROM=%%~a
call :INTO
for %%a in ("Major Title 2") do set NWDIR=%%~a
for %%a in ("majtitl2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Makaijan") do set NWDIR=%%~a
for %%a in ("makaijan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mallet Madness") do set NWDIR=%%~a
for %%a in ("maletmad.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mang-Chi") do set NWDIR=%%~a
for %%a in ("mangchi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mania Challenge") do set NWDIR=%%~a
for %%a in ("maniach.zip") do set ROM=%%~a
call :INTO
for %%a in ("Maniac Square") do set NWDIR=%%~a
for %%a in ("maniacsq.zip") do set ROM=%%~a
call :INTO
for %%a in ("Many Block") do set NWDIR=%%~a
for %%a in ("manybloc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mappy") do set NWDIR=%%~a
for %%a in ("mappy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Marble Madness") do set NWDIR=%%~a
for %%a in ("marble.zip") do set ROM=%%~a
call :INTO
for %%a in ("Marchen Maze") do set NWDIR=%%~a
for %%a in ("mmaze.zip") do set ROM=%%~a
call :INTO
for %%a in ("Marine Boy") do set NWDIR=%%~a
for %%a in ("marineb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Marine Date") do set NWDIR=%%~a
for %%a in ("marinedt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mariner") do set NWDIR=%%~a
for %%a in ("mariner.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mario Bros.") do set NWDIR=%%~a
for %%a in ("mario.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Mario Bros.") do set NWDIR=%%~a
for %%a in ("pc_mario.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Mario's Open Golf") do set NWDIR=%%~a
for %%a in ("pc_moglf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Markham") do set NWDIR=%%~a
for %%a in ("markham.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mars") do set NWDIR=%%~a
for %%a in ("mars.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mars Matrix - Hyper Solid Shooting") do set NWDIR=%%~a
for %%a in ("mmatrix.zip") do set ROM=%%~a
call :INTO
for %%a in ("Martial Champion") do set NWDIR=%%~a
for %%a in ("mtlchamp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Martial Masters") do set NWDIR=%%~a
for %%a in ("martmast.zip") do set ROM=%%~a
call :INTO
for %%a in ("Maru-Chan de Goo!") do set NWDIR=%%~a
for %%a in ("maruchan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Marvel Land") do set NWDIR=%%~a
for %%a in ("marvland.zip") do set ROM=%%~a
call :INTO
for %%a in ("Marvel Super Heroes") do set NWDIR=%%~a
for %%a in ("msh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Marvel Super Heroes Vs. Street Fighter") do set NWDIR=%%~a
for %%a in ("mshvsf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes") do set NWDIR=%%~a
for %%a in ("mvsc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Marvin's Maze") do set NWDIR=%%~a
for %%a in ("marvins.zip") do set ROM=%%~a
call :INTO
for %%a in ("Masked Riders Club Battle Race") do set NWDIR=%%~a
for %%a in ("kamenrid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Master Boy") do set NWDIR=%%~a
for %%a in ("mastboy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Master of Weapon") do set NWDIR=%%~a
for %%a in ("masterw.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mat Mania") do set NWDIR=%%~a
for %%a in ("matmania.zip") do set ROM=%%~a
call :INTO
for %%a in ("Match '98") do set NWDIR=%%~a
for %%a in ("match98.zip") do set ROM=%%~a
call :INTO
for %%a in ("Match It") do set NWDIR=%%~a
for %%a in ("matchit.zip") do set ROM=%%~a
call :INTO
for %%a in ("Match It II") do set NWDIR=%%~a
for %%a in ("matchit2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Matrimelee - Shin Gouketsuji Ichizoku Toukon") do set NWDIR=%%~a
for %%a in ("matrim.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mausuke no Ojama the World") do set NWDIR=%%~a
for %%a in ("mausuke.zip") do set ROM=%%~a
call :INTO
for %%a in ("Maverik") do set NWDIR=%%~a
for %%a in ("maverik.zip") do set ROM=%%~a
call :INTO
for %%a in ("Max RPM") do set NWDIR=%%~a
for %%a in ("maxrpm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Max-A-Flex") do set NWDIR=%%~a
for %%a in ("maxaflex.zip") do set ROM=%%~a
call :INTO
for %%a in ("Maximum Force") do set NWDIR=%%~a
for %%a in ("maxforce.zip") do set ROM=%%~a
call :INTO
for %%a in ("Maya") do set NWDIR=%%~a
for %%a in ("maya.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mayday") do set NWDIR=%%~a
for %%a in ("mayday.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mayhem 2002") do set NWDIR=%%~a
for %%a in ("mayhem.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mayjinsen 2") do set NWDIR=%%~a
for %%a in ("mayjisn2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Maze Invaders") do set NWDIR=%%~a
for %%a in ("mazeinv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Maze of Flott") do set NWDIR=%%~a
for %%a in ("mofflott.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mazin Wars - Mazin Saga") do set NWDIR=%%~a
for %%a in ("mp_mazin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mazinger Z") do set NWDIR=%%~a
for %%a in ("mazinger.zip") do set ROM=%%~a
call :INTO
for %%a in ("Meadows Lanes") do set NWDIR=%%~a
for %%a in ("medlanes.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mechanized Attack") do set NWDIR=%%~a
for %%a in ("mechatt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Medal Mahjong Circuit no Mehyou") do set NWDIR=%%~a
for %%a in ("mmehyou.zip") do set ROM=%%~a
call :INTO
for %%a in ("Medal Mahjong Gottsu ee-kanji") do set NWDIR=%%~a
for %%a in ("mjgottub.zip") do set ROM=%%~a
call :INTO
for %%a in ("Medal Mahjong Pachi-Slot Tengoku") do set NWDIR=%%~a
for %%a in ("pachiten.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mega Blast") do set NWDIR=%%~a
for %%a in ("megablst.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mega Man 2 - The Power Fighters") do set NWDIR=%%~a
for %%a in ("megaman2.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Mega Man III") do set NWDIR=%%~a
for %%a in ("pc_mman3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mega Man - The Power Battle") do set NWDIR=%%~a
for %%a in ("megaman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mega Twins") do set NWDIR=%%~a
for %%a in ("mtwins.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mega Zone") do set NWDIR=%%~a
for %%a in ("megazone.zip") do set ROM=%%~a
call :INTO
for %%a in ("Megadon") do set NWDIR=%%~a
for %%a in ("megadon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Megatack") do set NWDIR=%%~a
for %%a in ("megatack.zip") do set ROM=%%~a
call :INTO
for %%a in ("Megatouch 5") do set NWDIR=%%~a
for %%a in ("megat5.zip") do set ROM=%%~a
call :INTO
for %%a in ("Megatouch 6") do set NWDIR=%%~a
for %%a in ("megat6.zip") do set ROM=%%~a
call :INTO
for %%a in ("Megatouch III") do set NWDIR=%%~a
for %%a in ("megat3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Megatouch IV") do set NWDIR=%%~a
for %%a in ("megat4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Meijinsen") do set NWDIR=%%~a
for %%a in ("meijinsn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Meikyu Jima") do set NWDIR=%%~a
for %%a in ("kikcubic.zip") do set ROM=%%~a
call :INTO
for %%a in ("Meosis Magic") do set NWDIR=%%~a
for %%a in ("meosism.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mercs") do set NWDIR=%%~a
for %%a in ("mercs.zip") do set ROM=%%~a
call :INTO
for %%a in ("Merlins Money Maze") do set NWDIR=%%~a
for %%a in ("merlinmm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mermaid") do set NWDIR=%%~a
for %%a in ("mermaid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Meta Fox") do set NWDIR=%%~a
for %%a in ("metafox.zip") do set ROM=%%~a
call :INTO
for %%a in ("Metal Black") do set NWDIR=%%~a
for %%a in ("metalb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Metal Clash") do set NWDIR=%%~a
for %%a in ("metlclsh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Metal Hawk") do set NWDIR=%%~a
for %%a in ("metlhawk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Metal Saver") do set NWDIR=%%~a
for %%a in ("metlsavr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Metal Slug - Super Vehicle-001") do set NWDIR=%%~a
for %%a in ("mslug.zip") do set ROM=%%~a
call :INTO
for %%a in ("Metal Slug 2 - Super Vehicle-001-II") do set NWDIR=%%~a
for %%a in ("mslug2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Metal Slug 3") do set NWDIR=%%~a
for %%a in ("mslug3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Metal Slug 4") do set NWDIR=%%~a
for %%a in ("mslug4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Metal Slug 5") do set NWDIR=%%~a
for %%a in ("ms5pcb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Metal Slug 5") do set NWDIR=%%~a
for %%a in ("mslug5.zip") do set ROM=%%~a
call :INTO
for %%a in ("Metal Slug X - Super Vehicle-001") do set NWDIR=%%~a
for %%a in ("mslugx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Metal Soldier Isaac II") do set NWDIR=%%~a
for %%a in ("msisaac.zip") do set ROM=%%~a
call :INTO
for %%a in ("Metamoqester") do set NWDIR=%%~a
for %%a in ("metmqstr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Metamorphic Force") do set NWDIR=%%~a
for %%a in ("metamrph.zip") do set ROM=%%~a
call :INTO
for %%a in ("Metro-Cross") do set NWDIR=%%~a
for %%a in ("metrocrs.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Metroid") do set NWDIR=%%~a
for %%a in ("pc_mtoid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Michael Jackson's Moonwalker") do set NWDIR=%%~a
for %%a in ("mwalk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Midnight Resistance") do set NWDIR=%%~a
for %%a in ("midres.zip") do set ROM=%%~a
call :INTO
for %%a in ("Midnight Run") do set NWDIR=%%~a
for %%a in ("midnrun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Midway SSIO Sound Board") do set NWDIR=%%~a
for %%a in ("midssio.zip") do set ROM=%%~a
call :INTO
for %%a in ("MIE") do set NWDIR=%%~a
for %%a in ("mie.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mighty Guy") do set NWDIR=%%~a
for %%a in ("mightguy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mighty Monkey") do set NWDIR=%%~a
for %%a in ("mimonkey.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mighty Warriors") do set NWDIR=%%~a
for %%a in ("mwarr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mighty! Pang") do set NWDIR=%%~a
for %%a in ("mpang.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Mike Tyson's Punch-Out!!") do set NWDIR=%%~a
for %%a in ("pc_miket.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mikie") do set NWDIR=%%~a
for %%a in ("mikie.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mille Miglia 2 - Great 1000 Miles Rally") do set NWDIR=%%~a
for %%a in ("gtmr2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Millennium Nuovo 4000") do set NWDIR=%%~a
for %%a in ("mil4000.zip") do set ROM=%%~a
call :INTO
for %%a in ("Millipede") do set NWDIR=%%~a
for %%a in ("milliped.zip") do set ROM=%%~a
call :INTO
for %%a in ("Minasanno Okagesamadesu! Daisugorokutaikai") do set NWDIR=%%~a
for %%a in ("minasan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Minefield") do set NWDIR=%%~a
for %%a in ("minefld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mini Golf") do set NWDIR=%%~a
for %%a in ("minigolf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mini Vaders") do set NWDIR=%%~a
for %%a in ("minivadr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Minky Monkey") do set NWDIR=%%~a
for %%a in ("mmonkey.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mirage Youjuu Mahjongden") do set NWDIR=%%~a
for %%a in ("mirage.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mirai Ninja") do set NWDIR=%%~a
for %%a in ("mirninja.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mirax") do set NWDIR=%%~a
for %%a in ("mirax.zip") do set ROM=%%~a
call :INTO
for %%a in ("Miss Bingo") do set NWDIR=%%~a
for %%a in ("msbingo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Miss Bubble II") do set NWDIR=%%~a
for %%a in ("missb2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Miss Mahjong Contest") do set NWDIR=%%~a
for %%a in ("mcontest.zip") do set ROM=%%~a
call :INTO
for %%a in ("Miss Puzzle") do set NWDIR=%%~a
for %%a in ("mspuzzle.zip") do set ROM=%%~a
call :INTO
for %%a in ("Miss World '96") do set NWDIR=%%~a
for %%a in ("missw96.zip") do set ROM=%%~a
call :INTO
for %%a in ("Missile Command") do set NWDIR=%%~a
for %%a in ("missile.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mission 660") do set NWDIR=%%~a
for %%a in ("m660.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mission Craft") do set NWDIR=%%~a
for %%a in ("misncrft.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mission-X") do set NWDIR=%%~a
for %%a in ("cmissnx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mister Viking") do set NWDIR=%%~a
for %%a in ("mrviking.zip") do set ROM=%%~a
call :INTO
for %%a in ("Miyasu Nonki no Quiz 18-Kin") do set NWDIR=%%~a
for %%a in ("quiz18k.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mobil Suit Gundam Final Shooting") do set NWDIR=%%~a
for %%a in ("gdfs.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mobile Suit Gundam") do set NWDIR=%%~a
for %%a in ("msgundam.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mobile Suit Gundam EX Revue") do set NWDIR=%%~a
for %%a in ("gundamex.zip") do set ROM=%%~a
call :INTO
for %%a in ("Model 110") do set NWDIR=%%~a
for %%a in ("gp_110.zip") do set ROM=%%~a
call :INTO
for %%a in ("Moero Pro Yakyuu Homerun") do set NWDIR=%%~a
for %%a in ("homerun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Moguchan") do set NWDIR=%%~a
for %%a in ("moguchan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mogura Desse") do set NWDIR=%%~a
for %%a in ("mogura.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mole Attack") do set NWDIR=%%~a
for %%a in ("mole.zip") do set ROM=%%~a
call :INTO
for %%a in ("Momoko 120") do set NWDIR=%%~a
for %%a in ("momoko.zip") do set ROM=%%~a
call :INTO
for %%a in ("Money Machine") do set NWDIR=%%~a
for %%a in ("moneymac.zip") do set ROM=%%~a
call :INTO
for %%a in ("Money Money") do set NWDIR=%%~a
for %%a in ("monymony.zip") do set ROM=%%~a
call :INTO
for %%a in ("Money Puzzle Exchanger - Money Idol Exchanger") do set NWDIR=%%~a
for %%a in ("miexchng.zip") do set ROM=%%~a
call :INTO
for %%a in ("Monkey Mole Panic") do set NWDIR=%%~a
for %%a in ("mmpanic.zip") do set ROM=%%~a
call :INTO
for %%a in ("Monopoly") do set NWDIR=%%~a
for %%a in ("monopoly.zip") do set ROM=%%~a
call :INTO
for %%a in ("Monopoly Deluxe") do set NWDIR=%%~a
for %%a in ("monopldx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Monoshiri Quiz Osyaberi Macha") do set NWDIR=%%~a
for %%a in ("macha.zip") do set ROM=%%~a
call :INTO
for %%a in ("Monster Farm Jump") do set NWDIR=%%~a
for %%a in ("mfjump.zip") do set ROM=%%~a
call :INTO
for %%a in ("Monster Maulers") do set NWDIR=%%~a
for %%a in ("mmaulers.zip") do set ROM=%%~a
call :INTO
for %%a in ("Monster Slider") do set NWDIR=%%~a
for %%a in ("mslider.zip") do set ROM=%%~a
call :INTO
for %%a in ("Monsters World") do set NWDIR=%%~a
for %%a in ("mstworld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Monte Carlo") do set NWDIR=%%~a
for %%a in ("montecar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Moon Cresta") do set NWDIR=%%~a
for %%a in ("mooncrst.zip") do set ROM=%%~a
call :INTO
for %%a in ("Moon Patrol") do set NWDIR=%%~a
for %%a in ("mpatrol.zip") do set ROM=%%~a
call :INTO
for %%a in ("Moon Quasar") do set NWDIR=%%~a
for %%a in ("moonqsr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Moon Shuttle") do set NWDIR=%%~a
for %%a in ("mshuttle.zip") do set ROM=%%~a
call :INTO
for %%a in ("Moon War") do set NWDIR=%%~a
for %%a in ("moonwarp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Moonwar") do set NWDIR=%%~a
for %%a in ("moonwar.zip") do set ROM=%%~a
call :INTO
for %%a in ("More More") do set NWDIR=%%~a
for %%a in ("moremore.zip") do set ROM=%%~a
call :INTO
for %%a in ("More More Plus") do set NWDIR=%%~a
for %%a in ("moremorp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Moriguchi Hiroko no Quiz de Hyuu!Hyuu!") do set NWDIR=%%~a
for %%a in ("quizhuhu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mortal Kombat") do set NWDIR=%%~a
for %%a in ("mk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mortal Kombat 3") do set NWDIR=%%~a
for %%a in ("mk3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mortal Kombat 3") do set NWDIR=%%~a
for %%a in ("mk3mdb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mortal Kombat 4") do set NWDIR=%%~a
for %%a in ("mk4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mortal Kombat II") do set NWDIR=%%~a
for %%a in ("mk2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mosaic") do set NWDIR=%%~a
for %%a in ("mosaic.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mosaic") do set NWDIR=%%~a
for %%a in ("mosaicf2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Motos") do set NWDIR=%%~a
for %%a in ("motos.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mouja") do set NWDIR=%%~a
for %%a in ("mouja.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mouse Attack") do set NWDIR=%%~a
for %%a in ("mouseatk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mouse Shooter GoGo") do set NWDIR=%%~a
for %%a in ("msgogo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mouse Trap") do set NWDIR=%%~a
for %%a in ("mtrap.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mouser") do set NWDIR=%%~a
for %%a in ("mouser.zip") do set ROM=%%~a
call :INTO
for %%a in ("MPU4 Meter Clear ROM") do set NWDIR=%%~a
for %%a in ("m4clr.zip") do set ROM=%%~a
call :INTO
for %%a in ("MPU4 Unit Test") do set NWDIR=%%~a
for %%a in ("m4tst.zip") do set ROM=%%~a
call :INTO
for %%a in ("MPU4 Unit Test") do set NWDIR=%%~a
for %%a in ("m4tst2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mr. Dig") do set NWDIR=%%~a
for %%a in ("mrdig.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mr. Do!") do set NWDIR=%%~a
for %%a in ("mrdo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mr. Do's Castle") do set NWDIR=%%~a
for %%a in ("docastle.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mr. Do's Wild Ride") do set NWDIR=%%~a
for %%a in ("dowild.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mr. Driller") do set NWDIR=%%~a
for %%a in ("mrdrillr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mr. Goemon") do set NWDIR=%%~a
for %%a in ("mrgoemon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mr. Jong") do set NWDIR=%%~a
for %%a in ("mrjong.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mr. Kougar") do set NWDIR=%%~a
for %%a in ("mrkougar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mr. TNT") do set NWDIR=%%~a
for %%a in ("mrtnt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ms. Pac-Man") do set NWDIR=%%~a
for %%a in ("mspacman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ms. Pac-Man-Galaga - 20th Anniversary Class of 1981 Reunion") do set NWDIR=%%~a
for %%a in ("20pacgal.zip") do set ROM=%%~a
call :INTO
for %%a in ("MTV Rock-N-Roll Trivia") do set NWDIR=%%~a
for %%a in ("rocktrv2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mug Smashers") do set NWDIR=%%~a
for %%a in ("mugsmash.zip") do set ROM=%%~a
call :INTO
for %%a in ("MuHanSeungBu") do set NWDIR=%%~a
for %%a in ("semibase.zip") do set ROM=%%~a
call :INTO
for %%a in ("Multi 5 - New Multi Game 5") do set NWDIR=%%~a
for %%a in ("nmg5.zip") do set ROM=%%~a
call :INTO
for %%a in ("Multi Champ") do set NWDIR=%%~a
for %%a in ("multchmp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Multi Champ Deluxe") do set NWDIR=%%~a
for %%a in ("mchampdx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Multi Fish") do set NWDIR=%%~a
for %%a in ("mfish_13.zip") do set ROM=%%~a
call :INTO
for %%a in ("Multi Game") do set NWDIR=%%~a
for %%a in ("multigam.zip") do set ROM=%%~a
call :INTO
for %%a in ("Multi Game") do set NWDIR=%%~a
for %%a in ("multigmt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Multi Game 2") do set NWDIR=%%~a
for %%a in ("multigm2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Multi Game III") do set NWDIR=%%~a
for %%a in ("multigm3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Multi-Poker") do set NWDIR=%%~a
for %%a in ("mpoker.zip") do set ROM=%%~a
call :INTO
for %%a in ("Muroge Monaco") do set NWDIR=%%~a
for %%a in ("murogem.zip") do set ROM=%%~a
call :INTO
for %%a in ("Muscle Bomber Duo - Ultimate Team Battle") do set NWDIR=%%~a
for %%a in ("mbombrd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Music Sort") do set NWDIR=%%~a
for %%a in ("musicsrt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Musoubana") do set NWDIR=%%~a
for %%a in ("musobana.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mustache Boy") do set NWDIR=%%~a
for %%a in ("mustache.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mutant Fighter") do set NWDIR=%%~a
for %%a in ("mutantf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mutant Night") do set NWDIR=%%~a
for %%a in ("mnight.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mutation Nation") do set NWDIR=%%~a
for %%a in ("mutnat.zip") do set ROM=%%~a
call :INTO
for %%a in ("MVP") do set NWDIR=%%~a
for %%a in ("mvp.zip") do set ROM=%%~a
call :INTO
for %%a in ("MX5000") do set NWDIR=%%~a
for %%a in ("mx5000.zip") do set ROM=%%~a
call :INTO
for %%a in ("My Hero") do set NWDIR=%%~a
for %%a in ("myhero.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mysterious Stones - Dr. John's Adventure") do set NWDIR=%%~a
for %%a in ("mystston.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mystic Marathon") do set NWDIR=%%~a
for %%a in ("mysticm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mystic Riders") do set NWDIR=%%~a
for %%a in ("mysticri.zip") do set ROM=%%~a
call :INTO
for %%a in ("Mystic Warriors") do set NWDIR=%%~a
for %%a in ("mystwarr.zip") do set ROM=%%~a
call :INTO
for %%a in ("N.Y. Captor") do set NWDIR=%%~a
for %%a in ("nycaptor.zip") do set ROM=%%~a
call :INTO
for %%a in ("Nagano Winter Olympics '98") do set NWDIR=%%~a
for %%a in ("nagano98.zip") do set ROM=%%~a
call :INTO
for %%a in ("NAM-1975") do set NWDIR=%%~a
for %%a in ("nam1975.zip") do set ROM=%%~a
call :INTO
for %%a in ("Namco 50xx") do set NWDIR=%%~a
for %%a in ("namco50.zip") do set ROM=%%~a
call :INTO
for %%a in ("Namco 51xx") do set NWDIR=%%~a
for %%a in ("namco51.zip") do set ROM=%%~a
call :INTO
for %%a in ("Namco 52xx") do set NWDIR=%%~a
for %%a in ("namco52.zip") do set ROM=%%~a
call :INTO
for %%a in ("Namco 53xx") do set NWDIR=%%~a
for %%a in ("namco53.zip") do set ROM=%%~a
call :INTO
for %%a in ("Namco 54xx") do set NWDIR=%%~a
for %%a in ("namco54.zip") do set ROM=%%~a
call :INTO
for %%a in ("Namco 62xx") do set NWDIR=%%~a
for %%a in ("namco62.zip") do set ROM=%%~a
call :INTO
for %%a in ("Namco Classic Collection Vol.1") do set NWDIR=%%~a
for %%a in ("ncv1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Namco Classic Collection Vol.2") do set NWDIR=%%~a
for %%a in ("ncv2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Name That Tune") do set NWDIR=%%~a
for %%a in ("nametune.zip") do set ROM=%%~a
call :INTO
for %%a in ("Naname de Magic!") do set NWDIR=%%~a
for %%a in ("naname.zip") do set ROM=%%~a
call :INTO
for %%a in ("Narc") do set NWDIR=%%~a
for %%a in ("narc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Nastar") do set NWDIR=%%~a
for %%a in ("nastar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Naughty Boy") do set NWDIR=%%~a
for %%a in ("naughtyb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Naughty Mouse") do set NWDIR=%%~a
for %%a in ("nmouse.zip") do set ROM=%%~a
call :INTO
for %%a in ("Navarone") do set NWDIR=%%~a
for %%a in ("navarone.zip") do set ROM=%%~a
call :INTO
for %%a in ("NBA Hangtime") do set NWDIR=%%~a
for %%a in ("nbahangt.zip") do set ROM=%%~a
call :INTO
for %%a in ("NBA Jam") do set NWDIR=%%~a
for %%a in ("nbajam.zip") do set ROM=%%~a
call :INTO
for %%a in ("NBA Jam TE") do set NWDIR=%%~a
for %%a in ("nbajamte.zip") do set ROM=%%~a
call :INTO
for %%a in ("NBA Play By Play") do set NWDIR=%%~a
for %%a in ("nbapbp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Nebulas Ray") do set NWDIR=%%~a
for %%a in ("nebulray.zip") do set ROM=%%~a
call :INTO
for %%a in ("Neck-n-Neck") do set NWDIR=%%~a
for %%a in ("neckneck.zip") do set ROM=%%~a
call :INTO
for %%a in ("Nekketsu Grand-Prix Gal") do set NWDIR=%%~a
for %%a in ("ngpgal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Nekketsu Mahjong Sengen! AFTER 5") do set NWDIR=%%~a
for %%a in ("nmsengen.zip") do set ROM=%%~a
call :INTO
for %%a in ("Nemesis") do set NWDIR=%%~a
for %%a in ("nemesis.zip") do set ROM=%%~a
call :INTO
for %%a in ("Nemo") do set NWDIR=%%~a
for %%a in ("nemo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Neo Bomberman") do set NWDIR=%%~a
for %%a in ("neobombe.zip") do set ROM=%%~a
call :INTO
for %%a in ("Neo Drift Out - New Technology") do set NWDIR=%%~a
for %%a in ("neodrift.zip") do set ROM=%%~a
call :INTO
for %%a in ("Neo Mr. Do!") do set NWDIR=%%~a
for %%a in ("neomrdo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Neo Turf Masters - Big Tournament Golf") do set NWDIR=%%~a
for %%a in ("turfmast.zip") do set ROM=%%~a
call :INTO
for %%a in ("Neo-Geo Cup '98 - The Road to the Victory") do set NWDIR=%%~a
for %%a in ("neocup98.zip") do set ROM=%%~a
call :INTO
for %%a in ("Neratte Chu") do set NWDIR=%%~a
for %%a in ("nratechu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Net Wars") do set NWDIR=%%~a
for %%a in ("netwars.zip") do set ROM=%%~a
call :INTO
for %%a in ("Nettoh Quiz Champion") do set NWDIR=%%~a
for %%a in ("nettoqc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Nettou! Gekitou! Quiztou!!") do set NWDIR=%%~a
for %%a in ("quiztou.zip") do set ROM=%%~a
call :INTO
for %%a in ("New Champion Skill") do set NWDIR=%%~a
for %%a in ("igs_ncs.zip") do set ROM=%%~a
call :INTO
for %%a in ("New Champion Skill") do set NWDIR=%%~a
for %%a in ("igs_ncs2.zip") do set ROM=%%~a
call :INTO
for %%a in ("New Cherry '96 Special Edition") do set NWDIR=%%~a
for %%a in ("nc96.zip") do set ROM=%%~a
call :INTO
for %%a in ("New Double Bet Mahjong") do set NWDIR=%%~a
for %%a in ("janputer.zip") do set ROM=%%~a
call :INTO
for %%a in ("New Fantasia") do set NWDIR=%%~a
for %%a in ("newfant.zip") do set ROM=%%~a
call :INTO
for %%a in ("New Fruit Bonus '96 Special Edition") do set NWDIR=%%~a
for %%a in ("nfb96.zip") do set ROM=%%~a
call :INTO
for %%a in ("New Hidden Catch") do set NWDIR=%%~a
for %%a in ("nhidctch.zip") do set ROM=%%~a
call :INTO
for %%a in ("New Lucky 8 Lines") do set NWDIR=%%~a
for %%a in ("lucky8.zip") do set ROM=%%~a
call :INTO
for %%a in ("New Lucky 8 Lines - New Super 8 Lines") do set NWDIR=%%~a
for %%a in ("ns8lines.zip") do set ROM=%%~a
call :INTO
for %%a in ("New Lucky 8 Lines - New Super 8 Lines") do set NWDIR=%%~a
for %%a in ("ns8linew.zip") do set ROM=%%~a
call :INTO
for %%a in ("New Magic Card") do set NWDIR=%%~a
for %%a in ("newmcard.zip") do set ROM=%%~a
call :INTO
for %%a in ("New Sinbad 7") do set NWDIR=%%~a
for %%a in ("newsin7.zip") do set ROM=%%~a
call :INTO
for %%a in ("New York! New York!") do set NWDIR=%%~a
for %%a in ("nyny.zip") do set ROM=%%~a
call :INTO
for %%a in ("News") do set NWDIR=%%~a
for %%a in ("news.zip") do set ROM=%%~a
call :INTO
for %%a in ("NFL Blitz") do set NWDIR=%%~a
for %%a in ("blitz.zip") do set ROM=%%~a
call :INTO
for %%a in ("NFL Blitz 2000 Gold Edition") do set NWDIR=%%~a
for %%a in ("blitz2k.zip") do set ROM=%%~a
call :INTO
for %%a in ("NFL Blitz '99") do set NWDIR=%%~a
for %%a in ("blitz99.zip") do set ROM=%%~a
call :INTO
for %%a in ("Nibbler") do set NWDIR=%%~a
for %%a in ("nibbler.zip") do set ROM=%%~a
call :INTO
for %%a in ("Night Bunny") do set NWDIR=%%~a
for %%a in ("ngtbunny.zip") do set ROM=%%~a
call :INTO
for %%a in ("Night Driver") do set NWDIR=%%~a
for %%a in ("nitedrvr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Night Gal") do set NWDIR=%%~a
for %%a in ("nightgal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Night Slashers") do set NWDIR=%%~a
for %%a in ("nslasher.zip") do set ROM=%%~a
call :INTO
for %%a in ("Night Star") do set NWDIR=%%~a
for %%a in ("cnightst.zip") do set ROM=%%~a
call :INTO
for %%a in ("Night Stocker") do set NWDIR=%%~a
for %%a in ("nstocker.zip") do set ROM=%%~a
call :INTO
for %%a in ("Night Striker") do set NWDIR=%%~a
for %%a in ("nightstr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Night Warriors - Darkstalkers' Revenge") do set NWDIR=%%~a
for %%a in ("nwarr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Nightmare in the Dark") do set NWDIR=%%~a
for %%a in ("nitd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ninja Baseball Bat Man") do set NWDIR=%%~a
for %%a in ("nbbatman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ninja Clowns") do set NWDIR=%%~a
for %%a in ("ninclown.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ninja Combat") do set NWDIR=%%~a
for %%a in ("ncombat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ninja Commando") do set NWDIR=%%~a
for %%a in ("ncommand.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ninja Emaki") do set NWDIR=%%~a
for %%a in ("ninjemak.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Ninja Gaiden") do set NWDIR=%%~a
for %%a in ("pc_ngaid.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Ninja Gaiden Episode II - The Dark Sword of Chaos") do set NWDIR=%%~a
for %%a in ("pc_ngai2.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Ninja Gaiden Episode III - The Ancient Ship of Doom") do set NWDIR=%%~a
for %%a in ("pc_ngai3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ninja Kazan") do set NWDIR=%%~a
for %%a in ("kazan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ninja Master's - haoh-ninpo-cho") do set NWDIR=%%~a
for %%a in ("ninjamas.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ninja Mission") do set NWDIR=%%~a
for %%a in ("ar_ninj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ninja Spirit") do set NWDIR=%%~a
for %%a in ("nspirit.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ninja-Kid II - NinjaKun Ashura no Shou") do set NWDIR=%%~a
for %%a in ("ninjakd2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ninjakun Majou no Bouken") do set NWDIR=%%~a
for %%a in ("ninjakun.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Nintendo World Cup") do set NWDIR=%%~a
for %%a in ("pc_wcup.zip") do set ROM=%%~a
call :INTO
for %%a in ("Nitro Ball") do set NWDIR=%%~a
for %%a in ("nitrobal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Niyanpai") do set NWDIR=%%~a
for %%a in ("niyanpai.zip") do set ROM=%%~a
call :INTO
for %%a in ("No Man's Land") do set NWDIR=%%~a
for %%a in ("nomnlnd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Noah's Ark") do set NWDIR=%%~a
for %%a in ("noahsark.zip") do set ROM=%%~a
call :INTO
for %%a in ("Noboranka") do set NWDIR=%%~a
for %%a in ("nob.zip") do set ROM=%%~a
call :INTO
for %%a in ("Noraut Deluxe Poker") do set NWDIR=%%~a
for %%a in ("norautdx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Noraut Joker Poker") do set NWDIR=%%~a
for %%a in ("norautjo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Noraut Joker Poker") do set NWDIR=%%~a
for %%a in ("norautpl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Noraut Poker") do set NWDIR=%%~a
for %%a in ("norautp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Noraut Red Hot Joker Poker") do set NWDIR=%%~a
for %%a in ("norautra.zip") do set ROM=%%~a
call :INTO
for %%a in ("Noraut Red Hot Joker Poker") do set NWDIR=%%~a
for %%a in ("norautrh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Nostradamus") do set NWDIR=%%~a
for %%a in ("nost.zip") do set ROM=%%~a
call :INTO
for %%a in ("Nouryoku Koujou Iinkai") do set NWDIR=%%~a
for %%a in ("nouryoku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Nova 2001") do set NWDIR=%%~a
for %%a in ("nova2001.zip") do set ROM=%%~a
call :INTO
for %%a in ("Novo Play Multi Card - Club Card") do set NWDIR=%%~a
for %%a in ("novoplay.zip") do set ROM=%%~a
call :INTO
for %%a in ("N-Sub") do set NWDIR=%%~a
for %%a in ("nsub.zip") do set ROM=%%~a
call :INTO
for %%a in ("Numan Athletics") do set NWDIR=%%~a
for %%a in ("numanath.zip") do set ROM=%%~a
call :INTO
for %%a in ("Number Dieci") do set NWDIR=%%~a
for %%a in ("number10.zip") do set ROM=%%~a
call :INTO
for %%a in ("Off the Wall") do set NWDIR=%%~a
for %%a in ("offtwall.zip") do set ROM=%%~a
call :INTO
for %%a in ("Off the Wall") do set NWDIR=%%~a
for %%a in ("otwalls.zip") do set ROM=%%~a
call :INTO
for %%a in ("Oh My God!") do set NWDIR=%%~a
for %%a in ("ohmygod.zip") do set ROM=%%~a
call :INTO
for %%a in ("Oh! Paipee") do set NWDIR=%%~a
for %%a in ("ohpaipee.zip") do set ROM=%%~a
call :INTO
for %%a in ("Oishii Puzzle Ha Irimasenka") do set NWDIR=%%~a
for %%a in ("oisipuzl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ojanko Club") do set NWDIR=%%~a
for %%a in ("ojankoc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ojanko High School") do set NWDIR=%%~a
for %%a in ("ojankohs.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ojanko Yakata") do set NWDIR=%%~a
for %%a in ("ojankoy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ojanko Yakata 2bankan") do set NWDIR=%%~a
for %%a in ("ojanko2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ojousan") do set NWDIR=%%~a
for %%a in ("ojousan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Oli-Boo-Chu") do set NWDIR=%%~a
for %%a in ("olibochu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Omega Fighter") do set NWDIR=%%~a
for %%a in ("omegaf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Omega Race") do set NWDIR=%%~a
for %%a in ("omegrace.zip") do set ROM=%%~a
call :INTO
for %%a in ("Omotesandou") do set NWDIR=%%~a
for %%a in ("omotesnd.zip") do set ROM=%%~a
call :INTO
for %%a in ("One + Two") do set NWDIR=%%~a
for %%a in ("onetwo.zip") do set ROM=%%~a
call :INTO
for %%a in ("One Shot One Kill") do set NWDIR=%%~a
for %%a in ("oneshot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Onna Sansirou - Typhoon Gal") do set NWDIR=%%~a
for %%a in ("onna34ro.zip") do set ROM=%%~a
call :INTO
for %%a in ("Oozumou - The Grand Sumo") do set NWDIR=%%~a
for %%a in ("coozumou.zip") do set ROM=%%~a
call :INTO
for %%a in ("Opa Opa") do set NWDIR=%%~a
for %%a in ("opaopa.zip") do set ROM=%%~a
call :INTO
for %%a in ("Operation Thunderbolt") do set NWDIR=%%~a
for %%a in ("othunder.zip") do set ROM=%%~a
call :INTO
for %%a in ("Operation Wolf") do set NWDIR=%%~a
for %%a in ("opwolf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Operation Wolf 3") do set NWDIR=%%~a
for %%a in ("opwolf3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Orange Club - Maruhi Kagai Jugyou") do set NWDIR=%%~a
for %%a in ("orangec.zip") do set ROM=%%~a
call :INTO
for %%a in ("Orbit") do set NWDIR=%%~a
for %%a in ("orbit.zip") do set ROM=%%~a
call :INTO
for %%a in ("Orbitron") do set NWDIR=%%~a
for %%a in ("orbitron.zip") do set ROM=%%~a
call :INTO
for %%a in ("Orbs") do set NWDIR=%%~a
for %%a in ("orbs.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ordyne") do set NWDIR=%%~a
for %%a in ("ordyne.zip") do set ROM=%%~a
call :INTO
for %%a in ("Oriental Legend - Xi You Shi E Zhuan") do set NWDIR=%%~a
for %%a in ("orlegend.zip") do set ROM=%%~a
call :INTO
for %%a in ("Osman") do set NWDIR=%%~a
for %%a in ("osman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Otenami Haiken") do set NWDIR=%%~a
for %%a in ("otenamih.zip") do set ROM=%%~a
call :INTO
for %%a in ("Otenami Haiken Final") do set NWDIR=%%~a
for %%a in ("otenamhf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Otenki Kororin") do set NWDIR=%%~a
for %%a in ("otenki.zip") do set ROM=%%~a
call :INTO
for %%a in ("Othello") do set NWDIR=%%~a
for %%a in ("othello.zip") do set ROM=%%~a
call :INTO
for %%a in ("Othello Derby") do set NWDIR=%%~a
for %%a in ("othldrby.zip") do set ROM=%%~a
call :INTO
for %%a in ("Othello Shiyouyo") do set NWDIR=%%~a
for %%a in ("othellos.zip") do set ROM=%%~a
call :INTO
for %%a in ("Otogizoushi Urashima Mahjong") do set NWDIR=%%~a
for %%a in ("urashima.zip") do set ROM=%%~a
call :INTO
for %%a in ("Otona no Mahjong") do set NWDIR=%%~a
for %%a in ("otonano.zip") do set ROM=%%~a
call :INTO
for %%a in ("Out Run") do set NWDIR=%%~a
for %%a in ("outrun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Out Zone") do set NWDIR=%%~a
for %%a in ("outzone.zip") do set ROM=%%~a
call :INTO
for %%a in ("Outfoxies") do set NWDIR=%%~a
for %%a in ("outfxies.zip") do set ROM=%%~a
call :INTO
for %%a in ("OutRunners") do set NWDIR=%%~a
for %%a in ("orunners.zip") do set ROM=%%~a
call :INTO
for %%a in ("Over Top") do set NWDIR=%%~a
for %%a in ("overtop.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ozma Wars") do set NWDIR=%%~a
for %%a in ("ozmawars.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ozon I") do set NWDIR=%%~a
for %%a in ("ozon1.zip") do set ROM=%%~a
call :INTO
for %%a in ("P.O.W. - Prisoners of War") do set NWDIR=%%~a
for %%a in ("pow.zip") do set ROM=%%~a
call :INTO
for %%a in ("P-47 - The Phantom Fighter") do set NWDIR=%%~a
for %%a in ("p47.zip") do set ROM=%%~a
call :INTO
for %%a in ("P-47 Aces") do set NWDIR=%%~a
for %%a in ("p47aces.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pac & Pal") do set NWDIR=%%~a
for %%a in ("pacnpal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Paca Paca Passion") do set NWDIR=%%~a
for %%a in ("pacapp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Paca Paca Passion 2") do set NWDIR=%%~a
for %%a in ("pacapp2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Paca Paca Passion Special") do set NWDIR=%%~a
for %%a in ("pacappsp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pachifever") do set NWDIR=%%~a
for %%a in ("pachifev.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pachinko Gindama Shoubu") do set NWDIR=%%~a
for %%a in ("pkgnsh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pachinko Gindama Shoubu DX") do set NWDIR=%%~a
for %%a in ("pkgnshdx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pachinko Sexy Reaction") do set NWDIR=%%~a
for %%a in ("sxyreact.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pachinko Sexy Reaction 2") do set NWDIR=%%~a
for %%a in ("sxyreac2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pac-Land") do set NWDIR=%%~a
for %%a in ("pacland.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pac-Land") do set NWDIR=%%~a
for %%a in ("paclandp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pac-Man - 25th Anniversary Edition") do set NWDIR=%%~a
for %%a in ("25pacman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pac-Man Plus") do set NWDIR=%%~a
for %%a in ("pacplus.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pac-Mania") do set NWDIR=%%~a
for %%a in ("pacmania.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pac-Slot") do set NWDIR=%%~a
for %%a in ("pacslot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Paddle Mania") do set NWDIR=%%~a
for %%a in ("paddlema.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pairs") do set NWDIR=%%~a
for %%a in ("pairs.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pairs") do set NWDIR=%%~a
for %%a in ("pairsnb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pairs Love") do set NWDIR=%%~a
for %%a in ("pairlove.zip") do set ROM=%%~a
call :INTO
for %%a in ("Palamedes") do set NWDIR=%%~a
for %%a in ("palamed.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pandora's Palace") do set NWDIR=%%~a
for %%a in ("pandoras.zip") do set ROM=%%~a
call :INTO
for %%a in ("Panel & Variety Akamaru Q Jousyou Dont-R") do set NWDIR=%%~a
for %%a in ("akamaru.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pang") do set NWDIR=%%~a
for %%a in ("pang.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pang Pang") do set NWDIR=%%~a
for %%a in ("pangpang.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pang Pang Car") do set NWDIR=%%~a
for %%a in ("ppcar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pang Pom's") do set NWDIR=%%~a
for %%a in ("pangpoms.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pang! 3") do set NWDIR=%%~a
for %%a in ("pang3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Panic Bomber") do set NWDIR=%%~a
for %%a in ("panicbom.zip") do set ROM=%%~a
call :INTO
for %%a in ("Panic Street") do set NWDIR=%%~a
for %%a in ("panicstr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Panther") do set NWDIR=%%~a
for %%a in ("panther.zip") do set ROM=%%~a
call :INTO
for %%a in ("Paparazzi") do set NWDIR=%%~a
for %%a in ("paprazzi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Paperboy") do set NWDIR=%%~a
for %%a in ("paperboy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Paradice") do set NWDIR=%%~a
for %%a in ("paradice.zip") do set ROM=%%~a
call :INTO
for %%a in ("Paradise") do set NWDIR=%%~a
for %%a in ("paradise.zip") do set ROM=%%~a
call :INTO
for %%a in ("Paradise 2 Deluxe") do set NWDIR=%%~a
for %%a in ("para2dx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Paradise Deluxe") do set NWDIR=%%~a
for %%a in ("paradlx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Parallel Turn") do set NWDIR=%%~a
for %%a in ("pturn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Parodius DA!") do set NWDIR=%%~a
for %%a in ("parodius.zip") do set ROM=%%~a
call :INTO
for %%a in ("Parrot Poker III") do set NWDIR=%%~a
for %%a in ("parrot3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Party Time - Gonta the Diver II - Ganbare! Gonta!! 2") do set NWDIR=%%~a
for %%a in ("prtytime.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pasha Pasha 2") do set NWDIR=%%~a
for %%a in ("pasha2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pass") do set NWDIR=%%~a
for %%a in ("pass.zip") do set ROM=%%~a
call :INTO
for %%a in ("Passing Shot") do set NWDIR=%%~a
for %%a in ("passsht.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pastel Gal") do set NWDIR=%%~a
for %%a in ("pastelg.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pebble Beach - The Great Shot") do set NWDIR=%%~a
for %%a in ("pblbeach.zip") do set ROM=%%~a
call :INTO
for %%a in ("Peek-a-Boo!") do set NWDIR=%%~a
for %%a in ("peekaboo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Peggle") do set NWDIR=%%~a
for %%a in ("peggle.zip") do set ROM=%%~a
call :INTO
for %%a in ("Penfan Girls") do set NWDIR=%%~a
for %%a in ("penfan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pengo") do set NWDIR=%%~a
for %%a in ("pengo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Penguin Adventure") do set NWDIR=%%~a
for %%a in ("pengadvb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Penguin Brothers") do set NWDIR=%%~a
for %%a in ("penbros.zip") do set ROM=%%~a
call :INTO
for %%a in ("Penguin-Kun Wars") do set NWDIR=%%~a
for %%a in ("pkunwar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Penky") do set NWDIR=%%~a
for %%a in ("penky.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pepper II") do set NWDIR=%%~a
for %%a in ("pepper2.zip") do set ROM=%%~a
call :INTO
for %%a in ("PEPSI Man") do set NWDIR=%%~a
for %%a in ("pepsiman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Perestroika Girls") do set NWDIR=%%~a
for %%a in ("perestro.zip") do set ROM=%%~a
call :INTO
for %%a in ("Perfect Billiard") do set NWDIR=%%~a
for %%a in ("pbillrd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Performan") do set NWDIR=%%~a
for %%a in ("perfrman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pesadelo") do set NWDIR=%%~a
for %%a in ("pesadelo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Peter Pack-Rat") do set NWDIR=%%~a
for %%a in ("peterpak.zip") do set ROM=%%~a
call :INTO
for %%a in ("Peter Pepper's Ice Cream Factory") do set NWDIR=%%~a
for %%a in ("cppicf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Phelios") do set NWDIR=%%~a
for %%a in ("phelios.zip") do set ROM=%%~a
call :INTO
for %%a in ("phillips 22VP931") do set NWDIR=%%~a
for %%a in ("22vp931.zip") do set ROM=%%~a
call :INTO
for %%a in ("Phoenix") do set NWDIR=%%~a
for %%a in ("phoenix.zip") do set ROM=%%~a
call :INTO
for %%a in ("Photo Y2K") do set NWDIR=%%~a
for %%a in ("photoy2k.zip") do set ROM=%%~a
call :INTO
for %%a in ("Phozon") do set NWDIR=%%~a
for %%a in ("phozon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Phraze Craze") do set NWDIR=%%~a
for %%a in ("phrcraze.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pick 'n Win") do set NWDIR=%%~a
for %%a in ("pickwin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pickin'") do set NWDIR=%%~a
for %%a in ("pickin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pig Newton") do set NWDIR=%%~a
for %%a in ("pignewt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pig Out - Dine Like a Swine!") do set NWDIR=%%~a
for %%a in ("pigout.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pigskin 621AD") do set NWDIR=%%~a
for %%a in ("pigskin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pinball Action") do set NWDIR=%%~a
for %%a in ("pbaction.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pinbo") do set NWDIR=%%~a
for %%a in ("pinbo.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- PinBot") do set NWDIR=%%~a
for %%a in ("pc_pinbt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ping Pong Masters '93") do set NWDIR=%%~a
for %%a in ("ppmast93.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pioneer Balloon") do set NWDIR=%%~a
for %%a in ("pballoon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pioneer LD-V1000") do set NWDIR=%%~a
for %%a in ("ldv1000.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pioneer PR-8210") do set NWDIR=%%~a
for %%a in ("pr8210.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pipe Dream") do set NWDIR=%%~a
for %%a in ("pipedrm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pipeline") do set NWDIR=%%~a
for %%a in ("pipeline.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pipi & Bibis - Whoopee!!") do set NWDIR=%%~a
for %%a in ("pipibibs.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pirate") do set NWDIR=%%~a
for %%a in ("pirate_3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pirate 2") do set NWDIR=%%~a
for %%a in ("pirate2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pirate 2001") do set NWDIR=%%~a
for %%a in ("pir2001.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pirate 2002") do set NWDIR=%%~a
for %%a in ("pir2002.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pirate Poker II") do set NWDIR=%%~a
for %%a in ("pirpok2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pirate Ship Higemaru") do set NWDIR=%%~a
for %%a in ("higemaru.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pirate Treasure") do set NWDIR=%%~a
for %%a in ("piratetr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pirates") do set NWDIR=%%~a
for %%a in ("pirates.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pisces") do set NWDIR=%%~a
for %%a in ("pisces.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pistol Daimyo no Bouken") do set NWDIR=%%~a
for %%a in ("pistoldm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pit & Run - F-1 Race") do set NWDIR=%%~a
for %%a in ("pitnrun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pit Boss II") do set NWDIR=%%~a
for %%a in ("pitboss2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pit Boss Megastar") do set NWDIR=%%~a
for %%a in ("pitbossm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pit Boss Megatouch II") do set NWDIR=%%~a
for %%a in ("megat2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pit Boss Superstar") do set NWDIR=%%~a
for %%a in ("pitbosss.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pit Boss Supertouch 30") do set NWDIR=%%~a
for %%a in ("pbst30.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pit Fighter") do set NWDIR=%%~a
for %%a in ("pitfight.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pitfall II") do set NWDIR=%%~a
for %%a in ("pitfall2.zip") do set ROM=%%~a
call :INTO
for %%a in ("PK Scramble") do set NWDIR=%%~a
for %%a in ("pkscram.zip") do set ROM=%%~a
call :INTO
for %%a in ("PK Tetris") do set NWDIR=%%~a
for %%a in ("pktet346.zip") do set ROM=%%~a
call :INTO
for %%a in ("Plasma Sword - Nightmare of Bilstein") do set NWDIR=%%~a
for %%a in ("plsmaswd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Play Girls") do set NWDIR=%%~a
for %%a in ("plgirls.zip") do set ROM=%%~a
call :INTO
for %%a in ("Play Girls 2") do set NWDIR=%%~a
for %%a in ("plgirls2.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayBall!") do set NWDIR=%%~a
for %%a in ("playball.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  10's or Better") do set NWDIR=%%~a
for %%a in ("pepp0043.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  4 of a Kind Bonus Poker") do set NWDIR=%%~a
for %%a in ("pepp0158.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  5-in-1 Wingboard") do set NWDIR=%%~a
for %%a in ("pexmp017.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Blackjack") do set NWDIR=%%~a
for %%a in ("pebe0014.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Chaos Slots") do set NWDIR=%%~a
for %%a in ("peps0615.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Deuces Wild Poker") do set NWDIR=%%~a
for %%a in ("pexp0019.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Double Bonus Poker") do set NWDIR=%%~a
for %%a in ("pepp0516.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Double Diamond Slots") do set NWDIR=%%~a
for %%a in ("peps0043.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Double Double Bonus Poker") do set NWDIR=%%~a
for %%a in ("pex2069p.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Double Down Stud Poker") do set NWDIR=%%~a
for %%a in ("pepp0250.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Double Jackpot Slots") do set NWDIR=%%~a
for %%a in ("peps0308.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Jokers Wild Poker") do set NWDIR=%%~a
for %%a in ("pepp0065.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Keno") do set NWDIR=%%~a
for %%a in ("peke1012.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Multi-Poker") do set NWDIR=%%~a
for %%a in ("pexmp006.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Multi-Poker") do set NWDIR=%%~a
for %%a in ("pexmp024.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Red White & Blue Slots") do set NWDIR=%%~a
for %%a in ("peps0022.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Red White & Blue Slots") do set NWDIR=%%~a
for %%a in ("peps0045.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  River Gambler Slots") do set NWDIR=%%~a
for %%a in ("peps0716.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Set Chip") do set NWDIR=%%~a
for %%a in ("peset038.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Standard Draw Poker") do set NWDIR=%%~a
for %%a in ("pepp0188.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Standard Draw Poker") do set NWDIR=%%~a
for %%a in ("pepp0447.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Super Joker Slots") do set NWDIR=%%~a
for %%a in ("peps0014.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  Triple Triple Diamond Slots") do set NWDIR=%%~a
for %%a in ("pexs0006.zip") do set ROM=%%~a
call :INTO
for %%a in ("Player's Edge Plus  White Hot Aces Poker") do set NWDIR=%%~a
for %%a in ("pexp0112.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayMan Poker") do set NWDIR=%%~a
for %%a in ("pmpoker.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pleasure Goal - Futsal - 5 on 5 Mini Soccer") do set NWDIR=%%~a
for %%a in ("pgoal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pleiads") do set NWDIR=%%~a
for %%a in ("pleiads.zip") do set ROM=%%~a
call :INTO
for %%a in ("Plotting") do set NWDIR=%%~a
for %%a in ("plotting.zip") do set ROM=%%~a
call :INTO
for %%a in ("Plump Pop") do set NWDIR=%%~a
for %%a in ("plumppop.zip") do set ROM=%%~a
call :INTO
for %%a in ("Plus Alpha") do set NWDIR=%%~a
for %%a in ("plusalph.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pnickies") do set NWDIR=%%~a
for %%a in ("pnickj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pochi and Nyaa") do set NWDIR=%%~a
for %%a in ("pnyaa.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pocket Gal") do set NWDIR=%%~a
for %%a in ("pcktgal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pocket Gal Deluxe") do set NWDIR=%%~a
for %%a in ("pktgaldx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pocket Racer") do set NWDIR=%%~a
for %%a in ("pocketrc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Point Blank") do set NWDIR=%%~a
for %%a in ("ptblank.zip") do set ROM=%%~a
call :INTO
for %%a in ("Point Blank 2") do set NWDIR=%%~a
for %%a in ("ptblank2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Poitto!") do set NWDIR=%%~a
for %%a in ("poitto.zip") do set ROM=%%~a
call :INTO
for %%a in ("Poizone") do set NWDIR=%%~a
for %%a in ("poizone.zip") do set ROM=%%~a
call :INTO
for %%a in ("Poke Champ") do set NWDIR=%%~a
for %%a in ("pokechmp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Poker") do set NWDIR=%%~a
for %%a in ("gepoker.zip") do set ROM=%%~a
call :INTO
for %%a in ("Poker 4-1") do set NWDIR=%%~a
for %%a in ("poker41.zip") do set ROM=%%~a
call :INTO
for %%a in ("Poker 91") do set NWDIR=%%~a
for %%a in ("poker91.zip") do set ROM=%%~a
call :INTO
for %%a in ("Poker Carnival") do set NWDIR=%%~a
for %%a in ("crsbingo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Poker Dice") do set NWDIR=%%~a
for %%a in ("pokrdice.zip") do set ROM=%%~a
call :INTO
for %%a in ("Poker Ladies") do set NWDIR=%%~a
for %%a in ("pkladies.zip") do set ROM=%%~a
call :INTO
for %%a in ("Poker Master") do set NWDIR=%%~a
for %%a in ("tonypok.zip") do set ROM=%%~a
call :INTO
for %%a in ("Poker Only '97") do set NWDIR=%%~a
for %%a in ("pokonl97.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pokio") do set NWDIR=%%~a
for %%a in ("pokio.zip") do set ROM=%%~a
call :INTO
for %%a in ("Polaris") do set NWDIR=%%~a
for %%a in ("polaris.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pole Position") do set NWDIR=%%~a
for %%a in ("polepos.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pole Position II") do set NWDIR=%%~a
for %%a in ("polepos2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Police Trainer") do set NWDIR=%%~a
for %%a in ("policetr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pollux") do set NWDIR=%%~a
for %%a in ("pollux.zip") do set ROM=%%~a
call :INTO
for %%a in ("Poly-Play") do set NWDIR=%%~a
for %%a in ("polyplay.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ponpoko") do set NWDIR=%%~a
for %%a in ("ponpoko.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pontoon") do set NWDIR=%%~a
for %%a in ("ponttehk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pool 10") do set NWDIR=%%~a
for %%a in ("pool10.zip") do set ROM=%%~a
call :INTO
for %%a in ("Poolshark") do set NWDIR=%%~a
for %%a in ("poolshrk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pooyan") do set NWDIR=%%~a
for %%a in ("pooyan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pop Bingo") do set NWDIR=%%~a
for %%a in ("popbingo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pop Flamer") do set NWDIR=%%~a
for %%a in ("popflame.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pop 'n Bounce - Gapporin") do set NWDIR=%%~a
for %%a in ("popbounc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Popeye") do set NWDIR=%%~a
for %%a in ("popeye.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pop'n Music 2") do set NWDIR=%%~a
for %%a in ("popn2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pop'n Pop") do set NWDIR=%%~a
for %%a in ("popnpop.zip") do set ROM=%%~a
call :INTO
for %%a in ("Popper") do set NWDIR=%%~a
for %%a in ("popper.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pop's Pop's") do set NWDIR=%%~a
for %%a in ("popspops.zip") do set ROM=%%~a
call :INTO
for %%a in ("Porky") do set NWDIR=%%~a
for %%a in ("porky.zip") do set ROM=%%~a
call :INTO
for %%a in ("Portraits") do set NWDIR=%%~a
for %%a in ("portrait.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pot Game") do set NWDIR=%%~a
for %%a in ("potgame.zip") do set ROM=%%~a
call :INTO
for %%a in ("Poto Poto") do set NWDIR=%%~a
for %%a in ("potopoto.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pound for Pound") do set NWDIR=%%~a
for %%a in ("poundfor.zip") do set ROM=%%~a
call :INTO
for %%a in ("Povar - Sobrat' Buran - Agroprom") do set NWDIR=%%~a
for %%a in ("kok.zip") do set ROM=%%~a
call :INTO
for %%a in ("Power Balls") do set NWDIR=%%~a
for %%a in ("powerbal.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Power Blade") do set NWDIR=%%~a
for %%a in ("pc_pwbld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Power Drift") do set NWDIR=%%~a
for %%a in ("pdrift.zip") do set ROM=%%~a
call :INTO
for %%a in ("Power Drive") do set NWDIR=%%~a
for %%a in ("powerdrv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Power Instinct") do set NWDIR=%%~a
for %%a in ("powerins.zip") do set ROM=%%~a
call :INTO
for %%a in ("Power Instinct 2") do set NWDIR=%%~a
for %%a in ("pwrinst2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Power Play") do set NWDIR=%%~a
for %%a in ("powrplay.zip") do set ROM=%%~a
call :INTO
for %%a in ("Power Spikes") do set NWDIR=%%~a
for %%a in ("pspikes.zip") do set ROM=%%~a
call :INTO
for %%a in ("Power Spikes II") do set NWDIR=%%~a
for %%a in ("pspikes2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Power Surge") do set NWDIR=%%~a
for %%a in ("psurge.zip") do set ROM=%%~a
call :INTO
for %%a in ("Powerful Baseball '96") do set NWDIR=%%~a
for %%a in ("pbball96.zip") do set ROM=%%~a
call :INTO
for %%a in ("Powerful Pro Baseball EX") do set NWDIR=%%~a
for %%a in ("pbballex.zip") do set ROM=%%~a
call :INTO
for %%a in ("Prebillian") do set NWDIR=%%~a
for %%a in ("pbillian.zip") do set ROM=%%~a
call :INTO
for %%a in ("Prehistoric Isle 2") do set NWDIR=%%~a
for %%a in ("preisle2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Prehistoric Isle in 1930") do set NWDIR=%%~a
for %%a in ("prehisle.zip") do set ROM=%%~a
call :INTO
for %%a in ("Premier Soccer") do set NWDIR=%%~a
for %%a in ("prmrsocr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pretty Soldier Sailor Moon") do set NWDIR=%%~a
for %%a in ("sailormn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Primal Rage") do set NWDIR=%%~a
for %%a in ("primrage.zip") do set ROM=%%~a
call :INTO
for %%a in ("Prime Goal EX") do set NWDIR=%%~a
for %%a in ("primglex.zip") do set ROM=%%~a
call :INTO
for %%a in ("Princess Clara Daisakusen") do set NWDIR=%%~a
for %%a in ("prikura.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pro Baseball Skill Tryout") do set NWDIR=%%~a
for %%a in ("tryout.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pro Bowling") do set NWDIR=%%~a
for %%a in ("cprobowl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pro Mahjong Kiwame") do set NWDIR=%%~a
for %%a in ("kiwame.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pro Mahjong Kiwame S") do set NWDIR=%%~a
for %%a in ("kiwames.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pro Soccer") do set NWDIR=%%~a
for %%a in ("cpsoccer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pro Soccer") do set NWDIR=%%~a
for %%a in ("prosoccr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pro Sports - Bowling, Tennis, and Golf") do set NWDIR=%%~a
for %%a in ("prosport.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pro Tennis") do set NWDIR=%%~a
for %%a in ("cptennis.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Pro Wrestling") do set NWDIR=%%~a
for %%a in ("pc_pwrst.zip") do set ROM=%%~a
call :INTO
for %%a in ("Professor Pac-Man") do set NWDIR=%%~a
for %%a in ("profpac.zip") do set ROM=%%~a
call :INTO
for %%a in ("Progear") do set NWDIR=%%~a
for %%a in ("progear.zip") do set ROM=%%~a
call :INTO
for %%a in ("Progress") do set NWDIR=%%~a
for %%a in ("progress.zip") do set ROM=%%~a
call :INTO
for %%a in ("Progressive Music Trivia") do set NWDIR=%%~a
for %%a in ("promutrv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Prop Cycle") do set NWDIR=%%~a
for %%a in ("propcycl.zip") do set ROM=%%~a
call :INTO
for %%a in ("PS Arcade 95") do set NWDIR=%%~a
for %%a in ("psarc95.zip") do set ROM=%%~a
call :INTO
for %%a in ("Psychic 5") do set NWDIR=%%~a
for %%a in ("psychic5.zip") do set ROM=%%~a
call :INTO
for %%a in ("Psychic Force") do set NWDIR=%%~a
for %%a in ("psyforce.zip") do set ROM=%%~a
call :INTO
for %%a in ("Psycho Soldier") do set NWDIR=%%~a
for %%a in ("psychos.zip") do set ROM=%%~a
call :INTO
for %%a in ("Psycho-Nics Oscar") do set NWDIR=%%~a
for %%a in ("oscar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Psyvariar -Medium Unit-") do set NWDIR=%%~a
for %%a in ("psyvaria.zip") do set ROM=%%~a
call :INTO
for %%a in ("Psyvariar -Revision-") do set NWDIR=%%~a
for %%a in ("psyvarrv.zip") do set ROM=%%~a
call :INTO
for %%a in ("PT Reach Mahjong") do set NWDIR=%%~a
for %%a in ("ptrmj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puchi Carat") do set NWDIR=%%~a
for %%a in ("puchicar.zip") do set ROM=%%~a
call :INTO
for %%a in ("PuckMan") do set NWDIR=%%~a
for %%a in ("puckman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puckman Pockimon") do set NWDIR=%%~a
for %%a in ("puckpkmn.zip") do set ROM=%%~a
call :INTO
for %%a in ("PuLiRuLa") do set NWDIR=%%~a
for %%a in ("pulirula.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pull Tabs") do set NWDIR=%%~a
for %%a in ("pulltabs.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pulstar") do set NWDIR=%%~a
for %%a in ("pulstar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Punch-Out!!") do set NWDIR=%%~a
for %%a in ("punchout.zip") do set ROM=%%~a
call :INTO
for %%a in ("Punk Shot") do set NWDIR=%%~a
for %%a in ("punkshot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pururun") do set NWDIR=%%~a
for %%a in ("pururun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pushman") do set NWDIR=%%~a
for %%a in ("pushman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puyo Puyo") do set NWDIR=%%~a
for %%a in ("puyo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puyo Puyo 2") do set NWDIR=%%~a
for %%a in ("puyopuy2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puyo Puyo Sun") do set NWDIR=%%~a
for %%a in ("puyosun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzz Loop") do set NWDIR=%%~a
for %%a in ("puzzloop.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzz Loop 2") do set NWDIR=%%~a
for %%a in ("pzloop2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle & Action - Ichidant-R") do set NWDIR=%%~a
for %%a in ("ichir.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle & Action - Sando-R") do set NWDIR=%%~a
for %%a in ("sandor.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle & Action - Tant-R") do set NWDIR=%%~a
for %%a in ("tantr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle Bobble") do set NWDIR=%%~a
for %%a in ("pbobble.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle Bobble - Bust-A-Move") do set NWDIR=%%~a
for %%a in ("pbobblen.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle Bobble 2") do set NWDIR=%%~a
for %%a in ("pbobble2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle Bobble 2 - Bust-A-Move Again") do set NWDIR=%%~a
for %%a in ("pbobbl2n.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle Bobble 3") do set NWDIR=%%~a
for %%a in ("pbobble3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle Bobble 4") do set NWDIR=%%~a
for %%a in ("pbobble4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle Break") do set NWDIR=%%~a
for %%a in ("pzlbreak.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle Club") do set NWDIR=%%~a
for %%a in ("pclubys.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle Club") do set NWDIR=%%~a
for %%a in ("puzlclub.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle De Bowling") do set NWDIR=%%~a
for %%a in ("pzlbowl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle De Pon!") do set NWDIR=%%~a
for %%a in ("puzzledp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle Game Rong Rong") do set NWDIR=%%~a
for %%a in ("rongrong.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle King") do set NWDIR=%%~a
for %%a in ("4in1boot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle King") do set NWDIR=%%~a
for %%a in ("puzzlekg.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle Time") do set NWDIR=%%~a
for %%a in ("pzletime.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzle Uo Poko") do set NWDIR=%%~a
for %%a in ("uopoko.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzled - Joy Joy Kid") do set NWDIR=%%~a
for %%a in ("joyjoy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzzli") do set NWDIR=%%~a
for %%a in ("puzzli.zip") do set ROM=%%~a
call :INTO
for %%a in ("Puzznic") do set NWDIR=%%~a
for %%a in ("puzznic.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pye-nage Taikai") do set NWDIR=%%~a
for %%a in ("pyenaget.zip") do set ROM=%%~a
call :INTO
for %%a in ("Pyramid") do set NWDIR=%%~a
for %%a in ("pyramid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Python") do set NWDIR=%%~a
for %%a in ("phpython.zip") do set ROM=%%~a
call :INTO
for %%a in ("QB-3") do set NWDIR=%%~a
for %%a in ("qb3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Qix") do set NWDIR=%%~a
for %%a in ("qix.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quantum") do set NWDIR=%%~a
for %%a in ("quantum.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quarterback") do set NWDIR=%%~a
for %%a in ("quarterb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quartet") do set NWDIR=%%~a
for %%a in ("quartet.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quasar") do set NWDIR=%%~a
for %%a in ("quasar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quester") do set NWDIR=%%~a
for %%a in ("quester.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quintoon") do set NWDIR=%%~a
for %%a in ("qntoond.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quintoon") do set NWDIR=%%~a
for %%a in ("quintoon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz") do set NWDIR=%%~a
for %%a in ("quiz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz") do set NWDIR=%%~a
for %%a in ("quiz211.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz & Dragons - Capcom Quiz Game") do set NWDIR=%%~a
for %%a in ("qad.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz & Variety Sukusuku Inufuku") do set NWDIR=%%~a
for %%a in ("inufuku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz 365") do set NWDIR=%%~a
for %%a in ("quiz365.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Bisyoujo Senshi Sailor Moon - Chiryoku Tairyoku Toki no Un") do set NWDIR=%%~a
for %%a in ("quizmoon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Chikyu Bouei Gun") do set NWDIR=%%~a
for %%a in ("qzchikyu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Crayon Shinchan") do set NWDIR=%%~a
for %%a in ("qcrayon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Daisousa Sen - The Last Count Down") do set NWDIR=%%~a
for %%a in ("quizdais.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz de Idol! Hot Debut") do set NWDIR=%%~a
for %%a in ("hotdebut.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz DNA no Hanran") do set NWDIR=%%~a
for %%a in ("quizdna.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Do Re Mi Fa Grand Prix") do set NWDIR=%%~a
for %%a in ("qdrmfgp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Do Re Mi Fa Grand Prix 2 - Shin-Kyoku Nyuukadayo") do set NWDIR=%%~a
for %%a in ("qdrmfgp2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz F1 1-2 Finish") do set NWDIR=%%~a
for %%a in ("quizf1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Gakuen Paradise") do set NWDIR=%%~a
for %%a in ("gakupara.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Gakumon no Susume") do set NWDIR=%%~a
for %%a in ("qgakumon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Gekiretsu Scramble") do set NWDIR=%%~a
for %%a in ("gekiretu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Ghost Hunter") do set NWDIR=%%~a
for %%a in ("qgh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz H.Q.") do set NWDIR=%%~a
for %%a in ("quizhq.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Jinsei Gekijoh") do set NWDIR=%%~a
for %%a in ("qjinsei.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz King of Fighters") do set NWDIR=%%~a
for %%a in ("quizkof.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Kokology") do set NWDIR=%%~a
for %%a in ("qzkklogy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Kokology 2") do set NWDIR=%%~a
for %%a in ("qzkklgy2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Meitantei Neo & Geo - Quiz Daisousa Sen part 2") do set NWDIR=%%~a
for %%a in ("quizdai2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Mekurumeku Story") do set NWDIR=%%~a
for %%a in ("quizmeku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Nanairo Dreams - Nijiirochou no Kiseki") do set NWDIR=%%~a
for %%a in ("qndream.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Olympic") do set NWDIR=%%~a
for %%a in ("quizo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Panicuru Fantasy") do set NWDIR=%%~a
for %%a in ("quizpani.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Quest") do set NWDIR=%%~a
for %%a in ("qzquest.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Rouka Ni Tattenasai") do set NWDIR=%%~a
for %%a in ("qrouka.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Sangokushi") do set NWDIR=%%~a
for %%a in ("qsangoku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Sekai wa SHOW by shobai") do set NWDIR=%%~a
for %%a in ("qzshowby.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Syukudai wo Wasuremashita") do set NWDIR=%%~a
for %%a in ("qsww.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Theater - 3tsu no Monogatari") do set NWDIR=%%~a
for %%a in ("qtheater.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Tonosama no Yabou") do set NWDIR=%%~a
for %%a in ("qtono1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Tonosama no Yabou 2 - Zenkoku-ban") do set NWDIR=%%~a
for %%a in ("qtono2j.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz Torimonochou") do set NWDIR=%%~a
for %%a in ("qtorimon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz TV Gassyuukoku Q&Q") do set NWDIR=%%~a
for %%a in ("quiztvqq.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quizard 1.2") do set NWDIR=%%~a
for %%a in ("quizrd12.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quizard 1.7") do set NWDIR=%%~a
for %%a in ("quizrd17.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quizard 1.8") do set NWDIR=%%~a
for %%a in ("quizrd18.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quizard 2.2") do set NWDIR=%%~a
for %%a in ("quizrd22.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quizard 2.3") do set NWDIR=%%~a
for %%a in ("quizrd23.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quizard 3.4") do set NWDIR=%%~a
for %%a in ("quizrd34.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quiz-Mahjong Hayaku Yatteyo!") do set NWDIR=%%~a
for %%a in ("qmhayaku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quizmaster") do set NWDIR=%%~a
for %%a in ("quizmstr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Quizvaders") do set NWDIR=%%~a
for %%a in ("quizvadr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Qwak") do set NWDIR=%%~a
for %%a in ("qwak.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- R.C. Pro-Am") do set NWDIR=%%~a
for %%a in ("pc_rcpam.zip") do set ROM=%%~a
call :INTO
for %%a in ("R2D Tank") do set NWDIR=%%~a
for %%a in ("r2dtank.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rabbit") do set NWDIR=%%~a
for %%a in ("rabbit.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rabio Lepus") do set NWDIR=%%~a
for %%a in ("rabiolep.zip") do set ROM=%%~a
call :INTO
for %%a in ("Raccoon World") do set NWDIR=%%~a
for %%a in ("raccoon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Race Drivin'") do set NWDIR=%%~a
for %%a in ("racedriv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Racing Hero") do set NWDIR=%%~a
for %%a in ("rachero.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rack + Roll") do set NWDIR=%%~a
for %%a in ("racknrol.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rack 'em Up") do set NWDIR=%%~a
for %%a in ("rackemup.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rad Mobile") do set NWDIR=%%~a
for %%a in ("radm.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Rad Racer") do set NWDIR=%%~a
for %%a in ("pc_radrc.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Rad Racer II") do set NWDIR=%%~a
for %%a in ("pc_radr2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rad Rally") do set NWDIR=%%~a
for %%a in ("radr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Radar Scope") do set NWDIR=%%~a
for %%a in ("radarscp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Radar Zone") do set NWDIR=%%~a
for %%a in ("radarzon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Radiant Silvergun") do set NWDIR=%%~a
for %%a in ("rsgun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Radical Radial") do set NWDIR=%%~a
for %%a in ("radrad.zip") do set ROM=%%~a
call :INTO
for %%a in ("Radikal Bikers") do set NWDIR=%%~a
for %%a in ("radikalb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rafflesia") do set NWDIR=%%~a
for %%a in ("raflesia.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rage of the Dragons") do set NWDIR=%%~a
for %%a in ("rotd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ragnagard - Shin-Oh-Ken") do set NWDIR=%%~a
for %%a in ("ragnagrd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Raiden") do set NWDIR=%%~a
for %%a in ("raiden.zip") do set ROM=%%~a
call :INTO
for %%a in ("Raiden Fighters") do set NWDIR=%%~a
for %%a in ("rdft.zip") do set ROM=%%~a
call :INTO
for %%a in ("Raiden Fighters 2") do set NWDIR=%%~a
for %%a in ("rdft2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Raiden Fighters Jet") do set NWDIR=%%~a
for %%a in ("rfjet.zip") do set ROM=%%~a
call :INTO
for %%a in ("Raiders") do set NWDIR=%%~a
for %%a in ("raiders.zip") do set ROM=%%~a
call :INTO
for %%a in ("Raiders5") do set NWDIR=%%~a
for %%a in ("raiders5.zip") do set ROM=%%~a
call :INTO
for %%a in ("Raiga - Strato Fighter") do set NWDIR=%%~a
for %%a in ("stratof.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rail Chase") do set NWDIR=%%~a
for %%a in ("rchase.zip") do set ROM=%%~a
call :INTO
for %%a in ("Raimais") do set NWDIR=%%~a
for %%a in ("raimais.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rainbow Islands") do set NWDIR=%%~a
for %%a in ("rbisland.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rally Bike - Dash Yarou") do set NWDIR=%%~a
for %%a in ("rallybik.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rambo III") do set NWDIR=%%~a
for %%a in ("rambo3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rampage") do set NWDIR=%%~a
for %%a in ("rampage.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rampage - World Tour") do set NWDIR=%%~a
for %%a in ("rmpgwt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rampart") do set NWDIR=%%~a
for %%a in ("rampart.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rapid Fire") do set NWDIR=%%~a
for %%a in ("rapidfir.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rapid Hero") do set NWDIR=%%~a
for %%a in ("raphero.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rastan") do set NWDIR=%%~a
for %%a in ("rastan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rave Racer") do set NWDIR=%%~a
for %%a in ("raveracw.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ray Crisis") do set NWDIR=%%~a
for %%a in ("raycris.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ray Storm") do set NWDIR=%%~a
for %%a in ("raystorm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Razzmatazz") do set NWDIR=%%~a
for %%a in ("razmataz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Reaktor") do set NWDIR=%%~a
for %%a in ("reaktor.zip") do set ROM=%%~a
call :INTO
for %%a in ("Real Bout Fatal Fury - Real Bout Garou Densetsu") do set NWDIR=%%~a
for %%a in ("rbff1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Real Bout Fatal Fury 2 - The Newcomers - Real Bout Garou Densetsu 2 - the newcomers") do set NWDIR=%%~a
for %%a in ("rbff2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Real Bout Fatal Fury Special - Real Bout Garou Densetsu Special") do set NWDIR=%%~a
for %%a in ("rbffspec.zip") do set ROM=%%~a
call :INTO
for %%a in ("Real Mahjong Haihai") do set NWDIR=%%~a
for %%a in ("rmhaihai.zip") do set ROM=%%~a
call :INTO
for %%a in ("Real Mahjong Haihai Jinji Idou Hen") do set NWDIR=%%~a
for %%a in ("rmhaijin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Real Mahjong Haihai Seichouhen") do set NWDIR=%%~a
for %%a in ("rmhaisei.zip") do set ROM=%%~a
call :INTO
for %%a in ("Real Puncher") do set NWDIR=%%~a
for %%a in ("realpunc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Reality Tennis") do set NWDIR=%%~a
for %%a in ("rltennis.zip") do set ROM=%%~a
call :INTO
for %%a in ("Recalhorn") do set NWDIR=%%~a
for %%a in ("recalh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Recordbreaker") do set NWDIR=%%~a
for %%a in ("recordbr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Red Alert") do set NWDIR=%%~a
for %%a in ("redalert.zip") do set ROM=%%~a
call :INTO
for %%a in ("Red Baron") do set NWDIR=%%~a
for %%a in ("redbaron.zip") do set ROM=%%~a
call :INTO
for %%a in ("Red Clash") do set NWDIR=%%~a
for %%a in ("redclash.zip") do set ROM=%%~a
call :INTO
for %%a in ("Red Earth") do set NWDIR=%%~a
for %%a in ("redearth.zip") do set ROM=%%~a
call :INTO
for %%a in ("Red Robin") do set NWDIR=%%~a
for %%a in ("redrobin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Redline Racer") do set NWDIR=%%~a
for %%a in ("redlin2p.zip") do set ROM=%%~a
call :INTO
for %%a in ("Reel Fun") do set NWDIR=%%~a
for %%a in ("reelfun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Reel'N Quake!") do set NWDIR=%%~a
for %%a in ("reelquak.zip") do set ROM=%%~a
call :INTO
for %%a in ("Regulus") do set NWDIR=%%~a
for %%a in ("regulus.zip") do set ROM=%%~a
call :INTO
for %%a in ("Reikai Doushi") do set NWDIR=%%~a
for %%a in ("reikaids.zip") do set ROM=%%~a
call :INTO
for %%a in ("Relief Pitcher") do set NWDIR=%%~a
for %%a in ("relief.zip") do set ROM=%%~a
call :INTO
for %%a in ("Renegade") do set NWDIR=%%~a
for %%a in ("renegade.zip") do set ROM=%%~a
call :INTO
for %%a in ("Renju Kizoku") do set NWDIR=%%~a
for %%a in ("renju.zip") do set ROM=%%~a
call :INTO
for %%a in ("Repulse") do set NWDIR=%%~a
for %%a in ("repulse.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rescue") do set NWDIR=%%~a
for %%a in ("rescue.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rescue Raider") do set NWDIR=%%~a
for %%a in ("rescraid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Resident") do set NWDIR=%%~a
for %%a in ("resdnt_2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rettou Juudan Nekkyoku Janshi - Higashi Nippon Hen") do set NWDIR=%%~a
for %%a in ("nekkyoku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Return of the Invaders") do set NWDIR=%%~a
for %%a in ("retofinv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Return of the Jedi") do set NWDIR=%%~a
for %%a in ("jedi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Revolution X") do set NWDIR=%%~a
for %%a in ("revx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rezon") do set NWDIR=%%~a
for %%a in ("rezon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ribbit!") do set NWDIR=%%~a
for %%a in ("ribbit.zip") do set ROM=%%~a
call :INTO
for %%a in ("Riddle of Pythagoras") do set NWDIR=%%~a
for %%a in ("ridleofp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ridge Racer") do set NWDIR=%%~a
for %%a in ("ridgerac.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ridge Racer 2") do set NWDIR=%%~a
for %%a in ("ridgera2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Riding Fight") do set NWDIR=%%~a
for %%a in ("ridingf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Riding Hero") do set NWDIR=%%~a
for %%a in ("ridhero.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rim Rockin' Basketball") do set NWDIR=%%~a
for %%a in ("rimrockn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ring of Destruction - Slammasters II") do set NWDIR=%%~a
for %%a in ("ringdest.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ring Rage") do set NWDIR=%%~a
for %%a in ("ringrage.zip") do set ROM=%%~a
call :INTO
for %%a in ("Riot") do set NWDIR=%%~a
for %%a in ("riot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Riot City") do set NWDIR=%%~a
for %%a in ("riotcity.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ripper Ribbit") do set NWDIR=%%~a
for %%a in ("ripribit.zip") do set ROM=%%~a
call :INTO
for %%a in ("Risky Challenge") do set NWDIR=%%~a
for %%a in ("riskchal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rival Schools - United By Fate") do set NWDIR=%%~a
for %%a in ("rvschool.zip") do set ROM=%%~a
call :INTO
for %%a in ("River Patrol") do set NWDIR=%%~a
for %%a in ("rpatrol.zip") do set ROM=%%~a
call :INTO
for %%a in ("Road Blasters") do set NWDIR=%%~a
for %%a in ("roadblst.zip") do set ROM=%%~a
call :INTO
for %%a in ("Road Fighter") do set NWDIR=%%~a
for %%a in ("roadf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Road Riot 4WD") do set NWDIR=%%~a
for %%a in ("roadriot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Road Runner") do set NWDIR=%%~a
for %%a in ("roadrunn.zip") do set ROM=%%~a
call :INTO
for %%a in ("RoadWars") do set NWDIR=%%~a
for %%a in ("ar_rdwr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Robby Roto") do set NWDIR=%%~a
for %%a in ("robby.zip") do set ROM=%%~a
call :INTO
for %%a in ("Robin's Adventure") do set NWDIR=%%~a
for %%a in ("robadv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Robin's Adventure 2") do set NWDIR=%%~a
for %%a in ("robadv2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Robo Army") do set NWDIR=%%~a
for %%a in ("roboarmy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Robo Wres 2001") do set NWDIR=%%~a
for %%a in ("robowres.zip") do set ROM=%%~a
call :INTO
for %%a in ("Robocop") do set NWDIR=%%~a
for %%a in ("robocop.zip") do set ROM=%%~a
call :INTO
for %%a in ("Robocop 2") do set NWDIR=%%~a
for %%a in ("robocop2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Robotron - 2084") do set NWDIR=%%~a
for %%a in ("robotron.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rock Climber") do set NWDIR=%%~a
for %%a in ("rclimb_3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rock Climber") do set NWDIR=%%~a
for %%a in ("rockclim.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rock Duck") do set NWDIR=%%~a
for %%a in ("rockduck.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rock Tris") do set NWDIR=%%~a
for %%a in ("rocktris.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Rockin' Kats") do set NWDIR=%%~a
for %%a in ("pc_rkats.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rock'n 3") do set NWDIR=%%~a
for %%a in ("rockn3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rock'n 4") do set NWDIR=%%~a
for %%a in ("rockn4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rock'n MegaSession") do set NWDIR=%%~a
for %%a in ("rocknms.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rock'n Rage") do set NWDIR=%%~a
for %%a in ("rockrage.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rock'n Tread") do set NWDIR=%%~a
for %%a in ("rockn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rock'n Tread 2") do set NWDIR=%%~a
for %%a in ("rockn2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Roc'n Rope") do set NWDIR=%%~a
for %%a in ("rocnrope.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rod-Land") do set NWDIR=%%~a
for %%a in ("rodland.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rohga Armor Force") do set NWDIR=%%~a
for %%a in ("rohga.zip") do set ROM=%%~a
call :INTO
for %%a in ("Roll Fruit") do set NWDIR=%%~a
for %%a in ("rollfr_4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Roller Jammer") do set NWDIR=%%~a
for %%a in ("rjammer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rollergames") do set NWDIR=%%~a
for %%a in ("rollerg.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rolling Thunder") do set NWDIR=%%~a
for %%a in ("rthunder.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rolling Thunder 2") do set NWDIR=%%~a
for %%a in ("rthun2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Romar Triv") do set NWDIR=%%~a
for %%a in ("rtriv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rompers") do set NWDIR=%%~a
for %%a in ("rompers.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rootin' Tootin' - La-Pa-Pa") do set NWDIR=%%~a
for %%a in ("clapapa.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rotary Fighter") do set NWDIR=%%~a
for %%a in ("rotaryf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rough Racer") do set NWDIR=%%~a
for %%a in ("roughrac.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rougien") do set NWDIR=%%~a
for %%a in ("rougien.zip") do set ROM=%%~a
call :INTO
for %%a in ("Round Up 5 - Super Delta Force") do set NWDIR=%%~a
for %%a in ("roundup5.zip") do set ROM=%%~a
call :INTO
for %%a in ("Round-Up") do set NWDIR=%%~a
for %%a in ("roundup.zip") do set ROM=%%~a
call :INTO
for %%a in ("Route 16") do set NWDIR=%%~a
for %%a in ("route16.zip") do set ROM=%%~a
call :INTO
for %%a in ("Royal Card") do set NWDIR=%%~a
for %%a in ("royalcrd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Royal Card") do set NWDIR=%%~a
for %%a in ("roylcrdn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Royal Casino") do set NWDIR=%%~a
for %%a in ("rcasino.zip") do set ROM=%%~a
call :INTO
for %%a in ("Royal Mahjong") do set NWDIR=%%~a
for %%a in ("royalmj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Royal on Ten") do set NWDIR=%%~a
for %%a in ("ndxron10.zip") do set ROM=%%~a
call :INTO
for %%a in ("Royal Poker '96") do set NWDIR=%%~a
for %%a in ("roypok96.zip") do set ROM=%%~a
call :INTO
for %%a in ("Royal Queen") do set NWDIR=%%~a
for %%a in ("royalqn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Royal Vegas Joker Card") do set NWDIR=%%~a
for %%a in ("vegasslw.zip") do set ROM=%%~a
call :INTO
for %%a in ("R-Shark") do set NWDIR=%%~a
for %%a in ("rshark.zip") do set ROM=%%~a
call :INTO
for %%a in ("R-Type") do set NWDIR=%%~a
for %%a in ("rtype.zip") do set ROM=%%~a
call :INTO
for %%a in ("R-Type II") do set NWDIR=%%~a
for %%a in ("rtype2.zip") do set ROM=%%~a
call :INTO
for %%a in ("R-Type Leo") do set NWDIR=%%~a
for %%a in ("rtypeleo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ruleta RCI") do set NWDIR=%%~a
for %%a in ("rcirulet.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ruleta RE-800") do set NWDIR=%%~a
for %%a in ("re800v1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ruleta RE-800") do set NWDIR=%%~a
for %%a in ("re800v3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ruleta RE-900") do set NWDIR=%%~a
for %%a in ("re900.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rumba Lumber") do set NWDIR=%%~a
for %%a in ("rumba.zip") do set ROM=%%~a
call :INTO
for %%a in ("Run and Gun") do set NWDIR=%%~a
for %%a in ("rungun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Run and Gun 2") do set NWDIR=%%~a
for %%a in ("rungun2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Runaway") do set NWDIR=%%~a
for %%a in ("runaway.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rushing Heroes") do set NWDIR=%%~a
for %%a in ("rushhero.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Rush'n Attack") do set NWDIR=%%~a
for %%a in ("pc_rnatk.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Rygar") do set NWDIR=%%~a
for %%a in ("pc_rygar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Rygar") do set NWDIR=%%~a
for %%a in ("rygar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ryu Jin") do set NWDIR=%%~a
for %%a in ("ryujin.zip") do set ROM=%%~a
call :INTO
for %%a in ("RyuKyu") do set NWDIR=%%~a
for %%a in ("ryukyu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ryuusei Janshi Kirara Star") do set NWDIR=%%~a
for %%a in ("kirarast.zip") do set ROM=%%~a
call :INTO
for %%a in ("S.O.S.") do set NWDIR=%%~a
for %%a in ("sosterm.zip") do set ROM=%%~a
call :INTO
for %%a in ("S.P.Y. - Special Project Y") do set NWDIR=%%~a
for %%a in ("spy.zip") do set ROM=%%~a
call :INTO
for %%a in ("S.R.D. Mission") do set NWDIR=%%~a
for %%a in ("srdmissn.zip") do set ROM=%%~a
call :INTO
for %%a in ("S.S. Mission") do set NWDIR=%%~a
for %%a in ("ssmissin.zip") do set ROM=%%~a
call :INTO
for %%a in ("S.T.U.N. Runner") do set NWDIR=%%~a
for %%a in ("stunrun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Saboten Bombers") do set NWDIR=%%~a
for %%a in ("sabotenb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sadari") do set NWDIR=%%~a
for %%a in ("sadari.zip") do set ROM=%%~a
call :INTO
for %%a in ("Safari") do set NWDIR=%%~a
for %%a in ("safari.zip") do set ROM=%%~a
call :INTO
for %%a in ("Saint Dragon") do set NWDIR=%%~a
for %%a in ("stdragon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Salamander") do set NWDIR=%%~a
for %%a in ("salamand.zip") do set ROM=%%~a
call :INTO
for %%a in ("Salamander 2") do set NWDIR=%%~a
for %%a in ("salmndr2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Salary Man Champ") do set NWDIR=%%~a
for %%a in ("salarymc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Samurai") do set NWDIR=%%~a
for %%a in ("samurai.zip") do set ROM=%%~a
call :INTO
for %%a in ("Samurai Aces") do set NWDIR=%%~a
for %%a in ("samuraia.zip") do set ROM=%%~a
call :INTO
for %%a in ("Samurai Nihon-Ichi") do set NWDIR=%%~a
for %%a in ("tsamurai.zip") do set ROM=%%~a
call :INTO
for %%a in ("Samurai Shodown") do set NWDIR=%%~a
for %%a in ("samsho.zip") do set ROM=%%~a
call :INTO
for %%a in ("Samurai Shodown II") do set NWDIR=%%~a
for %%a in ("samsho2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Samurai Shodown III - Samurai Spirits - Zankurou Musouken") do set NWDIR=%%~a
for %%a in ("samsho3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Samurai Shodown IV - Amakusa's Revenge") do set NWDIR=%%~a
for %%a in ("samsho4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Samurai Shodown V - Samurai Spirits Zero") do set NWDIR=%%~a
for %%a in ("samsho5.zip") do set ROM=%%~a
call :INTO
for %%a in ("Samurai Shodown V Special") do set NWDIR=%%~a
for %%a in ("samsh5sp.zip") do set ROM=%%~a
call :INTO
for %%a in ("San Francisco Rush") do set NWDIR=%%~a
for %%a in ("sfrush.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sand Scorpion") do set NWDIR=%%~a
for %%a in ("sandscrp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sankokushi") do set NWDIR=%%~a
for %%a in ("3kokushi.zip") do set ROM=%%~a
call :INTO
for %%a in ("SAR - Search And Rescue") do set NWDIR=%%~a
for %%a in ("searchar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sarge") do set NWDIR=%%~a
for %%a in ("sarge.zip") do set ROM=%%~a
call :INTO
for %%a in ("Satan's Hollow") do set NWDIR=%%~a
for %%a in ("shollow.zip") do set ROM=%%~a
call :INTO
for %%a in ("Saturday Night Slam Masters") do set NWDIR=%%~a
for %%a in ("slammast.zip") do set ROM=%%~a
call :INTO
for %%a in ("Saturn") do set NWDIR=%%~a
for %%a in ("saturnzi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sauro") do set NWDIR=%%~a
for %%a in ("sauro.zip") do set ROM=%%~a
call :INTO
for %%a in ("Savage Reign") do set NWDIR=%%~a
for %%a in ("savagere.zip") do set ROM=%%~a
call :INTO
for %%a in ("Scacco Matto - Space Win") do set NWDIR=%%~a
for %%a in ("spacewin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Scandal Mahjong") do set NWDIR=%%~a
for %%a in ("scandal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Scandal Mahjong") do set NWDIR=%%~a
for %%a in ("schmeisr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Scion") do set NWDIR=%%~a
for %%a in ("scion.zip") do set ROM=%%~a
call :INTO
for %%a in ("Scooter Shooter") do set NWDIR=%%~a
for %%a in ("scotrsht.zip") do set ROM=%%~a
call :INTO
for %%a in ("Scorpion") do set NWDIR=%%~a
for %%a in ("scorpion.zip") do set ROM=%%~a
call :INTO
for %%a in ("Scrabble") do set NWDIR=%%~a
for %%a in ("scrabble.zip") do set ROM=%%~a
call :INTO
for %%a in ("Scramble") do set NWDIR=%%~a
for %%a in ("scramble.zip") do set ROM=%%~a
call :INTO
for %%a in ("Scramble Spirits") do set NWDIR=%%~a
for %%a in ("sspirits.zip") do set ROM=%%~a
call :INTO
for %%a in ("Scrambled Egg") do set NWDIR=%%~a
for %%a in ("scregg.zip") do set ROM=%%~a
call :INTO
for %%a in ("Screw Loose") do set NWDIR=%%~a
for %%a in ("screwloo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Scrum Try") do set NWDIR=%%~a
for %%a in ("cscrtry.zip") do set ROM=%%~a
call :INTO
for %%a in ("Scud Hammer") do set NWDIR=%%~a
for %%a in ("scudhamm.zip") do set ROM=%%~a
call :INTO
for %%a in ("SD Fighters") do set NWDIR=%%~a
for %%a in ("sdfight.zip") do set ROM=%%~a
call :INTO
for %%a in ("SD Gundam Neo Battling") do set NWDIR=%%~a
for %%a in ("neobattl.zip") do set ROM=%%~a
call :INTO
for %%a in ("SD Gundam Psycho Salamander no Kyoui") do set NWDIR=%%~a
for %%a in ("sdgndmps.zip") do set ROM=%%~a
call :INTO
for %%a in ("SDI - Strategic Defense Initiative") do set NWDIR=%%~a
for %%a in ("sdi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sea Bass Fishing") do set NWDIR=%%~a
for %%a in ("seabass.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sea Fighter Poseidon") do set NWDIR=%%~a
for %%a in ("sfposeid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sea Hunter Penguin") do set NWDIR=%%~a
for %%a in ("shpeng.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sea World") do set NWDIR=%%~a
for %%a in ("seawld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Search Eye") do set NWDIR=%%~a
for %%a in ("searchey.zip") do set ROM=%%~a
call :INTO
for %%a in ("Search Eye Plus V2.0") do set NWDIR=%%~a
for %%a in ("searchp2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Second Chance") do set NWDIR=%%~a
for %%a in ("secondch.zip") do set ROM=%%~a
call :INTO
for %%a in ("Second Love") do set NWDIR=%%~a
for %%a in ("secolove.zip") do set ROM=%%~a
call :INTO
for %%a in ("Section Z") do set NWDIR=%%~a
for %%a in ("sectionz.zip") do set ROM=%%~a
call :INTO
for %%a in ("See See Find Out") do set NWDIR=%%~a
for %%a in ("ssfindo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sega Ninja") do set NWDIR=%%~a
for %%a in ("seganinj.zip") do set ROM=%%~a
call :INTO
for %%a in ("SegaSonic The Hedgehog") do set NWDIR=%%~a
for %%a in ("sonic.zip") do set ROM=%%~a
call :INTO
for %%a in ("Seicross") do set NWDIR=%%~a
for %%a in ("seicross.zip") do set ROM=%%~a
call :INTO
for %%a in ("Seiha") do set NWDIR=%%~a
for %%a in ("seiha.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sel Feena") do set NWDIR=%%~a
for %%a in ("selfeena.zip") do set ROM=%%~a
call :INTO
for %%a in ("Selection") do set NWDIR=%%~a
for %%a in ("gs4002.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sengeki Striker") do set NWDIR=%%~a
for %%a in ("sengekis.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sengoku") do set NWDIR=%%~a
for %%a in ("sengoku.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sengoku 2") do set NWDIR=%%~a
for %%a in ("sengoku2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sengoku 3") do set NWDIR=%%~a
for %%a in ("sengoku3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sengoku Mahjong") do set NWDIR=%%~a
for %%a in ("sengokmj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Senjyo") do set NWDIR=%%~a
for %%a in ("senjyo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sen-Know") do set NWDIR=%%~a
for %%a in ("senknow.zip") do set ROM=%%~a
call :INTO
for %%a in ("Senkyu") do set NWDIR=%%~a
for %%a in ("senkyu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sente Diagnostic Cartridge") do set NWDIR=%%~a
for %%a in ("sentetst.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sex Triv") do set NWDIR=%%~a
for %%a in ("sextriv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sexual Trivia") do set NWDIR=%%~a
for %%a in ("sextriv1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sexy Boom") do set NWDIR=%%~a
for %%a in ("sexyboom.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sexy Parodius") do set NWDIR=%%~a
for %%a in ("sexyparo.zip") do set ROM=%%~a
call :INTO
for %%a in ("SF-X") do set NWDIR=%%~a
for %%a in ("sfx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shackled") do set NWDIR=%%~a
for %%a in ("shackled.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shadow Dancer") do set NWDIR=%%~a
for %%a in ("shdancer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shadow Force") do set NWDIR=%%~a
for %%a in ("shadfrce.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shadow Warriors") do set NWDIR=%%~a
for %%a in ("shadoww.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shadowland") do set NWDIR=%%~a
for %%a in ("shadowld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shanghai") do set NWDIR=%%~a
for %%a in ("shanghai.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shanghai - The Great Wall") do set NWDIR=%%~a
for %%a in ("shanhigw.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shanghai II") do set NWDIR=%%~a
for %%a in ("shangha2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shanghai III") do set NWDIR=%%~a
for %%a in ("shangha3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shanghai Kid") do set NWDIR=%%~a
for %%a in ("shangkid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shanghai Matekibuyuu") do set NWDIR=%%~a
for %%a in ("shngmtkb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shanghai Sangokuhai Tougi") do set NWDIR=%%~a
for %%a in ("shangtou.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shanghai Shoryu Sairin") do set NWDIR=%%~a
for %%a in ("shanghss.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shark Party") do set NWDIR=%%~a
for %%a in ("sharkpy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sharpshooter") do set NWDIR=%%~a
for %%a in ("sshooter.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sheriff") do set NWDIR=%%~a
for %%a in ("sheriff.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shienryu") do set NWDIR=%%~a
for %%a in ("shienryu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shikigami no Shiro") do set NWDIR=%%~a
for %%a in ("shikigam.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shin Nihon Pro Wrestling Toukon Retsuden 3 Arcade Edition") do set NWDIR=%%~a
for %%a in ("toukon3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shingen Samurai-Fighter") do set NWDIR=%%~a
for %%a in ("tshingen.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shinobi") do set NWDIR=%%~a
for %%a in ("shinobi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shinobi - FZ-2006") do set NWDIR=%%~a
for %%a in ("shinfz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shinobi III") do set NWDIR=%%~a
for %%a in ("mp_shnb3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shock Troopers") do set NWDIR=%%~a
for %%a in ("shocktro.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shock Troopers - 2nd Squad") do set NWDIR=%%~a
for %%a in ("shocktr2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shocking") do set NWDIR=%%~a
for %%a in ("shocking.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shogun Warriors") do set NWDIR=%%~a
for %%a in ("shogwarr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shoot Out") do set NWDIR=%%~a
for %%a in ("shootout.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shoot the Bull") do set NWDIR=%%~a
for %%a in ("shootbul.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shooting Gallery") do set NWDIR=%%~a
for %%a in ("shootgal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shot Rider") do set NWDIR=%%~a
for %%a in ("shtrider.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shougi") do set NWDIR=%%~a
for %%a in ("shougi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Show Hand") do set NWDIR=%%~a
for %%a in ("showhand.zip") do set ROM=%%~a
call :INTO
for %%a in ("Showdown") do set NWDIR=%%~a
for %%a in ("showdown.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shrike Avenger") do set NWDIR=%%~a
for %%a in ("shrike.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shuffleboard") do set NWDIR=%%~a
for %%a in ("shuffle.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shuffleshot") do set NWDIR=%%~a
for %%a in ("shufshot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Shuuz") do set NWDIR=%%~a
for %%a in ("shuuz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Side Arms - Hyper Dyne") do set NWDIR=%%~a
for %%a in ("sidearms.zip") do set ROM=%%~a
call :INTO
for %%a in ("Side by Side") do set NWDIR=%%~a
for %%a in ("sidebs.zip") do set ROM=%%~a
call :INTO
for %%a in ("Side by Side 2") do set NWDIR=%%~a
for %%a in ("sidebs2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Side Pocket") do set NWDIR=%%~a
for %%a in ("sidepckt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sidewinder") do set NWDIR=%%~a
for %%a in ("ar_sdwr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sidewinder") do set NWDIR=%%~a
for %%a in ("sidewndr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sigma Poker") do set NWDIR=%%~a
for %%a in ("sigmapkr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sigma Poker 2000") do set NWDIR=%%~a
for %%a in ("sigma2k.zip") do set ROM=%%~a
call :INTO
for %%a in ("Silent Dragon") do set NWDIR=%%~a
for %%a in ("silentd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Silk Worm") do set NWDIR=%%~a
for %%a in ("silkworm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Silver Game") do set NWDIR=%%~a
for %%a in ("silverga.zip") do set ROM=%%~a
call :INTO
for %%a in ("Silver Millennium") do set NWDIR=%%~a
for %%a in ("silvmil.zip") do set ROM=%%~a
call :INTO
for %%a in ("Simpsons Bowling") do set NWDIR=%%~a
for %%a in ("simpbowl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Simutrek Modified") do set NWDIR=%%~a
for %%a in ("simutrek.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sindbad Mystery") do set NWDIR=%%~a
for %%a in ("sindbadm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sinistar") do set NWDIR=%%~a
for %%a in ("sinistar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Skater") do set NWDIR=%%~a
for %%a in ("cskater.zip") do set ROM=%%~a
call :INTO
for %%a in ("Skill '98") do set NWDIR=%%~a
for %%a in ("skill98.zip") do set ROM=%%~a
call :INTO
for %%a in ("Skill Cherry '97") do set NWDIR=%%~a
for %%a in ("schery97.zip") do set ROM=%%~a
call :INTO
for %%a in ("Skill Drop Georgia") do set NWDIR=%%~a
for %%a in ("skilldrp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Skill Fruit Bonus") do set NWDIR=%%~a
for %%a in ("sfbonus.zip") do set ROM=%%~a
call :INTO
for %%a in ("Skimaxx") do set NWDIR=%%~a
for %%a in ("skimaxx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Skull & Crossbones") do set NWDIR=%%~a
for %%a in ("skullxbo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Skull Fang") do set NWDIR=%%~a
for %%a in ("skullfng.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sky Adventure") do set NWDIR=%%~a
for %%a in ("skyadvnt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sky Alert") do set NWDIR=%%~a
for %%a in ("skyalert.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sky Army") do set NWDIR=%%~a
for %%a in ("skyarmy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sky Base") do set NWDIR=%%~a
for %%a in ("skybase.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sky Bumper") do set NWDIR=%%~a
for %%a in ("skybump.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sky Diver") do set NWDIR=%%~a
for %%a in ("skydiver.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sky Fox") do set NWDIR=%%~a
for %%a in ("skyfox.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sky Kid") do set NWDIR=%%~a
for %%a in ("skykid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sky Kid Deluxe") do set NWDIR=%%~a
for %%a in ("skykiddx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sky Lancer") do set NWDIR=%%~a
for %%a in ("skylancr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sky Lancer") do set NWDIR=%%~a
for %%a in ("skylncr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sky Raider") do set NWDIR=%%~a
for %%a in ("skyraid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sky Skipper") do set NWDIR=%%~a
for %%a in ("skyskipr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sky Smasher") do set NWDIR=%%~a
for %%a in ("skysmash.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sky Soldiers") do set NWDIR=%%~a
for %%a in ("skysoldr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Slap Shot") do set NWDIR=%%~a
for %%a in ("slapshot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Slick Shot") do set NWDIR=%%~a
for %%a in ("slikshot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Slip Stream") do set NWDIR=%%~a
for %%a in ("slipstrm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Slither") do set NWDIR=%%~a
for %%a in ("slither.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sliver") do set NWDIR=%%~a
for %%a in ("sliver.zip") do set ROM=%%~a
call :INTO
for %%a in ("Slot Poker Saiyuki") do set NWDIR=%%~a
for %%a in ("saiyukip.zip") do set ROM=%%~a
call :INTO
for %%a in ("Slots") do set NWDIR=%%~a
for %%a in ("slotsnl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Slots") do set NWDIR=%%~a
for %%a in ("sltblgpo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Slots") do set NWDIR=%%~a
for %%a in ("sltblgtk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sly Spy") do set NWDIR=%%~a
for %%a in ("slyspy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Smash T.V.") do set NWDIR=%%~a
for %%a in ("smashtv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Snacks'n Jaxson") do set NWDIR=%%~a
for %%a in ("snakjack.zip") do set ROM=%%~a
call :INTO
for %%a in ("Snake Pit") do set NWDIR=%%~a
for %%a in ("snakepit.zip") do set ROM=%%~a
call :INTO
for %%a in ("Snap Jack") do set NWDIR=%%~a
for %%a in ("snapjack.zip") do set ROM=%%~a
call :INTO
for %%a in ("Snapper") do set NWDIR=%%~a
for %%a in ("snapper.zip") do set ROM=%%~a
call :INTO
for %%a in ("Snezhnaja Koroleva") do set NWDIR=%%~a
for %%a in ("koroleva.zip") do set ROM=%%~a
call :INTO
for %%a in ("SNK") do set NWDIR=%%~a
for %%a in ("svc.zip") do set ROM=%%~a
call :INTO
for %%a in ("SNK") do set NWDIR=%%~a
for %%a in ("svcpcb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Snooker 10") do set NWDIR=%%~a
for %%a in ("snookr10.zip") do set ROM=%%~a
call :INTO
for %%a in ("Snow Bros. - Nick & Tom") do set NWDIR=%%~a
for %%a in ("snowbros.zip") do set ROM=%%~a
call :INTO
for %%a in ("Snow Bros. 2 - With New Elves - Otenki Paradise") do set NWDIR=%%~a
for %%a in ("snowbro2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Soccer Brawl") do set NWDIR=%%~a
for %%a in ("socbrawl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Soccer Superstars") do set NWDIR=%%~a
for %%a in ("soccerss.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sokonuke Taisen Game") do set NWDIR=%%~a
for %%a in ("sokonuke.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sol Divide - The Sword Of Darkness") do set NWDIR=%%~a
for %%a in ("soldivid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Solar Fox") do set NWDIR=%%~a
for %%a in ("solarfox.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Solar Jetman") do set NWDIR=%%~a
for %%a in ("pc_sjetm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Soldam") do set NWDIR=%%~a
for %%a in ("soldam.zip") do set ROM=%%~a
call :INTO
for %%a in ("Soldier Girl Amazon") do set NWDIR=%%~a
for %%a in ("amazon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Solitary Fighter") do set NWDIR=%%~a
for %%a in ("solfigtr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Solomon's Key") do set NWDIR=%%~a
for %%a in ("solomon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Solvalou") do set NWDIR=%%~a
for %%a in ("solvalou.zip") do set ROM=%%~a
call :INTO
for %%a in ("Son Son") do set NWDIR=%%~a
for %%a in ("sonson.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sonic Blast Man") do set NWDIR=%%~a
for %%a in ("sbm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sonic Blast Man 2 Special Turbo") do set NWDIR=%%~a
for %%a in ("sblast2b.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sonic Boom") do set NWDIR=%%~a
for %%a in ("sonicbom.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sonic The Hedgehog") do set NWDIR=%%~a
for %%a in ("mp_sonic.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sonic The Hedgehog 2") do set NWDIR=%%~a
for %%a in ("mp_soni2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sorcer Striker") do set NWDIR=%%~a
for %%a in ("sstriker.zip") do set ROM=%%~a
call :INTO
for %%a in ("SOS") do set NWDIR=%%~a
for %%a in ("sos.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sotsugyo Shousho") do set NWDIR=%%~a
for %%a in ("sotsugyo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Soukyugurentai - Terra Diver") do set NWDIR=%%~a
for %%a in ("sokyugrt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Soul Calibur") do set NWDIR=%%~a
for %%a in ("soulclbr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Soul Edge Ver. II") do set NWDIR=%%~a
for %%a in ("souledge.zip") do set ROM=%%~a
call :INTO
for %%a in ("Soutenryu") do set NWDIR=%%~a
for %%a in ("soutenry.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Attack") do set NWDIR=%%~a
for %%a in ("sspaceat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Attack - Head On") do set NWDIR=%%~a
for %%a in ("sspacaho.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Bomber") do set NWDIR=%%~a
for %%a in ("sbomber.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Chaser") do set NWDIR=%%~a
for %%a in ("schaser.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Cruiser") do set NWDIR=%%~a
for %%a in ("spacecr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Duel") do set NWDIR=%%~a
for %%a in ("spacduel.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Dungeon") do set NWDIR=%%~a
for %%a in ("sdungeon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Encounters") do set NWDIR=%%~a
for %%a in ("spcenctr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Fever") do set NWDIR=%%~a
for %%a in ("spacefev.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Fever High Splitter") do set NWDIR=%%~a
for %%a in ("highsplt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Fighter Mark II") do set NWDIR=%%~a
for %%a in ("spfghmk2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Force") do set NWDIR=%%~a
for %%a in ("spcforce.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Fortress") do set NWDIR=%%~a
for %%a in ("spacefrt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Guerrilla") do set NWDIR=%%~a
for %%a in ("spaceg.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Gun") do set NWDIR=%%~a
for %%a in ("spacegun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Harrier") do set NWDIR=%%~a
for %%a in ("sharrier.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Invaders - Space Invaders M") do set NWDIR=%%~a
for %%a in ("invaders.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Invaders '95 - The Attack Of Lunar Loonies") do set NWDIR=%%~a
for %%a in ("spcinv95.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Invaders DX") do set NWDIR=%%~a
for %%a in ("spacedx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Invaders II") do set NWDIR=%%~a
for %%a in ("invad2ct.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Laser") do set NWDIR=%%~a
for %%a in ("spclaser.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Launcher") do set NWDIR=%%~a
for %%a in ("spacelnc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Position") do set NWDIR=%%~a
for %%a in ("spcpostn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Raider") do set NWDIR=%%~a
for %%a in ("sraider.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Ranger") do set NWDIR=%%~a
for %%a in ("ar_sprg.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Seeker") do set NWDIR=%%~a
for %%a in ("spaceskr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Stranger") do set NWDIR=%%~a
for %%a in ("sstrangr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Tactics") do set NWDIR=%%~a
for %%a in ("stactics.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Trek") do set NWDIR=%%~a
for %%a in ("spacetrk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Walk") do set NWDIR=%%~a
for %%a in ("spacwalk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Space Zap") do set NWDIR=%%~a
for %%a in ("spacezap.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sparkz") do set NWDIR=%%~a
for %%a in ("sparkz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Spatter") do set NWDIR=%%~a
for %%a in ("spatter.zip") do set ROM=%%~a
call :INTO
for %%a in ("Speak & Rescue") do set NWDIR=%%~a
for %%a in ("speakres.zip") do set ROM=%%~a
call :INTO
for %%a in ("Special Criminal Investigation") do set NWDIR=%%~a
for %%a in ("sci.zip") do set ROM=%%~a
call :INTO
for %%a in ("Special Forces") do set NWDIR=%%~a
for %%a in ("spclforc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Special Forces II") do set NWDIR=%%~a
for %%a in ("spcfrcii.zip") do set ROM=%%~a
call :INTO
for %%a in ("Spectrum 2000") do set NWDIR=%%~a
for %%a in ("spec2k.zip") do set ROM=%%~a
call :INTO
for %%a in ("Speed Attack!") do set NWDIR=%%~a
for %%a in ("speedatk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Speed Ball") do set NWDIR=%%~a
for %%a in ("spdball.zip") do set ROM=%%~a
call :INTO
for %%a in ("Speed Ball") do set NWDIR=%%~a
for %%a in ("speedbal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Speed Coin") do set NWDIR=%%~a
for %%a in ("spdcoin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Speed Drop") do set NWDIR=%%~a
for %%a in ("speeddrp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Speed Racer") do set NWDIR=%%~a
for %%a in ("speedrcr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Speed Spin") do set NWDIR=%%~a
for %%a in ("speedspn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Speed Up") do set NWDIR=%%~a
for %%a in ("speedup.zip") do set ROM=%%~a
call :INTO
for %%a in ("Spellbound") do set NWDIR=%%~a
for %%a in ("spellbnd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Spelunker") do set NWDIR=%%~a
for %%a in ("spelunkr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Spelunker II") do set NWDIR=%%~a
for %%a in ("spelunk2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Spider-Man - The Videogame") do set NWDIR=%%~a
for %%a in ("spidman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Spiders") do set NWDIR=%%~a
for %%a in ("spiders.zip") do set ROM=%%~a
call :INTO
for %%a in ("Spiker") do set NWDIR=%%~a
for %%a in ("spiker.zip") do set ROM=%%~a
call :INTO
for %%a in ("Spin Master - Miracle Adventure") do set NWDIR=%%~a
for %%a in ("spinmast.zip") do set ROM=%%~a
call :INTO
for %%a in ("Spinal Breakers") do set NWDIR=%%~a
for %%a in ("spinlbrk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Splash!") do set NWDIR=%%~a
for %%a in ("splash.zip") do set ROM=%%~a
call :INTO
for %%a in ("Splat!") do set NWDIR=%%~a
for %%a in ("splat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Splatter House") do set NWDIR=%%~a
for %%a in ("splatter.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sports Authority") do set NWDIR=%%~a
for %%a in ("sprtauth.zip") do set ROM=%%~a
call :INTO
for %%a in ("SportTime Bowling") do set NWDIR=%%~a
for %%a in ("ar_bowl.zip") do set ROM=%%~a
call :INTO
for %%a in ("SportTime Table Hockey") do set NWDIR=%%~a
for %%a in ("ar_airh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Spot") do set NWDIR=%%~a
for %%a in ("ar_spot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Spotty") do set NWDIR=%%~a
for %%a in ("spotty.zip") do set ROM=%%~a
call :INTO
for %%a in ("Springer") do set NWDIR=%%~a
for %%a in ("springer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sprint 1") do set NWDIR=%%~a
for %%a in ("sprint1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sprint 4") do set NWDIR=%%~a
for %%a in ("sprint4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sprint 8") do set NWDIR=%%~a
for %%a in ("sprint8.zip") do set ROM=%%~a
call :INTO
for %%a in ("Spy Hunter") do set NWDIR=%%~a
for %%a in ("spyhunt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Spy Hunter 2") do set NWDIR=%%~a
for %%a in ("spyhunt2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Squash") do set NWDIR=%%~a
for %%a in ("squaitsa.zip") do set ROM=%%~a
call :INTO
for %%a in ("Squash") do set NWDIR=%%~a
for %%a in ("squash.zip") do set ROM=%%~a
call :INTO
for %%a in ("SSI Poker") do set NWDIR=%%~a
for %%a in ("ssipkr24.zip") do set ROM=%%~a
call :INTO
for %%a in ("Stack Columns") do set NWDIR=%%~a
for %%a in ("stkclmns.zip") do set ROM=%%~a
call :INTO
for %%a in ("Stadium Cross") do set NWDIR=%%~a
for %%a in ("scross.zip") do set ROM=%%~a
call :INTO
for %%a in ("Stadium Hero") do set NWDIR=%%~a
for %%a in ("stadhero.zip") do set ROM=%%~a
call :INTO
for %%a in ("Stagger I") do set NWDIR=%%~a
for %%a in ("stagger1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Stakes Winner - Stakes Winner") do set NWDIR=%%~a
for %%a in ("stakwin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Stakes Winner 2") do set NWDIR=%%~a
for %%a in ("stakwin2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Star Fire") do set NWDIR=%%~a
for %%a in ("starfire.zip") do set ROM=%%~a
call :INTO
for %%a in ("Star Fire 2") do set NWDIR=%%~a
for %%a in ("starfir2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Star Force") do set NWDIR=%%~a
for %%a in ("starforc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Star Gladiator Episode I - Final Crusade") do set NWDIR=%%~a
for %%a in ("starglad.zip") do set ROM=%%~a
call :INTO
for %%a in ("Star Guards") do set NWDIR=%%~a
for %%a in ("stargrds.zip") do set ROM=%%~a
call :INTO
for %%a in ("Star Jacker") do set NWDIR=%%~a
for %%a in ("starjack.zip") do set ROM=%%~a
call :INTO
for %%a in ("Star Soldier - Vanishing Earth") do set NWDIR=%%~a
for %%a in ("starsldr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Star Sweep") do set NWDIR=%%~a
for %%a in ("starswep.zip") do set ROM=%%~a
call :INTO
for %%a in ("Star Trek") do set NWDIR=%%~a
for %%a in ("startrek.zip") do set ROM=%%~a
call :INTO
for %%a in ("Star Wars") do set NWDIR=%%~a
for %%a in ("starwars.zip") do set ROM=%%~a
call :INTO
for %%a in ("Starblade") do set NWDIR=%%~a
for %%a in ("starblad.zip") do set ROM=%%~a
call :INTO
for %%a in ("Stargate") do set NWDIR=%%~a
for %%a in ("stargate.zip") do set ROM=%%~a
call :INTO
for %%a in ("Starship 1") do set NWDIR=%%~a
for %%a in ("starshp1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Status Black Jack") do set NWDIR=%%~a
for %%a in ("statusbj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Status Fun Casino") do set NWDIR=%%~a
for %%a in ("funcsino.zip") do set ROM=%%~a
call :INTO
for %%a in ("Steal See") do set NWDIR=%%~a
for %%a in ("stealsee.zip") do set ROM=%%~a
call :INTO
for %%a in ("Steel Force") do set NWDIR=%%~a
for %%a in ("stlforce.zip") do set ROM=%%~a
call :INTO
for %%a in ("Steel Gunner") do set NWDIR=%%~a
for %%a in ("sgunner.zip") do set ROM=%%~a
call :INTO
for %%a in ("Steel Gunner 2") do set NWDIR=%%~a
for %%a in ("sgunner2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Steel Talons") do set NWDIR=%%~a
for %%a in ("steeltal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Steep Slope Sliders") do set NWDIR=%%~a
for %%a in ("sss.zip") do set ROM=%%~a
call :INTO
for %%a in ("Stinger") do set NWDIR=%%~a
for %%a in ("stinger.zip") do set ROM=%%~a
call :INTO
for %%a in ("Stocker") do set NWDIR=%%~a
for %%a in ("stocker.zip") do set ROM=%%~a
call :INTO
for %%a in ("Stompin'") do set NWDIR=%%~a
for %%a in ("stompin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Stone Ball") do set NWDIR=%%~a
for %%a in ("stonebal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Storm Blade") do set NWDIR=%%~a
for %%a in ("stmblade.zip") do set ROM=%%~a
call :INTO
for %%a in ("Straight Flush") do set NWDIR=%%~a
for %%a in ("sflush.zip") do set ROM=%%~a
call :INTO
for %%a in ("Strata Bowling") do set NWDIR=%%~a
for %%a in ("stratab.zip") do set ROM=%%~a
call :INTO
for %%a in ("Strategy X") do set NWDIR=%%~a
for %%a in ("stratgyx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Streaking") do set NWDIR=%%~a
for %%a in ("streakng.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Drivin'") do set NWDIR=%%~a
for %%a in ("strtdriv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Fighter") do set NWDIR=%%~a
for %%a in ("sf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Fighter Alpha 2") do set NWDIR=%%~a
for %%a in ("sfa2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Fighter Alpha 3") do set NWDIR=%%~a
for %%a in ("sfa3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Fighter Alpha - Warriors' Dreams") do set NWDIR=%%~a
for %%a in ("sfa.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Fighter EX") do set NWDIR=%%~a
for %%a in ("sfex.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Fighter EX Plus") do set NWDIR=%%~a
for %%a in ("sfexp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Fighter EX2") do set NWDIR=%%~a
for %%a in ("sfex2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Fighter EX2 Plus") do set NWDIR=%%~a
for %%a in ("sfex2p.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Fighter II' - Champion Edition") do set NWDIR=%%~a
for %%a in ("sf2ce.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Fighter II' - Hyper Fighting") do set NWDIR=%%~a
for %%a in ("sf2hf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Fighter II - The World Warrior") do set NWDIR=%%~a
for %%a in ("sf2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Fighter III 2nd Impact - Giant Attack") do set NWDIR=%%~a
for %%a in ("sfiii2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Fighter III 3rd Strike - Fight for the Future") do set NWDIR=%%~a
for %%a in ("sfiii3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Fighter III - New Generation") do set NWDIR=%%~a
for %%a in ("sfiii.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Fighter Zero 2 Alpha") do set NWDIR=%%~a
for %%a in ("sfz2al.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Fighter - The Movie") do set NWDIR=%%~a
for %%a in ("sftm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Football") do set NWDIR=%%~a
for %%a in ("sfootbal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Games II") do set NWDIR=%%~a
for %%a in ("streetg2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Heat") do set NWDIR=%%~a
for %%a in ("strtheat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Hoop - Street Slam - Dunk Dream") do set NWDIR=%%~a
for %%a in ("strhoop.zip") do set ROM=%%~a
call :INTO
for %%a in ("Street Smart") do set NWDIR=%%~a
for %%a in ("streetsm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Streets of Rage II") do set NWDIR=%%~a
for %%a in ("mp_sor2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Strength & Skill") do set NWDIR=%%~a
for %%a in ("strnskil.zip") do set ROM=%%~a
call :INTO
for %%a in ("Strider") do set NWDIR=%%~a
for %%a in ("strider.zip") do set ROM=%%~a
call :INTO
for %%a in ("Strider 2") do set NWDIR=%%~a
for %%a in ("strider2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Strike Bowling") do set NWDIR=%%~a
for %%a in ("sbowling.zip") do set ROM=%%~a
call :INTO
for %%a in ("Strike Fighter") do set NWDIR=%%~a
for %%a in ("strkfgtr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Strike Force") do set NWDIR=%%~a
for %%a in ("strkforc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Strike Gunner S.T.G") do set NWDIR=%%~a
for %%a in ("stg.zip") do set ROM=%%~a
call :INTO
for %%a in ("Strike Zone Baseball") do set NWDIR=%%~a
for %%a in ("strkzone.zip") do set ROM=%%~a
call :INTO
for %%a in ("Strikers 1945") do set NWDIR=%%~a
for %%a in ("s1945.zip") do set ROM=%%~a
call :INTO
for %%a in ("Strikers 1945 II") do set NWDIR=%%~a
for %%a in ("s1945ii.zip") do set ROM=%%~a
call :INTO
for %%a in ("Strikers 1945 III") do set NWDIR=%%~a
for %%a in ("s1945iii.zip") do set ROM=%%~a
call :INTO
for %%a in ("Strikers 1945 Plus") do set NWDIR=%%~a
for %%a in ("s1945p.zip") do set ROM=%%~a
call :INTO
for %%a in ("Submarine") do set NWDIR=%%~a
for %%a in ("sub.zip") do set ROM=%%~a
call :INTO
for %%a in ("Subs") do set NWDIR=%%~a
for %%a in ("subs.zip") do set ROM=%%~a
call :INTO
for %%a in ("Success Joe") do set NWDIR=%%~a
for %%a in ("scessjoe.zip") do set ROM=%%~a
call :INTO
for %%a in ("Suikoenbu - Outlaws of the Lost Dynasty") do set NWDIR=%%~a
for %%a in ("suikoenb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sukeban Jansi Ryuko") do set NWDIR=%%~a
for %%a in ("sjryuko.zip") do set ROM=%%~a
call :INTO
for %%a in ("SunA Quiz 6000 Academy") do set NWDIR=%%~a
for %%a in ("sunaq.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sunset Riders") do set NWDIR=%%~a
for %%a in ("srmdb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sunset Riders") do set NWDIR=%%~a
for %%a in ("ssriders.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Astro Fighter") do set NWDIR=%%~a
for %%a in ("csuperas.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Bagman") do set NWDIR=%%~a
for %%a in ("sbagman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Ball") do set NWDIR=%%~a
for %%a in ("suprball.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Baseball Double Play Home Run Derby") do set NWDIR=%%~a
for %%a in ("dblplay.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Basketball") do set NWDIR=%%~a
for %%a in ("sbasketb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Bishi Bashi Championship") do set NWDIR=%%~a
for %%a in ("sbishi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Bowl") do set NWDIR=%%~a
for %%a in ("superbwl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Breakout") do set NWDIR=%%~a
for %%a in ("sbrkout.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Bubble 2003") do set NWDIR=%%~a
for %%a in ("sb2003.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Bug") do set NWDIR=%%~a
for %%a in ("superbug.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Burger Time") do set NWDIR=%%~a
for %%a in ("supbtime.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Super C") do set NWDIR=%%~a
for %%a in ("pc_suprc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Casino") do set NWDIR=%%~a
for %%a in ("sucasino.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Champion Baseball") do set NWDIR=%%~a
for %%a in ("sbasebal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Chase - Criminal Termination") do set NWDIR=%%~a
for %%a in ("superchs.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Cobra") do set NWDIR=%%~a
for %%a in ("scobra.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Contra") do set NWDIR=%%~a
for %%a in ("scontra.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Cross II") do set NWDIR=%%~a
for %%a in ("sprcros2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Crowns Golf") do set NWDIR=%%~a
for %%a in ("suprgolf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Cup Finals") do set NWDIR=%%~a
for %%a in ("scfinals.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Derby") do set NWDIR=%%~a
for %%a in ("sderby.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Dodge Ball") do set NWDIR=%%~a
for %%a in ("spdodgeb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Dodge Ball - Kunio no Nekketsu Toukyuu Densetsu") do set NWDIR=%%~a
for %%a in ("sdodgeb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Doubles Tennis") do set NWDIR=%%~a
for %%a in ("csdtenis.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Doubles Tennis") do set NWDIR=%%~a
for %%a in ("sdtennis.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Draw Poker") do set NWDIR=%%~a
for %%a in ("supdrapo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Duper Casino") do set NWDIR=%%~a
for %%a in ("usg32.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Eagle Shot") do set NWDIR=%%~a
for %%a in ("speglsht.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Football Champ") do set NWDIR=%%~a
for %%a in ("sfchamp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Free Kick") do set NWDIR=%%~a
for %%a in ("sfkick.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Fruit Bonus") do set NWDIR=%%~a
for %%a in ("sfruitb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Game III") do set NWDIR=%%~a
for %%a in ("supergm3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Gem Fighter Mini Mix") do set NWDIR=%%~a
for %%a in ("sgemf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Glob") do set NWDIR=%%~a
for %%a in ("suprglob.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Gran Safari") do set NWDIR=%%~a
for %%a in ("sgsafari.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Hana Paradise") do set NWDIR=%%~a
for %%a in ("hparadis.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Hang-On") do set NWDIR=%%~a
for %%a in ("shangon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super High Impact") do set NWDIR=%%~a
for %%a in ("shimpact.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Invader Attack") do set NWDIR=%%~a
for %%a in ("sia2650.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super League") do set NWDIR=%%~a
for %%a in ("suprleag.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Loco 93") do set NWDIR=%%~a
for %%a in ("sloco93.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Locomotive") do set NWDIR=%%~a
for %%a in ("suprloco.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Lucky Roulette") do set NWDIR=%%~a
for %%a in ("roul.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Lup Lup Puzzle") do set NWDIR=%%~a
for %%a in ("suplup.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Super Mario Bros.") do set NWDIR=%%~a
for %%a in ("pc_smb.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Super Mario Bros. 2") do set NWDIR=%%~a
for %%a in ("pc_smb2.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Super Mario Bros. 3") do set NWDIR=%%~a
for %%a in ("pc_smb3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Marukin-Ban") do set NWDIR=%%~a
for %%a in ("marukin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Model") do set NWDIR=%%~a
for %%a in ("supmodel.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Monaco GP") do set NWDIR=%%~a
for %%a in ("smgp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Mouse") do set NWDIR=%%~a
for %%a in ("suprmous.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Othello") do set NWDIR=%%~a
for %%a in ("sothello.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Pac-Man") do set NWDIR=%%~a
for %%a in ("superpac.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Pang") do set NWDIR=%%~a
for %%a in ("spang.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Pinball Action") do set NWDIR=%%~a
for %%a in ("spbactn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Pit Boss") do set NWDIR=%%~a
for %%a in ("spitboss.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Poker") do set NWDIR=%%~a
for %%a in ("spk116it.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Poker") do set NWDIR=%%~a
for %%a in ("suprpokr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Pool 99") do set NWDIR=%%~a
for %%a in ("spool99.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Punch-Out!!") do set NWDIR=%%~a
for %%a in ("spnchout.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Puzzle Bobble") do set NWDIR=%%~a
for %%a in ("spuzbobl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Puzzle Fighter II Turbo") do set NWDIR=%%~a
for %%a in ("spf2t.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Qix") do set NWDIR=%%~a
for %%a in ("sqix.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Ranger") do set NWDIR=%%~a
for %%a in ("sranger.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Real Darwin") do set NWDIR=%%~a
for %%a in ("srdarwin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Real Mahjong P5") do set NWDIR=%%~a
for %%a in ("srmp5.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Real Mahjong P6") do set NWDIR=%%~a
for %%a in ("srmp6.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Real Mahjong P7") do set NWDIR=%%~a
for %%a in ("srmp7.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Real Mahjong Part 1") do set NWDIR=%%~a
for %%a in ("srmp1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Real Mahjong Part 2") do set NWDIR=%%~a
for %%a in ("srmp2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Real Mahjong Part 3") do set NWDIR=%%~a
for %%a in ("srmp3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Real Mahjong PIV") do set NWDIR=%%~a
for %%a in ("srmp4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Rider") do set NWDIR=%%~a
for %%a in ("smoto20.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Rider") do set NWDIR=%%~a
for %%a in ("suprridr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Shot") do set NWDIR=%%~a
for %%a in ("sshot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Sidekicks - Tokuten Ou") do set NWDIR=%%~a
for %%a in ("ssideki.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Sidekicks 2 - The World Championship") do set NWDIR=%%~a
for %%a in ("ssideki2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Sidekicks 3 - The Next Glory") do set NWDIR=%%~a
for %%a in ("ssideki3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Slam") do set NWDIR=%%~a
for %%a in ("sslam.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Slams") do set NWDIR=%%~a
for %%a in ("suprslam.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Space Invaders '91") do set NWDIR=%%~a
for %%a in ("ssi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Spacefortress Macross") do set NWDIR=%%~a
for %%a in ("macross.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Spacefortress Macross II") do set NWDIR=%%~a
for %%a in ("macross2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Speed Race") do set NWDIR=%%~a
for %%a in ("sspeedr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Speed Race Junior") do set NWDIR=%%~a
for %%a in ("ssrj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Sprint") do set NWDIR=%%~a
for %%a in ("ssprint.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Stars") do set NWDIR=%%~a
for %%a in ("suprstar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Stars") do set NWDIR=%%~a
for %%a in ("sstingry.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Street Fighter II - The New Challengers") do set NWDIR=%%~a
for %%a in ("ssf2mdb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Street Fighter II Turbo") do set NWDIR=%%~a
for %%a in ("ssf2t.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Street Fighter II - The New Challengers") do set NWDIR=%%~a
for %%a in ("ssf2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Strike Bowling") do set NWDIR=%%~a
for %%a in ("sstrike.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Tank") do set NWDIR=%%~a
for %%a in ("supertnk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Ten V8.3") do set NWDIR=%%~a
for %%a in ("usg83.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Toffy") do set NWDIR=%%~a
for %%a in ("stoffy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Trio") do set NWDIR=%%~a
for %%a in ("suprtrio.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Triv") do set NWDIR=%%~a
for %%a in ("striv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Triv II") do set NWDIR=%%~a
for %%a in ("supertr2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Triv III") do set NWDIR=%%~a
for %%a in ("supertr3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Trivia Master") do set NWDIR=%%~a
for %%a in ("strvmstr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Twenty One") do set NWDIR=%%~a
for %%a in ("super21.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Visual Football - European Sega Cup") do set NWDIR=%%~a
for %%a in ("svf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Volleyball") do set NWDIR=%%~a
for %%a in ("svolley.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super Wing") do set NWDIR=%%~a
for %%a in ("superwng.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super World Court") do set NWDIR=%%~a
for %%a in ("swcourt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super World Stadium") do set NWDIR=%%~a
for %%a in ("sws.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super World Stadium '92") do set NWDIR=%%~a
for %%a in ("sws92.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super World Stadium '93") do set NWDIR=%%~a
for %%a in ("sws93.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super World Stadium '95") do set NWDIR=%%~a
for %%a in ("sws95.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super World Stadium '96") do set NWDIR=%%~a
for %%a in ("sws96.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super World Stadium '97") do set NWDIR=%%~a
for %%a in ("sws97.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super World Stadium '98") do set NWDIR=%%~a
for %%a in ("sws98.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super World Stadium '99") do set NWDIR=%%~a
for %%a in ("sws99.zip") do set ROM=%%~a
call :INTO
for %%a in ("Superbike") do set NWDIR=%%~a
for %%a in ("superbik.zip") do set ROM=%%~a
call :INTO
for %%a in ("Superior Soldiers") do set NWDIR=%%~a
for %%a in ("ssoldier.zip") do set ROM=%%~a
call :INTO
for %%a in ("Superman") do set NWDIR=%%~a
for %%a in ("superman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Super-X") do set NWDIR=%%~a
for %%a in ("superx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sure Shot") do set NWDIR=%%~a
for %%a in ("sureshot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Surf Planet") do set NWDIR=%%~a
for %%a in ("surfplnt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Surprise Attack") do set NWDIR=%%~a
for %%a in ("suratk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Survival") do set NWDIR=%%~a
for %%a in ("survival.zip") do set ROM=%%~a
call :INTO
for %%a in ("Survival Arts") do set NWDIR=%%~a
for %%a in ("survarts.zip") do set ROM=%%~a
call :INTO
for %%a in ("Susume! Taisen Puzzle-Dama") do set NWDIR=%%~a
for %%a in ("susume.zip") do set ROM=%%~a
call :INTO
for %%a in ("Suzuka 8 Hours") do set NWDIR=%%~a
for %%a in ("suzuka8h.zip") do set ROM=%%~a
call :INTO
for %%a in ("Suzuka 8 Hours 2") do set NWDIR=%%~a
for %%a in ("suzuk8h2.zip") do set ROM=%%~a
call :INTO
for %%a in ("SWAT") do set NWDIR=%%~a
for %%a in ("swat.zip") do set ROM=%%~a
call :INTO
for %%a in ("SWAT Police") do set NWDIR=%%~a
for %%a in ("swatpolc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sweet Life") do set NWDIR=%%~a
for %%a in ("sweetl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Sweet Life 2") do set NWDIR=%%~a
for %%a in ("sweetl2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Swimmer") do set NWDIR=%%~a
for %%a in ("swimmer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Swinging Singles") do set NWDIR=%%~a
for %%a in ("ssingles.zip") do set ROM=%%~a
call :INTO
for %%a in ("Master of Syougi") do set NWDIR=%%~a
for %%a in ("mosyougi.zip") do set ROM=%%~a
call :INTO
for %%a in ("System 1") do set NWDIR=%%~a
for %%a in ("gts1.zip") do set ROM=%%~a
call :INTO
for %%a in ("System 1 with sound board") do set NWDIR=%%~a
for %%a in ("gts1s.zip") do set ROM=%%~a
call :INTO
for %%a in ("System GX") do set NWDIR=%%~a
for %%a in ("konamigx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Syusse Oozumou") do set NWDIR=%%~a
for %%a in ("ssozumo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Syvalion") do set NWDIR=%%~a
for %%a in ("syvalion.zip") do set ROM=%%~a
call :INTO
for %%a in ("T.N.K III") do set NWDIR=%%~a
for %%a in ("tnk3.zip") do set ROM=%%~a
call :INTO
for %%a in ("T.T Mahjong") do set NWDIR=%%~a
for %%a in ("ttmahjng.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tac-Scan") do set NWDIR=%%~a
for %%a in ("tacscan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tactician") do set NWDIR=%%~a
for %%a in ("tactcian.zip") do set ROM=%%~a
call :INTO
for %%a in ("Taihou de Doboon") do set NWDIR=%%~a
for %%a in ("tdoboon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tail to Nose - Great Championship") do set NWDIR=%%~a
for %%a in ("tail2nos.zip") do set ROM=%%~a
call :INTO
for %%a in ("Taisen Hot Gimmick") do set NWDIR=%%~a
for %%a in ("hotgmck.zip") do set ROM=%%~a
call :INTO
for %%a in ("Taisen Hot Gimmick 3 Digital Surfing") do set NWDIR=%%~a
for %%a in ("hotgmck3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Taisen Hot Gimmick 4 Ever") do set NWDIR=%%~a
for %%a in ("hotgm4ev.zip") do set ROM=%%~a
call :INTO
for %%a in ("Taisen Hot Gimmick Kairakuten") do set NWDIR=%%~a
for %%a in ("hgkairak.zip") do set ROM=%%~a
call :INTO
for %%a in ("Taisen Idol-Mahjong Final Romance 2") do set NWDIR=%%~a
for %%a in ("fromanc2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Taisen Mahjong FinalRomance 4") do set NWDIR=%%~a
for %%a in ("fromanc4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Taisen Mahjong FinalRomance R") do set NWDIR=%%~a
for %%a in ("fromancr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Taisen Puzzle-dama") do set NWDIR=%%~a
for %%a in ("puzldama.zip") do set ROM=%%~a
call :INTO
for %%a in ("Taisen Tanto-R Sashissu!!") do set NWDIR=%%~a
for %%a in ("sasissu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Taisen Tokkae-dama") do set NWDIR=%%~a
for %%a in ("tokkae.zip") do set ROM=%%~a
call :INTO
for %%a in ("Taito Cup Finals") do set NWDIR=%%~a
for %%a in ("cupfinal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Taito FX1") do set NWDIR=%%~a
for %%a in ("taitofx1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Taito GNET") do set NWDIR=%%~a
for %%a in ("taitogn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Taito Power Goal") do set NWDIR=%%~a
for %%a in ("pwrgoal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Taiwan Mahjong") do set NWDIR=%%~a
for %%a in ("taiwanmb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Talbot") do set NWDIR=%%~a
for %%a in ("talbot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tang Tang") do set NWDIR=%%~a
for %%a in ("tangtang.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tank 8") do set NWDIR=%%~a
for %%a in ("tank8.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tank Battle") do set NWDIR=%%~a
for %%a in ("tankbatl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tank Busters") do set NWDIR=%%~a
for %%a in ("tankbust.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tank Force") do set NWDIR=%%~a
for %%a in ("tankfrce.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tao Taido") do set NWDIR=%%~a
for %%a in ("taotaido.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tapper") do set NWDIR=%%~a
for %%a in ("tapper.zip") do set ROM=%%~a
call :INTO
for %%a in ("Target Ball") do set NWDIR=%%~a
for %%a in ("tgtball.zip") do set ROM=%%~a
call :INTO
for %%a in ("Target Hits") do set NWDIR=%%~a
for %%a in ("targeth.zip") do set ROM=%%~a
call :INTO
for %%a in ("Target Panic") do set NWDIR=%%~a
for %%a in ("tgtpanic.zip") do set ROM=%%~a
call :INTO
for %%a in ("Task Force Harrier") do set NWDIR=%%~a
for %%a in ("tharrier.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tattoo Assassins") do set NWDIR=%%~a
for %%a in ("tattass.zip") do set ROM=%%~a
call :INTO
for %%a in ("Taxi Driver") do set NWDIR=%%~a
for %%a in ("taxidriv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tazz-Mania") do set NWDIR=%%~a
for %%a in ("tazmania.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tech Romancer") do set NWDIR=%%~a
for %%a in ("techromn.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Tecmo Bowl") do set NWDIR=%%~a
for %%a in ("pc_tbowl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tecmo Bowl") do set NWDIR=%%~a
for %%a in ("tbowl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tecmo World Cup") do set NWDIR=%%~a
for %%a in ("mp_twc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tecmo World Cup '90") do set NWDIR=%%~a
for %%a in ("wc90.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tecmo World Cup Millennium") do set NWDIR=%%~a
for %%a in ("tecmowcm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tecmo World Soccer '96") do set NWDIR=%%~a
for %%a in ("tws96.zip") do set ROM=%%~a
call :INTO
for %%a in ("TeddyBoy Blues") do set NWDIR=%%~a
for %%a in ("teddybb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tee'd Off") do set NWDIR=%%~a
for %%a in ("teedoff.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Teenage Mutant Ninja Turtles") do set NWDIR=%%~a
for %%a in ("pc_tmnt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Teenage Mutant Ninja Turtles") do set NWDIR=%%~a
for %%a in ("tmnt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Teenage Mutant Ninja Turtles - Turtles in Time") do set NWDIR=%%~a
for %%a in ("tmnt2.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Teenage Mutant Ninja Turtles II - The Arcade Game") do set NWDIR=%%~a
for %%a in ("pc_tmnt2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Teeter Torture") do set NWDIR=%%~a
for %%a in ("teetert.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tehkan World Cup") do set NWDIR=%%~a
for %%a in ("tehkanwc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Teki Paki") do set NWDIR=%%~a
for %%a in ("tekipaki.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tekken") do set NWDIR=%%~a
for %%a in ("tekken.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tekken 2 Ver.B") do set NWDIR=%%~a
for %%a in ("tekken2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tekken 3") do set NWDIR=%%~a
for %%a in ("tekken3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tekken Tag Tournament") do set NWDIR=%%~a
for %%a in ("tektagt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tel Jan") do set NWDIR=%%~a
for %%a in ("teljan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Telephone Mahjong") do set NWDIR=%%~a
for %%a in ("telmahjn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tempest") do set NWDIR=%%~a
for %%a in ("tempest.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ten Up") do set NWDIR=%%~a
for %%a in ("tenup.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tengai") do set NWDIR=%%~a
for %%a in ("tengai.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tenkomori Shooting") do set NWDIR=%%~a
for %%a in ("tenkomor.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Tennis") do set NWDIR=%%~a
for %%a in ("pc_tenis.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tennis") do set NWDIR=%%~a
for %%a in ("protennb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tenth Degree") do set NWDIR=%%~a
for %%a in ("tenthdeg.zip") do set ROM=%%~a
call :INTO
for %%a in ("Terminator 2 - Judgment Day") do set NWDIR=%%~a
for %%a in ("term2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Terra Cresta") do set NWDIR=%%~a
for %%a in ("terracre.zip") do set ROM=%%~a
call :INTO
for %%a in ("Terra Force") do set NWDIR=%%~a
for %%a in ("terraf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Terranean") do set NWDIR=%%~a
for %%a in ("cterrani.zip") do set ROM=%%~a
call :INTO
for %%a in ("Test Tape") do set NWDIR=%%~a
for %%a in ("ctsttape.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tetris") do set NWDIR=%%~a
for %%a in ("atetris.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tetris") do set NWDIR=%%~a
for %%a in ("phtetris.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tetris") do set NWDIR=%%~a
for %%a in ("tetris.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tetris") do set NWDIR=%%~a
for %%a in ("tetrisse.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tetris") do set NWDIR=%%~a
for %%a in ("tetrsark.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tetris - Bloxeed") do set NWDIR=%%~a
for %%a in ("tetrbx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tetris Plus") do set NWDIR=%%~a
for %%a in ("tetrisp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tetris Plus 2") do set NWDIR=%%~a
for %%a in ("tetrisp2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tetris the Absolute The Grand Master 2") do set NWDIR=%%~a
for %%a in ("tgm2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tetris The Grand Master") do set NWDIR=%%~a
for %%a in ("tgmj.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Amazing Adventures of Mr. F. Lea") do set NWDIR=%%~a
for %%a in ("mrflea.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Astyanax") do set NWDIR=%%~a
for %%a in ("astyanax.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Battle-Road") do set NWDIR=%%~a
for %%a in ("battroad.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Berenstain Bears in Big Paw's Cave") do set NWDIR=%%~a
for %%a in ("berenstn.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Berlin Wall") do set NWDIR=%%~a
for %%a in ("berlwall.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Big Pro Wrestling!") do set NWDIR=%%~a
for %%a in ("bigprowr.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Block Kuzushi") do set NWDIR=%%~a
for %%a in ("tblkkuzu.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Bounty") do set NWDIR=%%~a
for %%a in ("bounty.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Cliffhanger - Edward Randy") do set NWDIR=%%~a
for %%a in ("edrandy.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Combatribes") do set NWDIR=%%~a
for %%a in ("ctribe.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Couples") do set NWDIR=%%~a
for %%a in ("couple.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Crystal of Kings") do set NWDIR=%%~a
for %%a in ("crysking.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Dealer") do set NWDIR=%%~a
for %%a in ("dealer.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Deep") do set NWDIR=%%~a
for %%a in ("thedeep.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Electric Yo-Yo") do set NWDIR=%%~a
for %%a in ("elecyoyo.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Empire Strikes Back") do set NWDIR=%%~a
for %%a in ("esb.zip") do set ROM=%%~a
call :INTO
for %%a in ("The End") do set NWDIR=%%~a
for %%a in ("theend.zip") do set ROM=%%~a
call :INTO
for %%a in ("The FairyLand Story") do set NWDIR=%%~a
for %%a in ("flstory.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Final Round") do set NWDIR=%%~a
for %%a in ("fround.zip") do set ROM=%%~a
call :INTO
for %%a in ("The First Funky Fighter") do set NWDIR=%%~a
for %%a in ("funkyfig.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Game Paradise - Master of Shooting!") do set NWDIR=%%~a
for %%a in ("gametngk.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- The Goonies") do set NWDIR=%%~a
for %%a in ("pc_goons.zip") do set ROM=%%~a
call :INTO
for %%a in ("The History of Martial Arts") do set NWDIR=%%~a
for %%a in ("histryma.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Irritating Maze") do set NWDIR=%%~a
for %%a in ("irrmaze.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Karate Tournament") do set NWDIR=%%~a
for %%a in ("karatour.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Killing Blade") do set NWDIR=%%~a
for %%a in ("killbld.zip") do set ROM=%%~a
call :INTO
for %%a in ("The King of Dragons") do set NWDIR=%%~a
for %%a in ("kod.zip") do set ROM=%%~a
call :INTO
for %%a in ("The King of Fighters 2000") do set NWDIR=%%~a
for %%a in ("kof2000.zip") do set ROM=%%~a
call :INTO
for %%a in ("The King of Fighters 2001") do set NWDIR=%%~a
for %%a in ("kof2001.zip") do set ROM=%%~a
call :INTO
for %%a in ("The King of Fighters 2002") do set NWDIR=%%~a
for %%a in ("kof2002.zip") do set ROM=%%~a
call :INTO
for %%a in ("The King of Fighters 2003") do set NWDIR=%%~a
for %%a in ("kf2k3pcb.zip") do set ROM=%%~a
call :INTO
for %%a in ("The King of Fighters 2003") do set NWDIR=%%~a
for %%a in ("kof2003.zip") do set ROM=%%~a
call :INTO
for %%a in ("The King of Fighters '94") do set NWDIR=%%~a
for %%a in ("kof94.zip") do set ROM=%%~a
call :INTO
for %%a in ("The King of Fighters '95") do set NWDIR=%%~a
for %%a in ("kof95.zip") do set ROM=%%~a
call :INTO
for %%a in ("The King of Fighters '96") do set NWDIR=%%~a
for %%a in ("kof96.zip") do set ROM=%%~a
call :INTO
for %%a in ("The King of Fighters '97") do set NWDIR=%%~a
for %%a in ("kof97.zip") do set ROM=%%~a
call :INTO
for %%a in ("The King of Fighters '98 - The Slugfest") do set NWDIR=%%~a
for %%a in ("kof98.zip") do set ROM=%%~a
call :INTO
for %%a in ("The King of Fighters '99 - Millennium Battle") do set NWDIR=%%~a
for %%a in ("kof99.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Last Blade") do set NWDIR=%%~a
for %%a in ("lastblad.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Last Blade 2") do set NWDIR=%%~a
for %%a in ("lastbld2.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Last Day") do set NWDIR=%%~a
for %%a in ("lastday.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Last Starfighter") do set NWDIR=%%~a
for %%a in ("laststar.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Legend of Kage") do set NWDIR=%%~a
for %%a in ("lkage.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Legend of Silkroad") do set NWDIR=%%~a
for %%a in ("silkroad.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Lost Castle In Darkmist") do set NWDIR=%%~a
for %%a in ("darkmist.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Mah-jong") do set NWDIR=%%~a
for %%a in ("themj.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Main Event") do set NWDIR=%%~a
for %%a in ("mainevt.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Masters of Kin") do set NWDIR=%%~a
for %%a in ("mastkin.zip") do set ROM=%%~a
call :INTO
for %%a in ("The NewZealand Story") do set NWDIR=%%~a
for %%a in ("tnzs.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Next Space") do set NWDIR=%%~a
for %%a in ("tnextspc.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Ninja Kids") do set NWDIR=%%~a
for %%a in ("ninjak.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Ninja Warriors") do set NWDIR=%%~a
for %%a in ("ninjaw.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Percussor") do set NWDIR=%%~a
for %%a in ("percuss.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Pit") do set NWDIR=%%~a
for %%a in ("thepit.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Pit Boss") do set NWDIR=%%~a
for %%a in ("pitboss.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Punisher") do set NWDIR=%%~a
for %%a in ("punisher.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Real Ghostbusters") do set NWDIR=%%~a
for %%a in ("ghostb.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Real Ghostbusters") do set NWDIR=%%~a
for %%a in ("roishtar.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Return of Lady Frog") do set NWDIR=%%~a
for %%a in ("roldfrog.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Simpsons") do set NWDIR=%%~a
for %%a in ("simpsons.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Speed Rumbler") do set NWDIR=%%~a
for %%a in ("srumbler.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Super Spy") do set NWDIR=%%~a
for %%a in ("superspy.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Three Stooges In Brides Is Brides") do set NWDIR=%%~a
for %%a in ("3stooges.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Tin Star") do set NWDIR=%%~a
for %%a in ("tinstar.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Tower of Druaga") do set NWDIR=%%~a
for %%a in ("todruaga.zip") do set ROM=%%~a
call :INTO
for %%a in ("The Ultimate 11 - The SNK Football Championship") do set NWDIR=%%~a
for %%a in ("ssideki4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Thrash Rally") do set NWDIR=%%~a
for %%a in ("trally.zip") do set ROM=%%~a
call :INTO
for %%a in ("Three Ds - Three Dealers Casino House") do set NWDIR=%%~a
for %%a in ("3ds.zip") do set ROM=%%~a
call :INTO
for %%a in ("Three Wonders") do set NWDIR=%%~a
for %%a in ("3wonders.zip") do set ROM=%%~a
call :INTO
for %%a in ("Thunder & Lightning") do set NWDIR=%%~a
for %%a in ("thunderl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Thunder Blade") do set NWDIR=%%~a
for %%a in ("thndrbld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Thunder Ceptor") do set NWDIR=%%~a
for %%a in ("tceptor.zip") do set ROM=%%~a
call :INTO
for %%a in ("Thunder Cross") do set NWDIR=%%~a
for %%a in ("thunderx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Thunder Cross II") do set NWDIR=%%~a
for %%a in ("thndrx2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Thunder Dragon") do set NWDIR=%%~a
for %%a in ("tdragon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Thunder Dragon 2") do set NWDIR=%%~a
for %%a in ("tdragon2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Thunder Fox") do set NWDIR=%%~a
for %%a in ("thundfox.zip") do set ROM=%%~a
call :INTO
for %%a in ("Thunder Heroes") do set NWDIR=%%~a
for %%a in ("theroes.zip") do set ROM=%%~a
call :INTO
for %%a in ("Thunder Hoop") do set NWDIR=%%~a
for %%a in ("thoop.zip") do set ROM=%%~a
call :INTO
for %%a in ("Thunder Strike") do set NWDIR=%%~a
for %%a in ("tstrike.zip") do set ROM=%%~a
call :INTO
for %%a in ("Thunder Zone") do set NWDIR=%%~a
for %%a in ("thndzone.zip") do set ROM=%%~a
call :INTO
for %%a in ("Thundercade - Twin Formation") do set NWDIR=%%~a
for %%a in ("tndrcade.zip") do set ROM=%%~a
call :INTO
for %%a in ("ThunderForce AC") do set NWDIR=%%~a
for %%a in ("tfrceac.zip") do set ROM=%%~a
call :INTO
for %%a in ("ThunderJaws") do set NWDIR=%%~a
for %%a in ("thunderj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tic Tac Trivia") do set NWDIR=%%~a
for %%a in ("tictac.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tickee Tickats") do set NWDIR=%%~a
for %%a in ("tickee.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tiger Heli") do set NWDIR=%%~a
for %%a in ("tigerh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tiger Hook") do set NWDIR=%%~a
for %%a in ("tighook.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tiger Road") do set NWDIR=%%~a
for %%a in ("tigeroad.zip") do set ROM=%%~a
call :INTO
for %%a in ("Timber") do set NWDIR=%%~a
for %%a in ("timber.zip") do set ROM=%%~a
call :INTO
for %%a in ("Time Crisis") do set NWDIR=%%~a
for %%a in ("timecris.zip") do set ROM=%%~a
call :INTO
for %%a in ("Time Killers") do set NWDIR=%%~a
for %%a in ("timekill.zip") do set ROM=%%~a
call :INTO
for %%a in ("Time Limit") do set NWDIR=%%~a
for %%a in ("timelimt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Time Pilot") do set NWDIR=%%~a
for %%a in ("timeplt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Time Pilot '84") do set NWDIR=%%~a
for %%a in ("tp84.zip") do set ROM=%%~a
call :INTO
for %%a in ("Time Scanner") do set NWDIR=%%~a
for %%a in ("timescan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Time Soldiers") do set NWDIR=%%~a
for %%a in ("timesold.zip") do set ROM=%%~a
call :INTO
for %%a in ("Time Tunnel") do set NWDIR=%%~a
for %%a in ("timetunl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tinkle Pit") do set NWDIR=%%~a
for %%a in ("tinklpit.zip") do set ROM=%%~a
call :INTO
for %%a in ("Title Fight") do set NWDIR=%%~a
for %%a in ("titlef.zip") do set ROM=%%~a
call :INTO
for %%a in ("T-MEK") do set NWDIR=%%~a
for %%a in ("tmek.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tobikose! Jumpman") do set NWDIR=%%~a
for %%a in ("tjumpman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Toffy") do set NWDIR=%%~a
for %%a in ("toffy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Toggle") do set NWDIR=%%~a
for %%a in ("toggle.zip") do set ROM=%%~a
call :INTO
for %%a in ("Toki") do set NWDIR=%%~a
for %%a in ("toki.zip") do set ROM=%%~a
call :INTO
for %%a in ("Toki no Senshi - Chrono Soldier") do set NWDIR=%%~a
for %%a in ("tokisens.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tokimeki Mahjong Paradise - Dear My Love") do set NWDIR=%%~a
for %%a in ("tmmjprd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tokimeki Memorial Taisen Puzzle-dama") do set NWDIR=%%~a
for %%a in ("tkmmpzdm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tokoro San no MahMahjan") do set NWDIR=%%~a
for %%a in ("mahmajn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tokoro San no MahMahjan 2") do set NWDIR=%%~a
for %%a in ("mahmajn2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tokyo Gal Zukan") do set NWDIR=%%~a
for %%a in ("tokyogal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tomahawk 777") do set NWDIR=%%~a
for %%a in ("tomahawk.zip") do set ROM=%%~a
call :INTO
for %%a in ("TomCat") do set NWDIR=%%~a
for %%a in ("tomcat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tondemo Crisis") do set NWDIR=%%~a
for %%a in ("tondemo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tonton") do set NWDIR=%%~a
for %%a in ("tontonb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Toobin'") do set NWDIR=%%~a
for %%a in ("toobin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Top Gunner") do set NWDIR=%%~a
for %%a in ("topgunnr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Top Hunter - Roddy & Cathy") do set NWDIR=%%~a
for %%a in ("tophuntr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Top Player's Golf") do set NWDIR=%%~a
for %%a in ("tpgolf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Top Ranking Stars") do set NWDIR=%%~a
for %%a in ("trstar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Top Roller") do set NWDIR=%%~a
for %%a in ("toprollr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Top Secret") do set NWDIR=%%~a
for %%a in ("topsecex.zip") do set ROM=%%~a
call :INTO
for %%a in ("Top Shooter") do set NWDIR=%%~a
for %%a in ("topshoot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Top Speed") do set NWDIR=%%~a
for %%a in ("topspeed.zip") do set ROM=%%~a
call :INTO
for %%a in ("Toppy & Rappy") do set NWDIR=%%~a
for %%a in ("toppyrap.zip") do set ROM=%%~a
call :INTO
for %%a in ("Toride II Adauchi Gaiden") do set NWDIR=%%~a
for %%a in ("toride2g.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tornado") do set NWDIR=%%~a
for %%a in ("ctornado.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tornado Baseball - Ball Park") do set NWDIR=%%~a
for %%a in ("tornbase.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tortuga Family") do set NWDIR=%%~a
for %%a in ("tortufam.zip") do set ROM=%%~a
call :INTO
for %%a in ("Torus") do set NWDIR=%%~a
for %%a in ("torus.zip") do set ROM=%%~a
call :INTO
for %%a in ("Toryumon") do set NWDIR=%%~a
for %%a in ("toryumon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Total Carnage") do set NWDIR=%%~a
for %%a in ("totcarn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tottemo E Jong") do set NWDIR=%%~a
for %%a in ("totmejan.zip") do set ROM=%%~a
call :INTO
for %%a in ("TouchDown Fever") do set NWDIR=%%~a
for %%a in ("tdfever.zip") do set ROM=%%~a
call :INTO
for %%a in ("Touche Me") do set NWDIR=%%~a
for %%a in ("toucheme.zip") do set ROM=%%~a
call :INTO
for %%a in ("Touchmaster") do set NWDIR=%%~a
for %%a in ("tm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Touchmaster 2000 Plus") do set NWDIR=%%~a
for %%a in ("tm2k.zip") do set ROM=%%~a
call :INTO
for %%a in ("Touchmaster 3000") do set NWDIR=%%~a
for %%a in ("tm3k.zip") do set ROM=%%~a
call :INTO
for %%a in ("Touchmaster 4000") do set NWDIR=%%~a
for %%a in ("tm4k.zip") do set ROM=%%~a
call :INTO
for %%a in ("Touchmaster 5000") do set NWDIR=%%~a
for %%a in ("tm5k.zip") do set ROM=%%~a
call :INTO
for %%a in ("Touchmaster 7000") do set NWDIR=%%~a
for %%a in ("tm7k.zip") do set ROM=%%~a
call :INTO
for %%a in ("Touchmaster 8000") do set NWDIR=%%~a
for %%a in ("tm8k.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tougenkyou") do set NWDIR=%%~a
for %%a in ("togenkyo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tough Turf") do set NWDIR=%%~a
for %%a in ("tturf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Toukidenshou - Angel Eyes") do set NWDIR=%%~a
for %%a in ("tkdensho.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tour 4000") do set NWDIR=%%~a
for %%a in ("tour4000.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tour 4010") do set NWDIR=%%~a
for %%a in ("tour4010.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tournament Pro Golf") do set NWDIR=%%~a
for %%a in ("cprogolf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tournament Table") do set NWDIR=%%~a
for %%a in ("tourtabl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Toy Land Adventure") do set NWDIR=%%~a
for %%a in ("toyland.zip") do set ROM=%%~a
call :INTO
for %%a in ("Toypop") do set NWDIR=%%~a
for %%a in ("toypop.zip") do set ROM=%%~a
call :INTO
for %%a in ("TPS") do set NWDIR=%%~a
for %%a in ("tps.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Track & Field") do set NWDIR=%%~a
for %%a in ("pc_tkfld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Track & Field") do set NWDIR=%%~a
for %%a in ("trackfld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tranquillizer Gun") do set NWDIR=%%~a
for %%a in ("tranqgun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Transformer") do set NWDIR=%%~a
for %%a in ("transfrm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Traverse USA - Zippy Race") do set NWDIR=%%~a
for %%a in ("travrusa.zip") do set ROM=%%~a
call :INTO
for %%a in ("Treasure Bonus") do set NWDIR=%%~a
for %%a in ("stisub.zip") do set ROM=%%~a
call :INTO
for %%a in ("Treasure Island") do set NWDIR=%%~a
for %%a in ("ctisland.zip") do set ROM=%%~a
call :INTO
for %%a in ("Treasure Island") do set NWDIR=%%~a
for %%a in ("tisub.zip") do set ROM=%%~a
call :INTO
for %%a in ("Treble Top") do set NWDIR=%%~a
for %%a in ("trebltop.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trick Trap") do set NWDIR=%%~a
for %%a in ("tricktrp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tricky Doc") do set NWDIR=%%~a
for %%a in ("trckydoc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trio The Punch - Never Forget Me...") do set NWDIR=%%~a
for %%a in ("triothep.zip") do set ROM=%%~a
call :INTO
for %%a in ("Triple Draw Poker") do set NWDIR=%%~a
for %%a in ("tdpgal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Triple Punch") do set NWDIR=%%~a
for %%a in ("triplep.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tri-Pool") do set NWDIR=%%~a
for %%a in ("tripool.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tri-Sports") do set NWDIR=%%~a
for %%a in ("trisport.zip") do set ROM=%%~a
call :INTO
for %%a in ("Triv Four") do set NWDIR=%%~a
for %%a in ("statriv4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Triv Quiz") do set NWDIR=%%~a
for %%a in ("trivquiz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Triv Two") do set NWDIR=%%~a
for %%a in ("statriv2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivia") do set NWDIR=%%~a
for %%a in ("gt507uk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivia") do set NWDIR=%%~a
for %%a in ("gtsers1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivia") do set NWDIR=%%~a
for %%a in ("gtsers8.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivia Whiz Edition 2") do set NWDIR=%%~a
for %%a in ("trvwz2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivia Whiz Edition 3") do set NWDIR=%%~a
for %%a in ("trvwz3h.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivia Whiz Edition 4") do set NWDIR=%%~a
for %%a in ("trvwz4.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivia Whiz Horizontal") do set NWDIR=%%~a
for %%a in ("trvwzh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivia Hangup") do set NWDIR=%%~a
for %%a in ("trvhang.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivia Master") do set NWDIR=%%~a
for %%a in ("trvmstr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivia Quest") do set NWDIR=%%~a
for %%a in ("trvquest.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivial Pursuit") do set NWDIR=%%~a
for %%a in ("trivia12.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivial Pursuit") do set NWDIR=%%~a
for %%a in ("triviabb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivial Pursuit") do set NWDIR=%%~a
for %%a in ("triviaes.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivial Pursuit") do set NWDIR=%%~a
for %%a in ("triviag1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivial Pursuit") do set NWDIR=%%~a
for %%a in ("triviag2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivial Pursuit") do set NWDIR=%%~a
for %%a in ("trivialp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivial Pursuit") do set NWDIR=%%~a
for %%a in ("triviasp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trivial Pursuit") do set NWDIR=%%~a
for %%a in ("triviayp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trog") do set NWDIR=%%~a
for %%a in ("trog.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Trojan") do set NWDIR=%%~a
for %%a in ("pc_trjan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trojan") do set NWDIR=%%~a
for %%a in ("trojan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tron") do set NWDIR=%%~a
for %%a in ("tron.zip") do set ROM=%%~a
call :INTO
for %%a in ("Trophy Hunting - Bear & Moose") do set NWDIR=%%~a
for %%a in ("trophyh.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tropical Angel") do set NWDIR=%%~a
for %%a in ("troangel.zip") do set ROM=%%~a
call :INTO
for %%a in ("Truco-Tron") do set NWDIR=%%~a
for %%a in ("truco.zip") do set ROM=%%~a
call :INTO
for %%a in ("Truxton") do set NWDIR=%%~a
for %%a in ("truxton.zip") do set ROM=%%~a
call :INTO
for %%a in ("Truxton II") do set NWDIR=%%~a
for %%a in ("truxton2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tube Panic") do set NWDIR=%%~a
for %%a in ("tubep.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tugboat") do set NWDIR=%%~a
for %%a in ("tugboat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tumble Pop") do set NWDIR=%%~a
for %%a in ("tumblep.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tunnel Hunt") do set NWDIR=%%~a
for %%a in ("tunhunt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Turbo Force") do set NWDIR=%%~a
for %%a in ("turbofrc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Turbo Out Run") do set NWDIR=%%~a
for %%a in ("toutrun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Turbo Sub") do set NWDIR=%%~a
for %%a in ("turbosub.zip") do set ROM=%%~a
call :INTO
for %%a in ("Turbo Tag") do set NWDIR=%%~a
for %%a in ("turbotag.zip") do set ROM=%%~a
call :INTO
for %%a in ("Turkey Hunting USA") do set NWDIR=%%~a
for %%a in ("turkhunt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Turkey Shoot") do set NWDIR=%%~a
for %%a in ("tshoot.zip") do set ROM=%%~a
call :INTO
for %%a in ("Turtle Ship") do set NWDIR=%%~a
for %%a in ("turtship.zip") do set ROM=%%~a
call :INTO
for %%a in ("Turtles") do set NWDIR=%%~a
for %%a in ("turtles.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tutankham") do set NWDIR=%%~a
for %%a in ("tutankhm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Tut's Tomb") do set NWDIR=%%~a
for %%a in ("tutstomb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Twin Action") do set NWDIR=%%~a
for %%a in ("twinactn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Twin Adventure") do set NWDIR=%%~a
for %%a in ("twinadv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Twin Bee Yahhoo!") do set NWDIR=%%~a
for %%a in ("tbyahhoo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Twin Brats") do set NWDIR=%%~a
for %%a in ("twinbrat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Twin Cobra") do set NWDIR=%%~a
for %%a in ("twincobr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Twin Cobra II") do set NWDIR=%%~a
for %%a in ("tcobra2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Twin Eagle - Revenge Joe's Brother") do set NWDIR=%%~a
for %%a in ("twineagl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Twin Eagle II - The Rescue Mission") do set NWDIR=%%~a
for %%a in ("twineag2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Twin Falcons") do set NWDIR=%%~a
for %%a in ("twinfalc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Twin Hawk") do set NWDIR=%%~a
for %%a in ("twinhawk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Twin Qix") do set NWDIR=%%~a
for %%a in ("twinqix.zip") do set ROM=%%~a
call :INTO
for %%a in ("Twin Squash") do set NWDIR=%%~a
for %%a in ("twinsqua.zip") do set ROM=%%~a
call :INTO
for %%a in ("TwinBee") do set NWDIR=%%~a
for %%a in ("twinbee.zip") do set ROM=%%~a
call :INTO
for %%a in ("Twinkle") do set NWDIR=%%~a
for %%a in ("twinkle.zip") do set ROM=%%~a
call :INTO
for %%a in ("Twinkle Star Sprites") do set NWDIR=%%~a
for %%a in ("twinspri.zip") do set ROM=%%~a
call :INTO
for %%a in ("Twinkle System") do set NWDIR=%%~a
for %%a in ("gq863.zip") do set ROM=%%~a
call :INTO
for %%a in ("Twins") do set NWDIR=%%~a
for %%a in ("twins.zip") do set ROM=%%~a
call :INTO
for %%a in ("TX-1") do set NWDIR=%%~a
for %%a in ("tx1.zip") do set ROM=%%~a
call :INTO
for %%a in ("U.N. Defense Force - Earth Joker") do set NWDIR=%%~a
for %%a in ("earthjkr.zip") do set ROM=%%~a
call :INTO
for %%a in ("U.N. Squadron") do set NWDIR=%%~a
for %%a in ("unsquad.zip") do set ROM=%%~a
call :INTO
for %%a in ("U.S. Championship V'ball") do set NWDIR=%%~a
for %%a in ("vball.zip") do set ROM=%%~a
call :INTO
for %%a in ("U.S. Classic") do set NWDIR=%%~a
for %%a in ("usclssic.zip") do set ROM=%%~a
call :INTO
for %%a in ("Uchuu Tokkyuu Medalian") do set NWDIR=%%~a
for %%a in ("ucytokyu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ufo Senshi Yohko Chan") do set NWDIR=%%~a
for %%a in ("ufosensi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ultimate Mortal Kombat 3") do set NWDIR=%%~a
for %%a in ("umk3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ultimate Tennis") do set NWDIR=%%~a
for %%a in ("ultennis.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ultra Balloon") do set NWDIR=%%~a
for %%a in ("uballoon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ultra Maru-hi Mahjong") do set NWDIR=%%~a
for %%a in ("ultramhm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ultra Tank") do set NWDIR=%%~a
for %%a in ("ultratnk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ultra Toukon Densetsu") do set NWDIR=%%~a
for %%a in ("utoukond.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ultra X Weapons - Ultra Keibitai") do set NWDIR=%%~a
for %%a in ("ultrax.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ultraman") do set NWDIR=%%~a
for %%a in ("ultraman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ultraman Club - Tatakae! Ultraman Kyoudai!!") do set NWDIR=%%~a
for %%a in ("umanclub.zip") do set ROM=%%~a
call :INTO
for %%a in ("Umi de Poker - Marine Paradise") do set NWDIR=%%~a
for %%a in ("umipoker.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Uncle Fester's Quest - The Addams Family") do set NWDIR=%%~a
for %%a in ("pc_ftqst.zip") do set ROM=%%~a
call :INTO
for %%a in ("Uncle Poo") do set NWDIR=%%~a
for %%a in ("unclepoo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Under Fire") do set NWDIR=%%~a
for %%a in ("undrfire.zip") do set ROM=%%~a
call :INTO
for %%a in ("Undercover Cops") do set NWDIR=%%~a
for %%a in ("uccops.zip") do set ROM=%%~a
call :INTO
for %%a in ("UniWar S") do set NWDIR=%%~a
for %%a in ("uniwars.zip") do set ROM=%%~a
call :INTO
for %%a in ("unknown fighting game 'BB'") do set NWDIR=%%~a
for %%a in ("bbprot.zip") do set ROM=%%~a
call :INTO
for %%a in ("unknown Japanese horse gambling game") do set NWDIR=%%~a
for %%a in ("unkhorse.zip") do set ROM=%%~a
call :INTO
for %%a in ("unknown Pac-Man gambling game") do set NWDIR=%%~a
for %%a in ("unkpacg.zip") do set ROM=%%~a
call :INTO
for %%a in ("Untouchable") do set NWDIR=%%~a
for %%a in ("untoucha.zip") do set ROM=%%~a
call :INTO
for %%a in ("Up Scope") do set NWDIR=%%~a
for %%a in ("upscope.zip") do set ROM=%%~a
call :INTO
for %%a in ("Up Your Alley") do set NWDIR=%%~a
for %%a in ("upyoural.zip") do set ROM=%%~a
call :INTO
for %%a in ("Up'n Down") do set NWDIR=%%~a
for %%a in ("upndown.zip") do set ROM=%%~a
call :INTO
for %%a in ("US AAF Mustang") do set NWDIR=%%~a
for %%a in ("mustang.zip") do set ROM=%%~a
call :INTO
for %%a in ("Us") do set NWDIR=%%~a
for %%a in ("usvsthem.zip") do set ROM=%%~a
call :INTO
for %%a in ("Usagi") do set NWDIR=%%~a
for %%a in ("usagi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Valkyrie No Densetsu") do set NWDIR=%%~a
for %%a in ("valkyrie.zip") do set ROM=%%~a
call :INTO
for %%a in ("Valtric") do set NWDIR=%%~a
for %%a in ("valtric.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vamf x1-2") do set NWDIR=%%~a
for %%a in ("vamphalf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vampire Hunter 2 - Darkstalkers Revenge") do set NWDIR=%%~a
for %%a in ("vhunt2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vampire Savior 2 - The Lord of Vampire") do set NWDIR=%%~a
for %%a in ("vsav2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vampire Savior - The Lord of Vampire") do set NWDIR=%%~a
for %%a in ("vsav.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vandyke") do set NWDIR=%%~a
for %%a in ("vandyke.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vanguard II") do set NWDIR=%%~a
for %%a in ("vangrd2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Van-Van Car") do set NWDIR=%%~a
for %%a in ("vanvan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vapor Trail - Hyper Offence Formation") do set NWDIR=%%~a
for %%a in ("vaportra.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vapor TRX") do set NWDIR=%%~a
for %%a in ("vaportrx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Varia Metal") do set NWDIR=%%~a
for %%a in ("vmetal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Varth - Operation Thunderstorm") do set NWDIR=%%~a
for %%a in ("varth.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vasara") do set NWDIR=%%~a
for %%a in ("vasara.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vasara 2") do set NWDIR=%%~a
for %%a in ("vasara2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vastar") do set NWDIR=%%~a
for %%a in ("vastar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vegas Roulette") do set NWDIR=%%~a
for %%a in ("vroulet.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vendetta") do set NWDIR=%%~a
for %%a in ("vendetta.zip") do set ROM=%%~a
call :INTO
for %%a in ("Venture") do set NWDIR=%%~a
for %%a in ("venture.zip") do set ROM=%%~a
call :INTO
for %%a in ("Versus Net Soccer") do set NWDIR=%%~a
for %%a in ("vsnetscr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vicious Circle") do set NWDIR=%%~a
for %%a in ("vcircle.zip") do set ROM=%%~a
call :INTO
for %%a in ("Victor 21") do set NWDIR=%%~a
for %%a in ("victor21.zip") do set ROM=%%~a
call :INTO
for %%a in ("Victor 6") do set NWDIR=%%~a
for %%a in ("victor6.zip") do set ROM=%%~a
call :INTO
for %%a in ("Victorious Nine") do set NWDIR=%%~a
for %%a in ("victnine.zip") do set ROM=%%~a
call :INTO
for %%a in ("Victory") do set NWDIR=%%~a
for %%a in ("victory.zip") do set ROM=%%~a
call :INTO
for %%a in ("Victory Road") do set NWDIR=%%~a
for %%a in ("victroad.zip") do set ROM=%%~a
call :INTO
for %%a in ("Video Carnival 1999 - Super Royal Card") do set NWDIR=%%~a
for %%a in ("vcarn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Video Eight Ball") do set NWDIR=%%~a
for %%a in ("8ball.zip") do set ROM=%%~a
call :INTO
for %%a in ("Video Hustler") do set NWDIR=%%~a
for %%a in ("hustler.zip") do set ROM=%%~a
call :INTO
for %%a in ("Video Pinball") do set NWDIR=%%~a
for %%a in ("videopin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Video Poker") do set NWDIR=%%~a
for %%a in ("videopkr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Video Quiz") do set NWDIR=%%~a
for %%a in ("quizvid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Video System PSX") do set NWDIR=%%~a
for %%a in ("vspsx.zip") do set ROM=%%~a
call :INTO
for %%a in ("Video Vince and the Game Factory") do set NWDIR=%%~a
for %%a in ("vidvince.zip") do set ROM=%%~a
call :INTO
for %%a in ("Viewpoint") do set NWDIR=%%~a
for %%a in ("viewpoin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vigilante") do set NWDIR=%%~a
for %%a in ("vigilant.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vimana") do set NWDIR=%%~a
for %%a in ("vimana.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vindicators") do set NWDIR=%%~a
for %%a in ("vindictr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vindicators Part II") do set NWDIR=%%~a
for %%a in ("vindctr2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Violence Fight") do set NWDIR=%%~a
for %%a in ("viofight.zip") do set ROM=%%~a
call :INTO
for %%a in ("Violent Storm") do set NWDIR=%%~a
for %%a in ("viostorm.zip") do set ROM=%%~a
call :INTO
for %%a in ("Viper") do set NWDIR=%%~a
for %%a in ("viper.zip") do set ROM=%%~a
call :INTO
for %%a in ("Viper Phase 1") do set NWDIR=%%~a
for %%a in ("viprp1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Virtua Bowling") do set NWDIR=%%~a
for %%a in ("vbowl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Virtua Fighter") do set NWDIR=%%~a
for %%a in ("vf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Virtua Fighter Kids") do set NWDIR=%%~a
for %%a in ("vfkids.zip") do set ROM=%%~a
call :INTO
for %%a in ("Virtua Racing") do set NWDIR=%%~a
for %%a in ("vr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Virtual Mahjong") do set NWDIR=%%~a
for %%a in ("vmahjong.zip") do set ROM=%%~a
call :INTO
for %%a in ("Virtual Mahjong 2 - My Fair Lady") do set NWDIR=%%~a
for %%a in ("myfairld.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vivid Dolls") do set NWDIR=%%~a
for %%a in ("vivdolls.zip") do set ROM=%%~a
call :INTO
for %%a in ("V-Liner") do set NWDIR=%%~a
for %%a in ("vliner.zip") do set ROM=%%~a
call :INTO
for %%a in ("Volfied") do set NWDIR=%%~a
for %%a in ("volfied.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Volley Ball") do set NWDIR=%%~a
for %%a in ("pc_vball.zip") do set ROM=%%~a
call :INTO
for %%a in ("Voltage Fighter - Gowcaizer - Choujin Gakuen Gowcaizer") do set NWDIR=%%~a
for %%a in ("gowcaizr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vortex") do set NWDIR=%%~a
for %%a in ("vortex.zip") do set ROM=%%~a
call :INTO
for %%a in ("VS Block Breaker") do set NWDIR=%%~a
for %%a in ("vblokbrk.zip") do set ROM=%%~a
call :INTO
for %%a in ("VS Gong Fight") do set NWDIR=%%~a
for %%a in ("vsgongf.zip") do set ROM=%%~a
call :INTO
for %%a in ("VS Mahjong Otome Ryouran") do set NWDIR=%%~a
for %%a in ("ryouran.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Atari R.B.I. Baseball") do set NWDIR=%%~a
for %%a in ("rbibb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Balloon Fight") do set NWDIR=%%~a
for %%a in ("balonfgt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. BaseBall") do set NWDIR=%%~a
for %%a in ("vsbball.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Battle City") do set NWDIR=%%~a
for %%a in ("btlecity.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Castlevania") do set NWDIR=%%~a
for %%a in ("cstlevna.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Clu Clu Land") do set NWDIR=%%~a
for %%a in ("cluclu.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Dr. Mario") do set NWDIR=%%~a
for %%a in ("drmario.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Duck Hunt") do set NWDIR=%%~a
for %%a in ("duckhunt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Excitebike") do set NWDIR=%%~a
for %%a in ("excitebk.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Freedom Force") do set NWDIR=%%~a
for %%a in ("vsfdf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Gradius") do set NWDIR=%%~a
for %%a in ("vsgradus.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Gumshoe") do set NWDIR=%%~a
for %%a in ("vsgshoe.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Hogan's Alley") do set NWDIR=%%~a
for %%a in ("hogalley.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Hot Smash") do set NWDIR=%%~a
for %%a in ("hotsmash.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Ice Climber") do set NWDIR=%%~a
for %%a in ("iceclimb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Ice Climber Dual") do set NWDIR=%%~a
for %%a in ("iceclmrj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Janshi Brandnew Stars") do set NWDIR=%%~a
for %%a in ("bnstars1.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Mach Rider") do set NWDIR=%%~a
for %%a in ("machridr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Mahjang") do set NWDIR=%%~a
for %%a in ("vsmahjng.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Mighty Bomb Jack") do set NWDIR=%%~a
for %%a in ("mightybj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Ninja Jajamaru Kun") do set NWDIR=%%~a
for %%a in ("jajamaru.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Pinball") do set NWDIR=%%~a
for %%a in ("vspinbal.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Platoon") do set NWDIR=%%~a
for %%a in ("platoon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Raid on Bungeling Bay") do set NWDIR=%%~a
for %%a in ("bnglngby.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Slalom") do set NWDIR=%%~a
for %%a in ("vsslalom.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Soccer") do set NWDIR=%%~a
for %%a in ("vssoccer.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Star Luster") do set NWDIR=%%~a
for %%a in ("starlstr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Stroke & Match Golf") do set NWDIR=%%~a
for %%a in ("smgolf.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Super Mario Bros.") do set NWDIR=%%~a
for %%a in ("suprmrio.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Super SkyKid") do set NWDIR=%%~a
for %%a in ("vsskykid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Super Xevious") do set NWDIR=%%~a
for %%a in ("supxevs.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. T.K.O. Boxing") do set NWDIR=%%~a
for %%a in ("tkoboxng.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Tennis") do set NWDIR=%%~a
for %%a in ("vstennis.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Tetris") do set NWDIR=%%~a
for %%a in ("vstetris.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. The Goonies") do set NWDIR=%%~a
for %%a in ("goonies.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Top Gun") do set NWDIR=%%~a
for %%a in ("topgun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vs. Wrecking Crew") do set NWDIR=%%~a
for %%a in ("wrecking.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vulcan Venture") do set NWDIR=%%~a
for %%a in ("vulcan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Vulgus") do set NWDIR=%%~a
for %%a in ("vulgus.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wacko") do set NWDIR=%%~a
for %%a in ("wacko.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wai Wai Jockey Gate-In!") do set NWDIR=%%~a
for %%a in ("wwjgtin.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wakakusamonogatari Mahjong Yonshimai") do set NWDIR=%%~a
for %%a in ("mj4simai.zip") do set ROM=%%~a
call :INTO
for %%a in ("Waku Waku 7") do set NWDIR=%%~a
for %%a in ("wakuwak7.zip") do set ROM=%%~a
call :INTO
for %%a in ("Waku Waku Doubutsu Land TonTon") do set NWDIR=%%~a
for %%a in ("tonton.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wall Crash") do set NWDIR=%%~a
for %%a in ("wallc.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wall Street") do set NWDIR=%%~a
for %%a in ("wallst.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wally wo Sagase!") do set NWDIR=%%~a
for %%a in ("wwallyj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wanted") do set NWDIR=%%~a
for %%a in ("wanted.zip") do set ROM=%%~a
call :INTO
for %%a in ("War Gods") do set NWDIR=%%~a
for %%a in ("wargods.zip") do set ROM=%%~a
call :INTO
for %%a in ("War of Aero - Project MEIOU") do set NWDIR=%%~a
for %%a in ("wrofaero.zip") do set ROM=%%~a
call :INTO
for %%a in ("War of the Bugs or Monsterous Manouvers in a Mushroom Maze") do set NWDIR=%%~a
for %%a in ("warofbug.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wardner") do set NWDIR=%%~a
for %%a in ("wardner.zip") do set ROM=%%~a
call :INTO
for %%a in ("Warlords") do set NWDIR=%%~a
for %%a in ("warlords.zip") do set ROM=%%~a
call :INTO
for %%a in ("Warp & Warp") do set NWDIR=%%~a
for %%a in ("warpwarp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Warp Speed") do set NWDIR=%%~a
for %%a in ("warpsped.zip") do set ROM=%%~a
call :INTO
for %%a in ("Warrior Blade - Rastan Saga Episode III") do set NWDIR=%%~a
for %%a in ("warriorb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Warriors of Fate") do set NWDIR=%%~a
for %%a in ("wof.zip") do set ROM=%%~a
call :INTO
for %%a in ("Watashiha Suzumechan") do set NWDIR=%%~a
for %%a in ("suzume.zip") do set ROM=%%~a
call :INTO
for %%a in ("Water Balls") do set NWDIR=%%~a
for %%a in ("watrball.zip") do set ROM=%%~a
call :INTO
for %%a in ("Water Match") do set NWDIR=%%~a
for %%a in ("wmatch.zip") do set ROM=%%~a
call :INTO
for %%a in ("Water Ski") do set NWDIR=%%~a
for %%a in ("waterski.zip") do set ROM=%%~a
call :INTO
for %%a in ("Water-Nymph") do set NWDIR=%%~a
for %%a in ("wtrnymph.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wayne Gretzky's 3D Hockey") do set NWDIR=%%~a
for %%a in ("wg3dh.zip") do set ROM=%%~a
call :INTO
for %%a in ("WEC Le Mans 24") do set NWDIR=%%~a
for %%a in ("wecleman.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wedding Rhapsody") do set NWDIR=%%~a
for %%a in ("weddingr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Welltris") do set NWDIR=%%~a
for %%a in ("welltris.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wheel Of Fortune") do set NWDIR=%%~a
for %%a in ("wfortune.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wheels Runner") do set NWDIR=%%~a
for %%a in ("wheelrun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Who Dunit") do set NWDIR=%%~a
for %%a in ("whodunit.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wiggie Waggie") do set NWDIR=%%~a
for %%a in ("wiggie.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wild Arrow") do set NWDIR=%%~a
for %%a in ("wldarrow.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wild Fang - Tecmo Knight") do set NWDIR=%%~a
for %%a in ("wildfang.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Wild Gunman") do set NWDIR=%%~a
for %%a in ("pc_wgnmn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wild Pilot") do set NWDIR=%%~a
for %%a in ("wildplt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wild West C.O.W.-Boys of Moo Mesa") do set NWDIR=%%~a
for %%a in ("moomesa.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wild Western") do set NWDIR=%%~a
for %%a in ("wwestern.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wild Witch") do set NWDIR=%%~a
for %%a in ("wldwitch.zip") do set ROM=%%~a
call :INTO
for %%a in ("Willow") do set NWDIR=%%~a
for %%a in ("willow.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wily Tower") do set NWDIR=%%~a
for %%a in ("wilytowr.zip") do set ROM=%%~a
call :INTO
for %%a in ("Winding Heat") do set NWDIR=%%~a
for %%a in ("windheat.zip") do set ROM=%%~a
call :INTO
for %%a in ("Windjammers - Flying Power Disc") do set NWDIR=%%~a
for %%a in ("wjammers.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wing Shooting Championship V2.00") do set NWDIR=%%~a
for %%a in ("wschamp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wink") do set NWDIR=%%~a
for %%a in ("wink.zip") do set ROM=%%~a
call :INTO
for %%a in ("Winners Circle") do set NWDIR=%%~a
for %%a in ("winner82.zip") do set ROM=%%~a
call :INTO
for %%a in ("Winning Run") do set NWDIR=%%~a
for %%a in ("winrun.zip") do set ROM=%%~a
call :INTO
for %%a in ("Winning Run 91") do set NWDIR=%%~a
for %%a in ("winrun91.zip") do set ROM=%%~a
call :INTO
for %%a in ("Winning Run Suzuka Grand Prix") do set NWDIR=%%~a
for %%a in ("winrungp.zip") do set ROM=%%~a
call :INTO
for %%a in ("Winning Spike") do set NWDIR=%%~a
for %%a in ("winspike.zip") do set ROM=%%~a
call :INTO
for %%a in ("Winter Heat") do set NWDIR=%%~a
for %%a in ("winterht.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wiping") do set NWDIR=%%~a
for %%a in ("wiping.zip") do set ROM=%%~a
call :INTO
for %%a in ("Witch") do set NWDIR=%%~a
for %%a in ("witch.zip") do set ROM=%%~a
call :INTO
for %%a in ("Witch Card") do set NWDIR=%%~a
for %%a in ("witchcrd.zip") do set ROM=%%~a
call :INTO
for %%a in ("Witch Game") do set NWDIR=%%~a
for %%a in ("witchgme.zip") do set ROM=%%~a
call :INTO
for %%a in ("Witch Jack") do set NWDIR=%%~a
for %%a in ("wtchjack.zip") do set ROM=%%~a
call :INTO
for %%a in ("Witch Royal") do set NWDIR=%%~a
for %%a in ("witchryl.zip") do set ROM=%%~a
call :INTO
for %%a in ("Witch Strike") do set NWDIR=%%~a
for %%a in ("wstrike.zip") do set ROM=%%~a
call :INTO
for %%a in ("Witch Up & Down") do set NWDIR=%%~a
for %%a in ("wupndown.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wit's") do set NWDIR=%%~a
for %%a in ("wits.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wiz") do set NWDIR=%%~a
for %%a in ("wiz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wiz Warz") do set NWDIR=%%~a
for %%a in ("wizwarz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wizard Fire") do set NWDIR=%%~a
for %%a in ("wizdfire.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wizz Quiz") do set NWDIR=%%~a
for %%a in ("wizzquiz.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wolf Pack") do set NWDIR=%%~a
for %%a in ("wolfpack.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wonder Boy") do set NWDIR=%%~a
for %%a in ("wboy.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wonder Boy III - Monster Lair") do set NWDIR=%%~a
for %%a in ("wb3.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wonder Boy in Monster Land") do set NWDIR=%%~a
for %%a in ("wbml.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wonder League '96") do set NWDIR=%%~a
for %%a in ("wondl96.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wonder League Star - Sok-Magicball Fighting") do set NWDIR=%%~a
for %%a in ("wlstar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wonder Momo") do set NWDIR=%%~a
for %%a in ("wndrmomo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wonder Planet") do set NWDIR=%%~a
for %%a in ("wndrplnt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wonder Stick") do set NWDIR=%%~a
for %%a in ("wondstck.zip") do set ROM=%%~a
call :INTO
for %%a in ("Woodpecker") do set NWDIR=%%~a
for %%a in ("woodpeck.zip") do set ROM=%%~a
call :INTO
for %%a in ("World Beach Volley") do set NWDIR=%%~a
for %%a in ("wbeachvl.zip") do set ROM=%%~a
call :INTO
for %%a in ("World Class Bowling") do set NWDIR=%%~a
for %%a in ("wcbowl.zip") do set ROM=%%~a
call :INTO
for %%a in ("World Class Bowling Deluxe") do set NWDIR=%%~a
for %%a in ("wcbowldx.zip") do set ROM=%%~a
call :INTO
for %%a in ("World Court") do set NWDIR=%%~a
for %%a in ("wldcourt.zip") do set ROM=%%~a
call :INTO
for %%a in ("World Cup Volley '95") do set NWDIR=%%~a
for %%a in ("wcvol95.zip") do set ROM=%%~a
call :INTO
for %%a in ("World Darts") do set NWDIR=%%~a
for %%a in ("ar_dart.zip") do set ROM=%%~a
call :INTO
for %%a in ("World Heroes") do set NWDIR=%%~a
for %%a in ("wh1.zip") do set ROM=%%~a
call :INTO
for %%a in ("World Heroes 2") do set NWDIR=%%~a
for %%a in ("wh2.zip") do set ROM=%%~a
call :INTO
for %%a in ("World Heroes 2 Jet") do set NWDIR=%%~a
for %%a in ("wh2j.zip") do set ROM=%%~a
call :INTO
for %%a in ("World Heroes Perfect") do set NWDIR=%%~a
for %%a in ("whp.zip") do set ROM=%%~a
call :INTO
for %%a in ("World PK Soccer V2") do set NWDIR=%%~a
for %%a in ("wpksocv2.zip") do set ROM=%%~a
call :INTO
for %%a in ("World Rally") do set NWDIR=%%~a
for %%a in ("wrally.zip") do set ROM=%%~a
call :INTO
for %%a in ("World Series - The Season") do set NWDIR=%%~a
for %%a in ("wseries.zip") do set ROM=%%~a
call :INTO
for %%a in ("World Soccer Finals") do set NWDIR=%%~a
for %%a in ("wsf.zip") do set ROM=%%~a
call :INTO
for %%a in ("World Stadium") do set NWDIR=%%~a
for %%a in ("ws.zip") do set ROM=%%~a
call :INTO
for %%a in ("World Tennis") do set NWDIR=%%~a
for %%a in ("wtennis.zip") do set ROM=%%~a
call :INTO
for %%a in ("World Trophy Soccer") do set NWDIR=%%~a
for %%a in ("ar_socc.zip") do set ROM=%%~a
call :INTO
for %%a in ("World Wars") do set NWDIR=%%~a
for %%a in ("worldwar.zip") do set ROM=%%~a
call :INTO
for %%a in ("WOW New Fantasia") do set NWDIR=%%~a
for %%a in ("wownfant.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wrestle War") do set NWDIR=%%~a
for %%a in ("wrestwar.zip") do set ROM=%%~a
call :INTO
for %%a in ("WWF Superstars") do set NWDIR=%%~a
for %%a in ("wwfsstar.zip") do set ROM=%%~a
call :INTO
for %%a in ("WWF WrestleFest") do set NWDIR=%%~a
for %%a in ("wwfwfest.zip") do set ROM=%%~a
call :INTO
for %%a in ("WWF - Wrestlemania") do set NWDIR=%%~a
for %%a in ("wwfmania.zip") do set ROM=%%~a
call :INTO
for %%a in ("Wyvern Wings") do set NWDIR=%%~a
for %%a in ("wyvernwg.zip") do set ROM=%%~a
call :INTO
for %%a in ("X Multiply") do set NWDIR=%%~a
for %%a in ("xmultipl.zip") do set ROM=%%~a
call :INTO
for %%a in ("X the Ball") do set NWDIR=%%~a
for %%a in ("xtheball.zip") do set ROM=%%~a
call :INTO
for %%a in ("Xain'd Sleena") do set NWDIR=%%~a
for %%a in ("xsleena.zip") do set ROM=%%~a
call :INTO
for %%a in ("X-Day 2") do set NWDIR=%%~a
for %%a in ("xday2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Xenon") do set NWDIR=%%~a
for %%a in ("ar_xeon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Xenophobe") do set NWDIR=%%~a
for %%a in ("xenophob.zip") do set ROM=%%~a
call :INTO
for %%a in ("XESS - The New Revolution") do set NWDIR=%%~a
for %%a in ("3in1semi.zip") do set ROM=%%~a
call :INTO
for %%a in ("Xevious") do set NWDIR=%%~a
for %%a in ("xevious.zip") do set ROM=%%~a
call :INTO
for %%a in ("Xevious 3D-G") do set NWDIR=%%~a
for %%a in ("xevi3dg.zip") do set ROM=%%~a
call :INTO
for %%a in ("Xexex") do set NWDIR=%%~a
for %%a in ("xexex.zip") do set ROM=%%~a
call :INTO
for %%a in ("X-Files") do set NWDIR=%%~a
for %%a in ("xfiles.zip") do set ROM=%%~a
call :INTO
for %%a in ("XII Stag") do set NWDIR=%%~a
for %%a in ("xiistag.zip") do set ROM=%%~a
call :INTO
for %%a in ("Xing Yun Man Guan") do set NWDIR=%%~a
for %%a in ("xymg.zip") do set ROM=%%~a
call :INTO
for %%a in ("X-Men") do set NWDIR=%%~a
for %%a in ("xmen.zip") do set ROM=%%~a
call :INTO
for %%a in ("X-Men Vs. Street Fighter") do set NWDIR=%%~a
for %%a in ("xmvsf.zip") do set ROM=%%~a
call :INTO
for %%a in ("X-Men - Children of the Atom") do set NWDIR=%%~a
for %%a in ("xmcota.zip") do set ROM=%%~a
call :INTO
for %%a in ("Xor World") do set NWDIR=%%~a
for %%a in ("xorworld.zip") do set ROM=%%~a
call :INTO
for %%a in ("X-Plan") do set NWDIR=%%~a
for %%a in ("xplan.zip") do set ROM=%%~a
call :INTO
for %%a in ("X-Train") do set NWDIR=%%~a
for %%a in ("xtrain.zip") do set ROM=%%~a
call :INTO
for %%a in ("XX Mission") do set NWDIR=%%~a
for %%a in ("xxmissio.zip") do set ROM=%%~a
call :INTO
for %%a in ("Xybots") do set NWDIR=%%~a
for %%a in ("xybots.zip") do set ROM=%%~a
call :INTO
for %%a in ("Xyonix") do set NWDIR=%%~a
for %%a in ("xyonix.zip") do set ROM=%%~a
call :INTO
for %%a in ("Yam! Yam!") do set NWDIR=%%~a
for %%a in ("yamyam.zip") do set ROM=%%~a
call :INTO
for %%a in ("Yamato") do set NWDIR=%%~a
for %%a in ("yamato.zip") do set ROM=%%~a
call :INTO
for %%a in ("Yes-No Sinri Tokimeki Chart") do set NWDIR=%%~a
for %%a in ("yesnoj.zip") do set ROM=%%~a
call :INTO
for %%a in ("Yie Ar Kung-Fu") do set NWDIR=%%~a
for %%a in ("yiear.zip") do set ROM=%%~a
call :INTO
for %%a in ("Ying Hua Lian 2.0") do set NWDIR=%%~a
for %%a in ("saklove.zip") do set ROM=%%~a
call :INTO
for %%a in ("PlayChoice- Yo! Noid") do set NWDIR=%%~a
for %%a in ("pc_ynoid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Youjyuden") do set NWDIR=%%~a
for %%a in ("youjyudn.zip") do set ROM=%%~a
call :INTO
for %%a in ("Yu-Jan") do set NWDIR=%%~a
for %%a in ("yujan.zip") do set ROM=%%~a
call :INTO
for %%a in ("Yu-Ka") do set NWDIR=%%~a
for %%a in ("yuka.zip") do set ROM=%%~a
call :INTO
for %%a in ("Yukon") do set NWDIR=%%~a
for %%a in ("yukon.zip") do set ROM=%%~a
call :INTO
for %%a in ("Yumefuda") do set NWDIR=%%~a
for %%a in ("yumefuda.zip") do set ROM=%%~a
call :INTO
for %%a in ("Yuuyu no Quiz de GO!GO!") do set NWDIR=%%~a
for %%a in ("yuyugogo.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zaviga") do set NWDIR=%%~a
for %%a in ("zaviga.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zed Blade - Operation Ragnarok") do set NWDIR=%%~a
for %%a in ("zedblade.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zen Nippon Pro-Wrestling Featuring Virtua") do set NWDIR=%%~a
for %%a in ("znpwfv.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zero Hour") do set NWDIR=%%~a
for %%a in ("zerohour.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zero Point") do set NWDIR=%%~a
for %%a in ("zeropnt.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zero Point 2") do set NWDIR=%%~a
for %%a in ("zeropnt2.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zero Wing") do set NWDIR=%%~a
for %%a in ("zerowing.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zero Zone") do set NWDIR=%%~a
for %%a in ("zerozone.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zeroize") do set NWDIR=%%~a
for %%a in ("czeroize.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zig Zag") do set NWDIR=%%~a
for %%a in ("zigzag.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zing Zing Zip") do set NWDIR=%%~a
for %%a in ("zingzip.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zintrick") do set NWDIR=%%~a
for %%a in ("zintrckb.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zip & Zap") do set NWDIR=%%~a
for %%a in ("zipzap.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zoar") do set NWDIR=%%~a
for %%a in ("zoar.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zodiack") do set NWDIR=%%~a
for %%a in ("zodiack.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zoku Otenamihaiken") do set NWDIR=%%~a
for %%a in ("zokuoten.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zombie Raid") do set NWDIR=%%~a
for %%a in ("zombraid.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zoo Keeper") do set NWDIR=%%~a
for %%a in ("zookeep.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zunzunkyou No Yabou") do set NWDIR=%%~a
for %%a in ("zunkyou.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zupapa!") do set NWDIR=%%~a
for %%a in ("zupapa.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zwackery") do set NWDIR=%%~a
for %%a in ("zwackery.zip") do set ROM=%%~a
call :INTO
for %%a in ("Zzyzzyxx") do set NWDIR=%%~a
for %%a in ("zzyzzyxx.zip") do set ROM=%%~a
call :INTO
:ALIASCOMPLETE
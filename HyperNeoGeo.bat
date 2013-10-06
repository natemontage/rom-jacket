if "%HYPTYPE%"=="BA" do pushd "%HSMETA%\%NEOGE%\Images\%ARTNUM%" && set NEOGENAME=Folder.png
if "%HYPTYPE%"=="VD" do pushd "%HSMETA%\%NEOGE%\Video" && set NEOGENAME=.trailer\%%~a
if "%HYPTYPE%"=="BN" do pushd "%HSMETA%\%NEOGE%\Images\Wheel" && set NEOGENAME=Banner.png
for %%a in ("NAM-1975") do set NWDIR=%%~a
for %%a in ("nam1975.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Baseball Stars Professional (set 1)") do set NWDIR=%%~a
for %%a in ("bstars.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Baseball Stars Professional (set 2)") do set NWDIR=%%~a
for %%a in ("bstarsh.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Top Player's Golf") do set NWDIR=%%~a
for %%a in ("tpgolf.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Mahjong Kyo Retsuden") do set NWDIR=%%~a
for %%a in ("mahretsu.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Magician Lord (set 1)") do set NWDIR=%%~a
for %%a in ("maglord.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Magician Lord (set 2)") do set NWDIR=%%~a
for %%a in ("maglordh.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Riding Hero (set 1)") do set NWDIR=%%~a
for %%a in ("ridhero.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Riding Hero (set 2)") do set NWDIR=%%~a
for %%a in ("ridheroh.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Alpha Mission II") do set NWDIR=%%~a
for %%a in ("alpham2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Ninja Combat (set 1)") do set NWDIR=%%~a
for %%a in ("ncombat.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Ninja Combat (set 2)") do set NWDIR=%%~a
for %%a in ("ncombath.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Cyber-Lip") do set NWDIR=%%~a
for %%a in ("cyberlip.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The Super Spy") do set NWDIR=%%~a
for %%a in ("superspy.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Mutation Nation") do set NWDIR=%%~a
for %%a in ("mutnat.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("King of the Monsters (set 1)") do set NWDIR=%%~a
for %%a in ("kotm.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("King of the Monsters (set 2)") do set NWDIR=%%~a
for %%a in ("kotmh.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Sengoku") do set NWDIR=%%~a
for %%a in ("sengoku.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Sengoku") do set NWDIR=%%~a
for %%a in ("sengokuh.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Burning Fight (set 1)") do set NWDIR=%%~a
for %%a in ("burningf.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Burning Fight (set 2)") do set NWDIR=%%~a
for %%a in ("burningfh.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("League Bowling") do set NWDIR=%%~a
for %%a in ("lbowling.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Ghost Pilots (set 1)") do set NWDIR=%%~a
for %%a in ("gpilots.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Ghost Pilots (set 2)") do set NWDIR=%%~a
for %%a in ("gpilotsh.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Puzzled") do set NWDIR=%%~a
for %%a in ("joyjoy.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Blue's Journey") do set NWDIR=%%~a
for %%a in ("bjourney.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Quiz Daisousa Sen - The Last Count Down") do set NWDIR=%%~a
for %%a in ("quizdais.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Quiz Daisousa Sen - The Last Count Down (Korean release)") do set NWDIR=%%~a
for %%a in ("quizdaisk.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Last Resort") do set NWDIR=%%~a
for %%a in ("lresort.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Eight Man") do set NWDIR=%%~a
for %%a in ("eightman.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Minnasanno Okagesamadesu") do set NWDIR=%%~a
for %%a in ("minasan.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Legend of Success Joe") do set NWDIR=%%~a
for %%a in ("legendos.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("2020 Super Baseball (set 1)") do set NWDIR=%%~a
for %%a in ("2020bb.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("2020 Super Baseball (set 2)") do set NWDIR=%%~a
for %%a in ("2020bba.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("2020 Super Baseball (set 3)") do set NWDIR=%%~a
for %%a in ("2020bbh.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Soccer Brawl (set 1)") do set NWDIR=%%~a
for %%a in ("socbrawl.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Soccer Brawl (set 2)") do set NWDIR=%%~a
for %%a in ("socbrawlh.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Robo Army") do set NWDIR=%%~a
for %%a in ("roboarmy.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Fatal Fury - King of Fighters") do set NWDIR=%%~a
for %%a in ("fatfury1.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Football Frenzy") do set NWDIR=%%~a
for %%a in ("fbfrenzy.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Bakatonosama Mahjong Manyuuki") do set NWDIR=%%~a
for %%a in ("bakatono.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Crossed Swords") do set NWDIR=%%~a
for %%a in ("crsword.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Thrash Rally") do set NWDIR=%%~a
for %%a in ("trally.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("King of the Monsters 2 - The Next Thing") do set NWDIR=%%~a
for %%a in ("kotm2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Sengoku 2") do set NWDIR=%%~a
for %%a in ("sengoku2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Baseball Stars 2") do set NWDIR=%%~a
for %%a in ("bstars2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Quiz Meitantei Neo  ^&  Geo - Quiz Daisousa Sen part 2") do set NWDIR=%%~a
for %%a in ("quizdai2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("3 Count Bout") do set NWDIR=%%~a
for %%a in ("3countb.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Art of Fighting") do set NWDIR=%%~a
for %%a in ("aof.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Samurai Shodown") do set NWDIR=%%~a
for %%a in ("samsho.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Samurai Shodown") do set NWDIR=%%~a
for %%a in ("samshoh.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Top Hunter - Roddy  ^&  Cathy (set 1)") do set NWDIR=%%~a
for %%a in ("tophuntr.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Top Hunter - Roddy  ^&  Cathy (set 2)") do set NWDIR=%%~a
for %%a in ("tophuntrh.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Fatal Fury 2") do set NWDIR=%%~a
for %%a in ("fatfury2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Jyanshin Densetsu - Quest of Jongmaster") do set NWDIR=%%~a
for %%a in ("janshin.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Andro Dunos") do set NWDIR=%%~a
for %%a in ("androdun.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Ninja Commando") do set NWDIR=%%~a
for %%a in ("ncommand.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Viewpoint") do set NWDIR=%%~a
for %%a in ("viewpoin.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Super Sidekicks") do set NWDIR=%%~a
for %%a in ("ssideki.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("World Heroes (set 1)") do set NWDIR=%%~a
for %%a in ("wh1.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("World Heroes (set 2)") do set NWDIR=%%~a
for %%a in ("wh1h.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("World Heroes (set 3)") do set NWDIR=%%~a
for %%a in ("wh1ha.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '94") do set NWDIR=%%~a
for %%a in ("kof94.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Art of Fighting 2") do set NWDIR=%%~a
for %%a in ("aof2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Art of Fighting 2") do set NWDIR=%%~a
for %%a in ("aof2a.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("World Heroes 2") do set NWDIR=%%~a
for %%a in ("wh2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Fatal Fury Special") do set NWDIR=%%~a
for %%a in ("fatfursp.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Fatal Fury Special") do set NWDIR=%%~a
for %%a in ("fatfurspa.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Savage Reign") do set NWDIR=%%~a
for %%a in ("savagere.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Fight Fever (set 1)") do set NWDIR=%%~a
for %%a in ("fightfev.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Fight Fever (set 2)") do set NWDIR=%%~a
for %%a in ("fightfeva.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Super Sidekicks 2 - The World Championship") do set NWDIR=%%~a
for %%a in ("ssideki2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Spin Master") do set NWDIR=%%~a
for %%a in ("spinmast.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Samurai Shodown II") do set NWDIR=%%~a
for %%a in ("samsho2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Saulabi Spirits") do set NWDIR=%%~a
for %%a in ("samsho2k.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("World Heroes 2 Jet") do set NWDIR=%%~a
for %%a in ("wh2j.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Windjammers") do set NWDIR=%%~a
for %%a in ("wjammers.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Karnov's Revenge") do set NWDIR=%%~a
for %%a in ("karnovr.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Gururin") do set NWDIR=%%~a
for %%a in ("gururin.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Power Spikes II") do set NWDIR=%%~a
for %%a in ("pspikes2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Fatal Fury 3 - Road to the Final Victory") do set NWDIR=%%~a
for %%a in ("fatfury3.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Zupapa!") do set NWDIR=%%~a
for %%a in ("zupapa.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Panic Bomber") do set NWDIR=%%~a
for %%a in ("panicbom.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Aggressors of Dark Kombat") do set NWDIR=%%~a
for %%a in ("aodk.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Aero Fighters 2") do set NWDIR=%%~a
for %%a in ("sonicwi2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Zed Blade") do set NWDIR=%%~a
for %%a in ("zedblade.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Galaxy Fight - Universal Warriors") do set NWDIR=%%~a
for %%a in ("galaxyfg.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Street Hoop") do set NWDIR=%%~a
for %%a in ("strhoop.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Quiz King of Fighters") do set NWDIR=%%~a
for %%a in ("quizkof.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Quiz King of Fighters (Korean release)") do set NWDIR=%%~a
for %%a in ("quizkofk.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Super Sidekicks 3 - The Next Glory") do set NWDIR=%%~a
for %%a in ("ssideki3.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Double Dragon (Neo-Geo)") do set NWDIR=%%~a
for %%a in ("doubledr.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Puzzle Bobble") do set NWDIR=%%~a
for %%a in ("pbobblen.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Puzzle Bobble") do set NWDIR=%%~a
for %%a in ("pbobblenb.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '95 (set 1)") do set NWDIR=%%~a
for %%a in ("kof95.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '95 (set 2)") do set NWDIR=%%~a
for %%a in ("kof95h.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Tecmo World Soccer '96") do set NWDIR=%%~a
for %%a in ("tws96.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Samurai Shodown III") do set NWDIR=%%~a
for %%a in ("samsho3.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Samurai Shodown III") do set NWDIR=%%~a
for %%a in ("samsho3h.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Fighters Swords (Korean release of Samurai Shodown III)") do set NWDIR=%%~a
for %%a in ("fswords.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Stakes Winner") do set NWDIR=%%~a
for %%a in ("stakwin.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Pulstar") do set NWDIR=%%~a
for %%a in ("pulstar.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("World Heroes Perfect") do set NWDIR=%%~a
for %%a in ("whp.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Far East of Eden - Kabuki Klash") do set NWDIR=%%~a
for %%a in ("kabukikl.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Neo Bomberman") do set NWDIR=%%~a
for %%a in ("neobombe.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Voltage Fighter - Gowcaizer") do set NWDIR=%%~a
for %%a in ("gowcaizr.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Real Bout Fatal Fury") do set NWDIR=%%~a
for %%a in ("rbff1.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Real Bout Fatal Fury") do set NWDIR=%%~a
for %%a in ("rbff1a.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Art of Fighting 3 - The Path of the Warrior") do set NWDIR=%%~a
for %%a in ("aof3.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Art of Fighting 3 - The Path of the Warrior (Korean release)") do set NWDIR=%%~a
for %%a in ("aof3k.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Aero Fighters 3") do set NWDIR=%%~a
for %%a in ("sonicwi3.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Neo Turf Masters") do set NWDIR=%%~a
for %%a in ("turfmast.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Metal Slug - Super Vehicle-001") do set NWDIR=%%~a
for %%a in ("mslug.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Puzzle De Pon!") do set NWDIR=%%~a
for %%a in ("puzzledp.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Syougi No Tatsujin - Master of Syougi") do set NWDIR=%%~a
for %%a in ("mosyougi.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Chibi Marukochan Deluxe Quiz") do set NWDIR=%%~a
for %%a in ("marukodq.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Neo Mr. Do!") do set NWDIR=%%~a
for %%a in ("neomrdo.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Super Dodge Ball") do set NWDIR=%%~a
for %%a in ("sdodgeb.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Goal! Goal! Goal!") do set NWDIR=%%~a
for %%a in ("goalx3.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Zintrick") do set NWDIR=%%~a
for %%a in ("zintrckb.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Over Top") do set NWDIR=%%~a
for %%a in ("overtop.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Neo Drift Out - New Technology") do set NWDIR=%%~a
for %%a in ("neodrift.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '96 (set 1)") do set NWDIR=%%~a
for %%a in ("kof96.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '96 (set 2)") do set NWDIR=%%~a
for %%a in ("kof96h.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The Ultimate 11 - The SNK Football Championship") do set NWDIR=%%~a
for %%a in ("ssideki4.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Kizuna Encounter - Super Tag Battle") do set NWDIR=%%~a
for %%a in ("kizuna.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Ninja Master's - haoh-ninpo-cho") do set NWDIR=%%~a
for %%a in ("ninjamas.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Ragnagard") do set NWDIR=%%~a
for %%a in ("ragnagrd.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Pleasure Goal") do set NWDIR=%%~a
for %%a in ("pgoal.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Magical Drop II") do set NWDIR=%%~a
for %%a in ("magdrop2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Samurai Shodown IV - Amakusa's Revenge") do set NWDIR=%%~a
for %%a in ("samsho4.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Pae Wang Jeon Seol") do set NWDIR=%%~a
for %%a in ("samsho4k.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Real Bout Fatal Fury Special") do set NWDIR=%%~a
for %%a in ("rbffspec.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Real Bout Fatal Fury Special") do set NWDIR=%%~a
for %%a in ("rbffspeck.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Twinkle Star Sprites") do set NWDIR=%%~a
for %%a in ("twinspri.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Waku Waku 7") do set NWDIR=%%~a
for %%a in ("wakuwak7.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Stakes Winner 2") do set NWDIR=%%~a
for %%a in ("stakwin2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Ghostlop (prototype)") do set NWDIR=%%~a
for %%a in ("ghostlop.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Breakers") do set NWDIR=%%~a
for %%a in ("breakers.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Money Puzzle Exchanger") do set NWDIR=%%~a
for %%a in ("miexchng.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '97 (set 1)") do set NWDIR=%%~a
for %%a in ("kof97.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '97 (set 2)") do set NWDIR=%%~a
for %%a in ("kof97h.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '97 Plus (bootleg)") do set NWDIR=%%~a
for %%a in ("kof97pls.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("King of Gladiator (The King of Fighters '97 bootleg)") do set NWDIR=%%~a
for %%a in ("kog.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Magical Drop III") do set NWDIR=%%~a
for %%a in ("magdrop3.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The Last Blade") do set NWDIR=%%~a
for %%a in ("lastblad.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The Last Blade") do set NWDIR=%%~a
for %%a in ("lastbladh.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The Last Soldier (Korean release of The Last Blade)") do set NWDIR=%%~a
for %%a in ("lastsold.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Puzzle De Pon! R!") do set NWDIR=%%~a
for %%a in ("puzzldpr.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The Irritating Maze") do set NWDIR=%%~a
for %%a in ("irrmaze.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Pop 'n Bounce") do set NWDIR=%%~a
for %%a in ("popbounc.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Shock Troopers (set 1)") do set NWDIR=%%~a
for %%a in ("shocktro.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Shock Troopers (set 2)") do set NWDIR=%%~a
for %%a in ("shocktroa.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Blazing Star") do set NWDIR=%%~a
for %%a in ("blazstar.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Real Bout Fatal Fury 2 - The Newcomers") do set NWDIR=%%~a
for %%a in ("rbff2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Real Bout Fatal Fury 2 - The Newcomers") do set NWDIR=%%~a
for %%a in ("rbff2h.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Real Bout Fatal Fury 2 - The Newcomers (Korean release)") do set NWDIR=%%~a
for %%a in ("rbff2k.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Metal Slug 2 - Super Vehicle-001/II") do set NWDIR=%%~a
for %%a in ("mslug2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '98 - The Slugfest") do set NWDIR=%%~a
for %%a in ("kof98.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '98 - The Slugfest") do set NWDIR=%%~a
for %%a in ("kof98k.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '98 - The Slugfest") do set NWDIR=%%~a
for %%a in ("kof98ka.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '98 - The Slugfest") do set NWDIR=%%~a
for %%a in ("kof98h.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The Last Blade 2") do set NWDIR=%%~a
for %%a in ("lastbld2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Neo-Geo Cup '98 - The Road to the Victory") do set NWDIR=%%~a
for %%a in ("neocup98.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Breakers Revenge") do set NWDIR=%%~a
for %%a in ("breakrev.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Shock Troopers - 2nd Squad") do set NWDIR=%%~a
for %%a in ("shocktr2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Lansquenet 2004 (Shock Troopers - 2nd Squad bootleg)") do set NWDIR=%%~a
for %%a in ("lans2004.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Battle Flip Shot") do set NWDIR=%%~a
for %%a in ("flipshot.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Puzzle Bobble 2") do set NWDIR=%%~a
for %%a in ("pbobbl2n.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Captain Tomaday") do set NWDIR=%%~a
for %%a in ("ctomaday.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Metal Slug X - Super Vehicle-001") do set NWDIR=%%~a
for %%a in ("mslugx.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '99 - Millennium Battle (set 1)") do set NWDIR=%%~a
for %%a in ("kof99.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '99 - Millennium Battle (set 2)") do set NWDIR=%%~a
for %%a in ("kof99h.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '99 - Millennium Battle (earlier)") do set NWDIR=%%~a
for %%a in ("kof99e.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '99 - Millennium Battle (Korean release)") do set NWDIR=%%~a
for %%a in ("kof99k.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '99 - Millennium Battle (prototype)") do set NWDIR=%%~a
for %%a in ("kof99p.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Ganryu") do set NWDIR=%%~a
for %%a in ("ganryu.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Garou - Mark of the Wolves (set 1)") do set NWDIR=%%~a
for %%a in ("garou.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Garou - Mark of the Wolves (set 2)") do set NWDIR=%%~a
for %%a in ("garouo.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Garou - Mark of the Wolves (prototype)") do set NWDIR=%%~a
for %%a in ("garoup.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Garou - Mark of the Wolves (bootleg)") do set NWDIR=%%~a
for %%a in ("garoubl.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Strikers 1945 Plus") do set NWDIR=%%~a
for %%a in ("s1945p.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Prehistoric Isle 2") do set NWDIR=%%~a
for %%a in ("preisle2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Metal Slug 3") do set NWDIR=%%~a
for %%a in ("mslug3.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Metal Slug 3 (not encrypted)") do set NWDIR=%%~a
for %%a in ("mslug3h.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Metal Slug 6 (Metal Slug 3 bootleg)") do set NWDIR=%%~a
for %%a in ("mslug3b6.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2000") do set NWDIR=%%~a
for %%a in ("kof2000.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2000 (not encrypted)") do set NWDIR=%%~a
for %%a in ("kof2000n.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Bang Bead") do set NWDIR=%%~a
for %%a in ("bangbead.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Nightmare in the Dark") do set NWDIR=%%~a
for %%a in ("nitd.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Nightmare in the Dark (bootleg)") do set NWDIR=%%~a
for %%a in ("nitdbl.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Sengoku 3") do set NWDIR=%%~a
for %%a in ("sengoku3.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2001 (set 1)") do set NWDIR=%%~a
for %%a in ("kof2001.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2001 (set 2)") do set NWDIR=%%~a
for %%a in ("kof2001h.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Crouching Tiger Hidden Dragon 2003 (The King of Fighters 2001 bootleg)") do set NWDIR=%%~a
for %%a in ("cthd2003.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Crouching Tiger Hidden Dragon 2003 Super Plus (The King of Fighters 2001 bootleg)") do set NWDIR=%%~a
for %%a in ("ct2k3sp.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Crouching Tiger Hidden Dragon 2003 Super Plus alternate (The King of Fighters 2001 bootleg)") do set NWDIR=%%~a
for %%a in ("ct2k3sa.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Metal Slug 4 (set 1)") do set NWDIR=%%~a
for %%a in ("mslug4.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Metal Slug 4 (set 2)") do set NWDIR=%%~a
for %%a in ("mslug4h.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Metal Slug 4 Plus (bootleg)") do set NWDIR=%%~a
for %%a in ("ms4plus.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Rage of the Dragons") do set NWDIR=%%~a
for %%a in ("rotd.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2002") do set NWDIR=%%~a
for %%a in ("kof2002.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2002 (bootleg)") do set NWDIR=%%~a
for %%a in ("kof2002b.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2002 Plus (bootleg set 1)") do set NWDIR=%%~a
for %%a in ("kf2k2pls.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2002 Plus (bootleg set 2)") do set NWDIR=%%~a
for %%a in ("kf2k2pla.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2002 Magic Plus (bootleg)") do set NWDIR=%%~a
for %%a in ("kf2k2mp.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2002 Magic Plus II (bootleg)") do set NWDIR=%%~a
for %%a in ("kf2k2mp2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 10th Anniversary (The King of Fighters 2002 bootleg)") do set NWDIR=%%~a
for %%a in ("kof10th.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 10th Anniversary 2005 Unique (The King of Fighters 2002 bootleg)") do set NWDIR=%%~a
for %%a in ("kf2k5uni.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 10th Anniversary Extra Plus (The King of Fighters 2002 bootleg)") do set NWDIR=%%~a
for %%a in ("kf10thep.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters Special Edition 2004 (The King of Fighters 2002 bootleg)") do set NWDIR=%%~a
for %%a in ("kof2k4se.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Matrimelee") do set NWDIR=%%~a
for %%a in ("matrim.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Matrimelee") do set NWDIR=%%~a
for %%a in ("matrimbl.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Pochi and Nyaa") do set NWDIR=%%~a
for %%a in ("pnyaa.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Metal Slug 5 (JAMMA PCB)") do set NWDIR=%%~a
for %%a in ("ms5pcb.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Metal Slug 5") do set NWDIR=%%~a
for %%a in ("mslug5.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Metal Slug 5 (AES Cart)") do set NWDIR=%%~a
for %%a in ("mslug5h.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Metal Slug 5 Plus (bootleg)") do set NWDIR=%%~a
for %%a in ("ms5plus.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("SNK vs. Capcom - SVC Chaos (JAMMA PCB, set 1)") do set NWDIR=%%~a
for %%a in ("svcpcb.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("SNK vs. Capcom - SVC Chaos (JAMMA PCB, set 2)") do set NWDIR=%%~a
for %%a in ("svcpcba.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("SNK vs. Capcom - SVC Chaos") do set NWDIR=%%~a
for %%a in ("svc.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("SNK vs. Capcom - SVC Chaos (bootleg)") do set NWDIR=%%~a
for %%a in ("svcboot.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("SNK vs. Capcom - SVC Chaos Plus (bootleg set 1)") do set NWDIR=%%~a
for %%a in ("svcplus.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("SNK vs. Capcom - SVC Chaos Plus (bootleg set 2)") do set NWDIR=%%~a
for %%a in ("svcplusa.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("SNK vs. Capcom - SVC Chaos Super Plus (bootleg)") do set NWDIR=%%~a
for %%a in ("svcsplus.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Samurai Shodown V") do set NWDIR=%%~a
for %%a in ("samsho5.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Samurai Shodown V") do set NWDIR=%%~a
for %%a in ("samsho5h.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Samurai Shodown V") do set NWDIR=%%~a
for %%a in ("samsho5b.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2003 (Japan, JAMMA PCB)") do set NWDIR=%%~a
for %%a in ("kf2k3pcb.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2003") do set NWDIR=%%~a
for %%a in ("kof2003.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2003 (AES cart)") do set NWDIR=%%~a
for %%a in ("kof2003h.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2003 (bootleg set 1)") do set NWDIR=%%~a
for %%a in ("kf2k3bl.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2003 (bootleg set 2)") do set NWDIR=%%~a
for %%a in ("kf2k3bla.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2004 Plus") do set NWDIR=%%~a
for %%a in ("kf2k3pl.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2004 Ultra Plus (The King of Fighters 2003 bootleg)") do set NWDIR=%%~a
for %%a in ("kf2k3upl.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Samurai Shodown V Special") do set NWDIR=%%~a
for %%a in ("samsh5sp.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Samurai Shodown V Special") do set NWDIR=%%~a
for %%a in ("samsh5sph.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Samurai Shodown V Special") do set NWDIR=%%~a
for %%a in ("samsh5spn.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Jockey Grand Prix") do set NWDIR=%%~a
for %%a in ("jockeygp.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("V-Liner (set 1)") do set NWDIR=%%~a
for %%a in ("vliner.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("V-Liner (set 2)") do set NWDIR=%%~a
for %%a in ("vlinero.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Digger Man (prototype)") do set NWDIR=%%~a
for %%a in ("diggerma.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("'98 NeoPri Best 44 (Neo Print)") do set NWDIR=%%~a
for %%a in ("98best44.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Bang Bead (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("bngbeadn.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Ganryu (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("ganryun.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Garou - Mark of the Wolves (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("garoun.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Matrimelee (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("matrimnd.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Metal Slug 3 (non encrypted P, decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("mslug3nd.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Metal Slug 4 (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("mslug4nd.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Metal Slug 5 (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("mslug5nd.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Nightmare in the Dark (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("nitdn.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Prehistoric Isle 2 (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("preisl2n.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Rage of the Dragons (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("rotdnd.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Sengoku 3 (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("sngoku3n.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Strikers 1945 Plus (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("s1945pn.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters '99 - Millennium Battle (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("kof99nd.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2000 (non encrypted P, decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("kof2knd.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2001 (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("kof2k1nd.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2002 (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("kof2k2nd.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("The King of Fighters 2003 (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("kof2k3nd.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Zupapa! (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("zupapan.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Samurai Shodown V (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("samsh5nd.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Samurai Shodown V Special (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("ss5shnd.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("SNK Vs. CAPCOM (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("svcnd.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("NeoPong (v1.1, non-MAME)") do set NWDIR=%%~a
for %%a in ("neopong.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("NeoPong (v1.0, non-MAME)") do set NWDIR=%%~a
for %%a in ("neopong10.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Neo No Panepon (20021005, non-MAME)") do set NWDIR=%%~a
for %%a in ("neonopon.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Neo No Panepon (20020707#1, non-MAME)") do set NWDIR=%%~a
for %%a in ("neonopon1.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Neo No Panepon (20020707#2, non-MAME)") do set NWDIR=%%~a
for %%a in ("neonopon2.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
for %%a in ("Neo No Panepon (20020822, non-MAME)") do set NWDIR=%%~a
for %%a in ("neonopon3.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"
SET NWDIR=The King of Fighters Special Edition 2004 (non-MAME)
for %%a in ("kofse2k4.png") do if exist %GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%NEOGE%\%NWDIR%\%NEOGEONAME%"

del "%GBC%\neogeoroms.ini"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h') do echo %%~a>>"%GBC%\neogeoroms.ini"
for %%R in ("%GBC%\neogeoroms.ini") do if "%%~zR" equ "" goto :moveback
for %%R in ("%GBC%\neogeoroms.ini") do if %%~zR equ 0 goto :moveback
goto :aliasbegin
:moveback
cd "SOURCE"
move "*.zip" "%GBG%\%GAM%\%CONS%\%NEOGE%"
:aliasbegin
cd "%GBG%\%GAM%\%CONS%\%NEOGE%"
mkdir "SOURCE"
ATTRIB +H "SOURCE"

for %%a in ("NAM-1975") do set NWDIR=%%~a
for %%a in ("nam1975.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Baseball Stars Professional (set 1)") do set NWDIR=%%~a
for %%a in ("bstars.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Baseball Stars Professional (set 2)") do set NWDIR=%%~a
for %%a in ("bstarsh.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Top Player's Golf") do set NWDIR=%%~a
for %%a in ("tpgolf.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Mahjong Kyo Retsuden") do set NWDIR=%%~a
for %%a in ("mahretsu.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Magician Lord (set 1)") do set NWDIR=%%~a
for %%a in ("maglord.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Magician Lord (set 2)") do set NWDIR=%%~a
for %%a in ("maglordh.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Riding Hero (set 1)") do set NWDIR=%%~a
for %%a in ("ridhero.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Riding Hero (set 2)") do set NWDIR=%%~a
for %%a in ("ridheroh.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Alpha Mission II") do set NWDIR=%%~a
for %%a in ("alpham2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Ninja Combat (set 1)") do set NWDIR=%%~a
for %%a in ("ncombat.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Ninja Combat (set 2)") do set NWDIR=%%~a
for %%a in ("ncombath.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Cyber-Lip") do set NWDIR=%%~a
for %%a in ("cyberlip.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The Super Spy") do set NWDIR=%%~a
for %%a in ("superspy.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Mutation Nation") do set NWDIR=%%~a
for %%a in ("mutnat.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("King of the Monsters (set 1)") do set NWDIR=%%~a
for %%a in ("kotm.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("King of the Monsters (set 2)") do set NWDIR=%%~a
for %%a in ("kotmh.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Sengoku") do set NWDIR=%%~a
for %%a in ("sengoku.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Sengoku") do set NWDIR=%%~a
for %%a in ("sengokuh.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Burning Fight (set 1)") do set NWDIR=%%~a
for %%a in ("burningf.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Burning Fight (set 2)") do set NWDIR=%%~a
for %%a in ("burningfh.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("League Bowling") do set NWDIR=%%~a
for %%a in ("lbowling.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Ghost Pilots (set 1)") do set NWDIR=%%~a
for %%a in ("gpilots.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Ghost Pilots (set 2)") do set NWDIR=%%~a
for %%a in ("gpilotsh.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Puzzled") do set NWDIR=%%~a
for %%a in ("joyjoy.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Blue's Journey") do set NWDIR=%%~a
for %%a in ("bjourney.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Quiz Daisousa Sen - The Last Count Down") do set NWDIR=%%~a
for %%a in ("quizdais.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Quiz Daisousa Sen - The Last Count Down (Korean release)") do set NWDIR=%%~a
for %%a in ("quizdaisk.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Last Resort") do set NWDIR=%%~a
for %%a in ("lresort.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Eight Man") do set NWDIR=%%~a
for %%a in ("eightman.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Minnasanno Okagesamadesu") do set NWDIR=%%~a
for %%a in ("minasan.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Legend of Success Joe") do set NWDIR=%%~a
for %%a in ("legendos.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("2020 Super Baseball (set 1)") do set NWDIR=%%~a
for %%a in ("2020bb.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("2020 Super Baseball (set 2)") do set NWDIR=%%~a
for %%a in ("2020bba.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("2020 Super Baseball (set 3)") do set NWDIR=%%~a
for %%a in ("2020bbh.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Soccer Brawl (set 1)") do set NWDIR=%%~a
for %%a in ("socbrawl.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Soccer Brawl (set 2)") do set NWDIR=%%~a
for %%a in ("socbrawlh.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Robo Army") do set NWDIR=%%~a
for %%a in ("roboarmy.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Fatal Fury - King of Fighters") do set NWDIR=%%~a
for %%a in ("fatfury1.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Football Frenzy") do set NWDIR=%%~a
for %%a in ("fbfrenzy.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Bakatonosama Mahjong Manyuuki") do set NWDIR=%%~a
for %%a in ("bakatono.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Crossed Swords") do set NWDIR=%%~a
for %%a in ("crsword.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Thrash Rally") do set NWDIR=%%~a
for %%a in ("trally.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("King of the Monsters 2 - The Next Thing") do set NWDIR=%%~a
for %%a in ("kotm2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Sengoku 2") do set NWDIR=%%~a
for %%a in ("sengoku2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Baseball Stars 2") do set NWDIR=%%~a
for %%a in ("bstars2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Quiz Meitantei Neo  ^&  Geo - Quiz Daisousa Sen part 2") do set NWDIR=%%~a
for %%a in ("quizdai2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("3 Count Bout") do set NWDIR=%%~a
for %%a in ("3countb.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Art of Fighting") do set NWDIR=%%~a
for %%a in ("aof.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Samurai Shodown") do set NWDIR=%%~a
for %%a in ("samsho.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Samurai Shodown") do set NWDIR=%%~a
for %%a in ("samshoh.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Top Hunter - Roddy  ^&  Cathy (set 1)") do set NWDIR=%%~a
for %%a in ("tophuntr.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Top Hunter - Roddy  ^&  Cathy (set 2)") do set NWDIR=%%~a
for %%a in ("tophuntrh.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Fatal Fury 2") do set NWDIR=%%~a
for %%a in ("fatfury2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Jyanshin Densetsu - Quest of Jongmaster") do set NWDIR=%%~a
for %%a in ("janshin.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Andro Dunos") do set NWDIR=%%~a
for %%a in ("androdun.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Ninja Commando") do set NWDIR=%%~a
for %%a in ("ncommand.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Viewpoint") do set NWDIR=%%~a
for %%a in ("viewpoin.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Super Sidekicks") do set NWDIR=%%~a
for %%a in ("ssideki.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("World Heroes (set 1)") do set NWDIR=%%~a
for %%a in ("wh1.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("World Heroes (set 2)") do set NWDIR=%%~a
for %%a in ("wh1h.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("World Heroes (set 3)") do set NWDIR=%%~a
for %%a in ("wh1ha.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '94") do set NWDIR=%%~a
for %%a in ("kof94.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Art of Fighting 2") do set NWDIR=%%~a
for %%a in ("aof2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Art of Fighting 2") do set NWDIR=%%~a
for %%a in ("aof2a.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("World Heroes 2") do set NWDIR=%%~a
for %%a in ("wh2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Fatal Fury Special") do set NWDIR=%%~a
for %%a in ("fatfursp.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Fatal Fury Special") do set NWDIR=%%~a
for %%a in ("fatfurspa.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Savage Reign") do set NWDIR=%%~a
for %%a in ("savagere.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Fight Fever (set 1)") do set NWDIR=%%~a
for %%a in ("fightfev.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Fight Fever (set 2)") do set NWDIR=%%~a
for %%a in ("fightfeva.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Super Sidekicks 2 - The World Championship") do set NWDIR=%%~a
for %%a in ("ssideki2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Spin Master") do set NWDIR=%%~a
for %%a in ("spinmast.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Samurai Shodown II") do set NWDIR=%%~a
for %%a in ("samsho2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Saulabi Spirits") do set NWDIR=%%~a
for %%a in ("samsho2k.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("World Heroes 2 Jet") do set NWDIR=%%~a
for %%a in ("wh2j.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Windjammers") do set NWDIR=%%~a
for %%a in ("wjammers.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Karnov's Revenge") do set NWDIR=%%~a
for %%a in ("karnovr.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Gururin") do set NWDIR=%%~a
for %%a in ("gururin.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Power Spikes II") do set NWDIR=%%~a
for %%a in ("pspikes2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Fatal Fury 3 - Road to the Final Victory") do set NWDIR=%%~a
for %%a in ("fatfury3.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Zupapa!") do set NWDIR=%%~a
for %%a in ("zupapa.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Panic Bomber") do set NWDIR=%%~a
for %%a in ("panicbom.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Aggressors of Dark Kombat") do set NWDIR=%%~a
for %%a in ("aodk.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Aero Fighters 2") do set NWDIR=%%~a
for %%a in ("sonicwi2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Zed Blade") do set NWDIR=%%~a
for %%a in ("zedblade.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Galaxy Fight - Universal Warriors") do set NWDIR=%%~a
for %%a in ("galaxyfg.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Street Hoop") do set NWDIR=%%~a
for %%a in ("strhoop.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Quiz King of Fighters") do set NWDIR=%%~a
for %%a in ("quizkof.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Quiz King of Fighters (Korean release)") do set NWDIR=%%~a
for %%a in ("quizkofk.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Super Sidekicks 3 - The Next Glory") do set NWDIR=%%~a
for %%a in ("ssideki3.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Double Dragon (Neo-Geo)") do set NWDIR=%%~a
for %%a in ("doubledr.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Puzzle Bobble") do set NWDIR=%%~a
for %%a in ("pbobblen.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Puzzle Bobble") do set NWDIR=%%~a
for %%a in ("pbobblenb.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '95 (set 1)") do set NWDIR=%%~a
for %%a in ("kof95.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '95 (set 2)") do set NWDIR=%%~a
for %%a in ("kof95h.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Tecmo World Soccer '96") do set NWDIR=%%~a
for %%a in ("tws96.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Samurai Shodown III") do set NWDIR=%%~a
for %%a in ("samsho3.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Samurai Shodown III") do set NWDIR=%%~a
for %%a in ("samsho3h.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Fighters Swords (Korean release of Samurai Shodown III)") do set NWDIR=%%~a
for %%a in ("fswords.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Stakes Winner") do set NWDIR=%%~a
for %%a in ("stakwin.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Pulstar") do set NWDIR=%%~a
for %%a in ("pulstar.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("World Heroes Perfect") do set NWDIR=%%~a
for %%a in ("whp.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Far East of Eden - Kabuki Klash") do set NWDIR=%%~a
for %%a in ("kabukikl.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Neo Bomberman") do set NWDIR=%%~a
for %%a in ("neobombe.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Voltage Fighter - Gowcaizer") do set NWDIR=%%~a
for %%a in ("gowcaizr.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Real Bout Fatal Fury") do set NWDIR=%%~a
for %%a in ("rbff1.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Real Bout Fatal Fury") do set NWDIR=%%~a
for %%a in ("rbff1a.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Art of Fighting 3 - The Path of the Warrior") do set NWDIR=%%~a
for %%a in ("aof3.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Art of Fighting 3 - The Path of the Warrior (Korean release)") do set NWDIR=%%~a
for %%a in ("aof3k.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Aero Fighters 3") do set NWDIR=%%~a
for %%a in ("sonicwi3.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Neo Turf Masters") do set NWDIR=%%~a
for %%a in ("turfmast.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Metal Slug - Super Vehicle-001") do set NWDIR=%%~a
for %%a in ("mslug.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Puzzle De Pon!") do set NWDIR=%%~a
for %%a in ("puzzledp.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Syougi No Tatsujin - Master of Syougi") do set NWDIR=%%~a
for %%a in ("mosyougi.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Chibi Marukochan Deluxe Quiz") do set NWDIR=%%~a
for %%a in ("marukodq.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Neo Mr. Do!") do set NWDIR=%%~a
for %%a in ("neomrdo.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Super Dodge Ball") do set NWDIR=%%~a
for %%a in ("sdodgeb.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Goal! Goal! Goal!") do set NWDIR=%%~a
for %%a in ("goalx3.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Zintrick") do set NWDIR=%%~a
for %%a in ("zintrckb.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Over Top") do set NWDIR=%%~a
for %%a in ("overtop.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Neo Drift Out - New Technology") do set NWDIR=%%~a
for %%a in ("neodrift.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '96 (set 1)") do set NWDIR=%%~a
for %%a in ("kof96.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '96 (set 2)") do set NWDIR=%%~a
for %%a in ("kof96h.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The Ultimate 11 - The SNK Football Championship") do set NWDIR=%%~a
for %%a in ("ssideki4.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Kizuna Encounter - Super Tag Battle") do set NWDIR=%%~a
for %%a in ("kizuna.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Ninja Master's - haoh-ninpo-cho") do set NWDIR=%%~a
for %%a in ("ninjamas.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Ragnagard") do set NWDIR=%%~a
for %%a in ("ragnagrd.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Pleasure Goal") do set NWDIR=%%~a
for %%a in ("pgoal.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Magical Drop II") do set NWDIR=%%~a
for %%a in ("magdrop2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Samurai Shodown IV - Amakusa's Revenge") do set NWDIR=%%~a
for %%a in ("samsho4.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Pae Wang Jeon Seol") do set NWDIR=%%~a
for %%a in ("samsho4k.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Real Bout Fatal Fury Special") do set NWDIR=%%~a
for %%a in ("rbffspec.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Real Bout Fatal Fury Special") do set NWDIR=%%~a
for %%a in ("rbffspeck.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Twinkle Star Sprites") do set NWDIR=%%~a
for %%a in ("twinspri.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Waku Waku 7") do set NWDIR=%%~a
for %%a in ("wakuwak7.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Stakes Winner 2") do set NWDIR=%%~a
for %%a in ("stakwin2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Ghostlop (prototype)") do set NWDIR=%%~a
for %%a in ("ghostlop.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Breakers") do set NWDIR=%%~a
for %%a in ("breakers.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Money Puzzle Exchanger") do set NWDIR=%%~a
for %%a in ("miexchng.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '97 (set 1)") do set NWDIR=%%~a
for %%a in ("kof97.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '97 (set 2)") do set NWDIR=%%~a
for %%a in ("kof97h.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '97 Plus (bootleg)") do set NWDIR=%%~a
for %%a in ("kof97pls.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("King of Gladiator (The King of Fighters '97 bootleg)") do set NWDIR=%%~a
for %%a in ("kog.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Magical Drop III") do set NWDIR=%%~a
for %%a in ("magdrop3.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The Last Blade") do set NWDIR=%%~a
for %%a in ("lastblad.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The Last Blade") do set NWDIR=%%~a
for %%a in ("lastbladh.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The Last Soldier (Korean release of The Last Blade)") do set NWDIR=%%~a
for %%a in ("lastsold.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Puzzle De Pon! R!") do set NWDIR=%%~a
for %%a in ("puzzldpr.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The Irritating Maze") do set NWDIR=%%~a
for %%a in ("irrmaze.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Pop 'n Bounce") do set NWDIR=%%~a
for %%a in ("popbounc.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Shock Troopers (set 1)") do set NWDIR=%%~a
for %%a in ("shocktro.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Shock Troopers (set 2)") do set NWDIR=%%~a
for %%a in ("shocktroa.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Blazing Star") do set NWDIR=%%~a
for %%a in ("blazstar.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Real Bout Fatal Fury 2 - The Newcomers") do set NWDIR=%%~a
for %%a in ("rbff2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Real Bout Fatal Fury 2 - The Newcomers") do set NWDIR=%%~a
for %%a in ("rbff2h.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Real Bout Fatal Fury 2 - The Newcomers (Korean release)") do set NWDIR=%%~a
for %%a in ("rbff2k.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Metal Slug 2 - Super Vehicle-001/II") do set NWDIR=%%~a
for %%a in ("mslug2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '98 - The Slugfest") do set NWDIR=%%~a
for %%a in ("kof98.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '98 - The Slugfest") do set NWDIR=%%~a
for %%a in ("kof98k.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '98 - The Slugfest") do set NWDIR=%%~a
for %%a in ("kof98ka.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '98 - The Slugfest") do set NWDIR=%%~a
for %%a in ("kof98h.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The Last Blade 2") do set NWDIR=%%~a
for %%a in ("lastbld2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Neo-Geo Cup '98 - The Road to the Victory") do set NWDIR=%%~a
for %%a in ("neocup98.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Breakers Revenge") do set NWDIR=%%~a
for %%a in ("breakrev.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Shock Troopers - 2nd Squad") do set NWDIR=%%~a
for %%a in ("shocktr2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Lansquenet 2004 (Shock Troopers - 2nd Squad bootleg)") do set NWDIR=%%~a
for %%a in ("lans2004.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Battle Flip Shot") do set NWDIR=%%~a
for %%a in ("flipshot.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Puzzle Bobble 2") do set NWDIR=%%~a
for %%a in ("pbobbl2n.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Captain Tomaday") do set NWDIR=%%~a
for %%a in ("ctomaday.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Metal Slug X - Super Vehicle-001") do set NWDIR=%%~a
for %%a in ("mslugx.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '99 - Millennium Battle (set 1)") do set NWDIR=%%~a
for %%a in ("kof99.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '99 - Millennium Battle (set 2)") do set NWDIR=%%~a
for %%a in ("kof99h.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '99 - Millennium Battle (earlier)") do set NWDIR=%%~a
for %%a in ("kof99e.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '99 - Millennium Battle (Korean release)") do set NWDIR=%%~a
for %%a in ("kof99k.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '99 - Millennium Battle (prototype)") do set NWDIR=%%~a
for %%a in ("kof99p.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Ganryu") do set NWDIR=%%~a
for %%a in ("ganryu.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Garou - Mark of the Wolves (set 1)") do set NWDIR=%%~a
for %%a in ("garou.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Garou - Mark of the Wolves (set 2)") do set NWDIR=%%~a
for %%a in ("garouo.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Garou - Mark of the Wolves (prototype)") do set NWDIR=%%~a
for %%a in ("garoup.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Garou - Mark of the Wolves (bootleg)") do set NWDIR=%%~a
for %%a in ("garoubl.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Strikers 1945 Plus") do set NWDIR=%%~a
for %%a in ("s1945p.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Prehistoric Isle 2") do set NWDIR=%%~a
for %%a in ("preisle2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Metal Slug 3") do set NWDIR=%%~a
for %%a in ("mslug3.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Metal Slug 3 (not encrypted)") do set NWDIR=%%~a
for %%a in ("mslug3h.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Metal Slug 6 (Metal Slug 3 bootleg)") do set NWDIR=%%~a
for %%a in ("mslug3b6.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2000") do set NWDIR=%%~a
for %%a in ("kof2000.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2000 (not encrypted)") do set NWDIR=%%~a
for %%a in ("kof2000n.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Bang Bead") do set NWDIR=%%~a
for %%a in ("bangbead.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Nightmare in the Dark") do set NWDIR=%%~a
for %%a in ("nitd.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Nightmare in the Dark (bootleg)") do set NWDIR=%%~a
for %%a in ("nitdbl.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Sengoku 3") do set NWDIR=%%~a
for %%a in ("sengoku3.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2001 (set 1)") do set NWDIR=%%~a
for %%a in ("kof2001.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2001 (set 2)") do set NWDIR=%%~a
for %%a in ("kof2001h.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Crouching Tiger Hidden Dragon 2003 (The King of Fighters 2001 bootleg)") do set NWDIR=%%~a
for %%a in ("cthd2003.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Crouching Tiger Hidden Dragon 2003 Super Plus (The King of Fighters 2001 bootleg)") do set NWDIR=%%~a
for %%a in ("ct2k3sp.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Crouching Tiger Hidden Dragon 2003 Super Plus alternate (The King of Fighters 2001 bootleg)") do set NWDIR=%%~a
for %%a in ("ct2k3sa.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Metal Slug 4 (set 1)") do set NWDIR=%%~a
for %%a in ("mslug4.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Metal Slug 4 (set 2)") do set NWDIR=%%~a
for %%a in ("mslug4h.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Metal Slug 4 Plus (bootleg)") do set NWDIR=%%~a
for %%a in ("ms4plus.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Rage of the Dragons") do set NWDIR=%%~a
for %%a in ("rotd.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2002") do set NWDIR=%%~a
for %%a in ("kof2002.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2002 (bootleg)") do set NWDIR=%%~a
for %%a in ("kof2002b.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2002 Plus (bootleg set 1)") do set NWDIR=%%~a
for %%a in ("kf2k2pls.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2002 Plus (bootleg set 2)") do set NWDIR=%%~a
for %%a in ("kf2k2pla.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2002 Magic Plus (bootleg)") do set NWDIR=%%~a
for %%a in ("kf2k2mp.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2002 Magic Plus II (bootleg)") do set NWDIR=%%~a
for %%a in ("kf2k2mp2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 10th Anniversary (The King of Fighters 2002 bootleg)") do set NWDIR=%%~a
for %%a in ("kof10th.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 10th Anniversary 2005 Unique (The King of Fighters 2002 bootleg)") do set NWDIR=%%~a
for %%a in ("kf2k5uni.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 10th Anniversary Extra Plus (The King of Fighters 2002 bootleg)") do set NWDIR=%%~a
for %%a in ("kf10thep.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters Special Edition 2004 (The King of Fighters 2002 bootleg)") do set NWDIR=%%~a
for %%a in ("kof2k4se.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Matrimelee") do set NWDIR=%%~a
for %%a in ("matrim.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Matrimelee") do set NWDIR=%%~a
for %%a in ("matrimbl.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Pochi and Nyaa") do set NWDIR=%%~a
for %%a in ("pnyaa.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Metal Slug 5 (JAMMA PCB)") do set NWDIR=%%~a
for %%a in ("ms5pcb.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Metal Slug 5") do set NWDIR=%%~a
for %%a in ("mslug5.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Metal Slug 5 (AES Cart)") do set NWDIR=%%~a
for %%a in ("mslug5h.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Metal Slug 5 Plus (bootleg)") do set NWDIR=%%~a
for %%a in ("ms5plus.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("SNK vs. Capcom - SVC Chaos (JAMMA PCB, set 1)") do set NWDIR=%%~a
for %%a in ("svcpcb.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("SNK vs. Capcom - SVC Chaos (JAMMA PCB, set 2)") do set NWDIR=%%~a
for %%a in ("svcpcba.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("SNK vs. Capcom - SVC Chaos") do set NWDIR=%%~a
for %%a in ("svc.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("SNK vs. Capcom - SVC Chaos (bootleg)") do set NWDIR=%%~a
for %%a in ("svcboot.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("SNK vs. Capcom - SVC Chaos Plus (bootleg set 1)") do set NWDIR=%%~a
for %%a in ("svcplus.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("SNK vs. Capcom - SVC Chaos Plus (bootleg set 2)") do set NWDIR=%%~a
for %%a in ("svcplusa.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("SNK vs. Capcom - SVC Chaos Super Plus (bootleg)") do set NWDIR=%%~a
for %%a in ("svcsplus.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Samurai Shodown V") do set NWDIR=%%~a
for %%a in ("samsho5.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Samurai Shodown V") do set NWDIR=%%~a
for %%a in ("samsho5h.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Samurai Shodown V") do set NWDIR=%%~a
for %%a in ("samsho5b.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2003 (Japan, JAMMA PCB)") do set NWDIR=%%~a
for %%a in ("kf2k3pcb.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2003") do set NWDIR=%%~a
for %%a in ("kof2003.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2003 (AES cart)") do set NWDIR=%%~a
for %%a in ("kof2003h.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2003 (bootleg set 1)") do set NWDIR=%%~a
for %%a in ("kf2k3bl.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2003 (bootleg set 2)") do set NWDIR=%%~a
for %%a in ("kf2k3bla.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2004 Plus") do set NWDIR=%%~a
for %%a in ("kf2k3pl.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2004 Ultra Plus (The King of Fighters 2003 bootleg)") do set NWDIR=%%~a
for %%a in ("kf2k3upl.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Samurai Shodown V Special") do set NWDIR=%%~a
for %%a in ("samsh5sp.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Samurai Shodown V Special") do set NWDIR=%%~a
for %%a in ("samsh5sph.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Samurai Shodown V Special") do set NWDIR=%%~a
for %%a in ("samsh5spn.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Jockey Grand Prix") do set NWDIR=%%~a
for %%a in ("jockeygp.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("V-Liner (set 1)") do set NWDIR=%%~a
for %%a in ("vliner.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("V-Liner (set 2)") do set NWDIR=%%~a
for %%a in ("vlinero.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Digger Man (prototype)") do set NWDIR=%%~a
for %%a in ("diggerma.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("'98 NeoPri Best 44 (Neo Print)") do set NWDIR=%%~a
for %%a in ("98best44.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Bang Bead (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("bngbeadn.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Ganryu (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("ganryun.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Garou - Mark of the Wolves (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("garoun.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Matrimelee (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("matrimnd.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Metal Slug 3 (non encrypted P, decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("mslug3nd.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Metal Slug 4 (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("mslug4nd.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Metal Slug 5 (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("mslug5nd.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Nightmare in the Dark (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("nitdn.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Prehistoric Isle 2 (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("preisl2n.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Rage of the Dragons (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("rotdnd.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Sengoku 3 (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("sngoku3n.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Strikers 1945 Plus (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("s1945pn.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters '99 - Millennium Battle (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("kof99nd.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2000 (non encrypted P, decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("kof2knd.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2001 (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("kof2k1nd.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2002 (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("kof2k2nd.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("The King of Fighters 2003 (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("kof2k3nd.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Zupapa! (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("zupapan.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Samurai Shodown V (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("samsh5nd.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Samurai Shodown V Special (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("ss5shnd.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("SNK Vs. CAPCOM (decrypted C) (non-MAME)") do set NWDIR=%%~a
for %%a in ("svcnd.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("NeoPong (v1.1, non-MAME)") do set NWDIR=%%~a
for %%a in ("neopong.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("NeoPong (v1.0, non-MAME)") do set NWDIR=%%~a
for %%a in ("neopong10.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Neo No Panepon (20021005, non-MAME)") do set NWDIR=%%~a
for %%a in ("neonopon.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Neo No Panepon (20020707#1, non-MAME)") do set NWDIR=%%~a
for %%a in ("neonopon1.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Neo No Panepon (20020707#2, non-MAME)") do set NWDIR=%%~a
for %%a in ("neonopon2.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("Neo No Panepon (20020822, non-MAME)") do set NWDIR=%%~a
for %%a in ("neonopon3.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
SET NWDIR=The King of Fighters Special Edition 2004 (non-MAME)
for %%a in ("kofse2k4.zip") do SET ROM=%%~a
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
for %%a in ("syscheck.zip") do SET ROM=%%~a
if exist "%ROM%" move /Y "%ROM%" "SOURCE"
for %%a in ("zintrkcd.zip") do SET ROM=%%~a
if exist "%ROM%" move /Y "%ROM%" "SOURCE"
for %%a in ("neocd.zip") do SET ROM=%%~a
if exist "%ROM%" move /Y "%ROM%" "SOURCE"
for %%a in ("gg.zip") do SET ROM=%%~a-bios
if exist "%ROM%" move /Y "%ROM%" "SOURCE"
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*.zip"') do mkdir "%%~na" && move /Y "%%~a" "%%~na"

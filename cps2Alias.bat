del "%GBC%\cps2roms.ini"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h') do echo %%~a>>"%GBC%\cps2oms.ini"
for %%R in ("%GBC%\cps2roms.ini") do if "%%~zR" equ "" goto :moveback
for %%R in ("%GBC%\cps2roms.ini") do if "%%~zR" equ "0" goto :moveback
goto :aliasbegin

:LINKN
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & call :%LINKR%
exit /b


:WINV
mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
exit /b
:WINLEG
linkd "%CD%\SOURCE\%ROM%" "%NWDIR%\%ROM%"
exit /b


:moveback
cd "SOURCE"
move "*.zip" "%GBG%\%GAM%\%CONS%\%CPS2%"
:aliasbegin
cd "%GBG%\%GAM%\%CONS%\%CPS2%"
mkdir "SOURCE"	
ATTRIB +H SOURCE

for %%a in ("Super Street Fighter II - The New Challengers (World 930911)") do set NWDIR=%%~a
for %%a in ("ssf2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II - The New Challengers (USA 930911)") do set NWDIR=%%~a
for %%a in ("ssf2u.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II - The New Challengers (Asia 931005)") do set NWDIR=%%~a
for %%a in ("ssf2a.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II - The New Challengers (Asia 930914)") do set NWDIR=%%~a
for %%a in ("ssf2ar1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II - The New Challengers (Japan 931005)") do set NWDIR=%%~a
for %%a in ("ssf2j.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II - The New Challengers (Japan 930911)") do set NWDIR=%%~a
for %%a in ("ssf2jr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II - The New Challengers (Japan 930910)") do set NWDIR=%%~a
for %%a in ("ssf2jr2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II - The New Challengers (Hispanic 930911)") do set NWDIR=%%~a
for %%a in ("ssf2h.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II - The Tournament Battle (World 931119)") do set NWDIR=%%~a
for %%a in ("ssf2tb.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II - The Tournament Battle (World 930911)") do set NWDIR=%%~a
for %%a in ("ssf2tbr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II - The Tournament Battle (Japan 930911)") do set NWDIR=%%~a
for %%a in ("ssf2tbj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Eco Fighters (World 931203)") do set NWDIR=%%~a
for %%a in ("ecofghtr.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Eco Fighters (USA 940215)") do set NWDIR=%%~a
for %%a in ("ecofghtru.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Eco Fighters (USA 931203)") do set NWDIR=%%~a
for %%a in ("ecofghtru1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Eco Fighters (Asia 931203)") do set NWDIR=%%~a
for %%a in ("ecofghtra.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Eco Fighters (Hispanic 931203)") do set NWDIR=%%~a
for %%a in ("ecofghtrh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Ultimate Ecology (Japan 931203)") do set NWDIR=%%~a
for %%a in ("uecology.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Euro 940412)") do set NWDIR=%%~a
for %%a in ("ddtod.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Euro 940113)") do set NWDIR=%%~a
for %%a in ("ddtodr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (USA 940125)") do set NWDIR=%%~a
for %%a in ("ddtodu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (USA 940113)") do set NWDIR=%%~a
for %%a in ("ddtodur1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Japan 940412)") do set NWDIR=%%~a
for %%a in ("ddtodj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Japan 940125)") do set NWDIR=%%~a
for %%a in ("ddtodjr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Japan 940113)") do set NWDIR=%%~a
for %%a in ("ddtodjr2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Asia 940113)") do set NWDIR=%%~a
for %%a in ("ddtoda.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Hispanic 940412)") do set NWDIR=%%~a
for %%a in ("ddtodh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Hispanic 940125)") do set NWDIR=%%~a
for %%a in ("ddtodhr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Hispanic 940113)") do set NWDIR=%%~a
for %%a in ("ddtodhr2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II Turbo (World 940223)") do set NWDIR=%%~a
for %%a in ("ssf2t.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II Turbo (USA 940323)") do set NWDIR=%%~a
for %%a in ("ssf2tu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II Turbo (USA 940223)") do set NWDIR=%%~a
for %%a in ("ssf2tur1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II Turbo (Asia 940223)") do set NWDIR=%%~a
for %%a in ("ssf2ta.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II X - Grand Master Challenge (Japan 940223)") do set NWDIR=%%~a
for %%a in ("ssf2xj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Alien vs. Predator (Euro 940520)") do set NWDIR=%%~a
for %%a in ("avsp.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Alien vs. Predator (USA 940520)") do set NWDIR=%%~a
for %%a in ("avspu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Alien vs. Predator (Japan 940520)") do set NWDIR=%%~a
for %%a in ("avspj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Alien vs. Predator (Asia 940520)") do set NWDIR=%%~a
for %%a in ("avspa.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Alien vs. Predator (Hispanic 940520)") do set NWDIR=%%~a
for %%a in ("avsph.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Darkstalkers - The Night Warriors (Euro 940705)") do set NWDIR=%%~a
for %%a in ("dstlk.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Darkstalkers - The Night Warriors (USA 940818)") do set NWDIR=%%~a
for %%a in ("dstlku.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Darkstalkers - The Night Warriors (USA 940705)") do set NWDIR=%%~a
for %%a in ("dstlkur1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Darkstalkers - The Night Warriors (Asia 940705)") do set NWDIR=%%~a
for %%a in ("dstlka.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Darkstalkers - The Night Warriors (Hispanic 940818)") do set NWDIR=%%~a
for %%a in ("dstlkh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Vampire - The Night Warriors (Japan 940705)") do set NWDIR=%%~a
for %%a in ("vampj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Vampire - The Night Warriors (Japan 940705 alt)") do set NWDIR=%%~a
for %%a in ("vampja.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Vampire - The Night Warriors (Japan 940630)") do set NWDIR=%%~a
for %%a in ("vampjr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Ring of Destruction - Slammasters II (Euro 940902)") do set NWDIR=%%~a
for %%a in ("ringdest.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Muscle Bomber - The International Blowout (Japan 940831)") do set NWDIR=%%~a
for %%a in ("smbomb.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Muscle Bomber - The International Blowout (Japan 940808)") do set NWDIR=%%~a
for %%a in ("smbombr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Armored Warriors (Euro 941024)") do set NWDIR=%%~a
for %%a in ("armwar.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Armored Warriors (Euro 941011)") do set NWDIR=%%~a
for %%a in ("armwarr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Armored Warriors (USA 941024)") do set NWDIR=%%~a
for %%a in ("armwaru.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Armored Warriors (USA 940920)") do set NWDIR=%%~a
for %%a in ("armwaru1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Powered Gear - Strategic Variant Armor Equipment (Japan 941024)") do set NWDIR=%%~a
for %%a in ("pgear.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Powered Gear - Strategic Variant Armor Equipment (Japan 940916)") do set NWDIR=%%~a
for %%a in ("pgearr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Armored Warriors (Asia 940920)") do set NWDIR=%%~a
for %%a in ("armwara.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men - Children of the Atom (Euro 950105)") do set NWDIR=%%~a
for %%a in ("xmcota.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men - Children of the Atom (USA 950105)") do set NWDIR=%%~a
for %%a in ("xmcotau.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men - Children of the Atom (Hispanic 950331)") do set NWDIR=%%~a
for %%a in ("xmcotah.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men - Children of the Atom (Hispanic 950105)") do set NWDIR=%%~a
for %%a in ("xmcotahr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men - Children of the Atom (Japan 950105)") do set NWDIR=%%~a
for %%a in ("xmcotaj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men - Children of the Atom (Japan 941222)") do set NWDIR=%%~a
for %%a in ("xmcotaj1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men - Children of the Atom (Japan 941219)") do set NWDIR=%%~a
for %%a in ("xmcotaj2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men - Children of the Atom (Japan 941217)") do set NWDIR=%%~a
for %%a in ("xmcotaj3.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men - Children of the Atom (Asia 950105)") do set NWDIR=%%~a
for %%a in ("xmcotaa.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men - Children of the Atom (Asia 941217)") do set NWDIR=%%~a
for %%a in ("xmcotaar1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men - Children of the Atom (Japan 941208 rent version)") do set NWDIR=%%~a
for %%a in ("xmcotajr.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Night Warriors - Darkstalkers' Revenge (Euro 950316)") do set NWDIR=%%~a
for %%a in ("nwarr.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Night Warriors - Darkstalkers' Revenge (USA 950406)") do set NWDIR=%%~a
for %%a in ("nwarru.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Night Warriors - Darkstalkers' Revenge (Hispanic 950403)") do set NWDIR=%%~a
for %%a in ("nwarrh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Night Warriors - Darkstalkers' Revenge (Brazil 950403)") do set NWDIR=%%~a
for %%a in ("nwarrb.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Night Warriors - Darkstalkers' Revenge (Asia 950302)") do set NWDIR=%%~a
for %%a in ("nwarra.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Vampire Hunter - Darkstalkers' Revenge (Japan 950316)") do set NWDIR=%%~a
for %%a in ("vhuntj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Vampire Hunter - Darkstalkers' Revenge (Japan 950307)") do set NWDIR=%%~a
for %%a in ("vhuntjr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Vampire Hunter - Darkstalkers' Revenge (Japan 950302)") do set NWDIR=%%~a
for %%a in ("vhuntjr2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Cyberbots - Fullmetal Madness (Euro 950424)") do set NWDIR=%%~a
for %%a in ("cybots.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Cyberbots - Fullmetal Madness (USA 950424)") do set NWDIR=%%~a
for %%a in ("cybotsu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Cyberbots - Fullmetal Madness (Japan 950420)") do set NWDIR=%%~a
for %%a in ("cybotsj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Alpha - Warriors' Dreams (Euro 950727)") do set NWDIR=%%~a
for %%a in ("sfa.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Alpha - Warriors' Dreams (Euro 950718)") do set NWDIR=%%~a
for %%a in ("sfar1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Alpha - Warriors' Dreams (Euro 950627)") do set NWDIR=%%~a
for %%a in ("sfar2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Alpha - Warriors' Dreams (Euro 950605)") do set NWDIR=%%~a
for %%a in ("sfar3.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Alpha - Warriors' Dreams (USA 950627)") do set NWDIR=%%~a
for %%a in ("sfau.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero (Asia 950627)") do set NWDIR=%%~a
for %%a in ("sfza.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero (Japan 950727)") do set NWDIR=%%~a
for %%a in ("sfzj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero (Japan 950627)") do set NWDIR=%%~a
for %%a in ("sfzjr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero (Japan 950605)") do set NWDIR=%%~a
for %%a in ("sfzjr2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero (Hispanic 950718)") do set NWDIR=%%~a
for %%a in ("sfzh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero (Hispanic 950627)") do set NWDIR=%%~a
for %%a in ("sfzhr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero (Brazil 951109)") do set NWDIR=%%~a
for %%a in ("sfzb.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero (Brazil 950727)") do set NWDIR=%%~a
for %%a in ("sfzbr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Mega Man - The Power Battle (CPS2, USA 951006, SAMPLE Version)") do set NWDIR=%%~a
for %%a in ("mmancp2u.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Rockman - The Power Battle (CPS2, Japan 950922)") do set NWDIR=%%~a
for %%a in ("rmancp2j.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes (Euro 951024)") do set NWDIR=%%~a
for %%a in ("msh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes (USA 951024)") do set NWDIR=%%~a
for %%a in ("mshu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes (Japan 951117)") do set NWDIR=%%~a
for %%a in ("mshj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes (Japan 951024)") do set NWDIR=%%~a
for %%a in ("mshjr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes (Asia 951024)") do set NWDIR=%%~a
for %%a in ("msha.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes (Hispanic 951117)") do set NWDIR=%%~a
for %%a in ("mshh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes (Brazil 951117)") do set NWDIR=%%~a
for %%a in ("mshb.zip") do set ROM=%%~a
call :LINKN
for %%a in ("19XX - The War Against Destiny (USA 951207)") do set NWDIR=%%~a
for %%a in ("19xx.zip") do set ROM=%%~a
call :LINKN
for %%a in ("19XX - The War Against Destiny (Japan 951225)") do set NWDIR=%%~a
for %%a in ("19xxj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("19XX - The War Against Destiny (Japan 951207)") do set NWDIR=%%~a
for %%a in ("19xxjr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("19XX - The War Against Destiny (Asia 951207)") do set NWDIR=%%~a
for %%a in ("19xxa.zip") do set ROM=%%~a
call :LINKN
for %%a in ("19XX - The War Against Destiny (Hispanic 951218)") do set NWDIR=%%~a
for %%a in ("19xxh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("19XX - The War Against Destiny (Brazil 951218)") do set NWDIR=%%~a
for %%a in ("19xxb.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Euro 960619)") do set NWDIR=%%~a
for %%a in ("ddsom.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Euro 960223)") do set NWDIR=%%~a
for %%a in ("ddsomr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Euro 960209)") do set NWDIR=%%~a
for %%a in ("ddsomr2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Euro 960208)") do set NWDIR=%%~a
for %%a in ("ddsomr3.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (USA 960619)") do set NWDIR=%%~a
for %%a in ("ddsomu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (USA 960209)") do set NWDIR=%%~a
for %%a in ("ddsomur1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Japan 960206)") do set NWDIR=%%~a
for %%a in ("ddsomjr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Japan 960619)") do set NWDIR=%%~a
for %%a in ("ddsomj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Asia 960619)") do set NWDIR=%%~a
for %%a in ("ddsoma.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Hispanic 960223)") do set NWDIR=%%~a
for %%a in ("ddsomh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Brazil 960223)") do set NWDIR=%%~a
for %%a in ("ddsomb.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Alpha 2 (Euro 960229)") do set NWDIR=%%~a
for %%a in ("sfa2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Alpha 2 (USA 960306)") do set NWDIR=%%~a
for %%a in ("sfa2u.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 2 (Japan 960227)") do set NWDIR=%%~a
for %%a in ("sfz2j.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 2 (Asia 960227)") do set NWDIR=%%~a
for %%a in ("sfz2a.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 2 (Brazil 960531)") do set NWDIR=%%~a
for %%a in ("sfz2b.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 2 (Brazil 960304)") do set NWDIR=%%~a
for %%a in ("sfz2br1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 2 (Hispanic 960304)") do set NWDIR=%%~a
for %%a in ("sfz2h.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 2 (Oceania 960229)") do set NWDIR=%%~a
for %%a in ("sfz2n.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Puzzle Fighter II Turbo (USA 960620)") do set NWDIR=%%~a
for %%a in ("spf2t.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Puzzle Fighter II X (Japan 960531)") do set NWDIR=%%~a
for %%a in ("spf2xj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Puzzle Fighter II Turbo (Asia 960529)") do set NWDIR=%%~a
for %%a in ("spf2ta.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Puzzle Fighter II Turbo (Hispanic 960531)") do set NWDIR=%%~a
for %%a in ("spf2th.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Quiz Nanairo Dreams - Nijiirochou no Kiseki (Japan 960826)") do set NWDIR=%%~a
for %%a in ("qndream.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Mega Man 2 - The Power Fighters (USA 960708)") do set NWDIR=%%~a
for %%a in ("megaman2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Mega Man 2 - The Power Fighters (Asia 960708)") do set NWDIR=%%~a
for %%a in ("megaman2a.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Rockman 2 - The Power Fighters (Japan 960708)") do set NWDIR=%%~a
for %%a in ("rockman2j.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Mega Man 2 - The Power Fighters (Hispanic 960712)") do set NWDIR=%%~a
for %%a in ("megaman2h.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Giga Man 2 - The Power Fighters (bootleg of Mega Man 2 - The Power Fighters)") do set NWDIR=%%~a
for %%a in ("gigamn2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 2 Alpha (Asia 960826)") do set NWDIR=%%~a
for %%a in ("sfz2al.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 2 Alpha (Japan 960805)") do set NWDIR=%%~a
for %%a in ("sfz2alj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 2 Alpha (Hispanic 960813)") do set NWDIR=%%~a
for %%a in ("sfz2alh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 2 Alpha (Brazil 960813)") do set NWDIR=%%~a
for %%a in ("sfz2alb.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men Vs. Street Fighter (Euro 961004)") do set NWDIR=%%~a
for %%a in ("xmvsf.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men Vs. Street Fighter (Euro 960910)") do set NWDIR=%%~a
for %%a in ("xmvsfr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men Vs. Street Fighter (USA 961023)") do set NWDIR=%%~a
for %%a in ("xmvsfu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men Vs. Street Fighter (USA 961004)") do set NWDIR=%%~a
for %%a in ("xmvsfur1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men Vs. Street Fighter (Japan 961004)") do set NWDIR=%%~a
for %%a in ("xmvsfj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men Vs. Street Fighter (Japan 960910)") do set NWDIR=%%~a
for %%a in ("xmvsfjr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men Vs. Street Fighter (Japan 960909)") do set NWDIR=%%~a
for %%a in ("xmvsfjr2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men Vs. Street Fighter (Asia 961023)") do set NWDIR=%%~a
for %%a in ("xmvsfa.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men Vs. Street Fighter (Asia 960919)") do set NWDIR=%%~a
for %%a in ("xmvsfar1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men Vs. Street Fighter (Asia 960910)") do set NWDIR=%%~a
for %%a in ("xmvsfar2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men Vs. Street Fighter (Hispanic 961004)") do set NWDIR=%%~a
for %%a in ("xmvsfh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men Vs. Street Fighter (Brazil 961023)") do set NWDIR=%%~a
for %%a in ("xmvsfb.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Battle Circuit (Euro 970319)") do set NWDIR=%%~a
for %%a in ("batcir.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Battle Circuit (Japan 970319)") do set NWDIR=%%~a
for %%a in ("batcirj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Battle Circuit (Asia 970319)") do set NWDIR=%%~a
for %%a in ("batcira.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Vampire Savior - The Lord of Vampire (Euro 970519)") do set NWDIR=%%~a
for %%a in ("vsav.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Vampire Savior - The Lord of Vampire (USA 970519)") do set NWDIR=%%~a
for %%a in ("vsavu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Vampire Savior - The Lord of Vampire (Japan 970519)") do set NWDIR=%%~a
for %%a in ("vsavj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Vampire Savior - The Lord of Vampire (Asia 970519)") do set NWDIR=%%~a
for %%a in ("vsava.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Vampire Savior - The Lord of Vampire (Hispanic 970519)") do set NWDIR=%%~a
for %%a in ("vsavh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Euro 970625)") do set NWDIR=%%~a
for %%a in ("mshvsf.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes Vs. Street Fighter (USA 970827)") do set NWDIR=%%~a
for %%a in ("mshvsfu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes Vs. Street Fighter (USA 970625)") do set NWDIR=%%~a
for %%a in ("mshvsfu1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Japan 970707)") do set NWDIR=%%~a
for %%a in ("mshvsfj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Japan 970702)") do set NWDIR=%%~a
for %%a in ("mshvsfj1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Japan 970625)") do set NWDIR=%%~a
for %%a in ("mshvsfj2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Hispanic 970625)") do set NWDIR=%%~a
for %%a in ("mshvsfh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Asia 970625)") do set NWDIR=%%~a
for %%a in ("mshvsfa.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Asia 970620)") do set NWDIR=%%~a
for %%a in ("mshvsfa1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Brazil 970827)") do set NWDIR=%%~a
for %%a in ("mshvsfb.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Brazil 970625)") do set NWDIR=%%~a
for %%a in ("mshvsfb1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Capcom Sports Club (Euro 971017)") do set NWDIR=%%~a
for %%a in ("csclub.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Capcom Sports Club (Euro 970722)") do set NWDIR=%%~a
for %%a in ("csclub1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Capcom Sports Club (Japan 970722)") do set NWDIR=%%~a
for %%a in ("csclubj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Capcom Sports Club (Asia 970722)") do set NWDIR=%%~a
for %%a in ("cscluba.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Capcom Sports Club (Hispanic 970722)") do set NWDIR=%%~a
for %%a in ("csclubh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Gem Fighter Mini Mix (USA 970904)") do set NWDIR=%%~a
for %%a in ("sgemf.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Pocket Fighter (Japan 970904)") do set NWDIR=%%~a
for %%a in ("pfghtj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Gem Fighter - Mini Mix (Asia 970904)") do set NWDIR=%%~a
for %%a in ("sgemfa.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Gem Fighter - Mini Mix (Hispanic 970904)") do set NWDIR=%%~a
for %%a in ("sgemfh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Vampire Hunter 2 - Darkstalkers Revenge (Japan 970913)") do set NWDIR=%%~a
for %%a in ("vhunt2r1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Vampire Hunter 2 - Darkstalkers Revenge (Japan 970929)") do set NWDIR=%%~a
for %%a in ("vhunt2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Vampire Savior 2 - The Lord of Vampire (Japan 970913)") do set NWDIR=%%~a
for %%a in ("vsav2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Euro 980123)") do set NWDIR=%%~a
for %%a in ("mvsc.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Euro 980112)") do set NWDIR=%%~a
for %%a in ("mvscr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (USA 980123)") do set NWDIR=%%~a
for %%a in ("mvscu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (USA 971222)") do set NWDIR=%%~a
for %%a in ("mvscur1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Japan 980123)") do set NWDIR=%%~a
for %%a in ("mvscj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Japan 980112)") do set NWDIR=%%~a
for %%a in ("mvscjr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Asia 980123)") do set NWDIR=%%~a
for %%a in ("mvsca.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Asia 980112)") do set NWDIR=%%~a
for %%a in ("mvscar1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Hispanic 980123)") do set NWDIR=%%~a
for %%a in ("mvsch.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Brazil 980123)") do set NWDIR=%%~a
for %%a in ("mvscb.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Alpha 3 (Euro 980904)") do set NWDIR=%%~a
for %%a in ("sfa3.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Alpha 3 (USA 980904)") do set NWDIR=%%~a
for %%a in ("sfa3u.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Alpha 3 (USA 980629)") do set NWDIR=%%~a
for %%a in ("sfa3ur1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Alpha 3 (Hispanic 980629)") do set NWDIR=%%~a
for %%a in ("sfa3h.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Alpha 3 (Brazil 980629)") do set NWDIR=%%~a
for %%a in ("sfa3b.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 3 (Japan 980904)") do set NWDIR=%%~a
for %%a in ("sfz3j.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 3 (Japan 980727)") do set NWDIR=%%~a
for %%a in ("sfz3jr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 3 (Japan 980629)") do set NWDIR=%%~a
for %%a in ("sfz3jr2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 3 (Asia 980904)") do set NWDIR=%%~a
for %%a in ("sfz3a.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 3 (Asia 980701)") do set NWDIR=%%~a
for %%a in ("sfz3ar1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Giga Wing (USA 990222)") do set NWDIR=%%~a
for %%a in ("gigawing.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Giga Wing (Japan 990223)") do set NWDIR=%%~a
for %%a in ("gigawingj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Giga Wing (Asia 990222)") do set NWDIR=%%~a
for %%a in ("gigawinga.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Giga Wing (Hispanic 990222)") do set NWDIR=%%~a
for %%a in ("gigawingh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Giga Wing (Brazil 990222)") do set NWDIR=%%~a
for %%a in ("gigawingb.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Jyangokushi - Haoh no Saihai (Japan 990527)") do set NWDIR=%%~a
for %%a in ("jyangoku.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dimahoo (Euro 000121)") do set NWDIR=%%~a
for %%a in ("dimahoo.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dimahoo (USA 000121)") do set NWDIR=%%~a
for %%a in ("dimahoou.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Great Mahou Daisakusen (Japan 000121)") do set NWDIR=%%~a
for %%a in ("gmahou.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Mars Matrix - Hyper Solid Shooting (USA 000412)") do set NWDIR=%%~a
for %%a in ("mmatrix.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Mars Matrix - Hyper Solid Shooting (Japan 000412)") do set NWDIR=%%~a
for %%a in ("mmatrixj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("1944 - The Loop Master (USA 000620)") do set NWDIR=%%~a
for %%a in ("1944.zip") do set ROM=%%~a
call :LINKN
for %%a in ("1944 - The Loop Master (Japan 000620)") do set NWDIR=%%~a
for %%a in ("1944j.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Mighty! Pang (Euro 001010)") do set NWDIR=%%~a
for %%a in ("mpang.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Mighty! Pang (Euro 000925)") do set NWDIR=%%~a
for %%a in ("mpangr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Mighty! Pang (USA 001010)") do set NWDIR=%%~a
for %%a in ("mpangu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Mighty! Pang (Japan 001011)") do set NWDIR=%%~a
for %%a in ("mpangj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Progear (USA 010117)") do set NWDIR=%%~a
for %%a in ("progear.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Progear no Arashi (Japan 010117)") do set NWDIR=%%~a
for %%a in ("progearj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Progear (Asia 010117)") do set NWDIR=%%~a
for %%a in ("progeara.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Puzz Loop 2 (Euro 010302)") do set NWDIR=%%~a
for %%a in ("pzloop2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Puzz Loop 2 (Japan 010205)") do set NWDIR=%%~a
for %%a in ("pzloop2j.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Janpai Puzzle Choukou (Japan 010820)") do set NWDIR=%%~a
for %%a in ("choko.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Hyper Street Fighter 2 - The Anniversary Edition (USA 040202)") do set NWDIR=%%~a
for %%a in ("hsf2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Hyper Street Fighter 2 - The Anniversary Edition (Japan 031222)") do set NWDIR=%%~a
for %%a in ("hsf2j.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Hyper Street Fighter 2 - The Anniversary Edition (Asia 040202)") do set NWDIR=%%~a
for %%a in ("hsf2a.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II - The New Challengers (USA 930911 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("ssf2ud.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Euro 940412 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("ddtodd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Eco Fighters (World 931203 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("ecofghtrd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Alien vs. Predator (Euro 940520 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("avspd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Darkstalkers - The Night Warriors (USA 940705 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("dstlku1d.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Ring of Destruction - Slammasters II (Euro 940902 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("ringdstd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men - Children of the Atom (Euro 950105 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("xmcotad.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Night Warriors - Darkstalkers' Revenge (USA 950406 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("nwarrud.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Alpha - Warriors' Dreams (Euro 950727 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("sfad.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes (US 951024 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("mshud.zip") do set ROM=%%~a
call :LINKN
for %%a in ("19XX - The War Against Destiny (USA 951207 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("19xxd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 2 (Asia 960227 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("sfz2ad.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 2 (Japan 960227 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("sfz2jd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Puzzle Fighter II Turbo (USA 960620 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("spf2td.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Puzzle Fighter II X (Japan 960531 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("spf2xjd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (USA 960619 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("ddsomud.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Mega Man 2 - The Power Fighters (USA 960708 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("megamn2d.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 2 Alpha (Asia 960826 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("sfz2ald.zip") do set ROM=%%~a
call :LINKN
for %%a in ("X-Men Vs. Street Fighter (USA 961004 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("xmvsfu1d.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Battle Circuit (Euro 970319 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("batcird.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Vampire Savior - The Lord of Vampire (Euro 970519 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("vsavd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (USA 980123 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("mvscud.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Alpha 3 (USA 980904 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("sfa3ud.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Giga Wing (USA 990222 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("gigawingd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Giga Wing (Japan 990223 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("gigawingjd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("1944 - The Loop Master (USA 000620 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("1944d.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Progear (USA 010117 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("progearud.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Progear no Arashi (Japan 010117 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("progearjd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Progear no Arashi (Japan 010117) (decrypted bootleg)") do set NWDIR=%%~a
for %%a in ("progearjbl.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Hyper Street Fighter II - The Anniversary Edition (Asia 040202 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("hsf2d.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II - The Tournament Battle (World 931119 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("ssf2tbd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Street Fighter II X - Grand Master Challenge (Japan 940223 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("ssf2xjd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Super Gem Fighter Mini Mix (USA 970904 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("sgemfd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Armored Warriors (Euro 941011 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("armwar1d.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dimahoo (USA 000121 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("dimahoud.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Mars Matrix - Hyper Solid Shooting (Japan 000412 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("mmatrixd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Vampire Hunter 2 - Darkstalkers Revenge (Japan 970929 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("vhunt2d.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Vampire Savior 2 - The Lord of Vampire (Japan 970913 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("vsav2d.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Capcom Sports Club (Euro 970722 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("csclub1d.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Cyberbots - Fullmetal Madness (USA 950424 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("cybotsud.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Marvel Super Heroes Vs. Street Fighter (USA 970625 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("mshvsfu1d.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero 3 (Japan 980629 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("sfz3jr2d.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Capcom Sports Club (970722 Japan, Rent version)") do set NWDIR=%%~a
for %%a in ("csclubjr.zip") do set ROM=%%~a
call :LINKN
for /f "tokens=* delims= " %%a in ('dir /b /a-d "*.zip"') do mkdir "%%~na" && move /Y "%%~a" "%%~na"
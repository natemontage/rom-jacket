if "%HYPTYPE%"=="BA" do pushd "%HSMETA%\%CPS2%\Images\%ARTNUM%" && set CPS2NAME=Folder.png
if "%HYPTYPE%"=="VD" do pushd "%HSMETA%\%CPS2%\Video" && set CPS2NAME=.trailer\%%~a
if "%HYPTYPE%"=="BN" do pushd "%HSMETA%\%CPS2%\Images\Wheel" && set CPS2NAME=Banner.png
for %%a in ("Super Street Fighter II - The New Challengers (World 930911)") do set NWDIR=%%~a
for %%a in ("ssf2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II - The New Challengers (USA 930911)") do set NWDIR=%%~a
for %%a in ("ssf2u.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II - The New Challengers (Asia 931005)") do set NWDIR=%%~a
for %%a in ("ssf2a.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II - The New Challengers (Asia 930914)") do set NWDIR=%%~a
for %%a in ("ssf2ar1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II - The New Challengers (Japan 931005)") do set NWDIR=%%~a
for %%a in ("ssf2j.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II - The New Challengers (Japan 930911)") do set NWDIR=%%~a
for %%a in ("ssf2jr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II - The New Challengers (Japan 930910)") do set NWDIR=%%~a
for %%a in ("ssf2jr2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II - The New Challengers (Hispanic 930911)") do set NWDIR=%%~a
for %%a in ("ssf2h.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II - The Tournament Battle (World 931119)") do set NWDIR=%%~a
for %%a in ("ssf2tb.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II - The Tournament Battle (World 930911)") do set NWDIR=%%~a
for %%a in ("ssf2tbr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II - The Tournament Battle (Japan 930911)") do set NWDIR=%%~a
for %%a in ("ssf2tbj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Eco Fighters (World 931203)") do set NWDIR=%%~a
for %%a in ("ecofghtr.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Eco Fighters (USA 940215)") do set NWDIR=%%~a
for %%a in ("ecofghtru.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Eco Fighters (USA 931203)") do set NWDIR=%%~a
for %%a in ("ecofghtru1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Eco Fighters (Asia 931203)") do set NWDIR=%%~a
for %%a in ("ecofghtra.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Eco Fighters (Hispanic 931203)") do set NWDIR=%%~a
for %%a in ("ecofghtrh.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Ultimate Ecology (Japan 931203)") do set NWDIR=%%~a
for %%a in ("uecology.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Euro 940412)") do set NWDIR=%%~a
for %%a in ("ddtod.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Euro 940113)") do set NWDIR=%%~a
for %%a in ("ddtodr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (USA 940125)") do set NWDIR=%%~a
for %%a in ("ddtodu.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (USA 940113)") do set NWDIR=%%~a
for %%a in ("ddtodur1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Japan 940412)") do set NWDIR=%%~a
for %%a in ("ddtodj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Japan 940125)") do set NWDIR=%%~a
for %%a in ("ddtodjr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Japan 940113)") do set NWDIR=%%~a
for %%a in ("ddtodjr2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Asia 940113)") do set NWDIR=%%~a
for %%a in ("ddtoda.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Hispanic 940412)") do set NWDIR=%%~a
for %%a in ("ddtodh.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Hispanic 940125)") do set NWDIR=%%~a
for %%a in ("ddtodhr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Hispanic 940113)") do set NWDIR=%%~a
for %%a in ("ddtodhr2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II Turbo (World 940223)") do set NWDIR=%%~a
for %%a in ("ssf2t.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II Turbo (USA 940323)") do set NWDIR=%%~a
for %%a in ("ssf2tu.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II Turbo (USA 940223)") do set NWDIR=%%~a
for %%a in ("ssf2tur1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II Turbo (Asia 940223)") do set NWDIR=%%~a
for %%a in ("ssf2ta.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II X - Grand Master Challenge (Japan 940223)") do set NWDIR=%%~a
for %%a in ("ssf2xj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Alien vs. Predator (Euro 940520)") do set NWDIR=%%~a
for %%a in ("avsp.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Alien vs. Predator (USA 940520)") do set NWDIR=%%~a
for %%a in ("avspu.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Alien vs. Predator (Japan 940520)") do set NWDIR=%%~a
for %%a in ("avspj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Alien vs. Predator (Asia 940520)") do set NWDIR=%%~a
for %%a in ("avspa.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Alien vs. Predator (Hispanic 940520)") do set NWDIR=%%~a
for %%a in ("avsph.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Darkstalkers - The Night Warriors (Euro 940705)") do set NWDIR=%%~a
for %%a in ("dstlk.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Darkstalkers - The Night Warriors (USA 940818)") do set NWDIR=%%~a
for %%a in ("dstlku.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Darkstalkers - The Night Warriors (USA 940705)") do set NWDIR=%%~a
for %%a in ("dstlkur1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Darkstalkers - The Night Warriors (Asia 940705)") do set NWDIR=%%~a
for %%a in ("dstlka.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Darkstalkers - The Night Warriors (Hispanic 940818)") do set NWDIR=%%~a
for %%a in ("dstlkh.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Vampire - The Night Warriors (Japan 940705)") do set NWDIR=%%~a
for %%a in ("vampj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Vampire - The Night Warriors (Japan 940705 alt)") do set NWDIR=%%~a
for %%a in ("vampja.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Vampire - The Night Warriors (Japan 940630)") do set NWDIR=%%~a
for %%a in ("vampjr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Ring of Destruction - Slammasters II (Euro 940902)") do set NWDIR=%%~a
for %%a in ("ringdest.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Muscle Bomber - The International Blowout (Japan 940831)") do set NWDIR=%%~a
for %%a in ("smbomb.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Muscle Bomber - The International Blowout (Japan 940808)") do set NWDIR=%%~a
for %%a in ("smbombr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Armored Warriors (Euro 941024)") do set NWDIR=%%~a
for %%a in ("armwar.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Armored Warriors (Euro 941011)") do set NWDIR=%%~a
for %%a in ("armwarr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Armored Warriors (USA 941024)") do set NWDIR=%%~a
for %%a in ("armwaru.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Armored Warriors (USA 940920)") do set NWDIR=%%~a
for %%a in ("armwaru1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Powered Gear - Strategic Variant Armor Equipment (Japan 941024)") do set NWDIR=%%~a
for %%a in ("pgear.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Powered Gear - Strategic Variant Armor Equipment (Japan 940916)") do set NWDIR=%%~a
for %%a in ("pgearr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Armored Warriors (Asia 940920)") do set NWDIR=%%~a
for %%a in ("armwara.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men - Children of the Atom (Euro 950105)") do set NWDIR=%%~a
for %%a in ("xmcota.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men - Children of the Atom (USA 950105)") do set NWDIR=%%~a
for %%a in ("xmcotau.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men - Children of the Atom (Hispanic 950331)") do set NWDIR=%%~a
for %%a in ("xmcotah.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men - Children of the Atom (Hispanic 950105)") do set NWDIR=%%~a
for %%a in ("xmcotahr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men - Children of the Atom (Japan 950105)") do set NWDIR=%%~a
for %%a in ("xmcotaj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men - Children of the Atom (Japan 941222)") do set NWDIR=%%~a
for %%a in ("xmcotaj1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men - Children of the Atom (Japan 941219)") do set NWDIR=%%~a
for %%a in ("xmcotaj2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men - Children of the Atom (Japan 941217)") do set NWDIR=%%~a
for %%a in ("xmcotaj3.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men - Children of the Atom (Asia 950105)") do set NWDIR=%%~a
for %%a in ("xmcotaa.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men - Children of the Atom (Asia 941217)") do set NWDIR=%%~a
for %%a in ("xmcotaar1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men - Children of the Atom (Japan 941208 rent version)") do set NWDIR=%%~a
for %%a in ("xmcotajr.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Night Warriors - Darkstalkers' Revenge (Euro 950316)") do set NWDIR=%%~a
for %%a in ("nwarr.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Night Warriors - Darkstalkers' Revenge (USA 950406)") do set NWDIR=%%~a
for %%a in ("nwarru.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Night Warriors - Darkstalkers' Revenge (Hispanic 950403)") do set NWDIR=%%~a
for %%a in ("nwarrh.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Night Warriors - Darkstalkers' Revenge (Brazil 950403)") do set NWDIR=%%~a
for %%a in ("nwarrb.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Night Warriors - Darkstalkers' Revenge (Asia 950302)") do set NWDIR=%%~a
for %%a in ("nwarra.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Vampire Hunter - Darkstalkers' Revenge (Japan 950316)") do set NWDIR=%%~a
for %%a in ("vhuntj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Vampire Hunter - Darkstalkers' Revenge (Japan 950307)") do set NWDIR=%%~a
for %%a in ("vhuntjr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Vampire Hunter - Darkstalkers' Revenge (Japan 950302)") do set NWDIR=%%~a
for %%a in ("vhuntjr2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Cyberbots - Fullmetal Madness (Euro 950424)") do set NWDIR=%%~a
for %%a in ("cybots.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Cyberbots - Fullmetal Madness (USA 950424)") do set NWDIR=%%~a
for %%a in ("cybotsu.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Cyberbots - Fullmetal Madness (Japan 950420)") do set NWDIR=%%~a
for %%a in ("cybotsj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Alpha - Warriors' Dreams (Euro 950727)") do set NWDIR=%%~a
for %%a in ("sfa.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Alpha - Warriors' Dreams (Euro 950718)") do set NWDIR=%%~a
for %%a in ("sfar1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Alpha - Warriors' Dreams (Euro 950627)") do set NWDIR=%%~a
for %%a in ("sfar2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Alpha - Warriors' Dreams (Euro 950605)") do set NWDIR=%%~a
for %%a in ("sfar3.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Alpha - Warriors' Dreams (USA 950627)") do set NWDIR=%%~a
for %%a in ("sfau.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero (Asia 950627)") do set NWDIR=%%~a
for %%a in ("sfza.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero (Japan 950727)") do set NWDIR=%%~a
for %%a in ("sfzj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero (Japan 950627)") do set NWDIR=%%~a
for %%a in ("sfzjr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero (Japan 950605)") do set NWDIR=%%~a
for %%a in ("sfzjr2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero (Hispanic 950718)") do set NWDIR=%%~a
for %%a in ("sfzh.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero (Hispanic 950627)") do set NWDIR=%%~a
for %%a in ("sfzhr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero (Brazil 951109)") do set NWDIR=%%~a
for %%a in ("sfzb.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero (Brazil 950727)") do set NWDIR=%%~a
for %%a in ("sfzbr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Mega Man - The Power Battle (CPS2, USA 951006, SAMPLE Version)") do set NWDIR=%%~a
for %%a in ("mmancp2u.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Rockman - The Power Battle (CPS2, Japan 950922)") do set NWDIR=%%~a
for %%a in ("rmancp2j.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes (Euro 951024)") do set NWDIR=%%~a
for %%a in ("msh.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes (USA 951024)") do set NWDIR=%%~a
for %%a in ("mshu.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes (Japan 951117)") do set NWDIR=%%~a
for %%a in ("mshj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes (Japan 951024)") do set NWDIR=%%~a
for %%a in ("mshjr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes (Asia 951024)") do set NWDIR=%%~a
for %%a in ("msha.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes (Hispanic 951117)") do set NWDIR=%%~a
for %%a in ("mshh.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes (Brazil 951117)") do set NWDIR=%%~a
for %%a in ("mshb.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("19XX - The War Against Destiny (USA 951207)") do set NWDIR=%%~a
for %%a in ("19xx.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("19XX - The War Against Destiny (Japan 951225)") do set NWDIR=%%~a
for %%a in ("19xxj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("19XX - The War Against Destiny (Japan 951207)") do set NWDIR=%%~a
for %%a in ("19xxjr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("19XX - The War Against Destiny (Asia 951207)") do set NWDIR=%%~a
for %%a in ("19xxa.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("19XX - The War Against Destiny (Hispanic 951218)") do set NWDIR=%%~a
for %%a in ("19xxh.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("19XX - The War Against Destiny (Brazil 951218)") do set NWDIR=%%~a
for %%a in ("19xxb.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Euro 960619)") do set NWDIR=%%~a
for %%a in ("ddsom.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Euro 960223)") do set NWDIR=%%~a
for %%a in ("ddsomr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Euro 960209)") do set NWDIR=%%~a
for %%a in ("ddsomr2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Euro 960208)") do set NWDIR=%%~a
for %%a in ("ddsomr3.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (USA 960619)") do set NWDIR=%%~a
for %%a in ("ddsomu.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (USA 960209)") do set NWDIR=%%~a
for %%a in ("ddsomur1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Japan 960206)") do set NWDIR=%%~a
for %%a in ("ddsomjr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Japan 960619)") do set NWDIR=%%~a
for %%a in ("ddsomj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Asia 960619)") do set NWDIR=%%~a
for %%a in ("ddsoma.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Hispanic 960223)") do set NWDIR=%%~a
for %%a in ("ddsomh.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (Brazil 960223)") do set NWDIR=%%~a
for %%a in ("ddsomb.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Alpha 2 (Euro 960229)") do set NWDIR=%%~a
for %%a in ("sfa2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Alpha 2 (USA 960306)") do set NWDIR=%%~a
for %%a in ("sfa2u.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 2 (Japan 960227)") do set NWDIR=%%~a
for %%a in ("sfz2j.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 2 (Asia 960227)") do set NWDIR=%%~a
for %%a in ("sfz2a.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 2 (Brazil 960531)") do set NWDIR=%%~a
for %%a in ("sfz2b.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 2 (Brazil 960304)") do set NWDIR=%%~a
for %%a in ("sfz2br1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 2 (Hispanic 960304)") do set NWDIR=%%~a
for %%a in ("sfz2h.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 2 (Oceania 960229)") do set NWDIR=%%~a
for %%a in ("sfz2n.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Puzzle Fighter II Turbo (USA 960620)") do set NWDIR=%%~a
for %%a in ("spf2t.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Puzzle Fighter II X (Japan 960531)") do set NWDIR=%%~a
for %%a in ("spf2xj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Puzzle Fighter II Turbo (Asia 960529)") do set NWDIR=%%~a
for %%a in ("spf2ta.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Puzzle Fighter II Turbo (Hispanic 960531)") do set NWDIR=%%~a
for %%a in ("spf2th.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Quiz Nanairo Dreams - Nijiirochou no Kiseki (Japan 960826)") do set NWDIR=%%~a
for %%a in ("qndream.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Mega Man 2 - The Power Fighters (USA 960708)") do set NWDIR=%%~a
for %%a in ("megaman2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Mega Man 2 - The Power Fighters (Asia 960708)") do set NWDIR=%%~a
for %%a in ("megaman2a.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Rockman 2 - The Power Fighters (Japan 960708)") do set NWDIR=%%~a
for %%a in ("rockman2j.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Mega Man 2 - The Power Fighters (Hispanic 960712)") do set NWDIR=%%~a
for %%a in ("megaman2h.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Giga Man 2 - The Power Fighters (bootleg of Mega Man 2 - The Power Fighters)") do set NWDIR=%%~a
for %%a in ("gigamn2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 2 Alpha (Asia 960826)") do set NWDIR=%%~a
for %%a in ("sfz2al.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 2 Alpha (Japan 960805)") do set NWDIR=%%~a
for %%a in ("sfz2alj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 2 Alpha (Hispanic 960813)") do set NWDIR=%%~a
for %%a in ("sfz2alh.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 2 Alpha (Brazil 960813)") do set NWDIR=%%~a
for %%a in ("sfz2alb.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men Vs. Street Fighter (Euro 961004)") do set NWDIR=%%~a
for %%a in ("xmvsf.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men Vs. Street Fighter (Euro 960910)") do set NWDIR=%%~a
for %%a in ("xmvsfr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men Vs. Street Fighter (USA 961023)") do set NWDIR=%%~a
for %%a in ("xmvsfu.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men Vs. Street Fighter (USA 961004)") do set NWDIR=%%~a
for %%a in ("xmvsfur1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men Vs. Street Fighter (Japan 961004)") do set NWDIR=%%~a
for %%a in ("xmvsfj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men Vs. Street Fighter (Japan 960910)") do set NWDIR=%%~a
for %%a in ("xmvsfjr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men Vs. Street Fighter (Japan 960909)") do set NWDIR=%%~a
for %%a in ("xmvsfjr2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men Vs. Street Fighter (Asia 961023)") do set NWDIR=%%~a
for %%a in ("xmvsfa.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men Vs. Street Fighter (Asia 960919)") do set NWDIR=%%~a
for %%a in ("xmvsfar1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men Vs. Street Fighter (Asia 960910)") do set NWDIR=%%~a
for %%a in ("xmvsfar2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men Vs. Street Fighter (Hispanic 961004)") do set NWDIR=%%~a
for %%a in ("xmvsfh.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men Vs. Street Fighter (Brazil 961023)") do set NWDIR=%%~a
for %%a in ("xmvsfb.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Battle Circuit (Euro 970319)") do set NWDIR=%%~a
for %%a in ("batcir.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Battle Circuit (Japan 970319)") do set NWDIR=%%~a
for %%a in ("batcirj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Battle Circuit (Asia 970319)") do set NWDIR=%%~a
for %%a in ("batcira.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Vampire Savior - The Lord of Vampire (Euro 970519)") do set NWDIR=%%~a
for %%a in ("vsav.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Vampire Savior - The Lord of Vampire (USA 970519)") do set NWDIR=%%~a
for %%a in ("vsavu.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Vampire Savior - The Lord of Vampire (Japan 970519)") do set NWDIR=%%~a
for %%a in ("vsavj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Vampire Savior - The Lord of Vampire (Asia 970519)") do set NWDIR=%%~a
for %%a in ("vsava.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Vampire Savior - The Lord of Vampire (Hispanic 970519)") do set NWDIR=%%~a
for %%a in ("vsavh.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Euro 970625)") do set NWDIR=%%~a
for %%a in ("mshvsf.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (USA 970827)") do set NWDIR=%%~a
for %%a in ("mshvsfu.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (USA 970625)") do set NWDIR=%%~a
for %%a in ("mshvsfu1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Japan 970707)") do set NWDIR=%%~a
for %%a in ("mshvsfj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Japan 970702)") do set NWDIR=%%~a
for %%a in ("mshvsfj1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Japan 970625)") do set NWDIR=%%~a
for %%a in ("mshvsfj2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Hispanic 970625)") do set NWDIR=%%~a
for %%a in ("mshvsfh.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Asia 970625)") do set NWDIR=%%~a
for %%a in ("mshvsfa.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Asia 970620)") do set NWDIR=%%~a
for %%a in ("mshvsfa1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Brazil 970827)") do set NWDIR=%%~a
for %%a in ("mshvsfb.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (Brazil 970625)") do set NWDIR=%%~a
for %%a in ("mshvsfb1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Capcom Sports Club (Euro 971017)") do set NWDIR=%%~a
for %%a in ("csclub.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Capcom Sports Club (Euro 970722)") do set NWDIR=%%~a
for %%a in ("csclub1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Capcom Sports Club (Japan 970722)") do set NWDIR=%%~a
for %%a in ("csclubj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Capcom Sports Club (Asia 970722)") do set NWDIR=%%~a
for %%a in ("cscluba.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Capcom Sports Club (Hispanic 970722)") do set NWDIR=%%~a
for %%a in ("csclubh.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Gem Fighter Mini Mix (USA 970904)") do set NWDIR=%%~a
for %%a in ("sgemf.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Pocket Fighter (Japan 970904)") do set NWDIR=%%~a
for %%a in ("pfghtj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Gem Fighter - Mini Mix (Asia 970904)") do set NWDIR=%%~a
for %%a in ("sgemfa.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Gem Fighter - Mini Mix (Hispanic 970904)") do set NWDIR=%%~a
for %%a in ("sgemfh.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Vampire Hunter 2 - Darkstalkers Revenge (Japan 970913)") do set NWDIR=%%~a
for %%a in ("vhunt2r1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Vampire Hunter 2 - Darkstalkers Revenge (Japan 970929)") do set NWDIR=%%~a
for %%a in ("vhunt2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Vampire Savior 2 - The Lord of Vampire (Japan 970913)") do set NWDIR=%%~a
for %%a in ("vsav2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Euro 980123)") do set NWDIR=%%~a
for %%a in ("mvsc.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Euro 980112)") do set NWDIR=%%~a
for %%a in ("mvscr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (USA 980123)") do set NWDIR=%%~a
for %%a in ("mvscu.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (USA 971222)") do set NWDIR=%%~a
for %%a in ("mvscur1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Japan 980123)") do set NWDIR=%%~a
for %%a in ("mvscj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Japan 980112)") do set NWDIR=%%~a
for %%a in ("mvscjr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Asia 980123)") do set NWDIR=%%~a
for %%a in ("mvsca.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Asia 980112)") do set NWDIR=%%~a
for %%a in ("mvscar1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Hispanic 980123)") do set NWDIR=%%~a
for %%a in ("mvsch.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (Brazil 980123)") do set NWDIR=%%~a
for %%a in ("mvscb.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Alpha 3 (Euro 980904)") do set NWDIR=%%~a
for %%a in ("sfa3.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Alpha 3 (USA 980904)") do set NWDIR=%%~a
for %%a in ("sfa3u.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Alpha 3 (USA 980629)") do set NWDIR=%%~a
for %%a in ("sfa3ur1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Alpha 3 (Hispanic 980629)") do set NWDIR=%%~a
for %%a in ("sfa3h.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Alpha 3 (Brazil 980629)") do set NWDIR=%%~a
for %%a in ("sfa3b.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 3 (Japan 980904)") do set NWDIR=%%~a
for %%a in ("sfz3j.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 3 (Japan 980727)") do set NWDIR=%%~a
for %%a in ("sfz3jr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 3 (Japan 980629)") do set NWDIR=%%~a
for %%a in ("sfz3jr2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 3 (Asia 980904)") do set NWDIR=%%~a
for %%a in ("sfz3a.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 3 (Asia 980701)") do set NWDIR=%%~a
for %%a in ("sfz3ar1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Giga Wing (USA 990222)") do set NWDIR=%%~a
for %%a in ("gigawing.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Giga Wing (Japan 990223)") do set NWDIR=%%~a
for %%a in ("gigawingj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Giga Wing (Asia 990222)") do set NWDIR=%%~a
for %%a in ("gigawinga.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Giga Wing (Hispanic 990222)") do set NWDIR=%%~a
for %%a in ("gigawingh.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Giga Wing (Brazil 990222)") do set NWDIR=%%~a
for %%a in ("gigawingb.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Jyangokushi - Haoh no Saihai (Japan 990527)") do set NWDIR=%%~a
for %%a in ("jyangoku.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dimahoo (Euro 000121)") do set NWDIR=%%~a
for %%a in ("dimahoo.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dimahoo (USA 000121)") do set NWDIR=%%~a
for %%a in ("dimahoou.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Great Mahou Daisakusen (Japan 000121)") do set NWDIR=%%~a
for %%a in ("gmahou.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Mars Matrix - Hyper Solid Shooting (USA 000412)") do set NWDIR=%%~a
for %%a in ("mmatrix.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Mars Matrix - Hyper Solid Shooting (Japan 000412)") do set NWDIR=%%~a
for %%a in ("mmatrixj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("1944 - The Loop Master (USA 000620)") do set NWDIR=%%~a
for %%a in ("1944.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("1944 - The Loop Master (Japan 000620)") do set NWDIR=%%~a
for %%a in ("1944j.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Mighty! Pang (Euro 001010)") do set NWDIR=%%~a
for %%a in ("mpang.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Mighty! Pang (Euro 000925)") do set NWDIR=%%~a
for %%a in ("mpangr1.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Mighty! Pang (USA 001010)") do set NWDIR=%%~a
for %%a in ("mpangu.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Mighty! Pang (Japan 001011)") do set NWDIR=%%~a
for %%a in ("mpangj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Progear (USA 010117)") do set NWDIR=%%~a
for %%a in ("progear.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Progear no Arashi (Japan 010117)") do set NWDIR=%%~a
for %%a in ("progearj.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Progear (Asia 010117)") do set NWDIR=%%~a
for %%a in ("progeara.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Puzz Loop 2 (Euro 010302)") do set NWDIR=%%~a
for %%a in ("pzloop2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Puzz Loop 2 (Japan 010205)") do set NWDIR=%%~a
for %%a in ("pzloop2j.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Janpai Puzzle Choukou (Japan 010820)") do set NWDIR=%%~a
for %%a in ("choko.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Hyper Street Fighter 2 - The Anniversary Edition (USA 040202)") do set NWDIR=%%~a
for %%a in ("hsf2.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Hyper Street Fighter 2 - The Anniversary Edition (Japan 031222)") do set NWDIR=%%~a
for %%a in ("hsf2j.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Hyper Street Fighter 2 - The Anniversary Edition (Asia 040202)") do set NWDIR=%%~a
for %%a in ("hsf2a.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II - The New Challengers (USA 930911 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("ssf2ud.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Tower of Doom (Euro 940412 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("ddtodd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Eco Fighters (World 931203 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("ecofghtrd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Alien vs. Predator (Euro 940520 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("avspd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Darkstalkers - The Night Warriors (USA 940705 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("dstlku1d.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Ring of Destruction - Slammasters II (Euro 940902 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("ringdstd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men - Children of the Atom (Euro 950105 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("xmcotad.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Night Warriors - Darkstalkers' Revenge (USA 950406 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("nwarrud.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Alpha - Warriors' Dreams (Euro 950727 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("sfad.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes (US 951024 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("mshud.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("19XX - The War Against Destiny (USA 951207 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("19xxd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 2 (Asia 960227 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("sfz2ad.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 2 (Japan 960227 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("sfz2jd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Puzzle Fighter II Turbo (USA 960620 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("spf2td.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Puzzle Fighter II X (Japan 960531 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("spf2xjd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dungeons &amp; Dragons - Shadow over Mystara (USA 960619 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("ddsomud.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Mega Man 2 - The Power Fighters (USA 960708 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("megamn2d.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 2 Alpha (Asia 960826 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("sfz2ald.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("X-Men Vs. Street Fighter (USA 961004 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("xmvsfu1d.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Battle Circuit (Euro 970319 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("batcird.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Vampire Savior - The Lord of Vampire (Euro 970519 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("vsavd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Vs. Capcom - Clash of Super Heroes (USA 980123 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("mvscud.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Alpha 3 (USA 980904 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("sfa3ud.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Giga Wing (USA 990222 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("gigawingd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Giga Wing (Japan 990223 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("gigawingjd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("1944 - The Loop Master (USA 000620 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("1944d.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Progear (USA 010117 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("progearud.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Progear no Arashi (Japan 010117 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("progearjd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Progear no Arashi (Japan 010117) (decrypted bootleg)") do set NWDIR=%%~a
for %%a in ("progearjbl.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Hyper Street Fighter II - The Anniversary Edition (Asia 040202 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("hsf2d.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II - The Tournament Battle (World 931119 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("ssf2tbd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Street Fighter II X - Grand Master Challenge (Japan 940223 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("ssf2xjd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Super Gem Fighter Mini Mix (USA 970904 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("sgemfd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Armored Warriors (Euro 941011 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("armwar1d.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Dimahoo (USA 000121 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("dimahoud.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Mars Matrix - Hyper Solid Shooting (Japan 000412 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("mmatrixd.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Vampire Hunter 2 - Darkstalkers Revenge (Japan 970929 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("vhunt2d.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Vampire Savior 2 - The Lord of Vampire (Japan 970913 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("vsav2d.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Capcom Sports Club (Euro 970722 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("csclub1d.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Cyberbots - Fullmetal Madness (USA 950424 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("cybotsud.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Marvel Super Heroes Vs. Street Fighter (USA 970625 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("mshvsfu1d.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Street Fighter Zero 3 (Japan 980629 Phoenix Edition) (bootleg)") do set NWDIR=%%~a
for %%a in ("sfz3jr2d.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"
for %%a in ("Capcom Sports Club (970722 Japan, Rent version)") do set NWDIR=%%~a
for %%a in ("csclubjr.png") do if exist "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%" copy /y "%%~a" "%GBG%\%GAM%\%CONS%\%CPS2%\%NWDIR%\%CPS2NAME%"

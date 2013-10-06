del "%GBC%\cpsroms.ini"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h') do echo %%~a>>"%GBC%\cpsroms.ini"
for %%R in ("%GBC%\cpsroms.ini") do if "%%~zR" equ "" goto :moveback
for %%R in ("%GBC%\cpsroms.ini") do if "%%~zR" equ "0" goto :moveback
goto :aliasbegin

:LINKN
if exist "%ROM%" mkdir "%NWDIR%" & move /Y "%ROM%" "SOURCE" & mklink "%NWDIR%\%ROM%" "%CD%\SOURCE\%ROM%"
exit /b

:WINV
mklink "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%" "%GBG%\%GAM%\%CONS%\%CPS%\SOURCE\%ROM%"
exit /b
:WINLEG
"%GBC%\linkd.exe" "%GBG%\%GAM%\%CONS%\%CPS%\SOURCE\%ROM%" "%GBG%\%GAM%\%CONS%\%CPS%\%NWDIR%\%ROM%"
exit /b

:moveback
cd "SOURCE"
move "*.zip" "%GBG%\%GAM%\%CONS%\%CPS%"
:aliasbegin
cd "%GBG%\%GAM%\%CONS%\%CPS%"
mkdir "SOURCE"
ATTRIB +H "SOURCE"
for %%a in ("Forgotten Worlds (World)") do set NWDIR=%%~a
for %%a in ("forgottn.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Forgotten Worlds (USA, B-Board 88621B-2)") do set NWDIR=%%~a
for %%a in ("forgottnu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Forgotten Worlds (USA, B-Board 88618B-?)") do set NWDIR=%%~a
for %%a in ("forgottnua.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Lost Worlds (Japan)") do set NWDIR=%%~a
for %%a in ("lostwrld.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Lost Worlds (Japan Old Ver.)") do set NWDIR=%%~a
for %%a in ("lostwrldo.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Ghouls'n Ghosts (World)") do set NWDIR=%%~a
for %%a in ("ghouls.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Ghouls'n Ghosts (USA)") do set NWDIR=%%~a
for %%a in ("ghoulsu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Daimakaimura (Japan)") do set NWDIR=%%~a
for %%a in ("daimakai.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Daimakaimura (Japan Resale Ver.)") do set NWDIR=%%~a
for %%a in ("daimakair.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Strider (USA, B-Board 89624B-2)") do set NWDIR=%%~a
for %%a in ("strider.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Strider (USA, B-Board 89624B-3)") do set NWDIR=%%~a
for %%a in ("striderua.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Strider Hiryu (Japan)") do set NWDIR=%%~a
for %%a in ("striderj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Strider Hiryu (Japan Resale Ver.)") do set NWDIR=%%~a
for %%a in ("striderjr.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dynasty Wars (USA, B-Board 89624B-?)") do set NWDIR=%%~a
for %%a in ("dynwar.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dynasty Wars (USA, B-Board 88622B-3)") do set NWDIR=%%~a
for %%a in ("dynwara.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Tenchi wo Kurau (Japan)") do set NWDIR=%%~a
for %%a in ("dynwarj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Willow (USA)") do set NWDIR=%%~a
for %%a in ("willow.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Willow (Japan, Japanese)") do set NWDIR=%%~a
for %%a in ("willowj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Willow (Japan, English)") do set NWDIR=%%~a
for %%a in ("willowje.zip") do set ROM=%%~a
call :LINKN
for %%a in ("U.N. Squadron (USA)") do set NWDIR=%%~a
for %%a in ("unsquad.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Area 88 (Japan)") do set NWDIR=%%~a
for %%a in ("area88.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Area 88 (Japan Resale Ver.)") do set NWDIR=%%~a
for %%a in ("area88r.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Final Fight (World)") do set NWDIR=%%~a
for %%a in ("ffight.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Final Fight (USA)") do set NWDIR=%%~a
for %%a in ("ffightu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Final Fight (USA 900112)") do set NWDIR=%%~a
for %%a in ("ffightua.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Final Fight (USA 900613)") do set NWDIR=%%~a
for %%a in ("ffightub.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Final Fight (Japan)") do set NWDIR=%%~a
for %%a in ("ffightj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Final Fight (Japan 900112)") do set NWDIR=%%~a
for %%a in ("ffightj1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Final Fight (Japan 900305)") do set NWDIR=%%~a
for %%a in ("ffightj2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Smart / Final Fight (Japan, hack)") do set NWDIR=%%~a
for %%a in ("ffightjh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("1941 - Counter Attack (World)") do set NWDIR=%%~a
for %%a in ("1941.zip") do set ROM=%%~a
call :LINKN
for %%a in ("1941 - Counter Attack (Japan)") do set NWDIR=%%~a
for %%a in ("1941j.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Mercs (World 900302)") do set NWDIR=%%~a
for %%a in ("mercs.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Mercs (USA 900302)") do set NWDIR=%%~a
for %%a in ("mercsu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Mercs (USA 900608)") do set NWDIR=%%~a
for %%a in ("mercsua.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Senjou no Ookami II (Japan 900302)") do set NWDIR=%%~a
for %%a in ("mercsj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Mega Twins (World 900619)") do set NWDIR=%%~a
for %%a in ("mtwins.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Chiki Chiki Boys (Japan 900619)") do set NWDIR=%%~a
for %%a in ("chikij.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Magic Sword - Heroic Fantasy (World 900725)") do set NWDIR=%%~a
for %%a in ("msword.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Magic Sword - Heroic Fantasy (World 900623)") do set NWDIR=%%~a
for %%a in ("mswordr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Magic Sword - Heroic Fantasy (USA 900725)") do set NWDIR=%%~a
for %%a in ("mswordu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Magic Sword - Heroic Fantasy (Japan 900623)") do set NWDIR=%%~a
for %%a in ("mswordj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Carrier Air Wing (World 901012)") do set NWDIR=%%~a
for %%a in ("cawing.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Carrier Air Wing (World 901009)") do set NWDIR=%%~a
for %%a in ("cawingr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Carrier Air Wing (USA 901012)") do set NWDIR=%%~a
for %%a in ("cawingu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("U.S. Navy (Japan 901012)") do set NWDIR=%%~a
for %%a in ("cawingj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Nemo (World 901130)") do set NWDIR=%%~a
for %%a in ("nemo.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Nemo (Japan 901120)") do set NWDIR=%%~a
for %%a in ("nemoj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II - The World Warrior (World 910522)") do set NWDIR=%%~a
for %%a in ("sf2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II - The World Warrior (World 910214)") do set NWDIR=%%~a
for %%a in ("sf2eb.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II - The World Warrior (TAB Austria, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2ebbl.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II - The World Warrior (USA 910206)") do set NWDIR=%%~a
for %%a in ("sf2ua.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II - The World Warrior (USA 910214)") do set NWDIR=%%~a
for %%a in ("sf2ub.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II - The World Warrior (USA 910318)") do set NWDIR=%%~a
for %%a in ("sf2ud.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II - The World Warrior (USA 910228)") do set NWDIR=%%~a
for %%a in ("sf2ue.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II - The World Warrior (USA 910411)") do set NWDIR=%%~a
for %%a in ("sf2uf.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II - The World Warrior (USA 910522)") do set NWDIR=%%~a
for %%a in ("sf2ui.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II - The World Warrior (USA 911101)") do set NWDIR=%%~a
for %%a in ("sf2uk.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II - The World Warrior (Japan 911210)") do set NWDIR=%%~a
for %%a in ("sf2j.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II - The World Warrior (Japan 910214)") do set NWDIR=%%~a
for %%a in ("sf2ja.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II - The World Warrior (Japan 910306)") do set NWDIR=%%~a
for %%a in ("sf2jc.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II - The World Warrior (Quicken Pt-I, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2qp1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II - The World Warrior (Thunder Edition, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2thndr.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Three Wonders (World 910520)") do set NWDIR=%%~a
for %%a in ("3wonders.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Three Wonders (USA 910520)") do set NWDIR=%%~a
for %%a in ("3wondersu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Wonder 3 (Japan 910520)") do set NWDIR=%%~a
for %%a in ("wonder3.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Three Wonders (hack)") do set NWDIR=%%~a
for %%a in ("3wondersh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("The King of Dragons (World 910711)") do set NWDIR=%%~a
for %%a in ("kod.zip") do set ROM=%%~a
call :LINKN
for %%a in ("The King of Dragons (USA 910910)") do set NWDIR=%%~a
for %%a in ("kodu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("The King of Dragons (Japan 910805, B-Board 90629B-3)") do set NWDIR=%%~a
for %%a in ("kodj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("The King of Dragons (Japan 910805, B-Board 89625B-1)") do set NWDIR=%%~a
for %%a in ("kodja.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Captain Commando (World 911202)") do set NWDIR=%%~a
for %%a in ("captcomm.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Captain Commando (World 911014)") do set NWDIR=%%~a
for %%a in ("captcommr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Captain Commando (USA 910928)") do set NWDIR=%%~a
for %%a in ("captcommu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Captain Commando (Japan 911202)") do set NWDIR=%%~a
for %%a in ("captcommj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Captain Commando (Japan 910928)") do set NWDIR=%%~a
for %%a in ("captcommjr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Captain Commando (bootleg)") do set NWDIR=%%~a
for %%a in ("captcommb.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Knights of the Round (World 911127)") do set NWDIR=%%~a
for %%a in ("knights.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Knights of the Round (USA 911127)") do set NWDIR=%%~a
for %%a in ("knightsu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Knights of the Round (Japan 911127, B-Board 91634B-2)") do set NWDIR=%%~a
for %%a in ("knightsj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Knights of the Round (Japan 911127, B-Board 89625B-1)") do set NWDIR=%%~a
for %%a in ("knightsja.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Knights of the Round (bootleg)") do set NWDIR=%%~a
for %%a in ("knightsb.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (World 920513)") do set NWDIR=%%~a
for %%a in ("sf2ce.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (World 920313)") do set NWDIR=%%~a
for %%a in ("sf2ceea.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (USA 920313)") do set NWDIR=%%~a
for %%a in ("sf2ceua.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (USA 920513)") do set NWDIR=%%~a
for %%a in ("sf2ceub.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (USA 920803)") do set NWDIR=%%~a
for %%a in ("sf2ceuc.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (Japan 920513)") do set NWDIR=%%~a
for %%a in ("sf2cej.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (Rainbow set 1, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2rb.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (Rainbow set 2, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2rb2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (Rainbow set 3, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2rb3.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (Red Wave, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2red.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (V004, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2v004.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (Accelerator!, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2acc.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (Accelerator Pt.II, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2accp2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (Double K.O. Turbo II, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2dkot2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (M1, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2m1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (M2, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2m2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (M3, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2m3.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (M4, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2m4.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (M5, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2m5.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (M6, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2m6.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (M7, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2m7.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (YYC, bootleg)") do set NWDIR=%%~a
for %%a in ("sf2yyc.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (Xiang Long, Chinese bootleg)") do set NWDIR=%%~a
for %%a in ("sf2koryu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Magic Delta Turbo (bootleg)") do set NWDIR=%%~a
for %%a in ("sf2mdt.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Varth - Operation Thunderstorm (World 920714)") do set NWDIR=%%~a
for %%a in ("varth.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Varth - Operation Thunderstorm (World 920612)") do set NWDIR=%%~a
for %%a in ("varthr1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Varth - Operation Thunderstorm (USA 920612)") do set NWDIR=%%~a
for %%a in ("varthu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Varth - Operation Thunderstorm (Japan 920714)") do set NWDIR=%%~a
for %%a in ("varthj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Adventure Quiz Capcom World 2 (Japan 920611)") do set NWDIR=%%~a
for %%a in ("cworld2j.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Warriors of Fate (World 921002)") do set NWDIR=%%~a
for %%a in ("wof.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Sangokushi II (Asia 921005)") do set NWDIR=%%~a
for %%a in ("wofa.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Warriors of Fate (USA 921031)") do set NWDIR=%%~a
for %%a in ("wofu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Tenchi wo Kurau II - Sekiheki no Tatakai (Japan 921031)") do set NWDIR=%%~a
for %%a in ("wofj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Huo Feng Huang (Chinese bootleg of Sangokushi II)") do set NWDIR=%%~a
for %%a in ("wofhfh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Hyper Fighting (World 921209)") do set NWDIR=%%~a
for %%a in ("sf2hf.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Hyper Fighting (USA 921209)") do set NWDIR=%%~a
for %%a in ("sf2hfu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' Turbo - Hyper Fighting (Japan 921209)") do set NWDIR=%%~a
for %%a in ("sf2hfj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Cadillacs and Dinosaurs (World 930201)") do set NWDIR=%%~a
for %%a in ("dino.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Cadillacs and Dinosaurs (USA 930201)") do set NWDIR=%%~a
for %%a in ("dinou.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Cadillacs - Kyouryuu Shin Seiki (Japan 930201)") do set NWDIR=%%~a
for %%a in ("dinoj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Cadillacs and Dinosaurs (bootleg with PIC16c57, set 1)") do set NWDIR=%%~a
for %%a in ("dinopic.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Cadillacs and Dinosaurs (bootleg with PIC16c57, set 2)") do set NWDIR=%%~a
for %%a in ("dinopic2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Dinosaur Hunter (Chinese bootleg of Cadillacs and Dinosaurs)") do set NWDIR=%%~a
for %%a in ("dinohunt.zip") do set ROM=%%~a
call :LINKN
for %%a in ("The Punisher (World 930422)") do set NWDIR=%%~a
for %%a in ("punisher.zip") do set ROM=%%~a
call :LINKN
for %%a in ("The Punisher (USA 930422)") do set NWDIR=%%~a
for %%a in ("punisheru.zip") do set ROM=%%~a
call :LINKN
for %%a in ("The Punisher (Japan 930422)") do set NWDIR=%%~a
for %%a in ("punisherj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("The Punisher (bootleg with PIC16c57, set 1)") do set NWDIR=%%~a
for %%a in ("punipic.zip") do set ROM=%%~a
call :LINKN
for %%a in ("The Punisher (bootleg with PIC16c57, set 2)") do set NWDIR=%%~a
for %%a in ("punipic2.zip") do set ROM=%%~a
call :LINKN
for %%a in ("The Punisher (bootleg with PIC16c57, set 3)") do set NWDIR=%%~a
for %%a in ("punipic3.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Biaofeng Zhanjing (Chinese bootleg of The Punisher)") do set NWDIR=%%~a
for %%a in ("punisherbz.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Saturday Night Slam Masters (World 930713)") do set NWDIR=%%~a
for %%a in ("slammast.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Saturday Night Slam Masters (USA 930713)") do set NWDIR=%%~a
for %%a in ("slammastu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Muscle Bomber - The Body Explosion (Japan 930713)") do set NWDIR=%%~a
for %%a in ("mbomberj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Muscle Bomber Duo - Ultimate Team Battle (World 931206)") do set NWDIR=%%~a
for %%a in ("mbombrd.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Muscle Bomber Duo - Heat Up Warriors (Japan 931206)") do set NWDIR=%%~a
for %%a in ("mbombrdj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Pnickies (Japan 940608)") do set NWDIR=%%~a
for %%a in ("pnickj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Quiz &amp; Dragons - Capcom Quiz Game (USA 920701)") do set NWDIR=%%~a
for %%a in ("qad.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Quiz &amp; Dragons - Capcom Quiz Game (Japan 940921)") do set NWDIR=%%~a
for %%a in ("qadj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Quiz Tonosama no Yabou 2 - Zenkoku-ban (Japan 950123)") do set NWDIR=%%~a
for %%a in ("qtono2j.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Pang! 3 (Euro 950601)") do set NWDIR=%%~a
for %%a in ("pang3.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Pang! 3 (Euro 950511, not encrypted)") do set NWDIR=%%~a
for %%a in ("pang3n.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Pang! 3 - Kaitou Tachi no Karei na Gogo (Japan 950511)") do set NWDIR=%%~a
for %%a in ("pang3j.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Mega Man - The Power Battle (CPS1, Asia 951006)") do set NWDIR=%%~a
for %%a in ("megaman.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Rockman - The Power Battle (CPS1, Japan 950922)") do set NWDIR=%%~a
for %%a in ("rockmanj.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Cadillacs and Dinosaurs (Hack)") do set NWDIR=%%~a
for %%a in ("dinoh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Knights of the Round (Hack)") do set NWDIR=%%~a
for %%a in ("knightsh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Zero (CPS Changer)") do set NWDIR=%%~a
for %%a in ("sfzch.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter Alpha (Publicity CPS Changer 950727)") do set NWDIR=%%~a
for %%a in ("sfach.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Warriors of Fate (Hack)") do set NWDIR=%%~a
for %%a in ("wofh.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (non-MAME, Turyu)") do set NWDIR=%%~a
for %%a in ("sf2turyu.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (Turyu Alternate)") do set NWDIR=%%~a
for %%a in ("sf2turyu1.zip") do set ROM=%%~a
call :LINKN
for %%a in ("Street Fighter II' - Champion Edition (Tulong)") do set NWDIR=%%~a
for %%a in ("sf2toryu.zip") do set ROM=%%~a
call :LINKN
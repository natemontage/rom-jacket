pushd "%GBG%\%GAM%\%CONS%"
for /f "delims=" %%d in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"^| sort /r') do rd /q "%%~d"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
set TOREN=%%~a
CALL :LIBCHK
CALL :RENAMEDIR
)
popd
exit /b

:LIBCHK
SET PROPER=
:TOUHU
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*Tohou*" "*Touhou*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%TOUHU%
:VECTX
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "GCE*Vec*" "*Vectrex*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%VECTX%
:TAITX
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "Taito*Type*" "*TYPE*X*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%TAITX%
:ACBBC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*BBC*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ACBBC%
:ACELE
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "Acorn*Electron*" "Electron*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ACELE%
:ACARC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*Archimedes*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ACARC%
:SAMC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*SamCoupe*" "Sam Coupe*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SAMC%
:APL2E
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*2e*" "*IIe*" "*2*e*" "*II*e*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%APL2E%
:APL2GS
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*2gs*" "*IIgs*" "*2*gs*" "*II*gs*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%APL2GS%
:AT8H
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "Atari800*" "Atari*800*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%AT8H%
:ATST
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "AtariST*" "Atari*ST*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ATST%
:EMARC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "Emerson*" "Arcadia*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%EMARC%
:BWS
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*Wonderswan Games" "*Wonderswan" "*Wonder swan Games" "*Wonder swan" "*Wonderswan Games" "*Wonderswan" "*Bandai Wonderswan Games" "*Bandai Wonderswan"') do if /i "%TOREN%"=="%%~a" SET PROPER=%BWS%
:BWSC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*Wonderswan Color Games" "*Wonderswan Color" "*Wonder swan Color Games" "*Wonder swan Color" "*Bandai Wonderswan Color Games" "*Bandai Wonderswan Color" "*Color Wonder swan  Games" "*Color Wonder swan" "*Color Wonderswan  Games" "*Color Wonderswan"') do if /i "%TOREN%"=="%%~a" set PROPER=%BWSC%
:CM64
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "Commodore64*" "Com64*" "Com 64*" "C64*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CM64%
:P3DO
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*3-do*" "*3do*" "*3 d o*" "*3.d.o*" "*3.d.o*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%P3DO%
:CDI
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*CD-I*" "*CDI*" "*C.D.I*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CDI%
:FMTOWNS
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "fm-towns*" "f.m.towns*" "*towns"') do if /i "%TOREN%"=="%%~a" SET PROPER=%FMTOWNS%
:NEOPKT
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*neo pocket Games" "*neo pocket" "*neo-geo pocket Games" "*neo-geo pocket" "*NGP Games" "*NGP" "*NeoGeoPocket Games" "*NeoGeoPocket" "*Neo Geo Pocket Games" "*Neo Geo Pocket"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NEOPKT%
:NEOPKTC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*neo pocket color Games" "*neo pocket color" "*neo-geo pocket color Games" "*neo-geo pocket color" "*NGPC Games" "*NGPC" "*NeoPocket Color Games" "*NeoGeoPocket Color" "*Neo Geo Pocket Color Games" "*Neo Geo Pocket Color"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NEOPKTC%
:FLASH
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "Adobe flash*" "internet games Games" "*browser*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%FLASH%
:WIN32
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*Games for windows*"') do if /i "%TOREN%"=="%%~a" set PROPER=%WIN32%
:CAMIG
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*amiga Games*" "*amiga roms*" "*amiga*500*" "*amiga*1200*"') do if /i "%TOREN%"=="%%~a" set PROPER=%CAMIG%
:AMIG32
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*cd32*" "*cd 32*" "*cd 32*" "cd-32" "*cd-32*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%AMIG32%
:INTEL
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "mattel intellivision*" "*intellivision*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%INTEL%
:COLEC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "coleco vision*" "*colecovision*"') do if /i "%TOREN%"=="%%~a" set PROPER=%COLEC%
:AT26
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*2600*" "*a26*"') do if /i "%TOREN%"=="%%~a" set PROPER=%AT26%
:AT52
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*5200*" "*a52*"') do if /i "%TOREN%"=="%%~a" set PROPER=%AT52%
:AT78
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*7800*" "*a78*"') do if /i "%TOREN%"=="%%~a" set PROPER=%AT78%
:MSX
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*m-s-x*" "*m s x*" "*m.s.x*" "*msx" "*msx2" "*msx 2"') do if /i "%TOREN%"=="%%~a" SET PROPER=%MSX%
:ENTP
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "Enterprise*64*" "Enterprise64*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ENTP%
:MSDS
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "dos*" "*d.o.s*" "*dosbox*"') do if /i "%TOREN%"=="%%~a" set PROPER=%MSDS%
:AMSTR
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "amstrad*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%AMSTR%
:JAGCD
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*jaguar cd*" "*jag*cd*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%JAGCD%
:JAG
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*jag" "jaguar" "*jag Games" "*atari jag Games" "*atari jag" "*jag rom*" "*jag roms" "*jaguar roms"') do if /i "%TOREN%"=="%%~a" SET PROPER=%JAG%
:FM7
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "Fujitsu Micro*" "FM-7*" "FM7*" "FM 7*" "F.M*7*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%FM7%
:SEG1K
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*SG 1*" "*SG-1000*" "*SG1*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEG1K%
:LYNX
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*lynx*"') do if /i "%TOREN%"=="%%~a" set PROPER=%LYNX%
:N64
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "nintendo*64*" "n64*" "nintendo64*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%N64%
:NDS
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "NDS*" "Nintendo*DS*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NDS%
:WII
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*Wii*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%WII%
:NGC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*gamecube*" "*game cube*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NGC%
:NVB
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*Virtual*boy*" "*Virtualboy*" "*V*boy*" "*Vboy*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NVB%
:NGB
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*ngb roms" "*eboy games" "*eboy roms" "*game boy games" "*gameboy" "*game boy" "*nintendo gb Games" "*nintendo gb"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NGB%
:NGBC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*gb color Games" "*gb color" "*nintendo gb color Games" "*nintendo gb color" "*gameboy color Games" "*gameboy color" "*game boy color Games" "*game boy color" "*nintendo game boy color Games" "*nintendo game boy color"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NGBC%
:NGBA
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*gb advance Games" "*gb advance" "*gba Games" "*gba" "*nintendo gba Games" "*nintendo gba" "*nintendo game boy advance Games" "*nintendo game boy advance" "*nintendo gb advance Games" "*nintendo gb advance"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NGBA%
:NES
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*nes*" "n.e.s*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NES%
:NFAM
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*famicom disk*" "*famicom" "fdc"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NFAM%
:SNES
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "snes*" "Super Nes*" "Super Nintendo*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SNES%
:SFAM
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*super famicom*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SFAM%
:PCFX
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*pc-fx*" "*pcfx*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PCFX%
:PC98
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*pc98*" "*pc*98*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PC98%
:SEGAG
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*genesis*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGAG%
:SEGAMD
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*mega drive*" "*megadrive*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGAMD%
:SEGMS
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*mastersystem*" "*master*system*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGMS%
:SEGDC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*dreamcast*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGDC%
:SEGG
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*gamegear*" "*game*gear*" "sega gg*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGG%
:SEGCD
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "segacd*" "sega*cd*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGCD%
:SSAT
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*saturn*" "*satourne*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SSAT%
:SG32X
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*32x*" "*32*X*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SG32X%
:PS1
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*psx*" "*ps1*" "*playstation" "*ps*1*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PS1%
:PSP
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*psp*" "*playstation*portable*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PSP%
:PS2
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*ps2*" "*ps 2*" "*playstation 2*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PS2%
:TG16
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*turbografx-16*" "*turbo*grafx*16*" "*tg*16*" "*tg16*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%TG16%
:PCENG
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*pce roms" "*pce games" "*pc*engine" "pce"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PCENG%
:SGFX
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*supergrafx*" "*super*grafx*" "*sgx*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SGFX%
:TGCD
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*turbografx*16 CD*" "*turbografx*CD"') do if /i "%TOREN%"=="%%~a" SET PROPER=%TGCD%
:PCECD
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*pc*engine*CD*" "*pce*cd*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PCECD%
:X68K
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*x68*" "*x*68*" "*68000*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%X68K%
:CPS
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "c.p.s*1*" "*capcom play system Games" "*capcom play system" "cps1*" "CPS*I*" "CPSI*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CPS%
:CPS2
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "c.p.s*2*" "capcom play system 2*" "cps2*" "CPS*II*" "CPSII*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CPS2%
:CPS3
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "c.p.s*3*" "capcom play system 3*" "cps3*" "CPS*III*" "CPSIII*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%CPS3%
:ARCD
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "mame*" "arcade*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ARCD%
:NAOMI
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*naomi*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NAOMI%
:SEGM2
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*model3*" "*model*3*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGM2%
:SEGM2
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*model2*" "*model*2*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SEGM2%
:NEOGE
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*NEO*AES*" "*NEO*MVS*" "*NEO*AES*" "*mvs*" "*aes*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NEOGE%
:NEOCD
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*neocd*" "*neo*cd*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%NEOCD%
:PC88
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*PC*88*" "*PC88*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%PC88%
:SHRPX1
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "SHARP*X1*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%SHRPX1%
:ZXSP
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*zx*spec*"') do if /i "%TOREN%"=="%%~a" SET PROPER=%ZXSP%
exit /b

:MVO
robocopy "%GBG%\%GAM%\%CONS%\%TOREN%" "%GBG%\%GAM%\%CONS%\%PROPER%" /R:2 /W:2 /NP /E /IS /MOVE
SET /A UNNUM+=-1
exit /b 

:RNM
rename "%GBG%\%GAM%\%CONS%\%TOREN%" "%PROPER%" && SET /A UNNUM+=-1
"%GBC%\fart.exe" "%GBC%\currentlist.ini" "%TOREN%" --remove
exit /b

:RENAMEDIR
if not exist "%GBG%\%GAM%\%CONS%\%PROPER%" call :RNM

:SETRN
if /I "%GBG%\%GAM%\%CONS%\%TOREN%"=="%GBG%\%GAM%\%CONS%\%PROPER%" exit /b
if /I "%PROPER%" NEQ "" call :MVO
:presortfin

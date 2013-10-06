:mirgrateSAME
set CURNTA=conselect.set
if exist "%GBC%\conselect.ini" set CURNTA=conselect.ini
start "" "%GBC%\wbusy.exe" "miglibr" "Migrating the existing library.^" /marquee
for /f "tokens=* delims= " %%a in ('type "%GBC%\"%CURNTA%"') do (
robocopy "%library%\%%~a" "%GBG%\%GAM%\%CONS%\%%~a" /R:2 /W:2 /NP /E /IS /MOVE
)

:migrateCHCK
pushd "%library%"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%library%"') do (
set RNDIR=%%~a
CALL :LIBCHK
CALL :RENAMEDIR
)
popd
start "" "%GBC%\wbusy.exe" "miglibr" "Complete^." /Stop /timeout:1
exit /b

:LIBCHK
SET DIRRN=
:TOUHU
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*Tohou*" "*Touhou*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%TOUHU%
:VECTX
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "GCE*" "*Vectrex*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%VECTX%
:TAITX
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "Taito*Type*" "*TYPE*X*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%TAITX%
:ACBBC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*BBC*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%ACBBC%
:ACELE
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "Acorn*Electron*" "Electron*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%ACELE%
:ACARC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*Archimedes*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%ACARC%
:SAMC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*SamCoupe*" "Sam Coupe*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%ACARC%
:APL2E
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*2e*" "*IIe*" "*2*e*" "*II*e*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%APL2E%
:APL2GS
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*2gs*" "*IIgs*" "*2*gs*" "*II*gs*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%APL2GS%
:AT8H
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "Atari800*" "Atari*800*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%AT8H%
:ATST
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "AtariST*" "Atari*ST*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%ATST%
:EMARC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "Emerson*" "Arcadia*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%EMARC%
:BWS
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "Wonderswan Games" "Wonderswan" "Wonder swan Games" "Wonder swan" "Wonderswan Games" "Wonderswan" "Bandai Wonderswan Games" "Bandai Wonderswan"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%BWS%
:BWSC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "Wonderswan Color Games" "Wonderswan Color" "Wonder swan Color Games" "Wonder swan Color" "Bandai Wonderswan Color Games" "Bandai Wonderswan Color" "Color Wonder swan  Games" "Color Wonder swan" "Color Wonderswan  Games" "Color Wonderswan"') do if /i "%RNDIR%"=="%%~a" set DIRRN=%BWSC%
:CM64
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "Commodore64*" "Com64*" "Com 64*" "C64*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%CM64%
:P3DO
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*3-do*" "*3do*" "*3 d o*" "*3.d.o*" "*3.d.o*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%P3DO%
:CDI
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*CD-I*" "*CDI*" "*C.D.I*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%CDI%
:FMTOWNS
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "fm-towns*" "f.m.towns*" "towns"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%FMTOWNS%
:NEOPKT
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "neo pocket Games" "neo pocket" "neo-geo pocket Games" "neo-geo pocket" "NGP Games" "NGP" "NeoGeoPocket Games" "NeoGeoPocket" "Neo Geo Pocket Games" "Neo Geo Pocket"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%NEOPKT%
:NEOPKTC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "neo pocket color Games" "neo pocket color" "neo-geo pocket color Games" "neo-geo pocket color" "NGPC Games" "NGPC" "NeoPocket Color Games" "NeoGeoPocket Color" "Neo Geo Pocket Color Games" "Neo Geo Pocket Color"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%NEOPKTC%
:FLASH
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "flash*" "flash*" "adobe*" "internet games Games" "*browser*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%FLASH%
:WIN32
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*windows*"') do if /i "%RNDIR%"=="%%~a" set DIRRN=%WIN32%
:CAMIG
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "amiga Games" "amiga*"') do if /i "%RNDIR%"=="%%~a" set DIRRN=%CAMIG%
:AMIG32
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*cd32*" "*cd 32*" "*cd 32*" "cd-32" "*cd-32*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%AMIG32%
:INTEL
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "mattel intellivision*" "*intellivision*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%INTEL%
:COLEC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "coleco vision*" "*colecovision*"') do if /i "%RNDIR%"=="%%~a" set DIRRN=%COLEC%
:AT26
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*2600*" "*a26*"') do if /i "%RNDIR%"=="%%~a" set DIRRN=%AT26%
:AT52
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*5200*" "*a52*"') do if /i "%RNDIR%"=="%%~a" set DIRRN=%AT52%
:AT78
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*7800*" "*a78*"') do if /i "%RNDIR%"=="%%~a" set DIRRN=%AT78%
:MSX
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*m-s-x*" "*m s x*" "*m.s.x*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%MSX%
:ENTP
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "Enterprise*64*" "Enterprise64*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%ENTP%
:MSDS
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "dos*" "*dos*" "*d.o.s*" "*dosbox*"') do if /i "%RNDIR%"=="%%~a" set DIRRN=%MSDS%
:AMSTR
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "amstrad*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%AMSTR%
:JAGCD
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*jaguar cd*" "*jag cd*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%JAGCD%
:JAG
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "jaguar" "jag Games" "jag" "atari jag Games" "atari jag" "atari jag roms" "*jag roms" "jaguar roms"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%JAG%
:FM7
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "Fujitsu Micro*" "FM-7*" "FM7*" "FM 7*" "F.M*7*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%FM7%
:SEG1K
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*SG 1*" "*SG-1000*" "*SG1*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%SEG1K%
:LYNX
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*lynx*"') do if /i "%RNDIR%"=="%%~a" set DIRRN=%LYNX%
:N64
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "nintendo*64*" "n64*" "nintendo64*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%N64%
:NDS
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "NDS*" "Nintendo*DS*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%NDS%
:WII
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*Wii*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%WII%
:NGC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*gamecube*" "*game cube*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%NGC%
:NVB
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*Virtual*boy*" "*Virtualboy*" "*V*boy*" "*Vboy*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%NVB%
:NGB
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "ngb roms" "ngb roms" "*eboy games" "*eboy roms" "*e boy games" "*e boy roms" "gameboy" "game boy" "nintendo gb Games" "nintendo gb"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%NGB%
:NGBC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "gb color Games" "gb color" "nintendo gb color Games" "nintendo gb color" "gameboy color Games" "gameboy color" "game boy color Games" "game boy color" "nintendo game boy color Games" "nintendo game boy color"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%NGBC%
:NGBA
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "gb advance Games" "gb advance" "gba Games" "gba" "nintendo gba Games" "nintendo gba" "nintendo game boy advance Games" "nintendo game boy advance" "nintendo gb advance Games" "nintendo gb advance"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%NGBA%
:NES
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*nes*" "n.e.s*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%NES%
:NFAM
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*famicom disk*" "*famicom" "fdc"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%NFAM%
:SNES
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "snes*" "Super Nes*" "Super Nintendo*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%SNES%
:SFAM
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*super famicom*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%SFAM%
:PCFX
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*pc-fx*" "*pcfx*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%PCFX%
:PC98
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*pc98*" "*pc*98*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%PC98%
:SEGAG
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*genesis*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%SEGAG%
:SEGAMD
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*mega drive*" "*megadrive*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%SEGAMD%
:SEGMS
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*mastersystem*" "*master*system*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%SEGMS%
:SEGDC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*dreamcast*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%SEGDC%
:SEGG
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*gamegear*" "*game*gear*" "sega gg*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%SEGG%
:SEGCD
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "segacd*" "sega*cd*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%SEGCD%
:SSAT
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*saturn*" "*satourne*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%SSAT%
:SG32X
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*32x*" "*32*X*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%SG32X%
:PS1
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*psx*" "*ps1*" "*playstation" "*ps*1*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%PS1%
:PSP
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*psp*" "*playstation*portable*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%PSP%
:PS2
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*ps2*" "*ps 2*" "*playstation 2*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%PS2%
:TG16
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*turbografx-16*" "*turbo*grafx*16*" "*tg*16*" "*tg16*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%TG16%
:PCENG
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*pce roms" "*pce games" "*pc*engine" "pce"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%PCENG%
:SGFX
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*supergrafx*" "*super*grafx*" "*sgx*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%SGFX%
:TGCD
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*turbografx*16 CD*" "*turbografx*CD"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%TGCD%
:PCECD
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*pc*engine*CD*" "*pce*cd*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%PCECD%
:X68K
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*x68*" "*x*68*" "*68000*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%X68K%
:CPS
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "c.p.s*1*" "capcom play system Games" "capcom play system" "cps1*" "CPS*I*" "CPSI*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%CPS%
:CPS2
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "c.p.s*2*" "capcom play system 2*" "cps2*" "CPS*II*" "CPSII*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%CPS2%
:CPS3
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "c.p.s*3*" "capcom play system 3*" "cps3*" "CPS*III*" "CPSIII*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%CPS3%
:ARCD
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "mame*" "arcade*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%ARCD%
:NAOMI
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*naomi*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%NAOMI%
:SEGM2
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*model3*" "*model*3*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%SEGM2%
:SEGM2
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*model2*" "*model*2*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%SEGM2%
:NEOGE
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*NEO*AES*" "*NEO*MVS*" "*NEO*AES*" "*mvs*" "*aes*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%NEOGE%
:NEOCD
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*neocd*" "*neo*cd*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%NEOCD%
:PC88
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*PC*88*" "*PC88*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%PC88%
:SHRPX1
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "SHARP*X1*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%SHRPX1%
:ZXSP
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "*zx*spec*"') do if /i "%RNDIR%"=="%%~a" SET DIRRN=%ZXSP%
exit /b

:RENAMEDIR
if "%DIRRN%" NEQ "" robocopy "%library%\%RNDIR%" "%GBG%\%GAM%\%CONS%\%DIRRN%" /R:2 /W:2 /NP /E /IS /MOVE

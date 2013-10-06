SET CEMU=Default
if /i "%CSTCONS%"=="Windows Games" set CEMU=%BATCHL%
if /i "%CSTCONS%"=="Flash Games" set CEMU=%FSHPL%
if /i "%CSTCONS%"=="Apple IIe" set CEMU=%APLWIN%
if /i "%CSTCONS%"=="Apple IIgs" set CEMU=%KEGS%
if /i "%CSTCONS%"=="Atari ST" set CEMU=%STEEM%
if /i "%CSTCONS%"=="Atari 2600" set CEMU=%STLA%
if /i "%CSTCONS%"=="Atari 5200" set CEMU=%ATRI%
if /i "%CSTCONS%"=="Atari 7800" set CEMU=%PROSYS%
if /i "%CSTCONS%"=="Atari Jaguar CD" set CEMU=%PTMPS%
if /i "%CSTCONS%"=="Atari Jaguar" set CEMU=%VJAG%
if /i "%CSTCONS%"=="Atari Lynx" set CEMU=%MEDN%
if /i "%CSTCONS%"=="Nintendo 64" set CEMU=%PJ64%
if /i "%CSTCONS%"=="Nintendo DS" set CEMU=%NOGBA%
if /i "%CSTCONS%"=="Nintendo Virtual Boy" set CEMU=%MEDN%
if /i "%CSTCONS%"=="Nintendo Wii" set CEMU=%DOLPH%
if /i "%CSTCONS%"=="Nintendo GameCube" set CEMU=%DOLPH%
if /i "%CSTCONS%"=="Nintendo Gameboy" set CEMU=%MEDN%
if /i "%CSTCONS%"=="Nintendo Gameboy Color" set CEMU=%MEDN%
if /i "%CSTCONS%"=="Nintendo Gameboy Advance" set CEMU=%VGBA%
if /i "%CSTCONS%"=="Nintendo Entertainment System" set CEMU=%MEDN%
if /i "%CSTCONS%"=="Nintendo Famicom" set CEMU=%MEDN%
if /i "%CSTCONS%"=="Super Nintendo" set CEMU=%ZSNS%
if /i "%CSTCONS%"=="Super Famicom" set CEMU=%ZSNS%
if /i "%CSTCONS%"=="Sega Genesis" set CEMU=%FUSN%
if /i "%CSTCONS%"=="Sega MegaDrive" set CEMU=%FUSN%
if /i "%CSTCONS%"=="Sega Master System" set CEMU=%FUSN%
if /i "%CSTCONS%"=="Sega Dreamcast" set CEMU=%NULLDC%
if /i "%CSTCONS%"=="Sega Game Gear" set CEMU=%FUSN%
if /i "%CSTCONS%"=="Sega CD" set CEMU=%FUSN%
if /i "%CSTCONS%"=="Sega Saturn" set CEMU=%SSF%
if /i "%CSTCONS%"=="Sega 32X" set CEMU=%FUSN%
if /i "%CSTCONS%"=="Sony Playstation" set CEMU=%PSX%
if /i "%CSTCONS%"=="Sony PSP" set CEMU=%PSSP%
if /i "%CSTCONS%"=="Sony Playstation 2" set CEMU=%PCSX2%
if /i "%CSTCONS%"=="Sony PS3" set CEMU=
if /i "%CSTCONS%"=="PC Engine" set CEMU=%MEDN%
if /i "%CSTCONS%"=="PC Engine CD" set CEMU=%MEDN%
if /i "%CSTCONS%"=="SuperGrafx" set CEMU=%MEDN%
if /i "%CSTCONS%"=="TurboGrafx 16" set CEMU=%MEDN%
if /i "%CSTCONS%"=="TurboGrafx CD" set CEMU=%MEDN%
if /i "%CSTCONS%"=="Xbox 360" set CEMU=
if /i "%CSTCONS%"=="Xbox" set CEMU=
if /i "%CSTCONS%"=="Sharp X1" set CEMU=%XTURB%
if /i "%CSTCONS%"=="Arcadia 2001" set CEMU=%WINARC%
if /i "%CSTCONS%"=="Arcade" set CEMU=%MAME%
if /i "%CSTCONS%"=="Commodore 64" set CEMU=%VICE%
if /i "%CSTCONS%"=="Commodore Amiga" set CEMU=%FSUAE%
if /i "%CSTCONS%"=="Commodore Amiga CD32" set CEMU=%FSUAE%
if /i "%CSTCONS%"=="Amstrad CPC" set CEMU=%WINAPE%
if /i "%CSTCONS%"=="Bandai Wonder Swan" set CEMU=%MEDN%
if /i "%CSTCONS%"=="Bandai Wonder Swan Color" set CEMU=%MEDN%
if /i "%CSTCONS%"=="ColecoVision" set CEMU=%BMSX%
if /i "%CSTCONS%"=="Intellivision" set CEMU=%NOSTL%
if /i "%CSTCONS%"=="FM Towns" set CEMU=%FMUNZ%
if /i "%CSTCONS%"=="MS D-O-S" set CEMU=%DOSBOX%
if /i "%CSTCONS%"=="NeoGeo Pocket" set CEMU=%MEDN%
if /i "%CSTCONS%"=="NeoGeo Pocket Color" set CEMU=%MEDN%
if /i "%CSTCONS%"=="Panasonic 3DO" set CEMU=%FOURDO%
if /i "%CSTCONS%"=="Sam Coupe" set CEMU=%SIMC%
if /i "%CSTCONS%"=="FM-7" set CEMU=%XM7%
if /i "%CSTCONS%"=="NEC PC-FX" set CEMU=%MEDN%
if /i "%CSTCONS%"=="NEC PC88" set CEMU=%M88%
if /i "%CSTCONS%"=="NEC PC98" set CEMU=%NEKO%
if /i "%CSTCONS%"=="Philips CD-I" set CEMU=%WCDI%
if /i "%CSTCONS%"=="Sinclair ZX Spectrum" set CEMU=%ZXSPIN%
if /i "%CSTCONS%"=="X68000" set CEMU=%XM6%
if /i "%CSTCONS%"=="Acorn Archimedes" set CEMU=%ARLTR%
if /i "%CSTCONS%"=="Acorn BBC" set CEMU=%BEEBEM%
if /i "%CSTCONS%"=="Acorn Electron" set CEMU=%ELECEM%
if /i "%CSTCONS%"=="MSX" set CEMU=%BMSX%
if /i "%CSTCONS%"=="Atari 800" set CEMU=%ALTRA%
if /i "%CSTCONS%"=="Vectrex" set CEMU=%PJVE%
if /i "%CSTCONS%"=="Atomiswave" set CEMU=%DMUL%
if /i "%CSTCONS%"=="Touhou" set CEMU=%ANEX%
if /i "%CSTCONS%"=="Naomi" set CEMU=%DMUL%
if /i "%CSTCONS%"=="CPS" set CEMU=%FBA%
if /i "%CSTCONS%"=="CPS 2" set CEMU=%FBA%
if /i "%CSTCONS%"=="CPS 3" set CEMU=%FBA%
if /i "%CSTCONS%"=="Sega SG-1000" set CEMU=%FUSN%
if /i "%CSTCONS%"=="Sega Model 2" set CEMU=%M2EMU%
if /i "%CSTCONS%"=="Sega Model 3" set CEMU=%SPRM3%
if /i "%CSTCONS%"=="NeoGeo MVS" set CEMU=%FBA%
if /i "%CSTCONS%"=="NeoGeo CD" set CEMU=%NEORAINE%
if /i "%CSTCONS%"=="Hyper NeoGeo 64" set CEMU=%MAME%
if /i "%CSTCONS%"=="Taito Type X" set CEMU=%BATCHL%
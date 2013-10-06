del /s /q "%GBE%\%EMUZ%\inst.ini"
for /f "tokens=* delims= " %%a in ('dir /b /ad "%GBE%\%EMUZ%"') do echo %%~a>>"%GBE%\%EMUZ%\inst.ini"
for %%R in ("%GBE%\%EMUZ%\inst.ini") do if %%~zR neq 0 goto :GUESSING
"%GBC%\wbox.exe" "noEmus" "^^No Emulators have been installed.^To install your BIOS files, install an emulator.^" "Thanks" /TM=5
exit /b

:GUESSING
:DMUL
if not exist "%GBE%\%EMUZ%\%DMUL%" goto :MAME
copy /Y "*naomi*" "%GBE%\%EMUZ%\%DMUL%\roms"
copy /Y "f355bios.zip" "%GBE%\%EMUZ%\%DMUL%\roms"
copy /Y "hod2bios.zip" "%GBE%\%EMUZ%\%DMUL%\roms"
copy /Y "airlbios.zip" "%GBE%\%EMUZ%\%DMUL%\roms"
copy /Y "awbios.zip" "%GBE%\%EMUZ%\%DMUL%\roms"
copy /Y "awbios.zip" "%GBE%\%EMUZ%\%DMUL%\roms"

:MAME
if not exist "%GBE%\%EMUZ%\%MAME%" goto :NEOGEO
mkdir "%GBG%\%GAM%\%CONS%\
copy /Y "neogeo.zip" "%GBE%\%EMUZ%\%FBA%"
copy /Y "neogeo.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "neocdz.zip" "%GBE%\%EMUZ%\%FBA%"
copy /Y "neocd.zip" "%GBE%\%EMUZ%\%FBA%"
copy /Y "neocd.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "cpzn1.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "cpzn2.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "ngdup23a.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "ngdup23c.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "v4bios.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "triforce.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "taitotz.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "sys256.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "sys573.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "sys246.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "stvbios.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "skns.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "shtzone.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "sfcbox.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "sammymdl.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "pyson.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "playch10.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "pgm.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "nss.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "naomi.zip" "%GBE%\%EMUZ%\%DMUL%"
copy /Y "naomi2.zip" "%GBE%\%EMUZ%\%DMUL%"
copy /Y "naomigd.zip" "%GBE%\%EMUZ%\%DMUL%"
copy /Y "megaplay.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "macsbios.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "mac2bios.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "kviper.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "isgsm.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "hod2bios.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "hng64.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "galgbios.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "hikaru.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "f355bios.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "bubsys.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "crysbios.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "chihiro.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "atarisy1.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "ar_bios.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "aleck64.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "alg_bios.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "cr589fw.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "airlbios.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "cr589fwa.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "pgm.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "playch10.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "cvs.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "skns.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
copy /Y "decocass.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"

:NEOGEO
if not exist "%GBE%\%EMUZ%\%FBA%" goto :NULLDC
copy /Y "neocd.bin" "%GBE%\%EMUZ%\%NEORAINE%"
copy /Y "neocd.bin" "%GBE%\%EMUZ%\%FBA%"
copy /Y "neocd.zip" "%GBE%\%EMUZ%\%NEORAINE%"
copy /Y "neocd.zip" "%GBE%\%EMUZ%\%FBA%"
copy /Y "neogeo.zip" "%GBE%\%EMUZ%\%FBA%"
"%SEVENZIP%" a "%GBE%\%EMUZ%\%NEORAINE%\neocdz.zip" "neocd.bin"
"%SEVENZIP%" a "%GBE%\%EMUZ%\%FBA%\neocdz.zip" "neocd.bin"
"%SEVENZIP%" a "%GBE%\%EMUZ%\%NEORAINE%\neocdz.zip" "000-lo.lo"
"%SEVENZIP%" a "%GBE%\%EMUZ%\%FBA%\neocdz.zip" "000-lo.lo"

:NULLDC
if not exist "%GBE%\%EMUZ%\%NULLDC%" goto :NGBA
copy /Y "DC - BIOS*" "%GBE%\%EMUZ%\%NULLDC%\data\dc_bios.bin"
copy /Y "DC - Flash*" "%GBE%\%EMUZ%\%NULLDC%\data\dc_flash.bin"
copy /Y "DC - Utopia CD Loader V1.1*" "%GBE%\%EMUZ%\%NULLDC%\data"
copy /Y "DC - VMS BIOS Full*" "%GBE%\%EMUZ%\%NULLDC%\data"
copy /Y "dc_*" "%GBE%\%EMUZ%\%NULLDC%\data"

:NGBA
if not exist "%GBE%\%EMUZ%\%VGBA%" goto :NDS
copy /Y "GBA*.rom" "%GBE%\%EMUZ%\%VGBA%"

:NDS
if not exist "%GBE%\%EMUZ%\%NDS%" goto :NDS2
copy /Y "GBA*.rom" "%GBE%\%EMUZ%\%NOGBA%"
copy /Y "biosnds7.rom" "%GBE%\%EMUZ%\%NOGBA%"
copy /Y "biosnds9.rom" "%GBE%\%EMUZ%\%NOGBA%"
copy /Y "firmware.bin" "%GBE%\%EMUZ%\%NOGBA%"

:NDS2
if not exist "%GBE%\%EMUZ%\%DESMUME%" goto :XM6
copy /Y "biosnds7.rom" "%GBE%\%EMUZ%\%DESMUME%\Roms"
copy /Y "biosnds9.rom" "%GBE%\%EMUZ%\%DESMUME%\Roms"
copy /Y "firmware.bin" "%GBE%\%EMUZ%\%DESMUME%\Roms"

:XM6
if not exist "%GBE%\%EMUZ%\%XM6%" goto :FUSN
copy /Y "*X68000*" "%GBE%\%EMUZ%\%XM6%"
copy /Y "*X68000*" "%GBE%\%EMUZ%\%XM6%"
copy /Y "iplrom.dat" "%GBE%\%EMUZ%\%XM6%"
copy /Y "cgrom.dat" "%GBE%\%EMUZ%\%XM6%"
copy /Y "keyconf.dat" "%GBE%\%EMUZ%\%XM6%"

:FUSN
if not exist "%GBE%\%EMUZ%\%FUSN%" goto :5200
copy /Y "*32X*" "%GBE%\%EMUZ%\%FUSN%"
copy /Y "*eu*mcd2*.bin" "%GBE%\%EMUZ%\%FUSN%"
copy /Y "*eu*megacd*.bin" "%GBE%\%EMUZ%\%FUSN%"
copy /Y "*jp*mcd*.bin" "%GBE%\%EMUZ%\%FUSN%"
copy /Y "*jp*mcd1_9112.bin" "%GBE%\%EMUZ%\%FUSN%"
copy /Y "*us*scd*.bin" "%GBE%\%EMUZ%\%FUSN%"
copy /Y "*us*segacd*.bin" "%GBE%\%EMUZ%\%FUSN%"

:5200
if not exist "%GBE%\%EMUZ%\%ATRI%" goto :SSF
copy /Y "5200.rom" "%GBE%\%EMUZ%\%ATRI%"

:SSF
if not exist "%GBE%\%EMUZ%\%SSF%" goto :FMUNZ
mkdir "%GBE%\%EMUZ%\%SSF%\Setting"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\STV"
copy /Y "BIOS(EUR)*" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\"
copy /Y "BIOS(JAP)*" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\"
copy /Y "BIOS(USA)*" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\"
copy /Y "*V1.00*" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\"
copy /Y "*V1.01*" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\"
copy /Y "*V1.02*" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\"
copy /Y "20091.bin" "%GBE%\%EMUZ%\%SSF%\Setting\STV"
copy /Y "epr19730.ic8" "%GBE%\%EMUZ%\%SSF%\Setting\STV"
copy /Y "mp17951a.s" "%GBE%\%EMUZ%\%SSF%\Setting\STV"
copy /Y "mp17952a.s" "%GBE%\%EMUZ%\%SSF%\Setting\STV"
copy /Y "mp17953a.ic8" "%GBE%\%EMUZ%\%SSF%\Setting\STV"
copy /Y "mp17954a.s" "%GBE%\%EMUZ%\%SSF%\Setting\STV"
copy /Y "stv110.bin" "%GBE%\%EMUZ%\%SSF%\Setting\STV"

:FMUNZ
if not exist "%GBE%\%EMUZ%\%FMUNZ%" goto :MEDN
copy /Y "EROM.BIN" "%GBE%\%EMUZ%\%FMUNZ%"
copy /Y "FMT*" "%GBE%\%EMUZ%\%FMUNZ%"

:MEDN
if not exist "%GBE%\%EMUZ%\%MEDN%" goto :XM7
copy /Y "disksys.rom" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "*pcfx*.bin" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "*pcfx*.rom" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "*CD-ROM System*.pce" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "*Super CD-ROM2 System*.pce" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "*TurboGrafx CD*.pce" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "SYSCARD3.PCE" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "lynx.bin" "%GBE%\%EMUZ%\%MEDN%\lynxboot.img"
copy /Y "lynxa.bin" "%GBE%\%EMUZ%\%MEDN%\lynxboot.img"
copy /Y "lynxboot.img" "%GBE%\%EMUZ%\%MEDN%"

:XM7
if not exist "%GBE%\%EMUZ%\%XM7%" goto :NFAM
copy /Y "boot_dos.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "boot_bas.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "boot_mmr.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "dicrom.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "extsub.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "fbasic*.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "f-basic*.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "Initiate.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "Kanji.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "Kanji2.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "Subsys_a.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "Subsys_b.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "Subsys_c.rom" "%GBE%\%EMUZ%\%XM7%"
copy /Y "SubsysCG.rom" "%GBE%\%EMUZ%\%XM7%"
:NFAM
if not exist "%GBE%\%EMUZ%\%MEDN%" goto :ATST
copy /y "Famicom Disk System BIOS (J).nes" "%GBE%\%EMUZ%\%MEDN%\disksys.rom"
copy /Y "disksys.rom" "%GBE%\%EMUZ%\%MEDN%"
copy /Y "*BIOS*Nintendo Famicom Disk System*" "%GBE%\%EMUZ%\%MEDN%\disksys.rom"
copy /Y "*Sharp Twin Famicom*" "%GBE%\%EMUZ%\%MEDN%\disksys.rom"

:ATST
if not exist "%GBE%\%EMUZ%\%STEEM%" goto :AT8H
copy /Y "TOS*.rom" "%GBE%\%EMUZ%\%STEEM%"
copy /Y "TOS*.img" "%GBE%\%EMUZ%\%STEEM%"
copy /Y "eTOS*.img" "%GBE%\%EMUZ%\%STEEM%"
copy /Y "kaos*.rom" "%GBE%\%EMUZ%\%STEEM%"
copy /Y "kaos*.img" "%GBE%\%EMUZ%\%STEEM%"

:AT8H
if not exist "%GBE%\%EMUZ%\%ALTRA%" goto :PCSX2
copy /Y "*ATARIOSA*.rom" "%GBE%\%EMUZ%\%ALTRA%"
copy /Y "*ATARIOSB*.rom" "%GBE%\%EMUZ%\%ALTRA%"
copy /Y "*ATARIXL*.rom" "%GBE%\%EMUZ%\%ALTRA%"
copy /Y "*ATARIBAS*.rom" "%GBE%\%EMUZ%\%ALTRA%"
copy /Y "*5200*.rom" "%GBE%\%EMUZ%\%ALTRA%"

:PCSX2
if not exist "%GBE%\%EMUZ%\%PCSX2%" goto :PSX
mkdir "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "PS2 Bios 30004R V6 Pal.bin" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "PS2 Bios 30004R V6 Pal.MEC" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "PS2 Bios 30004R V6 Pal.NVM" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70004_BIOS_V12_PAL_200.BIN" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70004_BIOS_V12_PAL_200.EROM" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70004_BIOS_V12_PAL_200.MEC" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70004_BIOS_V12_PAL_200.NVM" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70004_BIOS_V12_PAL_200.ROM1" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70004_BIOS_V12_PAL_200.ROM2" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70012_BIOS_V12_USA_200.bin" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70012_BIOS_V12_USA_200.MEC" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "SCPH-70012_BIOS_V12_USA_200.NVM" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "scph10000.bin" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "scph10000.NVM" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "scph39001.bin" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "scph39001.MEC" "%GBE%\%EMUZ%\%PCSX2%\BIOS"
copy /Y "scph39001.NVM" "%GBE%\%EMUZ%\%PCSX2%\BIOS"

:PSX
if not exist "%GBE%\%EMUZ%\%PSX%" goto :KEGS
mkdir "%GBE%\%EMUZ%\%PSX%\BIOS"
copy /Y "Dtlh3000.bin" "%GBE%\%EMUZ%\%PSX%\BIOS\"
copy /Y "Dtlh3002.bin" "%GBE%\%EMUZ%\%PSX%\BIOS\"
copy /Y "SCPH1001.BIN" "%GBE%\%EMUZ%\%PSX%\BIOS\"
copy /Y "SCPH101.BIN" "%GBE%\%EMUZ%\%PSX%\BIOS\"
copy /Y "SCPH5000.BIN" "%GBE%\%EMUZ%\%PSX%\BIOS\"
copy /Y "SCPH5500.BIN" "%GBE%\%EMUZ%\%PSX%\BIOS\"
copy /Y "Scph5502.bin" "%GBE%\%EMUZ%\%PSX%\BIOS\"
copy /Y "Scph7000.bin" "%GBE%\%EMUZ%\%PSX%\BIOS\"
copy /Y "SCPH7001.BIN" "%GBE%\%EMUZ%\%PSX%\BIOS\"
copy /Y "Scph7003.bin" "%GBE%\%EMUZ%\%PSX%\BIOS\"
copy /Y "scph7502.bin" "%GBE%\%EMUZ%\%PSX%\BIOS\"
if not exist "%GBE%\%EMUZ%\%EPSXE%" goto :KEGS
mkdir "%GBE%\%EMUZ%\%EPSXE%\BIOS"
copy /Y "Dtlh3000.bin" "%GBE%\%EMUZ%\%EPSXE%\BIOS\"
copy /Y "Dtlh3002.bin" "%GBE%\%EMUZ%\%EPSXE%\BIOS\"
copy /Y "SCPH1001.BIN" "%GBE%\%EMUZ%\%EPSXE%\BIOS\"
copy /Y "SCPH101.BIN" "%GBE%\%EMUZ%\%EPSXE%\BIOS\"
copy /Y "SCPH5000.BIN" "%GBE%\%EMUZ%\%EPSXE%\BIOS\"
copy /Y "SCPH5500.BIN" "%GBE%\%EMUZ%\%EPSXE%\BIOS\"
copy /Y "Scph5502.bin" "%GBE%\%EMUZ%\%EPSXE%\BIOS\"
copy /Y "Scph7000.bin" "%GBE%\%EMUZ%\%EPSXE%\BIOS\"
copy /Y "SCPH7001.BIN" "%GBE%\%EMUZ%\%EPSXE%\BIOS\"
copy /Y "Scph7003.bin" "%GBE%\%EMUZ%\%EPSXE%\BIOS\"
copy /Y "scph7502.bin" "%GBE%\%EMUZ%\%EPSXE%\BIOS\"


:KEGS
if not exist "%GBE%\%EMUZ%\%KEGS%" goto :NOSTL
copy /Y "*Rom03gd*" "%%~i" "%GBE%\%EMUZ%\%KEGS%\ROM" 
copy /Y "*APPLE2GS*.rom2" "%GBE%\%EMUZ%\%KEGS%\ROM" 
copy /Y "ROM 03" "%%~i" "%GBE%\%EMUZ%\%KEGS%\ROM" 
copy /Y "ROM 01" "%GBE%\%EMUZ%\%KEGS%\ROM" 
copy /Y "xgs.rom" "%GBE%\%EMUZ%\%KEGS%\ROM" 

:NOSTL
if not exist "%GBE%\%EMUZ%\%NOSTL%" goto :BMSX
copy /Y "ivoice.bin" "%GBE%\%EMUZ%\%NOSTL%"
copy /Y "ecs.bin" "%GBE%\%EMUZ%\%NOSTL%"
copy /Y "grom.bin" "%GBE%\%EMUZ%\%NOSTL%"
copy /Y "exec.bin" "%GBE%\%EMUZ%\%NOSTL%"

:BMSX
if not exist "%GBE%\%EMUZ%\%BMSX%" goto :ATRI
copy /Y "DISK.ROM" "%GBE%\%EMUZ%\%BMSX%"
copy /Y "DISK2.ROM" "%GBE%\%EMUZ%\%BMSX%"
copy /Y "DOS.ROM" "%GBE%\%EMUZ%\%BMSX%"
copy /Y "FMPAC.ROM" "%GBE%\%EMUZ%\%BMSX%"
copy /Y "MSX.ROM" "%GBE%\%EMUZ%\%BMSX%"
copy /Y "MSX2.ROM" "%GBE%\%EMUZ%\%BMSX%"
copy /Y "MSX2P.ROM" "%GBE%\%EMUZ%\%BMSX%"
copy /Y "MSX2PEXT.ROM" "%GBE%\%EMUZ%\%BMSX%"

:ATRI
if not exist "%GBE%\%EMUZ%\%ATRI%" goto :CDI
copy /Y "5200.rom" "%GBE%\%EMUZ%\%ATRI%"
copy /Y "5200.bin" "%GBE%\%EMUZ%\%ATRI%"

:CDI
if not exist "%GBE%\%EMUZ%\%WCDI%" goto :FSUAE
copy /y "cdi200a.rom" "%GBE%\%EMUZ%\%WCDI%\rom"
copy /y "cdi200b.rom" "%GBE%\%EMUZ%\%WCDI%\rom"
copy /y "cdi490a.rom" "%GBE%\%EMUZ%\%WCDI%\rom"
copy /y "cdi910.rom" "%GBE%\%EMUZ%\%WCDI%\rom"
copy /y "impega.rom" "%GBE%\%EMUZ%\%WCDI%\rom"
copy /y "vmpega.rom" "%GBE%\%EMUZ%\%WCDI%\rom"
copy /y "xmpegx.rom" "%GBE%\%EMUZ%\%WCDI%\rom"

:FSUAE
if not exist "%GBE%\%EMUZ%\%FSUAE%" goto :FOURDO
copy /y "*EXTENDED*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*CD32*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*CDTV*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*Kick*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "Kickstart*" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*A1000*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*A1200*.rom" "%GBE%\%EMUZ%\%FSUAE%" 
copy /y "*A2500*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*A3000*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*A4000*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*A500*.rom" "%GBE%\%EMUZ%\%FSUAE%"
copy /y "*A600*.rom" "%GBE%\%EMUZ%\%FSUAE%"

:FOURDO
if not exist "%GBE%\%EMUZ%\%FOURDO%" goto :CLOSEOUT
copy /y "Goldstar.bin" "%GBE%\%EMUZ%\%FOURDO%" 
copy /y "*3DO*.bin" "%GBE%\%EMUZ%\%FOURDO%" 
copy /y "bios.rom" "%GBE%\%EMUZ%\%FOURDO%" 
copy /y "panaf*" "%GBE%\%EMUZ%\%FOURDO%" 
copy /y "sanyot*" "%GBE%\%EMUZ%\%FOURDO%"

:CLOSEOUT
%GBD%
cd "%GBC%\net\BIOS"
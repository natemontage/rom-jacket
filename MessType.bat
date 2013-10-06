set CONBCK=
SET EMUHR=
SET MACHN=
SET TYP=
set MESSON=1
if /i "%CSTCONS%"=="Other" set CONBCK=1
if /i "%CSTCONS%"=="Other" set CSTCONS=%CASTNAME%
CALL "%GBC%\shortname.bat"
set CURNTA=conselect.set
if exist "%GBC%\conselect.ini" set CURNTA=conselect.ini
for /f "tokens=* delims= " %%a in ('type "%GBC%\%CURNTA%"') do if "%%~a"=="%CSTCONS%" SET EMUHR=1
if "%EMUHR%"=="1" CALL :%SHRTN%
if "%MACHN%"=="" set MACHN=[MACHINE]
if "%TYP%"=="" set TYP=[TYP]
SET EMUOPT=%MACHN% -%TYP%
if "%CONBCK%"=="1" set CSTCONS=Other
exit /b

:TOUHU
SET MACHN=
SET TYP=
exit /b
:VECTX
SET MACHN=vectrex
SET TYP=[TYP]
exit /b
:TAITX
SET MACHN=
SET TYP=
exit /b
:ACBBC
SET MACHN=bbc
SET TYP=[TYP]
exit /b

:ACELE
SET MACHN=electron
SET TYP=[TYP]
exit /b

:ACARC
SET MACHN=
SET TYP=
exit /b

:SAMC
SET MACHN=samcoupe
SET TYP=[TYP]
exit /b

:APL2E
SET MACHN=apple2e
SET TYP=[TYP]
exit /b

:APL2GS
SET MACHN=apple2gs
SET TYP=[TYP]
exit /b

:AT8H
SET MACHN=a800
SET TYP=[TYP]
exit /b

:ATST
SET MACHN=ste
SET TYP=flop
exit /b

:EMARC
SET MACHN=arcadia
SET TYP=cart
exit /b

:BWS
SET MACHN=wswan
SET TYP=cart
exit /b

:BWSC
SET MACHN=wscolor
SET TYP=cart
exit /b

:CM64
SET MACHN=c64p
SET TYP=[TYP]
exit /b

:P3DO
SET MACHN=3do
SET TYP=cdrom
exit /b

:CDI
SET MACHN=
SET TYP=
exit /b

:FMTOWNS
SET MACHN=fmtowns
SET TYP=[TYP]
exit /b

:NEOPKT
SET MACHN=ngp
SET TYP=cart
exit /b

:NEOPKTC
SET MACHN=ngpc
SET TYP=cart
exit /b

:FLASH
SET MACHN=
SET TYP=
exit /b

:WIN32
SET MACHN=
SET TYP=
exit /b

:CAMIG
SET MACHN=
SET TYP=
exit /b

:AMIG32
SET MACHN=cd32
SET TYP=cdrom
exit /b

:INTEL
SET MACHN=intv
SET TYP=cart
exit /b

:COLEC
SET MACHN=coleco
SET TYP=cart
exit /b

:AT26
SET MACHN=a2600
SET TYP=cart
exit /b

:AT52
SET MACHN=a5200
SET TYP=cart
exit /b

:AT78
SET MACHN=a7800
SET TYP=cart
exit /b

:MSX
SET MACHN=msx
SET TYP=[TYP]
exit /b

:ENTP
SET MACHN=ep64
SET TYP=flop1
exit /b

:MSDS
SET MACHN=
SET TYP=
exit /b

:AMSTR
SET MACHN=gx4000
SET TYP=cart
exit /b

:JAGCD
SET MACHN=jaguarcd
SET TYP=[TYP]
exit /b

:JAG
SET MACHN=jaguar
SET TYP=cart
exit /b

:FM7
SET MACHN=fm7
SET TYP=[TYP]
exit /b

:SEG1K
SET MACHN=sg1000
SET TYP=cart
exit /b

:LYNX
SET MACHN=lynx
SET TYP=cart
exit /b

:N64
SET MACHN=n64
SET TYP=cart
exit /b

:NDS
SET MACHN=
SET TYP=
exit /b

:WII
SET MACHN=
SET TYP=
exit /b

:NGC
SET MACHN=
SET TYP=
exit /b

:NVB
SET MACHN=vboy
SET TYP=cart
exit /b

:NGB
SET MACHN=gameboy
SET TYP=cart
exit /b

:NGBC
SET MACHN=gbcolor
SET TYP=cart
exit /b

:NGBA
SET MACHN=gba
SET TYP=cart
exit /b

:NES
SET MACHN=nes
SET TYP=cart
exit /b

:NFAM
SET MACHN=famicom
SET TYP=[TYP]
exit /b

:SNES
SET MACHN=
SET TYP=
exit /b

:SFAM
SET MACHN=
SET TYP=
exit /b

:PCFX
SET MACHN=
SET TYP=
exit /b

:PC98
SET MACHN=pc9801ux
SET TYP=flop1
exit /b

:SEGAG
SET MACHN=genesis
SET TYP=cart
exit /b

:SEGAMD
SET MACHN=megadriv
SET TYP=cart
exit /b

:SEGMS
SET MACHN=gamegear
SET TYP=cart
exit /b

:SEGDC
SET MACHN=
SET TYP=
exit /b

:SEGG
SET MACHN=
SET TYP=
exit /b

:SEGCD
SET MACHN=segacd
SET TYP=cdrom
exit /b

:SSAT
SET MACHN=saturn
SET TYP=[TYP]
exit /b

:SG32X
SET MACHN=32x
SET TYP=cart
exit /b

:PS1
SET MACHN=
SET TYP=
exit /b

:PSP
SET MACHN=
SET TYP=
exit /b

:PS2
SET MACHN=
SET TYP=
exit /b

:TG16
SET MACHN=pce
SET TYP=cart
exit /b

:PCENG
SET MACHN=pce
SET TYP=cart
exit /b

:SGFX
SET MACHN=sgx
SET TYP=cart
exit /b

:TGCD
SET MACHN=
SET TYP=cdrom
exit /b

:PCECD
SET MACHN=pce
SET TYP=cdrom
exit /b

:X68K
SET MACHN=x68000
SET TYP=[TYP]
exit /b

:CPS
SET MACHN=
SET TYP=
exit /b

:CPS2
SET MACHN=
SET TYP=
exit /b

:CPS3
SET MACHN=
SET TYP=
exit /b

:ARCD
SET MACHN=
SET TYP=
exit /b

:NAOMI
SET MACHN=
SET TYP=
exit /b

:SEGM2
SET MACHN=
SET TYP=
exit /b

:SEGM2
SET MACHN=
SET TYP=
exit /b

:NEOGE
SET MACHN=
SET TYP=
exit /b

:NEOCD
SET MACHN=
SET TYP=
exit /b

:PC88
SET MACHN=pc8801
SET TYP=
exit /b

:SHRPX1
SET MACHN=x1
SET TYP=[TYP]
exit /b

:ZXSP
SET MACHN=spectrum
SET TYP=[TYP]
exit /b


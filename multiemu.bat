SET EMUOPT=
SET EMUARG=
SET EMUCFG=
SET ALTE1=
SET ALTE2=
SET ALTE3=
SET ALTEMU=
goto :CHKSYS

:CHKSYS
call "%GBC%\shortname.bat"
call :%SHRTN%
set ALTEMU=%ALTX1%%ALTX2%%ALTX3%
exit /b

:SETBUTTONS
if /i "%GBE%\%EMUZ%\%ALTE3%"=="%GBE%\%EMUZ%\" SET ALTX3=
if /i "%GBE%\%EMUZ%\%ALTE2%"=="%GBE%\%EMUZ%\" SET ALTX2=;%ALTE3%
if /i "%GBE%\%EMUZ%\%ALTE1%"=="%GBE%\%EMUZ%\" SET ALTX1=;%ALTE2%
if "%ALTE1%"=="%ALTE2%" SET ALTX2=

:CHK
if "%ALTE1%" NEQ "" SET ALTX1=;%ALTE1%
:CHK2
if "%ALTE2%" NEQ "" SET ALTX2=;%ALTE2%
:CHK3
if "%ALTE3%" NEQ "" SET ALTX3=;%ALTE3%
if "%ALTX1%"==";" SET ALT1X1=
if "%ALTX2%"==";" SET ALT1X2=
if "%ALTX3%"==";" SET ALT1X3=
exit /b

:WIN32
call :SETBUTTONS
exit /b
:FLASH
call :SETBUTTONS
exit /b
:APLE2E
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:APL2GS
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:ATST
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:AT26
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:AT52
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:AT78
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:JAGCD
call :SETBUTTONS
exit /b
:JAG
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:LYNX
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:N64
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:NDS
set ALTE1=%DESMUME%
call :SETBUTTONS
exit /b
:NVB
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:WII
call :SETBUTTONS
exit /b
:NGC
call :SETBUTTONS
exit /b
:NGB
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:NGBC
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:NGBA
set ALTE1=%MESS%
set ALTE2=%NOGBA%
call :SETBUTTONS
exit /b
:NES
set ALTE1=%VNES%
set ALTE2=%NESTP%
set ALTE3=%MESS%
call :SETBUTTONS
exit /b
:NFAM
set ALTE1=%VNES%
set ALTE2=%NESTP%
set ALTE3=%MESS%
call :SETBUTTONS
exit /b
:SNES
set ALTE1=%SNESGT%
set ALTE2=%BSNES%
set ALTE3=%MESS%
call :SETBUTTONS
exit /b
:SFAM
set ALTE1=%SNESGT%
set ALTE2=%BSNES%
set ALTE3=%MESS%
call :SETBUTTONS
exit /b
:SEGAG
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:SEGAMD
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:SEGMS
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:SEGDC
call :SETBUTTONS
exit /b
:SEGG
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:SEGCD
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:SSAT
call :SETBUTTONS
exit /b
:SG32X
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:PS1
set ALTE1=%MEDN%
call :SETBUTTONS
exit /b
:PS2
call :SETBUTTONS
exit /b
:PSP
set ALTE1=%JPCSP%
call :SETBUTTONS
exit /b
:PCE
set ALTE1=%OOTK%
set ALTE2=%MESS%
call :SETBUTTONS
exit /b
:PCECD
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:SGFX
set ALTE1=%OOTK%
set ALTE2=%MESS%
call :SETBUTTONS
exit /b
:TG16
set ALTE1=%OOTK%
set ALTE2=%MESS%
call :SETBUTTONS
exit /b
:TGCD
set ALTE1=%OOTK%
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:SHRPX1
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:EMARC
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:ARCD
set ALTE1=%FBA%
call :SETBUTTONS
exit /b
:CM64
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:CAMIG
set ALTE1=%WINUAE%
call :SETBUTTONS
exit /b
:AMIG32
set ALTE1=%WINUAE%
call :SETBUTTONS
exit /b
:AMSTR
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:BWS
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:BWSC
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:COLEC
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:INTEL
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:FMTOWNS
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:NEOPKT
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:NEOPKTC
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:P3DO
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:SAMC
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:FM7
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:PCFX
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:PC88
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:PC98
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:CDI
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:ZXSP
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:X68K
set ALTE1=%WIN68K%
set ALTE2=%MESS%
call :SETBUTTONS
exit /b
:ACARC
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:ACBBC
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:ACELE
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:MSX
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:AT8H
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:VECTX
set ALTE1=%MESS%
call :SETBUTTONS
exit /b
:ATMS
call :SETBUTTONS
exit /b
:TOUHU
set ALTE1=%NEKO%
call :SETBUTTONS
exit /b
:NAOMI
call :SETBUTTONS
exit /b
:CPS
set ALTE1=%MAME%
call :SETBUTTONS
exit /b
:CPS2
set ALTE1=%MAME%
call :SETBUTTONS
exit /b
:CPS3
set ALTE1=%MAME%
call :SETBUTTONS
exit /b
:SEG1K
set ALTE1=%MAME%
call :SETBUTTONS
exit /b
:SEGM2
call :SETBUTTONS
exit /b
:SEGM3
set ALTE1=%MAME%
call :SETBUTTONS
exit /b
:NEOGE
set ALTE1=%MAME%
call :SETBUTTONS
exit /b
:NEOCD
set ALTE1=%FBA%
call :SETBUTTONS
exit /b
:NEO64
call :SETBUTTONS
exit /b
:TAITX
call :SETBUTTONS
exit /b
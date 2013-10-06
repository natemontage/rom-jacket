%GAMDIR%
cd "%GBG%\%ROMJ%"
for /f "delims=" %%d in ('dir /s /b /ad ^| sort /r') do rd "%%d"
mkdir "%GBG%\%ROMJ%\SORTED ARCHIVES"
for /f "tokens=* delims= " %%a in ('type "%GBC%\conSelect.set"') do (
SET CONH=%%~a
CALL :FLDCHK
)
goto :fuzzymovebegin

:MOVING
call :MOVING
exit /b

:FLDCHK
if not exist "%GBG%\%ROMJ%\%CONH%" exit /b
for %%A in ("%CONH%") do set WSTMP=%%~A
for %%A in ("%CONH%") do set NMTMP=%%~A
if "%WSTMP%"=="%ARCD%" CALL :MAMEROMS
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :EOF)
cd "%GBG%\%ROMJ%"
robocopy "%WSTMP%" "%GBG%\%GAM%\%CONS%\%NMTMP%" /R:2 /W:2 /NP /E /IS /MOVE
exit /b

:MAMEROMS
cd "%GBG%\%ROMJ%\%WSTMP%"
CALL "%GBC%\mameAlias.bat"
exit /b

:fuzzymovebegin
cd "%GBG%\%ROMJ%"
set WSTMP=Wonderswan
SET NMTMP=%BWS%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :008)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:008
set WSTMP=Wonder Swan
SET NMTMP=%BWS%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :013)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:013
set WSTMP=Wonderswan Color
SET NMTMP=%BWSC%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :018)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:018
set WSTMP=Wonder Swan Color
SET NMTMP=%BWSC%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :023)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:023
set WSTMP=Wonderswancolor
SET NMTMP=%BWSC%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :028)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:028
set WSTMP=commodore
SET NMTMP=%C64%
if "%FZTST%"=="" (goto :033)
CALL "%GBC%\fuzzytest.bat"
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:033
set WSTMP=Amiga
SET NMTMP=%CAMIG%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :034)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:034
set WSTMP=Amiga 500
SET NMTMP=%CAMIG%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :035)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:035
set WSTMP=Amiga A1200
SET NMTMP=%CAMIG%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :036)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:036
set WSTMP=Amiga A4000
SET NMTMP=%CAMIG%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :037)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:037
set WSTMP=Amiga 600
SET NMTMP=%CAMIG%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :038)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:038
set WSTMP=Com64
SET NMTMP=%C64%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :043)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:043
set WSTMP=Commodore64
SET NMTMP=%C64%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :048)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:048
set WSTMP=3do
SET NMTMP=%P3DO%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :053)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:053
set WSTMP=3-do
SET NMTMP=%P3DO%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :058)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:058
set WSTMP=3d-o
SET NMTMP=%P3DO%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :063)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:063
set WSTMP=3d o
SET NMTMP=%P3DO%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :068)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:068
set WSTMP=cdi
SET NMTMP=%CDI%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :073)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:073
set WSTMP=cd i
SET NMTMP=%CDI%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :078)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:078
set WSTMP=cd-i
SET NMTMP=%CDI%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :083)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:083
set WSTMP=FMTOWNS
SET NMTMP=%FMTOWNS%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :088)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:088
set WSTMP=Pocket Neogeo
SET NMTMP=%NEOPKT%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :093)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:093
set WSTMP=Pocket NeoGeo
SET NMTMP=%NEOPKT%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :098)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:098
set WSTMP=neogeopocket
SET NMTMP=%NEOPKT%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :103)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:103
set WSTMP=NeoGeo pocket
SET NMTMP=%NEOPKT%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :108)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:108
set WSTMP=Adobe Flash
SET NMTMP=%FLASH%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :113)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:113
set WSTMP=Flash
SET NMTMP=%FLASH%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :118)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:118
set WSTMP=cd32
SET NMTMP=%AMIG32%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :123)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:123
set WSTMP=cd 32
SET NMTMP=%AMIG32%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :128)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:128
set WSTMP=cd-32
SET NMTMP=%AMIG32%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :133)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:133
set WSTMP=intellivision
SET NMTMP=%INTEL%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :138)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:138
set WSTMP=Coleco vision
SET NMTMP=%COLEC%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :143)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:143
set WSTMP=Atari7800
SET NMTMP=%AT78%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :148)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:148
set WSTMP=7800
SET NMTMP=%AT78%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :153)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:153
set WSTMP=A7800
SET NMTMP=%AT78%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :158)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:158
set WSTMP=Atari5200
SET NMTMP=%AT52%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :163)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:163
set WSTMP=A5200
SET NMTMP=%AT52%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :168)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:168
set WSTMP=Atari2600
SET NMTMP=%AT26%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :173)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:173
set WSTMP=A2600
SET NMTMP=%AT26%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :178)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:178
set WSTMP=2600
SET NMTMP=%AT26%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :183)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:183
set WSTMP=jagcd
SET NMTMP=%JAGCD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :187)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:187
set WSTMP=jag cd
SET NMTMP=%JAGCD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :188)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:188
set WSTMP=jaguarcd
SET NMTMP=%JAGCD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :189)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:189
set WSTMP=jaguar cd
SET NMTMP=%JAGCD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :193)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:193
set WSTMP=lynx
SET NMTMP=%LYNX%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :198)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:198
set WSTMP=nintendo64
SET NMTMP=%N64%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :203)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:203
set WSTMP=n64
SET NMTMP=%N64%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :208)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:208
set WSTMP=nintendods
SET NMTMP=%NDS%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :213)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:213
set WSTMP=nds
SET NMTMP=%NDS%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :218)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:218
set WSTMP=ds
SET NMTMP=%NDS%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :223)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:223
set WSTMP=dsi
SET NMTMP=%NDS%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :228)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:228
set WSTMP=wii
SET NMTMP=%WII%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :233)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:233
set WSTMP=nintendowii
SET NMTMP=%WII%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :238)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:238
set WSTMP=gamecube
SET NMTMP=%NGC%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :243)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:243
set WSTMP=GameCube
SET NMTMP=%NGC%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :248)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:248
set WSTMP=ngc
SET NMTMP=%NGC%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :253)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:253
set WSTMP=nintendo gamecube
SET NMTMP=%NGC%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :258)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:258
set WSTMP=gameboy
SET NMTMP=%NGB%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :263)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:263
set WSTMP=game boy
SET NMTMP=%NGB%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :268)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:268
set WSTMP=game boy color
SET NMTMP=%NGBC%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :273)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:273
set WSTMP=gameboy color
SET NMTMP=%NGBC%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :278)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:278
set WSTMP=gameboy advance
SET NMTMP=%NGBA%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :283)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:283
set WSTMP=game boy advance
SET NMTMP=%NGBA%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :288)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:288
set WSTMP=gameboy adv
SET NMTMP=%NGBA%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :293)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:293
set WSTMP=gba
SET NMTMP=%NGBA%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :298)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:298
set WSTMP=nintendo
SET NMTMP=%NES%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :303)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:303
set WSTMP=nes
SET NMTMP=%NES%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :308)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:308
set WSTMP=n.e.s
SET NMTMP=%NES%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :313)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:313
set WSTMP=snes
SET NMTMP=%SNES%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :318)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:318
set WSTMP=super nes
SET NMTMP=%SNES%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :323)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:323
set WSTMP=supernes
SET NMTMP=%SNES%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :328)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:328
set WSTMP=pc f-x
SET NMTMP=%PCFX%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :333)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:333
set WSTMP=pc fx
SET NMTMP=%PCFX%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :338)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:338
set WSTMP=pcfx
SET NMTMP=%PCFX%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :339)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:339
set WSTMP=BBC
SET NMTMP=%ACBBC%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :340)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:340
set WSTMP=Acorn BBC Micro
SET NMTMP=%ACBBC%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :341)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:341
set WSTMP=BBC Micro
SET NMTMP=%ACBBC%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :342)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:342
set WSTMP=Electron
SET NMTMP=%ACELE%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :343)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING


:343
set WSTMP=genesis
SET NMTMP=%SEGAG%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :348)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:348
set WSTMP=seg megadrive
SET NMTMP=%SEGAMD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :349)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING
:349
set WSTMP=mega-drive
SET NMTMP=%SEGAMD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :353)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:353
set WSTMP=mega drive
SET NMTMP=%SEGAMD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :358)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:358
set WSTMP=sega mega-drive
SET NMTMP=%SEGAMD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :363)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:363
set WSTMP=sega mega drive
SET NMTMP=%SEGAMD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :368)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:368
set WSTMP=mastersystem
SET NMTMP=%SEGMS%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :373)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:373
set WSTMP=master system
SET NMTMP=%SEGMS%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :378)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:378
set WSTMP=sega mastersystem
SET NMTMP=%SEGMS%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :383)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:383
set WSTMP=dreamcast
SET NMTMP=%SEGDC%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :388)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:388
set WSTMP=gamegear
SET NMTMP=%SEGG%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :389)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:389
set WSTMP=sega gg
SET NMTMP=%SEGG%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :390)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:390
set WSTMP=GG
SET NMTMP=%SEGG%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :391)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:391
set WSTMP=segaGG
SET NMTMP=%SEGG%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :392)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:392
set WSTMP=game-gear
SET NMTMP=%SEGG%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :393)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:395
set WSTMP=segagg
SET NMTMP=%SEGG%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :393)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:393
set WSTMP=game gear
SET NMTMP=%SEGG%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :398)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:398
set WSTMP=sega gamegear
SET NMTMP=%SEGG%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :403)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:403
set WSTMP=segacd
SET NMTMP=%SEGCD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :408)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:408
set WSTMP=saturn
SET NMTMP=%SSAT%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :413)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:413
set WSTMP=satourne
SET NMTMP=%SSAT%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :418)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:418
set WSTMP=32x
SET NMTMP=%SG32X%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :423)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:423
set WSTMP=32 x
SET NMTMP=%SG32X%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :428)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:428
set WSTMP=32-x
SET NMTMP=%SG32X%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :429)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:429
set WSTMP=CPS2
SET NMTMP=%CPS2%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :430)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:430
set WSTMP=CPS-2
SET NMTMP=%CPS2%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :431)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:431
set WSTMP=CPS II
SET NMTMP=%CPS2%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :432)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:432
set WSTMP=CPSII
SET NMTMP=%CPS2%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :433)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:433
set WSTMP=CPS3
SET NMTMP=%CPS3%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :434)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:434
set WSTMP=CPS-3
SET NMTMP=%CPS3%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :435)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:435
set WSTMP=CPSIII
SET NMTMP=%CPS3%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :436)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:436
set WSTMP=CPS III
SET NMTMP=%CPS3%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :437)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:437
set WSTMP=CPS-III
SET NMTMP=%CPS3%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :438)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:437
set WSTMP=playstation
SET NMTMP=%PS1%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :438)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:438
set WSTMP=ps 2
SET NMTMP=%PS2%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :443)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:443
set WSTMP=PS2
SET NMTMP=%PS2%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :448)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:448
set WSTMP=Playstation®2
SET NMTMP=%PS2%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :453)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:453
set WSTMP=Sony Playstation®2
SET NMTMP=%PS2%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :458)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:458
set WSTMP=Sony Playstation2
SET NMTMP=%PS2%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :463)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:463
set WSTMP=Playstation2
SET NMTMP=%PS2%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :468)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:468
set WSTMP=psx
SET NMTMP=%PS1%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :473)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:473
set WSTMP=ps x
SET NMTMP=%PS1%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :478)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:478
set WSTMP=ps-x
SET NMTMP=%PS1%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :483)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:483
set WSTMP=PlayStation®
SET NMTMP=%PS1%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :488)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:488
set WSTMP=ps 1
SET NMTMP=%PS1%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :493)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:493
set WSTMP=ps1
SET NMTMP=%PS1%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :498)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:498
set WSTMP=sony ps1
SET NMTMP=%PS1%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :503)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:503
set WSTMP=psp
SET NMTMP=%PSP%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :508)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:508
set WSTMP=playstation portable
SET NMTMP=%PSP%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :513)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:513
set WSTMP=tg 16
SET NMTMP=%TG16%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :518)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:518
set WSTMP=tg-16
SET NMTMP=%TG16%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :523)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:523
set WSTMP=turbografx
SET NMTMP=%TG16%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :528)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:528
set WSTMP=turbo grafx
SET NMTMP=%TG16%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :533)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:533
set WSTMP=turbo grafix 16
SET NMTMP=%TG16%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :538)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:538
set WSTMP=turbo grafx 16
SET NMTMP=%TG16%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :543)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:543
set WSTMP=turbo grafx cd
SET NMTMP=%TGCD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :544)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:544
set WSTMP=tgcd
SET NMTMP=%TGCD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :545)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:545
set WSTMP=pc-engine cd
SET NMTMP=%PCECD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :546e)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:546e
set WSTMP=Turbo Duo
SET NMTMP=%TGCD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :546f)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:546f
set WSTMP=TurboDuo
SET NMTMP=%TGCD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :546h)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:546f
set WSTMP=Turbo-Duo
SET NMTMP=%TGCD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :546a)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:546a
set WSTMP=pce cd
SET NMTMP=%PCECD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :547)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:547
set WSTMP=pce
SET NMTMP=%PCENG%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :547e)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:547e
set WSTMP=pc-engine
SET NMTMP=%PCENG%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :547g)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:547g
set WSTMP=pcengine
SET NMTMP=%PCENG%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :547h)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:547h
set WSTMP=pc engine duo
SET NMTMP=%PCECD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :547i)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:547i
set WSTMP=pc-engine duo
SET NMTMP=%PCECD%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :548)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING


:548
set WSTMP=ps2
SET NMTMP=%PS2%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :553)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:553
set WSTMP=Sonyplaystation 2
SET NMTMP=%PS2%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :558)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:558
set WSTMP=sonyps2
SET NMTMP=%PS2%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :563)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:563
set WSTMP=playstation2
SET NMTMP=%PS2%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :568)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:568
set WSTMP=sony playstation2
SET NMTMP=%PS2%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :573)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:573
set WSTMP=sony playstation 2
SET NMTMP=%PS2%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :578)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:578
set WSTMP=zx spectrum
SET NMTMP=%ZXSP%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :583)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:583
set WSTMP=windows
SET NMTMP=%WIN32%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :588)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:588
set WSTMP=PC Games
SET NMTMP=%WIN32%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :589)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:589
set WSTMP=PC
SET NMTMP=%WIN32%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :590)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:590
set WSTMP=Games
SET NMTMP=%WIN32%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :591)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:591
set WSTMP=windows games
SET NMTMP=%WIN32%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :593)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:593
set WSTMP=games for windows
SET NMTMP=%WIN32%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :598)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:598
set WSTMP=steam
SET NMTMP=%WIN32%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :603)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:603
set WSTMP=M-S-X
SET NMTMP=%MSX%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :601)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:601
set WSTMP=MSX+
SET NMTMP=%MSX%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :604)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:604
set WSTMP=MSX2
SET NMTMP=%MSX%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :605)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:605
set WSTMP=M-S-X 2
SET NMTMP=%MSX%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :606)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:606
set WSTMP=MSX 2
SET NMTMP=%MSX%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :607)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:607
set WSTMP=X-68K
SET NMTMP=%X68K%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :607)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:607
set WSTMP=X-68000
SET NMTMP=%X68K%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :608)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:608
set WSTMP=X 68K
SET NMTMP=%X68K%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :609)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:609
set WSTMP=X68K
SET NMTMP=%X68K%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :610)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:610
SET NMTMP=%ARCD%
set WSTMP=Arcade Games
if not exist "%GBG%\%ROMJ%\%WSTMP%" goto :6100
start "" "%GBC%\wbusy.exe" "MameRoms" "Preparing %ARCD% directory." /marquee
cd "%GBG%\%ROMJ%\%WSTMP%"
CALL "%GBC%\mameAlias.bat"

:6100
set WSTMP=NeoGeo 64 Games
SET NMTMP=%NEO64%
if not exist "%GBG%\%ROMJ%\%WSTMP%" goto :6101
start "" "%GBC%\wbusy.exe" "MameRoms" "Preparing %ARCD% directory." /marquee
cd "%GBG%\%ROMJ%\%WSTMP%"
CALL "%GBC%\HNG64.bat"

:6101
set WSTMP=Hyper NeoGeo 64 Games
SET NMTMP=%NEO64%
if not exist "%GBG%\%ROMJ%\%WSTMP%" goto :6102
start "" "%GBC%\wbusy.exe" "MameRoms" "Preparing %ARCD% directory." /marquee
cd "%GBG%\%ROMJ%\%WSTMP%"
CALL "%GBC%\HNG64.bat"

:6102
SET NMTMP=%NEO64%
set WSTMP=Neo-Geo 64
if not exist "%GBG%\%ROMJ%\%WSTMP%" goto :6103
start "" "%GBC%\wbusy.exe" "MameRoms" "Preparing %ARCD% directory." /marquee
cd "%GBG%\%ROMJ%\%WSTMP%"
CALL "%GBC%\HNG64.bat"

:6103
SET NMTMP=%NEO64%
set WSTMP=Neo Geo 64
if not exist "%GBG%\%ROMJ%\%WSTMP%" goto :6104
start "" "%GBC%\wbusy.exe" "MameRoms" "Preparing %ARCD% directory." /marquee
cd "%GBG%\%ROMJ%\%WSTMP%"
CALL "%GBC%\HNG64.bat"

:6104
SET NMTMP=%NEO64%
set WSTMP=Hyper Neo-Geo 64
if not exist "%GBG%\%ROMJ%\%WSTMP%" goto :611
start "" "%GBC%\wbusy.exe" "MameRoms" "Preparing %ARCD% directory." /marquee
cd "%GBG%\%ROMJ%\%WSTMP%"
CALL "%GBC%\HNG64.bat"

:611
set WSTMP=Mame
SET NMTMP=%ARCD%
if not exist "%GBG%\%ROMJ%\%WSTMP%" goto :612
start "" "%GBC%\wbusy.exe" "MameRoms" "Preparing %ARCD% directory." /marquee
cd "%GBG%\%ROMJ%\%WSTMP%"
CALL "%GBC%\mameAlias.bat"


:612
set WSTMP=Mame roms
SET NMTMP=%ARCD%
if not exist "%GBG%\%ROMJ%\%WSTMP%" goto :613
start "" "%GBC%\wbusy.exe" "MameRoms" "Preparing %ARCD% directory." /marquee
cd "%GBG%\%ROMJ%\%WSTMP%"
CALL "%GBC%\mameAlias.bat"


:613
set WSTMP=Mame Games
SET NMTMP=%ARCD%
if not exist "%GBG%\%ROMJ%\%WSTMP%" goto :614

cd "%GBG%\%ROMJ%\%WSTMP%"
CALL "%GBC%\mameAlias.bat"


:614
set WSTMP=Arcade roms
SET NMTMP=%ARCD%
if not exist "%GBG%\%ROMJ%\%WSTMP%" goto :615

cd "%GBG%\%ROMJ%\%WSTMP%"
CALL "%GBC%\mameAlias.bat"


:615
set WSTMP=mame
SET NMTMP=%ARCD%
if not exist "%GBG%\%ROMJ%\%WSTMP%" goto :616
cd "%GBG%\%ROMJ%\%WSTMP%"
cd "roms"
CALL "%GBC%\mameAlias.bat"

:616
set WSTMP=mame32
SET NMTMP=%ARCD%
if not exist "%GBG%\%ROMJ%\%WSTMP%" goto :620
cd "%GBG%\%ROMJ%\%WSTMP%"
cd "roms"
CALL "%GBC%\mameAlias.bat"

:620
set WSTMP=Famicom
SET NMTMP=%NFAM%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :621)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:621
set WSTMP=Japanese Nintendo
SET NMTMP=%NFAM%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :622)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:622
set WSTMP=NES (J)
SET NMTMP=%NFAM%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :623)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:623
set WSTMP=SuperFamicom
SET NMTMP=%SFAM%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :624)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:624
set WSTMP=SuperNES (J)
SET NMTMP=%SFAM%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :625)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:625
set WSTMP=Super NES (J)
SET NMTMP=%SFAM%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :626)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:626
set WSTMP=Super Nintendo (J)
SET NMTMP=%SFAM%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :627)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:627
set WSTMP=Super Grafx
SET NMTMP=%SGFX%
CALL "%GBC%\fuzzytest.bat"
if "%FZTST%"=="" (goto :628)
cd "%GBG%\%ROMJ%"
rename "%WSTMP%" "%NMTMP%"
call :MOVING

:650
cd "%GBG%\%ROMJ%"
set TMPNAME=
FOR /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%ROMJ%"') do (
SET TMPDIR=%CD%
CALL "%GBC%\rjfuzmv.bat"
)
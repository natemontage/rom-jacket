:STARTROMXL
echo ---------->"%GBC%\recmd.ini"
if /i "%ROMXT%"==".do" call :apl2
if /i "%ROMXT%"==".po" call :apl2
if /i "%ROMXT%"==".2mg" call :apl2
if /i "%ROMXT%"==".cas" call :cas
if /i "%ROMXT%"==".tap" call :tap
if /i "%ROMXT%"==".dsk" call :dsk
if /i "%ROMXT%"==".adf" call :adf
if /i "%ROMXT%"==".hdf" call :hdf
if /i "%ROMXT%"==".ipf" call :ipf
if /i "%ROMXT%"==".dup" call :dup
if /i "%ROMXT%"==".xdf" call :xdf
if /i "%ROMXT%"==".d88" call :d88
if /i "%ROMXT%"==".2hd" call :2hd
if /i "%ROMXT%"==".fdi" call :fdi
if /i "%ROMXT%"==".dsd" call :ssd
if /i "%ROMXT%"==".ssd" call :ssd
if /i "%ROMXT%"==".rom" call :rom
if /i "%ROMXT%"==".gz" call :gz
if /i "%ROMXT%"==".bin" call :bin

if /i "%ROMXT%"==".iso" CALL :addcd
if /i "%ROMXT%"==".cue" CALL :addcd
if /i "%ROMXT%"==".ccd" CALL :addcd
if /i "%ROMXT%"==".cdz" CALL :addcd
if /i "%ROMXT%"==".cdi" CALL :addcd
if /i "%ROMXT%"==".img" CALL :addcd
if /i "%ROMXT%"==".nrg" CALL :addcd
if /i "%ROMXT%"==".mdf" CALL :addcd
if /i "%ROMXT%"==".mds" CALL :addcd
if /i "%ROMXT%"==".zip" SET INZIP=1
if "%INZIP%"=="1" call :ZIPSKP
echo ---------->>"%GBC%\recmd.ini"
echo ---------->>"%GBC%\recmd.ini"
echo ---------->>"%GBC%\recmd.ini"
for /f "tokens=* delims= " %%a in ('type "%GBC%\conselect.set"') do echo.%%~a>>"%GBC%\recmd.ini"
exit /b

:ZIPSKP
for %%a in ("%ROMFULL%") do SET FULLNM=%%~a
CALL "%GBC%\messzip.bat">>"%GBC%\logs\messzip.log"
if "%CDIN%"=="1" CALL :addcd
if "%SKIPZIP%"=="1" exit /b
REM if "%OUTZIP%"=="1" goto :STARTROMXL
exit /b

:apl2
echo %APL2E%>>"%GBC%\recmd.ini"
echo %APL2GS%>>"%GBC%\recmd.ini"
exit /b
:cas
echo %MSX%>>"%GBC%\recmd.ini"
echo %AT8H%>>"%GBC%\recmd.ini"
exit /b
:adf
echo %CAMIG%>>"%GBC%\recmd.ini"
echo %ACARC%>>"%GBC%\recmd.ini"
exit /b
:tap
echo %CM64%>>"%GBC%\recmd.ini"
echo %ZXSP%>>"%GBC%\recmd.ini"
exit /b
:dsk
echo %AMSTR%>>"%GBC%\recmd.ini"
echo %MSX%>>"%GBC%\recmd.ini"
echo %SAMC%>>"%GBC%\recmd.ini"
echo %ZXSP%>>"%GBC%\recmd.ini"
exit /b
:wav
echo %ZXSP%>>"%GBC%\recmd.ini"
exit /b
:hdf
echo %ZXSP%>>"%GBC%\recmd.ini"
echo %AMIG32%>>"%GBC%\recmd.ini"
echo %X68K%>>"%GBC%\recmd.ini"
echo %CAMIG%>>"%GBC%\recmd.ini"
exit /b
:dup
echo %PC98%>>"%GBC%\recmd.ini"
echo %X68K%>>"%GBC%\recmd.ini"
:xdf
echo %PC98%>>"%GBC%\recmd.ini"
echo %X68K%>>"%GBC%\recmd.ini"
exit /b
:ipf
echo %CAMIG%>>"%GBC%\recmd.ini"
echo %ATST%>>"%GBC%\recmd.ini"
exit /b
:d88
echo %SHRPX1%>>"%GBC%\recmd.ini"
echo %PC88%>>"%GBC%\recmd.ini"
echo %PC98%>>"%GBC%\recmd.ini"
echo %X68K%>>"%GBC%\recmd.ini"
exit /b
:2hd
echo %PC98%>>"%GBC%\recmd.ini"
echo %X68K%>>"%GBC%\recmd.ini"
exit /b
:fdi
echo %ACARC%>>"%GBC%\recmd.ini"
echo %SHRPX1%>>"%GBC%\recmd.ini"
echo %PC98%>>"%GBC%\recmd.ini"
echo %TOUHU%>>"%GBC%\recmd.ini"
echo %CAMIG%>>"%GBC%\recmd.ini"
echo %CM64%>>"%GBC%\recmd.ini"
echo %NFAM%>>"%GBC%\recmd.ini"
exit /b
:ssd
echo %ACBBC%>>"%GBC%\recmd.ini"
echo %ACELE%>>"%GBC%\recmd.ini"
exit /b
:rom
echo %AT26%>>"%GBC%\recmd.ini"
echo %AT52%>>"%GBC%\recmd.ini"
echo %AT78%>>"%GBC%\recmd.ini"
echo %COLEC%>>"%GBC%\recmd.ini"
echo %INTEL%>>"%GBC%\recmd.ini"
echo %ZXSP%>>"%GBC%\recmd.ini"
echo %MSX%>>"%GBC%\recmd.ini"
echo %SEGAG%>>"%GBC%\recmd.ini"
echo %SEGAMD%>>"%GBC%\recmd.ini"
echo %SEGMS%>>"%GBC%\recmd.ini"
echo %SG32X%>>"%GBC%\recmd.ini"
exit /b

:gz
echo %SAMC%>>"%GBC%\recmd.ini"
echo %AT8H%>>"%GBC%\recmd.ini"
exit /b

:bin
for %%R in ("%ROMFULL%") do if %%~zR leq 4000000 goto :bin2
echo %AMIG32%>>"%GBC%\recmd.ini"
echo %DAPHN%>>"%GBC%\recmd.ini"
echo %CDI%>>"%GBC%\recmd.ini"
echo %FMTOWNS%>>"%GBC%\recmd.ini"
echo %JAGCD%>>"%GBC%\recmd.ini"
echo %NDS%>>"%GBC%\recmd.ini"
echo %NES%>>"%GBC%\recmd.ini"
echo %NFAM%>>"%GBC%\recmd.ini"
echo %P3DO%>>"%GBC%\recmd.ini"
echo %PCFX%>>"%GBC%\recmd.ini"
echo %TGCD%>>"%GBC%\recmd.ini"
echo %PCECD%>>"%GBC%\recmd.ini"
echo %PS1%>>"%GBC%\recmd.ini"
echo %PS2%>>"%GBC%\recmd.ini"
echo %PSP%>>"%GBC%\recmd.ini"
echo %SEGCD%>>"%GBC%\recmd.ini"
echo %SSAT%>>"%GBC%\recmd.ini"
echo -Less Likely->>"%GBC%\recmd.ini"
echo %APL2E%>>"%GBC%\recmd.ini"
echo %INTEL%>>"%GBC%\recmd.ini"
echo %VECTX%>>"%GBC%\recmd.ini"
echo %SEGAMD%>>"%GBC%\recmd.ini"
echo %SEGAG%>>"%GBC%\recmd.ini"
echo %SEGG%>>"%GBC%\recmd.ini"
echo %SEGMS%>>"%GBC%\recmd.ini"
echo %SG32X%>>"%GBC%\recmd.ini"
echo %AT26%>>"%GBC%\recmd.ini"
echo %AT52%>>"%GBC%\recmd.ini"
echo %AT78%>>"%GBC%\recmd.ini"
echo %AT8H%>>"%GBC%\recmd.ini"
echo %EMARC%>>"%GBC%\recmd.ini"
exit /b

:bin2
echo %APL2E%>>"%GBC%\recmd.ini"
echo %INTEL%>>"%GBC%\recmd.ini"
echo %VECTX%>>"%GBC%\recmd.ini"
echo %SEGAMD%>>"%GBC%\recmd.ini"
echo %SEGAG%>>"%GBC%\recmd.ini"
echo %SEGG%>>"%GBC%\recmd.ini"
echo %SEGMS%>>"%GBC%\recmd.ini"
echo %SG32X%>>"%GBC%\recmd.ini"
echo %AT26%>>"%GBC%\recmd.ini"
echo %AT52%>>"%GBC%\recmd.ini"
echo %AT78%>>"%GBC%\recmd.ini"
echo %AT8H%>>"%GBC%\recmd.ini"
echo %EMARC%>>"%GBC%\recmd.ini"
echo -Less Likely->>"%GBC%\recmd.ini"
echo %AMIG32%>>"%GBC%\recmd.ini"
echo %DAPHN%>>"%GBC%\recmd.ini"
echo %ATCDI%>>"%GBC%\recmd.ini"
echo %FMTOWNS%>>"%GBC%\recmd.ini"
echo %JAGCD%>>"%GBC%\recmd.ini"
echo %NDS%>>"%GBC%\recmd.ini"
echo %NES%>>"%GBC%\recmd.ini"
echo %NFAM%>>"%GBC%\recmd.ini"
echo %P3DO%>>"%GBC%\recmd.ini"
echo %PCFX%>>"%GBC%\recmd.ini"
echo %PS1%>>"%GBC%\recmd.ini"
echo %PS2%>>"%GBC%\recmd.ini"
echo %PSP%>>"%GBC%\recmd.ini"
echo %SEGCD%>>"%GBC%\recmd.ini"
echo %SSAT%>>"%GBC%\recmd.ini"
exit /b

:addcd
SET CDPASS=1
echo %DAPHN%>>"%GBC%\recmd.ini"
echo %WII%>>"%GBC%\recmd.ini"
echo %PS2%>>"%GBC%\recmd.ini"
echo %AMIG32%>>"%GBC%\recmd.ini"
echo %JAGCD%>>"%GBC%\recmd.ini"
echo %FMTOWNS%>>"%GBC%\recmd.ini"
echo %NEOCD%>>"%GBC%\recmd.ini"
echo %P3DO%>>"%GBC%\recmd.ini"
echo %CDI%>>"%GBC%\recmd.ini"
echo %SEGCD%>>"%GBC%\recmd.ini"
echo %SSAT%>>"%GBC%\recmd.ini"
echo %SEGDC%>>"%GBC%\recmd.ini"
echo %PS1%>>"%GBC%\recmd.ini"
echo %PCECD%>>"%GBC%\recmd.ini"
echo %TGCD%>>"%GBC%\recmd.ini"
echo %NGC%>>"%GBC%\recmd.ini"
echo %PSP%>>"%GBC%\recmd.ini"
exit /b


:addZips
echo %APL2E%>>"%GBC%\recmd.ini"
echo %APL2GS%>>"%GBC%\recmd.ini"
echo %MSX%>>"%GBC%\recmd.ini"
echo %AT8H%>>"%GBC%\recmd.ini"
echo %ATST%>>"%GBC%\recmd.ini"
echo %ZXSP%>>"%GBC%\recmd.ini"
echo %BWS%>>"%GBC%\recmd.ini"
echo %BWSC%>>"%GBC%\recmd.ini"
echo %NEOPKTC%>>"%GBC%\recmd.ini"
echo %NEOPKT%>>"%GBC%\recmd.ini"
echo %INTEL%>>"%GBC%\recmd.ini"
echo %VECTX%>>"%GBC%\recmd.ini"
echo %PCENG%>>"%GBC%\recmd.ini"
echo %SGX%>>"%GBC%\recmd.ini"
echo %TG16%>>"%GBC%\recmd.ini"
echo %SNES%>>"%GBC%\recmd.ini"
echo %SG32X%>>"%GBC%\recmd.ini"
echo %SEGMS%>>"%GBC%\recmd.ini"
echo %SEGG%>>"%GBC%\recmd.ini"
echo %SEGAG%>>"%GBC%\recmd.ini"
echo %SEG1K%>>"%GBC%\recmd.ini"
echo %SEGAMD%>>"%GBC%\recmd.ini"
echo %NES%>>"%GBC%\recmd.ini"
echo %NFAM%>>"%GBC%\recmd.ini"
echo %AT78%>>"%GBC%\recmd.ini"
echo %AT26%>>"%GBC%\recmd.ini"
echo %EMARC%>>"%GBC%\recmd.ini"
echo %SAMC%>>"%GBC%\recmd.ini"
echo %N64%>>"%GBC%\recmd.ini"
echo %LYNX%>>"%GBC%\recmd.ini"
echo %NGBC%>>"%GBC%\recmd.ini"
echo %NGB%>>"%GBC%\recmd.ini"
echo %NVB%>>"%GBC%\recmd.ini"
echo %NGBA%>>"%GBC%\recmd.ini"
echo %CPS3%>>"%GBC%\recmd.ini"
echo %CPS2%>>"%GBC%\recmd.ini"
echo %CPS%>>"%GBC%\recmd.ini"
echo %NEO64%>>"%GBC%\recmd.ini"
echo %ATMS%>>"%GBC%\recmd.ini"
echo %NAOMI%>>"%GBC%\recmd.ini"
echo %SEGM3%>>"%GBC%\recmd.ini"
echo %SEGM2%>>"%GBC%\recmd.ini"
echo %NEOGE%>>"%GBC%\recmd.ini"
echo %ARCD%>>"%GBC%\recmd.ini"
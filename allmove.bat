del /q "%GBC%\sortlist.ini"

set CONFLNUM=

for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "%GBG%\%ROMJ%"') do (
set CHKFILE=
set ROMFULL=%%~dpnxa
set ROMNAME=%%~nxa
set ROMID=%%~na
SET ROMIS=%%~dpa
set ROMXT=%%~xa
CALL :SORTING
CALL :MOVING
)
exit /b

:SORTING
set ROMPTH=%ROMIS:~0,-1%
set ROMTX=%ROMXT:~1,5%

if /i "%ROMXT%"==".cue" call :ADDCONFL
if /i "%ROMXT%"==".ccd" call :ADDCONFL
if /i "%ROMXT%"==".mds" call :ADDCONFL

if /i "%ROMXT%"==".cdz" call :CONFLNUM
if /i "%ROMXT%"==".cdi" call :CONFLNUM
if /i "%ROMXT%"==".iso" call :CONFLNUM
if /i "%ROMXT%"==".img" call :CONFLNUM
if /i "%ROMXT%"==".nrg" call :CONFLNUM
if /i "%ROMXT%"==".mdf" call :CONFLNUM
if /i "%ROMXT%"==".bin" call :CONFLNUM
if /i "%ROMXT%"==".adf" call :CONFLNUM
if /i "%ROMXT%"==".rom" call :CONFLNUM
if /i "%ROMXT%"==".do" call :CONFLNUM
if /i "%ROMXT%"==".po" call :CONFLNUM
if /i "%ROMXT%"==".2mg" call :CONFLNUM
if /i "%ROMXT%"==".cas" call :CONFLNUM
if /i "%ROMXT%"==".xdf" call :CONFLNUM
if /i "%ROMXT%"==".ipf" call :CONFLNUM
if /i "%ROMXT%"==".dsk" call :CONFLNUM
if /i "%ROMXT%"==".tap" call :CONFLNUM
if /i "%ROMXT%"==".hdf" call :CONFLNUM
if /i "%ROMXT%"==".dup" call :CONFLNUM
if /i "%ROMXT%"==".d88" call :CONFLNUM
if /i "%ROMXT%"==".2hd" call :CONFLNUM
if /i "%ROMXT%"==".2dd" call :CONFLNUM
if /i "%ROMXT%"==".fdi" call :CONFLNUM
if /i "%ROMXT%"==".dsd" call :CONFLNUM
if /i "%ROMXT%"==".ssd" call :CONFLNUM

if /i "%ROMXT%" EQU ".lnk" SET CHKFILE=%WIN32%
if /i "%ROMXT%" EQU ".sgx" SET CHKFILE=%SGFX%
if /i "%ROMXT%" EQU ".pbp" SET CHKFILE=%PSP%
if /i "%ROMXT%" EQU ".88d" SET CHKFILE=%X68K%
if /i "%ROMXT%" EQU ".d68" SET CHKFILE=%X68K%
if /i "%ROMXT%" EQU ".2hq" SET CHKFILE=%X68K%
if /i "%ROMXT%" EQU ".hds" SET CHKFILE=%X68K%
if /i "%ROMXT%" EQU ".dim" SET CHKFILE=%X68K%
if /i "%ROMXT%" EQU ".vfd" SET CHKFILE=%FM7%
if /i "%ROMXT%" EQU ".d77" SET CHKFILE=%FM7%
if /i "%ROMXT%" EQU ".t77" SET CHKFILE=%FM7%
if /i "%ROMXT%" EQU ".2d" SET CHKFILE=%FM7%
if /i "%ROMXT%" EQU ".ngp" SET CHKFILE=%NEOPKT%
if /i "%ROMXT%" EQU ".ngc" SET CHKFILE=%NEOPKT%
if /i "%ROMXT%" EQU ".npk" SET CHKFILE=%NEOPKT%
if /i "%ROMXT%" EQU ".gg" SET CHKFILE=%SEGG%
if /i "%ROMXT%" EQU ".gb" SET CHKFILE=%NGB%
if /i "%ROMXT%" EQU ".ws" SET CHKFILE=%BWS%
if /i "%ROMXT%" EQU ".cso" SET CHKFILE=%PSP%
if /i "%ROMXT%" EQU ".jso" SET CHKFILE=%PSP%
if /i "%ROMXT%" EQU ".psp" SET CHKFILE=%PSP%
if /i "%ROMXT%" EQU ".lnx" SET CHKFILE=%LYNX%
if /i "%ROMXT%" EQU ".md" SET CHKFILE=%SEGAG%
if /i "%ROMXT%" EQU ".smd" SET CHKFILE=%SEGAG%
if /i "%ROMXT%" EQU ".gen" SET CHKFILE=%SEGAG%
if /i "%ROMXT%" EQU ".sg" SET CHKFILE=%SEG1K%
if /i "%ROMXT%" EQU ".sms" SET CHKFILE=%SEGMS%
if /i "%ROMXT%" EQU ".pal" SET CHKFILE=%N64%
if /i "%ROMXT%" EQU ".usa" SET CHKFILE=%N64%
if /i "%ROMXT%" EQU ".u64" SET CHKFILE=%N64%
if /i "%ROMXT%" EQU ".v64" SET CHKFILE=%N64%
if /i "%ROMXT%" EQU ".n64" SET CHKFILE=%N64%
if /i "%ROMXT%" EQU ".z64" SET CHKFILE=%N64%
if /i "%ROMXT%" EQU ".t64" SET CHKFILE=%CM64%
if /i "%ROMXT%" EQU ".g64" SET CHKFILE=%CM64%
if /i "%ROMXT%" EQU ".p00" SET CHKFILE=%CM64%
if /i "%ROMXT%" EQU ".x64" SET CHKFILE=%CM64%
if /i "%ROMXT%" EQU ".d64" SET CHKFILE=%CM64%
if /i "%ROMXT%" EQU ".j64" SET CHKFILE=%JAG%
if /i "%ROMXT%" EQU ".jag" SET CHKFILE=%JAG%
if /i "%ROMXT%" EQU ".amiga" SET CHKFILE=%CAMIG%
if /i "%ROMXT%" EQU ".sna" SET CHKFILE=%ZXSP%
if /i "%ROMXT%" EQU ".szx" SET CHKFILE=%ZXSP%
if /i "%ROMXT%" EQU ".scr" SET CHKFILE=%ZXSP%
if /i "%ROMXT%" EQU ".csw" SET CHKFILE=%ZXSP%
if /i "%ROMXT%" EQU ".blk" SET CHKFILE=%ZXSP%
if /i "%ROMXT%" EQU ".z80" SET CHKFILE=%ZXSP%
if /i "%ROMXT%" EQU ".ds" SET CHKFILE=%NDS%
if /i "%ROMXT%" EQU ".nds" SET CHKFILE=%NDS%
if /i "%ROMXT%" EQU ".nd5" SET CHKFILE=%NDS%
if /i "%ROMXT%" EQU ".wsc" SET CHKFILE=%BWSC%
if /i "%ROMXT%" EQU ".sfc" SET CHKFILE=%SFAM%
if /i "%ROMXT%" EQU ".smc" SET CHKFILE=%SNES%
if /i "%ROMXT%" EQU ".pce" SET CHKFILE=%TG16%
if /i "%ROMXT%" EQU ".vec" SET CHKFILE=%VECTX%
if /i "%ROMXT%" EQU ".fds" SET CHKFILE=%NFAM%
if /i "%ROMXT%" EQU ".fam" SET CHKFILE=%NFAM%
if /i "%ROMXT%" EQU ".st" SET CHKFILE=%ATST%
if /i "%ROMXT%" EQU ".msa" SET CHKFILE=%ATST%
if /i "%ROMXT%" EQU ".vb" SET CHKFILE=%NVB%
if /i "%ROMXT%" EQU ".vboy" SET CHKFILE=%NVB%
if /i "%ROMXT%" EQU ".obx" SET CHKFILE=%AT8H%
if /i "%ROMXT%" EQU ".xex" SET CHKFILE=%AT8H%
if /i "%ROMXT%" EQU ".dcm" SET CHKFILE=%AT8H%
if /i "%ROMXT%" EQU ".pro" SET CHKFILE=%AT8H%
if /i "%ROMXT%" EQU ".atz" SET CHKFILE=%AT8H%
if /i "%ROMXT%" EQU ".xfd" SET CHKFILE=%AT8H%
if /i "%ROMXT%" EQU ".atx" SET CHKFILE=%AT8H%
if /i "%ROMXT%" EQU ".atr" SET CHKFILE=%AT8H%
if /i "%ROMXT%" EQU ".unf" SET CHKFILE=%NES%
if /i "%ROMXT%" EQU ".nez" SET CHKFILE=%NES%
if /i "%ROMXT%" EQU ".nes" SET CHKFILE=%NES%
if /i "%ROMXT%" EQU ".di1" SET CHKFILE=%MSX%
if /i "%ROMXT%" EQU ".di2" SET CHKFILE=%MSX%
if /i "%ROMXT%" EQU ".360" SET CHKFILE=%MSX%
if /i "%ROMXT%" EQU ".720" SET CHKFILE=%MSX%
if /i "%ROMXT%" EQU ".sf7" SET CHKFILE=%MSX%
if /i "%ROMXT%" EQU ".sc" SET CHKFILE=%MSX%
if /i "%ROMXT%" EQU ".ri" SET CHKFILE=%MSX%
if /i "%ROMXT%" EQU ".mx1" SET CHKFILE=%MSX%
if /i "%ROMXT%" EQU ".mx2" SET CHKFILE=%MSX%
if /i "%ROMXT%" EQU ".gbc" SET CHKFILE=%NGBC%
if /i "%ROMXT%" EQU ".a78" SET CHKFILE=%AT78%
if /i "%ROMXT%" EQU ".a52" SET CHKFILE=%AT52%
if /i "%ROMXT%" EQU ".z26" SET CHKFILE=%AT26%
if /i "%ROMXT%" EQU ".a26" SET CHKFILE=%AT26%
if /i "%ROMXT%" EQU ".gba" SET CHKFILE=%NGBA%
if /i "%ROMXT%" EQU ".itv" SET CHKFILE=%INTEL%
if /i "%ROMXT%" EQU ".int" SET CHKFILE=%INTEL%
if /i "%ROMXT%" EQU ".swf" SET CHKFILE=%FLASH%
if /i "%ROMXT%" EQU ".dsc" SET CHKFILE=%AMSTR%
if /i "%ROMXT%" EQU ".voc" SET CHKFILE=%AMSTR%
if /i "%ROMXT%" EQU ".czx" SET CHKFILE=%AMSTR%
if /i "%ROMXT%" EQU ".cdt" SET CHKFILE=%AMSTR%
if /i "%ROMXT%" EQU ".cpr" SET CHKFILE=%AMSTR%
if /i "%ROMXT%" EQU ".crt" SET CHKFILE=%AMSTR%
if /i "%ROMXT%" EQU ".arc" SET CHKFILE=%AMSTR%
if /i "%ROMXT%" EQU ".rp2" SET CHKFILE=%AMSTR%
if /i "%ROMXT%" EQU ".col" SET CHKFILE=%COLEC%
if /i "%ROMXT%" EQU ".wad" SET CHKFILE=%WII%
if /i "%ROMXT%" EQU ".wbfs" SET CHKFILE=%WII%
if /i "%ROMXT%" EQU ".32x" SET CHKFILE=%SG32X%
if /i "%ROMXT%" EQU ".uef" SET CHKFILE=%ACELE%
if /i "%ROMXT%" EQU ".nhd" SET CHKFILE=%PC98%
if /i "%ROMXT%" EQU ".thd" SET CHKFILE=%PC98%
if /i "%ROMXT%" EQU ".d98" SET CHKFILE=%PC98%
if /i "%ROMXT%" EQU ".fdd" SET CHKFILE=%PC98%
if /i "%ROMXT%" EQU ".hdm" SET CHKFILE=%PC98%
if /i "%ROMXT%" EQU ".hdi" SET CHKFILE=%PC98%
if /i "%ROMXT%" EQU ".sad" SET CHKFILE=%SAMC%
if /i "%ROMXT%" EQU ".mgt" SET CHKFILE=%SAMC%
if /i "%ROMXT%" EQU ".sdf" SET CHKFILE=%SAMC%
if /i "%ROMXT%" EQU ".sbt" SET CHKFILE=%SAMC%
if /i "%ROMXT%" EQU ".td0" SET CHKFILE=%SAMC%
if /i "%ROMXT%" EQU ".cbm" SET CHKFILE=%SAMC%
if /i "%ROMXT%" EQU ".pgm" SET CHKFILE=%EMARC%
if /i "%ROMXT%" EQU ".gcm" SET CHKFILE=%NGC%
if /i "%ROMXT%" EQU ".do" SET CHKFILE=%APL2E%
if /i "%ROMXT%" EQU ".iie" SET CHKFILE=%APL2E%
if /i "%ROMXT%" EQU ".nib" SET CHKFILE=%APL2E%
if /i "%ROMXT%" EQU ".2img" SET CHKFILE=%APL2E%
exit /b

:CONFLNUM
set /A CONFLNUM+=1
echo.%ROMFULL%>>"%GBC%\sortlist.ini"
exit /b

:ADDCONF
echo.%ROMNAME%>>"%GBC%\sortlist.ini"
exit /b

:MOVING
if "%CHKFILE%"=="" exit /b
move /Y "%ROMFULL%" "%GBG%\%GAM%\%CONS%\%CHKFILE%"
exit /b
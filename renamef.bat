%GAMDIR%

set TMPNAME=
set CHKCONS=

if not exist "%GBG%\%ROMJ%\%WSTMP%" goto :renfend

cd "%GBG%\%ROMJ%\%WSTMP%"

for %%A in ("%CD%") do set WNAME=%%~A

for /f "tokens=* delims= " %%G in ('dir /b /ad "%GBG%\%ROMJ%\%WSTMP%"') do (
set TMPNAME=%%~G
SET CHKFILE=
if "%%~G" EQU "" (goto :renfend)
pushd "%%~G"
CALL :nice 
CALL :rnf
)

:rnf
if "%CHKFILE%" EQU "" (goto :renfend)
if "%CHKCONS%"=="" popd && move /Y "%WNAME%\%TMPNAME%" "%WNAME%\%CHKFILE%"
popd
if "%CHKCONS%"=="" goto :renfend
move /Y "%WNAME%\%TMPNAME%" "%GBG%\%GAM%\%CONS%\%CHKCONS%\%CHKFILE%"
exit /b

:nice
for /f "tokens=* delims= " %%i in ('dir /b/a-d') do (
set ROMCHK=%%~xi
if /i "%%~xi" EQU ".ws" SET CHKFILE=%%~ni && set CHKCONS=%BWS%
if /i "%%~xi" EQU ".gg" SET CHKFILE=%%~ni && set CHKCONS=%SEGG%
if /i "%%~xi" EQU ".md" SET CHKFILE=%%~ni && set CHKCONS=%SEGAG%
if /i "%%~xi" EQU ".ri" SET CHKFILE=%%~ni && set CHKCONS=%MSX%
if /i "%%~xi" EQU ".sc" SET CHKFILE=%%~ni && set CHKCONS=%MSX%
if /i "%%~xi" EQU ".sg" SET CHKFILE=%%~ni && set CHKCONS=%SEGMS%
if /i "%%~xi" EQU ".cas" SET CHKFILE=%%~ni && set CHKCONS=%MSX%
if /i "%%~xi" EQU ".gen" SET CHKFILE=%%~ni && set CHKCONS=%SEGAG%
if /i "%%~xi" EQU ".smd" SET CHKFILE=%%~ni && set CHKCONS=%SEGAG%
if /i "%%~xi" EQU ".usa" SET CHKFILE=%%~ni && set CHKCONS=%N64%
if /i "%%~xi" EQU ".pal" SET CHKFILE=%%~ni && set CHKCONS=%N64%
if /i "%%~xi" EQU ".d64" SET CHKFILE=%%~ni && set CHKCONS=%N64%
if /i "%%~xi" EQU ".n64" SET CHKFILE=%%~ni && set CHKCONS=%N64%
if /i "%%~xi" EQU ".z64" SET CHKFILE=%%~ni && set CHKCONS=%N64%
if /i "%%~xi" EQU ".jag" SET CHKFILE=%%~ni && set CHKCONS=%JAG%
if /i "%%~xi" EQU ".wsc" SET CHKFILE=%%~ni && set CHKCONS=%BWSC%
if /i "%%~xi" EQU ".npk" SET CHKFILE=%%~ni && set CHKCONS=%NEOPKT%
if /i "%%~xi" EQU ".nds" SET CHKFILE=%%~ni && set CHKCONS=%NDS%
if /i "%%~xi" EQU ".gcm" SET CHKFILE=%%~ni && set CHKCONS=%NGC%
if /i "%%~xi" EQU ".nd5" SET CHKFILE=%%~ni && set CHKCONS=%NDS%
if /i "%%~xi" EQU ".fig" SET CHKFILE=%%~ni && set CHKCONS=%SNES%
if /i "%%~xi" EQU ".srm" SET CHKFILE=%%~ni && set CHKCONS=%SNES%
if /i "%%~xi" EQU ".sfc" SET CHKFILE=%%~ni && set CHKCONS=%SNES%
if /i "%%~xi" EQU ".smc" SET CHKFILE=%%~ni && set CHKCONS=%SNES%
if /i "%%~xi" EQU ".pce" SET CHKFILE=%%~ni && set CHKCONS=%TG16%
if /i "%%~xi" EQU ".vec" SET CHKFILE=%%~ni && set CHKCONS=%VECTX%
if /i "%%~xi" EQU ".adf" SET CHKFILE=%%~ni && set CHKCONS=%CAMIG%
if /i "%%~xi" EQU ".vb" SET CHKFILE=%%~ni && set CHKCONS=%NVB%
if /i "%%~xi" EQU ".vboy" SET CHKFILE=%%~ni && set CHKCONS=%NVB%
if /i "%%~xi" EQU ".atr" SET CHKFILE=%%~ni && set CHKCONS=%AT8H%
if /i "%%~xi" EQU ".xex" SET CHKFILE=%%~ni && set CHKCONS=%AT8H%
if /i "%%~xi" EQU ".pro" SET CHKFILE=%%~ni && set CHKCONS=%AT8H%
if /i "%%~xi" EQU ".atz" SET CHKFILE=%%~ni && set CHKCONS=%AT8H%
if /i "%%~xi" EQU ".atx" SET CHKFILE=%%~ni && set CHKCONS=%AT8H%
if /i "%%~xi" EQU ".unf" SET CHKFILE=%%~ni && set CHKCONS=%NES%
if /i "%%~xi" EQU ".nes" SET CHKFILE=%%~ni && set CHKCONS=%NES%
if /i "%%~xi" EQU ".gbc" SET CHKFILE=%%~ni && set CHKCONS=%NGBC%
if /i "%%~xi" EQU ".a78" SET CHKFILE=%%~ni && set CHKCONS=%AT78%
if /i "%%~xi" EQU ".a26" SET CHKFILE=%%~ni && set CHKCONS=%AT26%
if /i "%%~xi" EQU ".a52" SET CHKFILE=%%~ni && set CHKCONS=%AT52%
if /i "%%~xi" EQU ".gba" SET CHKFILE=%%~ni && set CHKCONS=%NGBA%
if /i "%%~xi" EQU ".int" SET CHKFILE=%%~ni && set CHKCONS=%INTEL%
if /i "%%~xi" EQU ".sna" SET CHKFILE=%%~ni && set CHKCONS=%ZXSP%
if /i "%%~xi" EQU ".z80" SET CHKFILE=%%~ni && set CHKCONS=%ZXSP%
if /i "%%~xi" EQU ".tzx" SET CHKFILE=%%~ni && set CHKCONS=%ZXSP%
if /i "%%~xi" EQU ".swf" SET CHKFILE=%%~ni && set CHKCONS=%FLASH%
if /i "%%~xi" EQU ".ngc" SET CHKFILE=%%~ni && set CHKCONS=%NEOPKT%
if /i "%%~xi" EQU ".rp2" SET CHKFILE=%%~ni && set CHKCONS=%CM64%
if /i "%%~xi" EQU ".col" SET CHKFILE=%%~ni && set CHKCONS=%COLEC%
if /i "%%~xi" EQU ".wad" SET CHKFILE=%%~ni && set CHKCONS=%WII%
if /i "%%~xi" EQU ".32x" SET CHKFILE=%%~ni && set CHKCONS=%SG32X%
if /i "%%~xi" EQU ".hdm" SET CHKFILE=%%~ni && set CHKCONS=%PC98%
if /i "%%~xi" EQU ".thd" SET CHKFILE=%%~ni && set CHKCONS=%PC98%
if /i "%%~xi" EQU ".nhd" SET CHKFILE=%%~ni && set CHKCONS=%PC98%
if /i "%%~xi" EQU ".mx1" SET CHKFILE=%%~ni && set CHKCONS=%MSX%
if /i "%%~xi" EQU ".mx2" SET CHKFILE=%%~ni && set CHKCONS=%MSX%
if /i "%%~xi" EQU ".di1" SET CHKFILE=%%~ni && set CHKCONS=%MSX%
if /i "%%~xi" EQU ".di2" SET CHKFILE=%%~ni && set CHKCONS=%MSX%
if /i "%%~xi" EQU ".360" SET CHKFILE=%%~ni && set CHKCONS=%MSX%
if /i "%%~xi" EQU ".720" SET CHKFILE=%%~ni && set CHKCONS=%MSX%
if /i "%%~xi" EQU ".sf7" SET CHKFILE=%%~ni && set CHKCONS=%MSX%
if /i "%%~xi" EQU ".dup" SET CHKFILE=%%~ni && set CHKCONS=%X68K%
if /i "%%~xi" EQU ".2hd" SET CHKFILE=%%~ni && set CHKCONS=%X68K%
if /i "%%~xi" EQU ".dim" SET CHKFILE=%%~ni && set CHKCONS=%PC98%
if /i "%%~xi" EQU ".2dd" SET CHKFILE=%%~ni && set CHKCONS=%X68K%
if /i "%%~xi" EQU ".88d" SET CHKFILE=%%~ni && set CHKCONS=%X68K%
if /i "%%~xi" EQU ".sms" SET CHKFILE=%%~ni && set CHKCONS=%SEGMS%
if /i "%%~xi" EQU ".wbfs" SET CHKFILE=%%~ni && set CHKCONS=%WII%
if /i "%%~xi" EQU ".lnk" SET CHKFILE=%%~ni && set CHKCONS=
if /i "%%~xi" EQU ".elf" SET CHKFILE=%%~ni && set CHKCONS=
if /i "%%~xi" EQU ".img" SET CHKFILE=%%~ni && set CHKCONS=
if /i "%%~xi" EQU ".iso" SET CHKFILE=%%~ni && set CHKCONS=
if /i "%%~xi" EQU ".bin" SET CHKFILE=%%~ni && set CHKCONS=
if /i "%%~xi" EQU ".cue" SET CHKFILE=%%~ni && set CHKCONS=
if /i "%%~xi" EQU ".nrg" SET CHKFILE=%%~ni && set CHKCONS=
if /i "%%~xi" EQU ".mds" SET CHKFILE=%%~ni && set CHKCONS=
if /i "%%~xi" EQU ".md5" SET CHKFILE=%%~ni && set CHKCONS=
if /i "%%~xi" EQU ".rom" SET CHKFILE=%%~ni && set CHKCONS=
if /i "%%~xi" EQU ".cdz" SET CHKFILE=%%~ni && set CHKCONS=
if /i "%%~xi" EQU ".ccd" SET CHKFILE=%%~ni && set CHKCONS=
if /i "%%~xi" EQU ".cdi" SET CHKFILE=%%~ni && set CHKCONS=
)
:renfend

for /f "tokens=* delims= " %%a in ('dir /b /ad' "%GBG%\%ROMJ%") do (
set ROMTEST=%%~a
CALL :setchkr
)
goto :extOut

:setchkr
pushd "%GBG%\%ROMJ%\%ROMTEST%"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d') do (
set CHKFILE=
set RMPIS=%%~dpa
set RMEXTCHK=%%~xa
set RMFILE=%%~na
call :CHKSUMr
popd
)

:CHKSUMr
SET RMPTH=%RMPIS:~0,-1%
if /i "%RMEXTCHK%" EQU ".xml" exit /b
if /i "%RMEXTCHK%" EQU ".tbn" exit /b
if /i "%RMEXTCHK%" EQU ".nfo" exit /b
if /i "%RMEXTCHK%" EQU ".ini" exit /b
if /i "%RMEXTCHK%" EQU ".cfg" exit /b
if /i "%RMEXTCHK%" EQU ".conf" exit /b
if /i "%RMEXTCHK%" EQU ".png" exit /b
if /i "%RMEXTCHK%" EQU ".jpg" exit /b
if /i "%RMEXTCHK%" EQU ".bat" exit /b

if /i "%RMEXTCHK%" EQU ".ngp" SET CHKFILE=%NEOPKT%
if /i "%RMEXTCHK%" EQU ".ngc" SET CHKFILE=%NEOPKT%
if /i "%RMEXTCHK%" EQU ".npk" SET CHKFILE=%NEOPKT%
if /i "%RMEXTCHK%" EQU ".gg" SET CHKFILE=%SEGG%
if /i "%RMEXTCHK%" EQU ".ws" SET CHKFILE=%BWS%
if /i "%RMEXTCHK%" EQU ".gb" SET CHKFILE=%NGB%
if /i "%RMEXTCHK%" EQU ".cso" SET CHKFILE=%PSP%
if /i "%RMEXTCHK%" EQU ".jso" SET CHKFILE=%PSP%
if /i "%RMEXTCHK%" EQU ".psp" SET CHKFILE=%PSP%
if /i "%RMEXTCHK%" EQU ".lnx" SET CHKFILE=%LYNX%
if /i "%RMEXTCHK%" EQU ".md" SET CHKFILE=%SEGAMD%
if /i "%RMEXTCHK%" EQU ".smd" SET CHKFILE=%SEGAMD%
if /i "%RMEXTCHK%" EQU ".gen" SET CHKFILE=%SEGAG%
if /i "%RMEXTCHK%" EQU ".sg" SET CHKFILE=%SEG1K%
if /i "%RMEXTCHK%" EQU ".sms" SET CHKFILE=%SEGMS%
if /i "%RMEXTCHK%" EQU ".pal" SET CHKFILE=%N64%
if /i "%RMEXTCHK%" EQU ".usa" SET CHKFILE=%N64%
if /i "%RMEXTCHK%" EQU ".u64" SET CHKFILE=%N64%
if /i "%RMEXTCHK%" EQU ".v64" SET CHKFILE=%N64%
if /i "%RMEXTCHK%" EQU ".n64" SET CHKFILE=%N64%
if /i "%RMEXTCHK%" EQU ".z64" SET CHKFILE=%N64%
if /i "%RMEXTCHK%" EQU ".d64" SET CHKFILE=%CM64%
if /i "%RMEXTCHK%" EQU ".j64" SET CHKFILE=%JAG%
if /i "%RMEXTCHK%" EQU ".jag" SET CHKFILE=%JAG%
if /i "%RMEXTCHK%" EQU ".ipf" SET CHKFILE=%CAMIG%
if /i "%RMEXTCHK%" EQU ".amiga" SET CHKFILE=%CAMIG%
if /i "%RMEXTCHK%" EQU ".sna" SET CHKFILE=%ZXSP%
if /i "%RMEXTCHK%" EQU ".tzx" SET CHKFILE=%ZXSP%
if /i "%RMEXTCHK%" EQU ".z80" SET CHKFILE=%ZXSP%
if /i "%RMEXTCHK%" EQU ".ds" SET CHKFILE=%NDS%
if /i "%RMEXTCHK%" EQU ".nds" SET CHKFILE=%NDS%
if /i "%RMEXTCHK%" EQU ".wsc" SET CHKFILE=%BWSC%
if /i "%RMEXTCHK%" EQU ".nd5" SET CHKFILE=%NDS%
if /i "%RMEXTCHK%" EQU ".sfc" SET CHKFILE=%SFAM%
if /i "%RMEXTCHK%" EQU ".adf" SET CHKFILE=%CAMIG%
if /i "%RMEXTCHK%" EQU ".smc" SET CHKFILE=%SNES%
if /i "%RMEXTCHK%" EQU ".pce" SET CHKFILE=%TG16%
if /i "%RMEXTCHK%" EQU ".vec" SET CHKFILE=%VECTX%
if /i "%RMEXTCHK%" EQU ".fds" SET CHKFILE=%NFAM%
if /i "%RMEXTCHK%" EQU ".fam" SET CHKFILE=%NFAM%
if /i "%RMEXTCHK%" EQU ".st" SET CHKFILE=%ATST%
if /i "%RMEXTCHK%" EQU ".msa" SET CHKFILE=%ATST%
if /i "%RMEXTCHK%" EQU ".vb" SET CHKFILE=%NVB%
if /i "%RMEXTCHK%" EQU ".vboy" SET CHKFILE=%NVB%
if /i "%RMEXTCHK%" EQU ".obx" SET CHKFILE=%AT8H%
if /i "%RMEXTCHK%" EQU ".xex" SET CHKFILE=%AT8H%
if /i "%RMEXTCHK%" EQU ".pro" SET CHKFILE=%AT8H%
if /i "%RMEXTCHK%" EQU ".atz" SET CHKFILE=%AT8H%
if /i "%RMEXTCHK%" EQU ".atx" SET CHKFILE=%AT8H%
if /i "%RMEXTCHK%" EQU ".atr" SET CHKFILE=%AT8H%
if /i "%RMEXTCHK%" EQU ".unf" SET CHKFILE=%NES%
if /i "%RMEXTCHK%" EQU ".nes" SET CHKFILE=%NES%
if /i "%RMEXTCHK%" EQU ".mx1" SET CHKFILE=%MSX%
if /i "%RMEXTCHK%" EQU ".mx2" SET CHKFILE=%MSX%
if /i "%RMEXTCHK%" EQU ".gbc" SET CHKFILE=%NGBC%
if /i "%RMEXTCHK%" EQU ".a78" SET CHKFILE=%AT78%
if /i "%RMEXTCHK%" EQU ".a52" SET CHKFILE=%AT52%
if /i "%RMEXTCHK%" EQU ".z26" SET CHKFILE=%AT26%
if /i "%RMEXTCHK%" EQU ".a26" SET CHKFILE=%AT26%
if /i "%RMEXTCHK%" EQU ".gba" SET CHKFILE=%NGBA%
if /i "%RMEXTCHK%" EQU ".int" SET CHKFILE=%INTEL%
if /i "%RMEXTCHK%" EQU ".swf" SET CHKFILE=%FLASH%
if /i "%RMEXTCHK%" EQU ".rp2" SET CHKFILE=%AMSTR%
if /i "%RMEXTCHK%" EQU ".col" SET CHKFILE=%COLEC%
if /i "%RMEXTCHK%" EQU ".wad" SET CHKFILE=%WII%
if /i "%RMEXTCHK%" EQU ".wbfs" SET CHKFILE=%WII%
if /i "%RMEXTCHK%" EQU ".32x" SET CHKFILE=%SG32X%
if "%CHKFILE%" EQU "" exit /b
if /i "%RMFILE%" EQU "%ROMTEST%" CALL :movedirf
exit /b
CALL :movefile
exit /b

:movedirf
move /Y "%GBG%\%ROMJ%\%ROMTEST%" "%GBG%\%GAM%\%CONS%\%CHKFILE%"
exit /b

:movefile
move /Y "%GBG%\%ROMJ%\%ROMTEST%\%RMFILE%" "%GBG%\%GAM%\%CONS%\%CHKFILE%"
exit /b

:samef
exit /b

:extOut
%GAMDIR%
cd "%GBG%\%ROMJ%\%WSTMP%"
if "%TMPNAME%" EQU "" (goto :samef)

:setchkf
for /f "tokens=* delims= " %%i in ('dir /s/b a-d "%CD%\%TMPNAME%\*.*"') do (
SET CHKFILE=
set FZEXTCHK=%%~xi
call :CHKSUMf
if "%CHKFILE%" EQU "" goto :samef
CALL :renamef
)
goto :samef

:CHKSUMf
if /i "%FZEXTCHK%" EQU ".ngp" SET CHKFILE=%NEOPKT%
if /i "%FZEXTCHK%" EQU ".npk" SET CHKFILE=%NEOPKT%
if /i "%FZEXTCHK%" EQU ".ngc" SET CHKFILE=%NEOPKTC%
if /i "%FZEXTCHK%" EQU ".neo" SET CHKFILE=%NEOPKTC%
if /i "%FZEXTCHK%" EQU ".gg" SET CHKFILE=%SEGG%
if /i "%FZEXTCHK%" EQU ".ws" SET CHKFILE=%BWS%
if /i "%FZEXTCHK%" EQU ".gb" SET CHKFILE=%NGB%
if /i "%FZEXTCHK%" EQU ".md" SET CHKFILE=%SEGAG%
if /i "%FZEXTCHK%" EQU ".smd" SET CHKFILE=%SEGAG%
if /i "%FZEXTCHK%" EQU ".gen" SET CHKFILE=%SEGAG%
if /i "%FZEXTCHK%" EQU ".sg" SET CHKFILE=%SEG1K%
if /i "%FZEXTCHK%" EQU ".sms" SET CHKFILE=%SEGMS%
if /i "%FZEXTCHK%" EQU ".v64" SET CHKFILE=%N64%
if /i "%FZEXTCHK%" EQU ".n64" SET CHKFILE=%N64%
if /i "%FZEXTCHK%" EQU ".d64" SET CHKFILE=%CM64%
if /i "%FZEXTCHK%" EQU ".z64" SET CHKFILE=%N64%
if /i "%FZEXTCHK%" EQU ".jag" SET CHKFILE=%JAG%
if /i "%FZEXTCHK%" EQU ".lnk" SET CHKFILE=%WIN32%
if /i "%FZEXTCHK%" EQU ".sna" SET CHKFILE=%ZXSP%
if /i "%FZEXTCHK%" EQU ".tzx" SET CHKFILE=%ZXSP%
if /i "%FZEXTCHK%" EQU ".z80" SET CHKFILE=%ZXSP%
if /i "%FZEXTCHK%" EQU ".nds" SET CHKFILE=%NDS%
if /i "%FZEXTCHK%" EQU ".wsc" SET CHKFILE=%BWSC%
if /i "%FZEXTCHK%" EQU ".nd5" SET CHKFILE=%NDS%
if /i "%FZEXTCHK%" EQU ".adf" SET CHKFILE=%CAMIG%
if /i "%FZEXTCHK%" EQU ".fig" SET CHKFILE=%SNES%
if /i "%FZEXTCHK%" EQU ".srm" SET CHKFILE=%SNES%
if /i "%FZEXTCHK%" EQU ".sfc" SET CHKFILE=%SNES%
if /i "%FZEXTCHK%" EQU ".smc" SET CHKFILE=%SNES%
if /i "%FZEXTCHK%" EQU ".pce" SET CHKFILE=%TG16%
if /i "%FZEXTCHK%" EQU ".vec" SET CHKFILE=%VECTX%
if /i "%FZEXTCHK%" EQU ".st" SET CHKFILE=%ATST%
if /i "%FZEXTCHK%" EQU ".msa" SET CHKFILE=%ATST%
if /i "%FZEXTCHK%" EQU ".vboy" SET CHKFILE=%NVB%
if /i "%FZEXTCHK%" EQU ".atr" SET CHKFILE=%AT8H%
if /i "%FZEXTCHK%" EQU ".atx" SET CHKFILE=%AT8H%
if /i "%FZEXTCHK%" EQU ".pro" SET CHKFILE=%AT8H%
if /i "%FZEXTCHK%" EQU ".obx" SET CHKFILE=%AT8H%
if /i "%FZEXTCHK%" EQU ".xex" SET CHKFILE=%AT8H%
if /i "%FZEXTCHK%" EQU ".unf" SET CHKFILE=%NES%
if /i "%FZEXTCHK%" EQU ".nes" SET CHKFILE=%NES%
if /i "%FZEXTCHK%" EQU ".gbc" SET CHKFILE=%NGBC%
if /i "%FZEXTCHK%" EQU ".a78" SET CHKFILE=%AT78%
if /i "%FZEXTCHK%" EQU ".a52" SET CHKFILE=%AT52%
if /i "%FZEXTCHK%" EQU ".gba" SET CHKFILE=%NGBA%
if /i "%FZEXTCHK%" EQU ".int" SET CHKFILE=%INTEL%
if /i "%FZEXTCHK%" EQU ".swf" SET CHKFILE=%FLASH%
if /i "%FZEXTCHK%" EQU ".rp2" SET CHKFILE=%AMSTR%
if /i "%FZEXTCHK%" EQU ".col" SET CHKFILE=%COLEC%
if /i "%FZEXTCHK%" EQU ".gcm" SET CHKFILE=%NGC%
if /i "%FZEXTCHK%" EQU ".dol" SET CHKFILE=%WII%
if /i "%FZEXTCHK%" EQU ".wad" SET CHKFILE=%WII%
if /i "%FZEXTCHK%" EQU ".wbfs" SET CHKFILE=%WII%
if /i "%FZEXTCHK%" EQU ".dim" SET CHKFILE=%X68K%
if /i "%FZEXTCHK%" EQU ".hdi" SET CHKFILE=%PC98%
if /i "%FZEXTCHK%" EQU ".t77" SET CHKFILE=%FM7%
if /i "%FZEXTCHK%" EQU ".2dd" SET CHKFILE=%X68K%
if /i "%FZEXTCHK%" EQU ".2dd" SET CHKFILE=%X68K%
if /i "%FZEXTCHK%" EQU ".88d" SET CHKFILE=%X68K%
if /i "%FZEXTCHK%" EQU ".2hq" SET CHKFILE=%X68K%
if /i "%FZEXTCHK%" EQU ".32x" SET CHKFILE=%SG32X%
if /i "%FZEXTCHK%" EQU ".mx1" SET CHKFILE=%MSX%
if /i "%FZEXTCHK%" EQU ".mx2" SET CHKFILE=%MSX%
if /i "%FZEXTCHK%" EQU ".di1" SET CHKFILE=%MSX%
if /i "%FZEXTCHK%" EQU ".di2" SET CHKFILE=%MSX%
if /i "%FZEXTCHK%" EQU ".360" SET CHKFILE=%MSX%
if /i "%FZEXTCHK%" EQU ".720" SET CHKFILE=%MSX%
if /i "%FZEXTCHK%" EQU ".ri" SET CHKFILE=%MSX%
if /i "%FZEXTCHK%" EQU ".sc" SET CHKFILE=%MSX%
if /i "%FZEXTCHK%" EQU ".cas" SET CHKFILE=%MSX%
if /i "%FZEXTCHK%" EQU ".d98" SET CHKFILE=%PC98%
if /i "%FZEXTCHK%" EQU ".thd" SET CHKFILE=%PC98%
if /i "%FZEXTCHK%" EQU ".nhd" SET CHKFILE=%PC98%     
exit /b
:renamef
if "%CHKFILE%"=="" goto :samef
move /Y "%TMPNAME%" "%GBG%\%GAM%\%CONS%\%CHKFILE%"
exit /b

:samef
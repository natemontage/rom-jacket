for %%i in ("%libsel%\*.*") do (
if "%%~xi"==".zip" "%SEVENZIP%" x -y "%%~i" -o"%GBG%\%ROMJ%"
if "%%~xi"==".rar" "%UNRAR%" x -y -o+ "%%~i" "%GBG%\%ROMJ%"
if "%%~xi"==".7z" "%SEVENZIP%" x -y "%%~i" -o"%GBG%\%ROMJ%"
)

:returntochk
pushd "%libsel%"
for /f "tokens=*" %%G in ('dir /ad /s /b "%libsel%"') do (
Pushd "%%~G"
set "fn=%%~G"
call :gna migr "!fn!"
)
popd
exit /b

:gna
move /y ".ngp" "%GBG%\%GAM%\%CONS%\%NEOPKT%"
move /y ".npk" "%GBG%\%GAM%\%CONS%\%NEOPKT%"
move /y ".ngc" "%GBG%\%GAM%\%CONS%\%NEOPKTC%"
move /y ".neo" "%GBG%\%GAM%\%CONS%\%NEOPKTC%"
move /y ".gg" "%GBG%\%GAM%\%CONS%\%SEGG%"
move /y ".ws" "%GBG%\%GAM%\%CONS%\%BWS%"
move /y ".gb" "%GBG%\%GAM%\%CONS%\%NGB%"
move /y ".md" "%GBG%\%GAM%\%CONS%\%SEGAG%"
move /y ".smd" "%GBG%\%GAM%\%CONS%\%SEGAG%"
move /y ".gen" "%GBG%\%GAM%\%CONS%\%SEGAG%"
move /y ".sg" "%GBG%\%GAM%\%CONS%\%SEG1K%"
move /y ".sms" "%GBG%\%GAM%\%CONS%\%SEGMS%"
move /y ".v64" "%GBG%\%GAM%\%CONS%\%N64%"
move /y ".n64" "%GBG%\%GAM%\%CONS%\%N64%"
move /y ".d64" "%GBG%\%GAM%\%CONS%\%CM64%"
move /y ".z64" "%GBG%\%GAM%\%CONS%\%N64%"
move /y ".jag" "%GBG%\%GAM%\%CONS%\%JAG%"
move /y ".lnk" "%GBG%\%GAM%\%CONS%\%WIN32%"
move /y ".sna" "%GBG%\%GAM%\%CONS%\%ZXSP%"
move /y ".tzx" "%GBG%\%GAM%\%CONS%\%ZXSP%"
move /y ".z80" "%GBG%\%GAM%\%CONS%\%ZXSP%"
move /y ".nds" "%GBG%\%GAM%\%CONS%\%NDS%"
move /y ".wsc" "%GBG%\%GAM%\%CONS%\%BWSC%"
move /y ".nd5" "%GBG%\%GAM%\%CONS%\%NDS%"
move /y ".fig" "%GBG%\%GAM%\%CONS%\%SNES%"
move /y ".srm" "%GBG%\%GAM%\%CONS%\%SNES%"
move /y ".sfc" "%GBG%\%GAM%\%CONS%\%SNES%"
move /y ".smc" "%GBG%\%GAM%\%CONS%\%SNES%"
move /y ".pce" "%GBG%\%GAM%\%CONS%\%TG16%"
move /y ".vec" "%GBG%\%GAM%\%CONS%\%VECTX%"
move /y ".st" "%GBG%\%GAM%\%CONS%\%ATST%"
move /y ".msa" "%GBG%\%GAM%\%CONS%\%ATST%"
move /y ".vboy" "%GBG%\%GAM%\%CONS%\%NVB%"
move /y ".atr" "%GBG%\%GAM%\%CONS%\%AT8H%"
move /y ".atx" "%GBG%\%GAM%\%CONS%\%AT8H%"
move /y ".pro" "%GBG%\%GAM%\%CONS%\%AT8H%"
move /y ".obx" "%GBG%\%GAM%\%CONS%\%AT8H%"
move /y ".xex" "%GBG%\%GAM%\%CONS%\%AT8H%"
move /y ".unf" "%GBG%\%GAM%\%CONS%\%NES%"
move /y ".nes" "%GBG%\%GAM%\%CONS%\%NES%"
move /y ".mx1" "%GBG%\%GAM%\%CONS%\%MSX%"
move /y ".mx2" "%GBG%\%GAM%\%CONS%\%MSX%"
move /y ".gbc" "%GBG%\%GAM%\%CONS%\%NGBC%"
move /y ".a78" "%GBG%\%GAM%\%CONS%\%AT78%"
move /y ".a52" "%GBG%\%GAM%\%CONS%\%AT52%"
move /y ".gba" "%GBG%\%GAM%\%CONS%\%NGBA%"
move /y ".int" "%GBG%\%GAM%\%CONS%\%INTEL%"
move /y ".swf" "%GBG%\%GAM%\%CONS%\%FLASH%"
move /y ".adf" "%GBG%\%GAM%\%CONS%\%CAMIG%"
move /y ".rp2" "%GBG%\%GAM%\%CONS%\%AMSTR%"
move /y ".col" "%GBG%\%GAM%\%CONS%\%COLEC%"
move /y ".gcm" "%GBG%\%GAM%\%CONS%\%NGC%"
move /y ".dol" "%GBG%\%GAM%\%CONS%\%WII%"
move /y ".wad" "%GBG%\%GAM%\%CONS%\%WII%"
move /y ".wbfs" "%GBG%\%GAM%\%CONS%\%WII%"
move /y ".dim" "%GBG%\%GAM%\%CONS%\%X68K%"
move /y ".2hd" "%GBG%\%GAM%\%CONS%\%X68K%"
move /y ".2dd" "%GBG%\%GAM%\%CONS%\%X68K%"
move /y ".88d" "%GBG%\%GAM%\%CONS%\%X68K%"
move /y ".2hq" "%GBG%\%GAM%\%CONS%\%X68K%"
move /y ".32x" "%GBG%\%GAM%\%CONS%\%SG32X%"
move /y ".mx1" "%GBG%\%GAM%\%CONS%\%MSX%"
move /y ".mx2" "%GBG%\%GAM%\%CONS%\%MSX%"
move /y ".di1" "%GBG%\%GAM%\%CONS%\%MSX%"
move /y ".di2" "%GBG%\%GAM%\%CONS%\%MSX%"
move /y ".360" "%GBG%\%GAM%\%CONS%\%MSX%"
move /y ".720" "%GBG%\%GAM%\%CONS%\%MSX%"
move /y ".ri" "%GBG%\%GAM%\%CONS%\%MSX%"
move /y ".sc" "%GBG%\%GAM%\%CONS%\%MSX%"
move /y ".cas" "%GBG%\%GAM%\%CONS%\%MSX%"
move /y ".d98" "%GBG%\%GAM%\%CONS%\%PC98%"
move /y ".2hd" "%GBG%\%GAM%\%CONS%\%PC98%"
move /y ".thd" "%GBG%\%GAM%\%CONS%\%PC98%"
move /y ".nhd" "%GBG%\%GAM%\%CONS%\%PC98%"
popd

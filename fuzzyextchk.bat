%GAMDIR%
cd "%GBG%\%ROMJ%\%WSTMP%"
for /f "delims=" %%G in ('dir /s/b /ad "%GBG%\%ROMJ%\%WSTMP%\"') do (
pushd "%%~g"
set TMPNAME=%%G
SET curtmp=%CD%
if "%GBG%\%ROMJ%\%WSTMP%\%%~G" EQU "%GBG%\%ROMJ%\%WSTMP%\" exit /b
CALL :SETCHK
popd
)
exit /b
:SETCHK
for %%A in ("%curtmp:*Games\=%") do set dirVartmp=%%~A
for /r %%i in ("*.*") do (
set ROMCHK=%%~xi
if /i "%%~xi" EQU ".gb" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".ws" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".vb" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".gg" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".nrg" set CHKFILE=%%~ni
if /i "%%~xi" EQU ".img" set CHKFILE=%%~ni
if /i "%%~xi" EQU ".iso" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".cdz" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".ccd" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".bin" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".gen" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".smd" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".d64" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".n64" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".z64" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".jag" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".mds" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".lnk" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".wsc" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".cue" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".npk" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".32x" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".nds" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".gcm" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".nd5" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".smc" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".pce" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".vec" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".vb" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".vboy" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".mx2" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".mx1" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".unf" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".uef" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".ssd" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".nes" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".xex" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".xfd" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".com" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".obx" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".cas" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".dcm" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".atr" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".atx" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".atz" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".bas" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".pro" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".gbc" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".a78" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".a26" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".a52" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".gba" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".sfc" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".int" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".tap" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".sna" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".z80" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".tzx" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".rom" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".swf" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".ngc" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".pgm" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".td0" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".pbp" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".dsk" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".hdf" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".rp2" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".dol" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".col" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".wad" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".adf" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".wbfs" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".32x" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".sg" SET CHKFILE=%%~ni
if /i "%%~xi" EQU ".sms" SET CHKFILE=%%~ni
)
:rename
if "%CHKFILE%" EQU "%dirVartmp%" (goto :fzextchkend)
if "%CHKFILE%" EQU "" (goto :fzextchkend)
cd ..
move /Y "%dirVartmp%" "%CHKFILE%"
:outofheref

::exit /b
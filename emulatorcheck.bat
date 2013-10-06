del /q "%GBC%\toInstall.ini"
for /f "delims=" %%d in ('dir /b /ad-h "%GBE%\%EMUZ%"^| sort /r') do rd "%%d"
echo ---------->"%GBC%\toInstall.ini"
echo ALL>>"%GBC%\toInstall.ini"
echo ---------->>"%GBC%\toInstall.ini"

for /f "tokens=* delims= " %%a in ('type "%GBC%\conSelect.set"') do (
set EMUT=
SET CONSA=%%~a
CALL :MISSINGEMU
if exist "%GBG%\%GAM%\%CONS%\%%~a" call :ADD
)
exit /b

:ADD
if not exist "%GBE%\%EMUZ%\%EMUT%" CALL :detect
exit /b

:MISSINGEMU
if "%CONSA%"=="%ACARC%" set EMUT=%ARLTR%
if "%CONSA%"=="%BWS%" set EMUT=%MEDN%
if "%CONSA%"=="%BWSC%" set EMUT=%MEDN%
if "%CONSA%"=="%NEOPKT%" set EMUT=%MEDN%
if "%CONSA%"=="%NEOPKTC%" set EMUT=%MEDN%
if "%CONSA%"=="%NVB%" set EMUT=%MEDN%
if "%CONSA%"=="%NGB%" set EMUT=%MEDN%
if "%CONSA%"=="%NGBC%" set EMUT=%MEDN%
if "%CONSA%"=="%NES%" set EMUT=%MEDN%
if "%CONSA%"=="%NFAM%" set EMUT=%MEDN%
if "%CONSA%"=="%TG16%" set EMUT=%MEDN%
if "%CONSA%"=="%TGCD%" set EMUT=%MEDN%
if "%CONSA%"=="%PCECD%" set EMUT=%MEDN%
if "%CONSA%"=="%PCENG%" set EMUT=%MEDN%
if "%CONSA%"=="%LYNX%" set EMUT=%MEDN%
if "%CONSA%"=="%PCFX%" set EMUT=%MEDN%
if "%CONSA%"=="%SGFX%" set EMUT=%MEDN%
if "%CONSA%"=="%SEGAMD%" set EMUT=%FUSN%
if "%CONSA%"=="%SEGAG%" set EMUT=%FUSN%
if "%CONSA%"=="%SEGMS%" set EMUT=%FUSN%
if "%CONSA%"=="%SEGG%" set EMUT=%FUSN%
if "%CONSA%"=="%SEG1K%" set EMUT=%FUSN%
if "%CONSA%"=="%SG32X%" set EMUT=%FUSN%
if "%CONSA%"=="%SEGCD%" set EMUT=%FUSN%
if "%CONSA%"=="%P3DO%" set EMUT=%FOURDO%
if "%CONSA%"=="%MSX%" set EMUT=%BMSX%
if "%CONSA%"=="%COLEC%" set EMUT=%BMSX%
if "%CONSA%"=="%FMTOWNS%" set EMUT=%FMUNZ%
if "%CONSA%"=="%FLASH%" set EMUT=%SWFPL%
if "%CONSA%"=="%SAMC%" set EMUT=%SIMC%
if "%CONSA%"=="%CAMIG%" set EMUT=%FSUAE%
if "%CONSA%"=="%AMIG32%" set EMUT=%FSUAE%
if "%CONSA%"=="%ATST%" set EMUT=%STEEM%
if "%CONSA%"=="%AT8H%" set EMUT=%ALTRA%
if "%CONSA%"=="%AT78%" set EMUT=%PROSYS%
if "%CONSA%"=="%AT52%" set EMUT=%ATRI%
if "%CONSA%"=="%AT26%" set EMUT=%STLA%
if "%CONSA%"=="%INTEL%" set EMUT=%NOSTL%
if "%CONSA%"=="%CM64%" set EMUT=%VICE%
if "%CONSA%"=="%CDI%" set EMUT=%WCDI%
if "%CONSA%"=="%FM7%" set EMUT=%XM7%
if "%CONSA%"=="%X68K%" set EMUT=%XM6%
if "%CONSA%"=="%SHRPX1%" set EMUT=%XTURB%
if "%CONSA%"=="%ACBBC%" set EMUT=%BEEBEM%
if "%CONSA%"=="%ACELE%" set EMUT=%ELECEM%
if "%CONSA%"=="%PC88%" set EMUT=%M88%
if "%CONSA%"=="%PC98%" set EMUT=%NEKO%
if "%CONSA%"=="%SNES%" set EMUT=%ZSNS%
if "%CONSA%"=="%SFAM%" set EMUT=%ZSNS%
if "%CONSA%"=="%NGBA%" set EMUT=%VGBA%
if "%CONSA%"=="%NDS%" set EMUT=%NOGBA%
if "%CONSA%"=="%WII%" set EMUT=%DOLPH%
if "%CONSA%"=="%NGC%" set EMUT=%DOLPH%
if "%CONSA%"=="%N64%" set EMUT=%PJ64%
if "%CONSA%"=="%AMSTR%" set EMUT=%WINAPE%
if "%CONSA%"=="%APL2GS%" set EMUT=%KEGS%
if "%CONSA%"=="%APL2E%" set EMUT=%APLWIN%
if "%CONSA%"=="%SEGDC%" set EMUT=%NULLDC%
if "%CONSA%"=="%SSAT%" set EMUT=%SSF%
if "%CONSA%"=="%PS1%" set EMUT=%PSX%
if "%CONSA%"=="%PS2%" set EMUT=%PCSX2%
if "%CONSA%"=="%PSP%" set EMUT=%PPSSPP%
if "%CONSA%"=="%JAGCD%" set EMUT=%PTMPS%
if "%CONSA%"=="%JAG%" set EMUT=%VJAG%
if "%CONSA%"=="%TOUHOU%" set EMUT=%WIN68K%
if "%CONSA%"=="%ARCD%" set EMUT=%MAME%
if "%CONSA%"=="%NEO64%" set EMUT=%MAME%
if "%CONSA%"=="%EMARC%" set EMUT=%WINARC%
if "%CONSA%"=="%CPS%" set EMUT=%FBA%
if "%CONSA%"=="%CPS2%" set EMUT=%FBA%
if "%CONSA%"=="%CPS3%" set EMUT=%FBA%
if "%CONSA%"=="%NEOGE%" set EMUT=%FBA%
if "%CONSA%"=="%NEOCD%" set EMUT=%NEORAINE%
if "%CONSA%"=="%VECTX%" set EMUT=%PJVE%
if "%CONSA%"=="%ZXSP%" set EMUT=%ZXSPIN%
if "%CONSA%"=="%SEGM3%" set EMUT=%SPRM3%
if "%CONSA%"=="%SEGM2%" set EMUT=%M2EMU%
if "%CONSA%"=="%NAOMI%" set EMUT=%DMUL%
if "%CONSA%"=="%ATMS%" set EMUT=%DMUL%
if "%CONSA%"=="%TAITX%" set EMUT=%APCL%
if "%CONSA%"=="%WIN32%" exit /b
exit /b

:detect
for /f "tokens=* delims= " %%a in ('type "%GBC%\toInstall.ini"') do if "%%~a"=="%EMUT%" exit /b
if "%EMUT%"=="" exit /b
echo %EMUT%>>"%GBC%\toInstall.ini"
exit /b
del "%GBC%\ttxroms.ini"
for /f "tokens=* delims= " %%a in ('dir /b /a') do echo %%~a>>"%GBC%\ttxroms.ini"
for %%R in ("%GBC%\ttxroms.ini") do if %%~zR equ 0 goto :ALIASEND

:moveback
for /f "tokens=* delims= " %%a in ('type "%GBC%\taitx2.set"') do move "%%~a.*" "%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE"
pushd "SOURCE"
mkdir "EXTRACTED"
ATTRIB +H "EXTRACTED"
for /f "tokens=* delims= " %%a in ('type "%GBC%\taitx2.set"') do (
"%SEVENZIP%" x -y "%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE\%%~a.zip" -o"%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE"
move %%~a.zip "EXTRACTED"
)
for /f "tokens=* delims= " %%a in ('type "%GBC%\taitx2.set"') do (
"%SEVENZIP%" x -y "%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE\%%~a.7z" -o"%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE"
move %%~a.7z "EXTRACTED"
)
mkdir "%GBE%\%EMUZ%\%APCL%\Games"
for /f "tokens=* delims= " %%a in ('type "%GBC%\taitx2.set"') do mklink /d "%GBE%\%EMUZ%\%APCL%\Games\%%~a" "%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE\%%~a"
popd
:aliasbegin
ATTRIB +H "%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE"

pushd "%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE"
for /f "tokens=* delims= " %%a in ('type "%GBC%\taitx2.set"') do (
SET NWDIR=%%~a
CALL :SCMKR
)
popd
for /f "delims=" %%d in ('dir /s /b /ad-h ^| sort /r') do rd "%%d"
goto :aliasing

:SCMKR
pushd "%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE\%NWDIR%"
for /f "tokens=* delims= " %%a in ('dir /b /a-d-h "%NWDIR%*.exe"') do "%GBC%\xxmklink.exe" "%GBG%\%GAM%\%CONS%\%TAITX%\%NWDIR%.lnk" "%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE\%NWDIR%\%%~a" " " "%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE\%NWDIR%" "%NWDIR%" 1 " "
popd
exit /b

:aliasing
pushd "%GBG%\%GAM%\%CONS%\%TAITX%"
SET NWDIR=Arcana Heart 3
for %%a in ("AH3*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=Battle Fantasia
for %%a in ("BF*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=Beatmania IIDX 17- Sirius
for %%a in ("BMIIDX17*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=BlazBlue Calamity Trigger
for %%a in ("BBCT*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=BlazBlue Continuum Shift
for %%a in ("BBCS*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=Chaoas Breaker
for %%a in ("CB*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"	
SET NWDIR=GigaWing Generations
for %%a in ("GWG*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=Homura
for %%a in ("HMR*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=King of Fighters - Maximum Impact Regulation A
for %%a in ("KOFMIA*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=King of Fighters XII
for %%a in ("KOFXII*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=King of Fighters XIII
for %%a in ("KOFXIII*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=King of Fighters 98 - Ultimate Match
for %%a in ("KOF98UM*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=Otomedius
for %%a in ("OTMD*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=Power Instinct 5
for %%a in ("PI5*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=Raiden III
for %%a in ("RIII*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=Raiden IV
for %%a in ("RIV*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=Samurai Shodown - Edge of Destiny
for %%a in ("SSED*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=Shikigami No Shiro III
for %%a in ("SNSIII*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=Spica Adventure
for %%a in ("SA*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=Street Fighter IV
for %%a in ("SFIV*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=Super Street Fighter IV- Arcade Edition
for %%a in ("SSFIVAE*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=Taisen Hoti Gimmick 5
for %%a in ("THG5*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=Tetris The Grand Master 3
for %%a in ("TGM3*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
for %%a in ("TTGM3*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
SET NWDIR=Trouble Witches
for %%a in ("TW*.lnk") do set ROM=%%~a
rename "%ROM%" "%NWDIR%.lnk" & mkdir "%NWDIR%" & move /Y "%NWDIR%.lnk" "%NWDIR%"
popd

:ALIASEND
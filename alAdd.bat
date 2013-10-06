for %%A in ("%NWCON%") do set CONSRN=%%~A
call "%GBC%\advLset.bat"
pushd "%GBC%\net\%XBMC%\%ADVL%\%NWCON%"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [RNDNUM] %RNDVAR%
"%GBC%\fart.exe" "%NWCON%.xml.prt" [CONS] "%CONSRN%"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [NWCON] "%NWCON%"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [BATCHLPTH] "%GBE%\%EMUZ%\%BATCHL%\%BATCHL%.exe"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [RMPTH] "%GBG%\%GAM%\%CONS%\%NWCON%"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [THMBPTH] "%GBG%\%GAM%\%CONS%\%NWCON%"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [FANRTPTH] "%GBG%\%GAM%\%CONS%\%NWCON%"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [CSTMPTH] "%GBG%\%GAM%\%CONS%\%NWCON%"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [TRLPTH] "%GBG%\%GAM%\%CONS%\%NWCON%\backdrops\%NWCON%.mp4"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [FLDR] "%GBG%\%GAM%\%CONS%\%NWCON%\%FLDR%.png"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [BCKD] "%GBG%\%GAM%\%CONS%\%NWCON%\%BCKD%.jpg"
"%GBC%\fart.exe" "%NWCON%.xml.prt" [CONSPTH] "%GBG%\%GAM%\%CONS%\%NWCON%"
type "%GBC%\net\%XBMC%\%ADVL%\%NWCON%\%NWCON%.xml.prt">>"%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml"
rename "%GBC%\net\%XBMC%\%ADVL%\%NWCON%\%NWCON%.xml.prt" "%NWCON%.xml.set"
popd

for /f "tokens=* delims= " %%b in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%\%NWCON%"') do (
call "%GBC%\rndID.bat"
SET NWGAM=%%~b
SET urlNthL=1
SET /A urlNthL -= 1
CALL :RNDGET
CALL :INJALRMXML
)
type "%GBC%\net\%XBMC%\%ADVL%\roms.xml.End.set">>"%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml"
goto :vidRom

:RNDGET
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\randnum.ini"') DO (
SET RNDVAR=%%A
)
exit /b

:INJALRMXML
copy /Y "%GBC%\net\%XBMC%\%ADVL%\roms.xml.set" "%GBC%\net\%XBMC%\%ADVL%\%NWCON%\%NWGAM%.xml.prt"
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBC%\net\%XBMC%\%ADVL%\%NWCON%\%NWGAM%.xml.*"') do CALL :ROMINJECTION

:ROMINJECTION
pushd "%GBC%\net\%XBMC%\%ADVL%\%NWCON%"
"%GBC%\fart.exe" "*.xml.prt" [CSTMPTH] "%GBG%\%GAM%\%CONS%\%NWCON%\%NWGAM%\"
"%GBC%\fart.exe" "*.xml.prt" [THMBPTH] "%GBG%\%GAM%\%CONS%\%NWCON%\%NWGAM%\%FLDR%.jpg"
"%GBC%\fart.exe" "*.xml.prt" [RNDNUM] %RNDVAR%
"%GBC%\fart.exe" "*.xml.prt" [FANRTPTH] "%GBG%\%GAM%\%CONS%\%NWCON%\%NWGAM%\%BCKD%.jpg"
"%GBC%\fart.exe" "*.xml.prt" [ROMNM] "%NWGAM%"
"%GBC%\fart.exe" "*.xml.prt" [ROMPTH] "%GBG%\%GAM%\%CONS%\%NWCON%\%NWGAM%\%NWGAM%.bat"
type "%GBC%\net\%XBMC%\%ADVL%\%NWCON%\%NWGAM%.xml.prt">>"%GBC%\net\%XBMC%\%ADVL%\%LNCH%.xml"
rename "%GBC%\net\%XBMC%\%ADVL%\%NWCON%\%NWGAM%.xml.prt" "%NWGAM%.xml.set"
popd
exit /b

:vidrom
if exist "%GBC%\net\%XBMC%\%ADVL%\%NWCON%\backdrops\%NWGAM%\*.mp4" call :injvid
goto :endRomSet

:injvid
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBC%\net\%XBMC%\%ADVL%\%NWCON%\%NWGAM%\backdrops\*.mp4"') do "%GBC%\fart.exe" "*.xml.prt" [TRLRPTH] "%GBG%\%GAM%\%CONS%\%NWCON%\%NWGAM%\backdrops\%%~a.mp4"
exit /b

:endRomSet
:eoaladd
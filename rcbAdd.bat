copy /Y "%GBC%\net\%XBMC%\%RCBRWS%\config.xml.prt" "%GBC%\net\%XBMC%\%RCBRWS%\%CONSRCB%.xml.prt"
set /A EMUCNT+=1
call "%GBC%\rcbLset.bat"

:ROMINJECTION
pushd "%GBC%\net\%XBMC%\%RCBRWS%"
"%GBC%\fart.exe" "%CONSRCB%.xml.prt" [BATCHLPTH] "%GBE%\%EMUZ%\%BATCHL%\%BATCHL%.exe"
"%GBC%\fart.exe" "%CONSRCB%.xml.prt" [CONS] "%CONSRN%"
"%GBC%\fart.exe" "%CONSRCB%.xml.prt" [CSTPTH] "%GBG%\%GAM%\%CONS%\%CONSRCB%"
"%GBC%\fart.exe" "%CONSRCB%.xml.prt" [THMBPTH] "%GBG%\%GAM%\%CONS%\%CONSRCB%"
"%GBC%\fart.exe" "%CONSRCB%.xml.prt" [RNDNUM] %RNDVAR%
"%GBC%\fart.exe" "%CONSRCB%.xml.prt" [CONSPTH] "%GBG%\%GAM%\%CONS%\%CONSRCB%"
"%GBC%\fart.exe" "%CONSRCB%.xml.prt" [FANRTPTH] "%GBG%\%GAM%\%CONS%\%CONSRCB%"
"%GBC%\fart.exe" "%CONSRCB%.xml.prt" [RMPTH] "%GBG%\%GAM%\%CONS%\%CONSRCB%"
"%GBC%\fart.exe" "%CONSRCB%.xml.prt" [EMUNUM] %EMUCNT%
popd
type "%GBC%\net\%XBMC%\%RCBRWS%\%CONSRCB%.xml.prt">>"%GBC%\net\%XBMC%\%RCBRWS%\config.xml"
rename "%GBC%\net\%XBMC%\%RCBRWS%\%CONSRCB%.xml.prt" "%CONSRCB%.xml.set"
:eorcbadd
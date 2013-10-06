start "" "%GBC%\wbusy.exe" "configCabrio" "Configuring Cabrio-FE" /marquee

type "%GBC%\net\%CABR%\config.start.set" >"%GBC%\net\%CABR%\config.xml"

for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
set CONSCABPTH=%GBG%\%GAM%\%CONS%\%%~a
set CONSCAB=%%~a
CALL :CBCA
)

type "%GBC%\net\%CABR%\config.emu-end.set">>"%GBC%\net\%CABR%\config.xml"
goto :ADDALL

:CBCA
copy /Y "%GBC%\net\%CABR%\config.emu.set" "%GBC%\net\%CABR%\%CONSCAB%.cfg"
CALL "%GBC%\cabrConAdd.bat"
exit /b

:ADDALL
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
set CONSCABPTH=%GBG%\%GAM%\%CONS%
set CONSCAB=%%~a
CALL :CBGA
)
GOTO :ADDEND

:CBGA
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%CONSCABPTH%\%CONSCAB%"') do (
SET CABRPTH=%CONSCABPTH%\%CONSCAB%
SET CABROM=%%~a
CALL :CABBAT
copy "%GBC%\net\%CABR%\config.game.set" "%GBC%\net\%CABR%\%%~a.tmp"
CALL "%GBC%\cabrGamAdd.bat"
)
exit /b
:CABBAT
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CONSCABPTH%\%CONSCAB%\%CABROM%\*.bat"') do set CABBAT=%%~a
:ADDEND
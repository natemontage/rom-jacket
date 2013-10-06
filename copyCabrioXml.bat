%GBD%
cd "%GBC%"
:RESASK
CALL "%GBC%\cabrez.bat"
pushd "%GBC%\net\%CABR%"
"%GBC%\fart.exe" "config.xml" [HEIGHT] %REZY%
"%GBC%\fart.exe" "config.xml" [WIDTH] %REZX%
"%GBC%\fart.exe" "config.xml" "&" "&amp;"
"%GBC%\fart.exe" "config.xml" "™" "&#x2122;"
"%GBC%\fart.exe" "config.xml" [EMUL] --remove
"%GBC%\fart.exe" "config.xml" [ROM] --remove
"%GBC%\fart.exe" "config.xml" [ROMPTH] --remove
"%GBC%\fart.exe" "config.xml" [TRAILER] --remove
"%GBC%\fart.exe" "config.xml" [FOLDER] --remove
"%GBC%\fart.exe" "config.xml" [FANART] --remove
"%GBC%\fart.exe" "config.xml" [SNAP] --remove
"%GBC%\fart.exe" "config.xml" [BATCH] --remove
"%GBC%\fart.exe" "config.xml" [BATCHPATH] --remove
popd

:CABRIOTHEME
"%GBC%\wbox.exe" "gettheme" "^^#####^#THEME#^#####^   Install RoM-Jacket's Cabrio Theme^^#####^#EXIT#^#####^   Exit to the Main Menu^" "THEME;EXIT" /AL /DB=1
if %ERRORLEVEL%==1 goto :installTheme
if %ERRORLEVEL%==2 goto :cbout
goto :cbout

:installTheme
call "%GBC%\cabtheme.bat"

If not exist "%CABRD%\%CABR%\config.sbak" (copy /Y "%CABRD%\%CABR%\config.xml" "%CBR%\config.sbak")
If exist "%CABRD%\%CABR%\config.sbak" (copy /Y "%CABRD%\%CABR%\config.xml" "%CBR%\config.xml.bak")
copy /Y "%GBC%\net\%CABR%\config.xml" "%CBR%\config.xml"
copy /Y "%GBC%\net\%CABR%\theme.xml" "%CBR%\data\themes\carousel\theme.xml"
%GBD%
cd "%GBC%"
FOR /F "usebackq tokens=3 skip=1" %%i in (`REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop`) DO (
SET DESKTOPDIR=%%i
)
FOR /F "usebackq delims=" %%i in (`ECHO %DESKTOPDIR%`) DO (
SET DESKTOPDIR=%%i
)
"%GBC%\xxmklink.exe" "Cabrio.lnk" "%CBR%\cabrio.exe" " " "%CBR%" Cabrio-FE 1 "Cabrio.ico"
move /Y *.lnk "%DESKTOPDIR%"


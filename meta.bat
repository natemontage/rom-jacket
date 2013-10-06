
:metaData
call "%GBC%\metacheck.bat"
"%GBC%\wbox.exe" "GetMeta" "^^[Download]^Download console-artwork for your libraries.^^[Install]^Install console-artwork to your libraries.^^[Convert]^Convert game-artwork scraped by XBMC for use in other frontends^^##########################^Backdrops: %BDWN%^Videos: %VDWN%^Icons: %IDWN%^Banners: %WDWN%^##########################^" "Download;Install;Convert;MainMenu" /AL
if %ERRORLEVEL%==1 goto :download
if %ERRORLEVEL%==2 goto :install
if %ERRORLEVEL%==3 goto :convert
if %ERRORLEVEL%==4 goto :metaout
goto :metaout

:convert
start "" "%GBC%\wbusy.exe" "CONVERTING" "converting scraped art" /Stop /Timeout:1
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h /s "%GBG%\%GAM%\%CONS%\*_fanart.jpg"') do rename "%%~a" "backdrop.jpg"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h /s "%GBG%\%GAM%\%CONS%\*_thumb.jpg"') do rename "%%~a" "folder.jpg"
"%GBC%\Wbusy.exe" "CONVERTING" "Complete." /Stop /timeout:1
goto :metaData

:download
call "%GBC%\metacheck.bat"
"%GBC%\wbox.exe" "DownloadMeta" "### METADATA AQUISITION ###^^Backdrops: %BDWN%^Videos: %VDWN%^Icons: %IDWN%^Banners: %WDWN%^^What would you like to DOWNLOAD?^" "Icons;Backdrops;Banners;Video;ALL;MainMenu" /AL
if %ERRORLEVEL%==1 goto :getI
if %ERRORLEVEL%==2 goto :getF
if %ERRORLEVEL%==3 goto :getW
if %ERRORLEVEL%==4 goto :getV
if %ERRORLEVEL%==5 goto :getA
if %ERRORLEVEL%==6 goto :metaData
goto :metaout

:install
call "%GBC%\metacheck.bat"
"%GBC%\wbox.exe" "InstallMeta" "### METADATA INSTALLATION ###^^Backdrops: %BDWN%^Videos: %VDWN%^Icons: %IDWN%^Banners: %WDWN%^^What would you like to INSTALL?^" "Icons;Backdrops;Banners;Video;ALL;MainMenu" /AL
if %ERRORLEVEL%==1 goto :instI
if %ERRORLEVEL%==2 goto :instF
if %ERRORLEVEL%==3 goto :instW
if %ERRORLEVEL%==4 goto :instV
if %ERRORLEVEL%==5 goto :instA
if %ERRORLEVEL%==6 goto :metaData
goto :metaout

:instI
if "%IDWN%"=="" goto :install 
call :instIi
goto :install
:instIi
CALL "%GBC%\folderpack.bat"
exit /b

:instW
if "%WDWN%"=="" goto :install 
call :instWi
goto :install
:instWi
CALL "%GBC%\bannerpack.bat"
exit /b


:instV
if "%VDWN%"=="" goto :install
call :instVi
goto :install
:instVi
set CURNTA=conselect.set
if exist "%GBC%\conselect.ini" set CURNTA=conselect.ini
for /f "tokens=* delims= " %%a in ('type "%GBC%\%CURNTA%"') do (
if exist "%GBG%\%GAM%\%CONS%\%%~a" mkdir "%GBG%\%GAM%\%CONS%\%%~a\backdrops" && attrib +H "%GBG%\%GAM%\%CONS%\%%~a\backdrops"
SET NWNAME=%%~a
if not exist "%GBG%\%GAM%\%CONS%\%%~a\backdrops\%%~a.mp4" copy /Y "%GBC%\net\%VIDE%\%%~a.mp4" "%GBG%\%GAM%\%CONS%\%%~a\backdrops\%%~a.mp4"
)
exit /b

:instF
if "%BDWN%"=="" goto :install
call :instFi
goto :install
:instFi
CALL "%GBC%\backdroppack.bat"
exit /b

:instA
start "" "%GBC%\wbusy.exe" "instAmeta" "Installing MetaData" /marquee
if "%VDWN%" NEQ "" call :instVi
if "%IDWN%" NEQ "" call :instIi
if "%BDWN%" NEQ "" call :instFi
start "" "%GBC%\wbusy.exe" "instAmeta" "Complete" /Stop /timeout:1
goto :metaData


:getI
CALL :prepmeta
CALL "%GBC%\getIcons.bat"
goto :download

:getW
CALL :prepmeta
CALL "%GBC%\getBanners.bat"
goto :download

:getF
CALL :prepmeta
CALL "%GBC%\getImages.bat"
goto :download

:getV
CALL :prepmeta
CALL "%GBC%\getVideo.bat"
goto :download

:getA
SET ALLMETA=1
start "" "%GBC%\wbusy.exe" "instAmeta" "Downloading MetaData" /marquee
CALL :prepmeta
CALL "%GBC%\getBanners.bat"
CALL "%GBC%\getImages.bat"
CALL "%GBC%\getIcons.bat"
CALL "%GBC%\getVideo.bat"
start "" "%GBC%\wbusy.exe" "instAmeta" "Complete" /Stop /timeout:1
goto :metaData

:prepmeta
CALL "%GBC%\delshort.bat"
CALL "%GBC%\cleanup.bat"
REM CALL "%GBC%\deleteEmpty.bat"
exit /b
:metaout
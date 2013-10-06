:generate_gbxml
if exist "%PROGRAMDATA%\%MBRWS%" SET MBR=1
if exist "%PROGRAMDATA%\%MBRWS%" "%GBC%\fart.exe" "locset.ini" "[MBR]" "1"
if "%MBR%"=="[MBR]" goto :no_mediabrowser
if "%GBR%"=="[GBR]" goto :get_GBdll

:mbset
if "%MBR%"=="1" goto :gbconfigbegin
if "%MBR%"=="0" goto :gbconfigbegin
if "%GBR%"=="0" goto :gbconfigbegin
if "%GBR%"=="1" goto :gbconfigbegin
if not exist "%PROGRAMDATA%\%MBRWS%" goto :no_mediabrowser

:gbconfigbegin
if exist "%ProgramData%\%MBRWS%\%PLGN%\Configurations\%GBRWS%Plugin.xml" SET GBBTN=;Update_GB
if exist "%PROGRAMDATA%\%MBRWS%" SET MBBTN=;Update_MB
if "%GBR%"=="1" SET GBBTN=;GameBrowser
if "%GBR%"=="1" SET GBBAN=GameBrowser IS INSTALLED
if "%GBR%" NEQ "1" SET GBBAN=GameBrowser is NOT INSTALLED
if "%MBR%"=="1" SET MBBAN=MediaBrowser IS INSTALLED
if "%MBR%" NEQ "1" SET MBBAN=MediaBrowser is NOT INSTALLED
if "%MBR%"=="1" SET MBBTN=;MediaBrowser
if exist "%GBC%\net\%GBRWS%\%GBRWS%.zip" SET GBBTN=;Update
"%GBC%\wbox.exe" "create_gbxml" "^^########################^Windows MediaCenter Plugin Configuration^########################^%GBBAN%^%MBBAN%^########################^^[Install]^ install or reinstall GameBrowser or MediaBrowser.^^[VideoBG]^   install the VideoBackdrops plugin for MediaBrowser.^^[MediaBrowser]/[GameBrowser]^   generate, regenerate or update your current GB or MB configuration file^^" "Install;VideoBG;MainMenu%MBBTN%%GBBTN%" /BW=135
if %ERRORLEVEL%==1 goto :setup_mce
if %ERRORLEVEL%==2 goto :inst_vbd
if %ERRORLEVEL%==3 goto :fingb
if %ERRORLEVEL%==4 goto :update_MB
if %ERRORLEVEL%==5 goto :update_GB
goto :fingb

:setup_mce
"%GBC%\wbox.exe" "initialize" "Select the frontend to install/reinstall" "MediaBrowser;GameBrowser"
if %ERRORLEVEL%==1 goto :setup_mb
if %ERRORLEVEL%==2 goto :setup_gb
goto :fingb

:inst_vbd
if not exist "%ProgramData%\%MBRWS%\MediaBrowserXml.config" (goto :setup_mediabrowser)
CALL "%GBC%\getVDBD.bat"
"%SEVENZIP%" x -y "%GBC%\net\%MBRWS%\%VDBDFILE%" -o"%ProgramData%\%MBRWS%\%PLGN%"
if not exist "%ProgramData%\%MBRWS%\%PLGN%\VideoBackdrops.dll" goto :no_VDBD
"%GBC%\wbox.exe" "Installed" "VideoBackdrops plugin installed" "Okay" /DB=1 /TM=1
if %ERRORLEVEL%==1 goto :generate_gbxml
goto :generate_gbxml

:no_VDBD
"%GBC%\wbox.exe" "no_videobd" "RoM-Jacket cannot find the VideoBackdrop plugin.^^" "Download;Continue" /DB=2 /TM=8
if %ERRORLEVEL%==1 goto :inst_vbd
if %ERRORLEVEL%==2 goto :generate_GBXML
goto :fingb

:setup_mb
if not exist "%PRGX%\%MBRWS%\MediaBrowserXml.config" (goto :setup_mediabrowser)
"%GBC%\wbox.exe" "mbFound" "^^MediaBrowser is installed.  Would you like to configure it?^^"  "Okay" /TM=1
if %ERRORLEVEL%==1 goto :gbconfigbegin
goto :gbconfigbegin

:setup_gb
if not exist "%ProgramData%\%MBRWS%" (goto :setup_mediabrowser)
if not exist "%ProgramData%\%MBRWS%\%PLGN%\%GBRWS%.dll" goto :gbinstall
"%GBC%\wbox.exe" "mbFound" "^^MediaBrowser and Gamebrowser are installed^^"  "Okay" /TM=1
if %ERRORLEVEL%==1 goto :gbconfigbegin
goto :gbconfigbegin

:setup_mediabrowser
"%GBC%\wbox.exe" "no_mbFound" "^ MediaBrowser not detected. Would you like to install it?^^"  "Install;Bypass;Menu" /DB=1
if %ERRORLEVEL%==1 goto :dwn_mb
if %ERRORLEVEL%==2 goto :createwogb
if %ERRORLEVEL%==2 goto :fingb
goto :fingb

:dwn_mb
CALL "%GBC%\getMediaBrowser.bat"
if "%MBRWSFILE%"=="" goto :no_mediabrowser
"%GBC%\wbox.exe" "installmb" "Would you like to install Mediabrowser?" "Yes;No" /DB=1
if %ERRORLEVEL%==1 goto :INSTALLMEDIABROWSER
if %ERRORLEVEL%==2 goto :setup_mediabrowser
:INSTALLMEDIABROWSER
msiexec /qb /norestart /i "%GBC%\net\%MBRWS%\%MBRWSFILE%"
SET MBR=1
"%GBC%\fart.exe" "locset.ini" "[MBR]" "1"
goto :mbset

:gbinstall
call "%GBC%\getGBplugin.bat"
"%SEVENZIP%" x -y "%GBC%\net\%GBRWS%\%GBRWSPLUGINFILE%" -o"%PROGRAMDATA%\%MBRWS%\%PLGN%"
if not exist "%ProgramData%\%MBRWS%\%PLGN%\%GBRWS%.dll" goto :noGBdll
"%GBC%\wbox.exe" "finished" "Would you like to configure GameBrowser?" "Yes;MainMenu"  /BW=250 
if %ERRORLEVEL%==1 goto :inject_GBXML
if %ERRORLEVEL%==2 goto :fingb
goto :fingb

:get_GBdll
if "%AUTOCONFIG%"=="1" goto :auto_gbdll
"%GBC%\wbox.exe" "properinstall" "Would you like to install Gamebrowser for Mediabrowser?^This is not a free plugin and Mediabrowser can utilize Rom-Jacket with out it." "Install;Configure;Skip" /DB=3 /BW=150
if %ERRORLEVEL%==1 goto :propergbinstall
if %ERRORLEVEL%==2 goto :inject_GBXML
if %ERRORLEVEL%==3 goto gbunset
goto :fingb

:gbunset


:propergbinstall
if not exist "%ProgramData%\%MBRWS%\%PLGN%\%GBRWS%.dll" goto :auto_gbdll
goto :mbset

:auto_gbdll
CALL "%GBC%\getGBplugin.bat"
"%SEVENZIP%" x -y "%GBC%\net\%GBRWS%\%GBRWSPLUGINFILE%" -o"%PROGRAMDATA%\%MBRWS%\%PLGN%"
if not exist "%GBC%\net\%GBRWS%\%GBRWS%.dll" goto :noGBdll
if not exist "%GBC%\net\%GBRWS%\%GBRWS%.dll" goto :noGBdll
SET GBR=1
"%GBC%\fart.exe" "locset.ini" "[GBR]" "1"
goto :generate_GBXML

:create_GB
CALL "%GBC%\getGBCfg.bat"
if exist "%GBC%\net\%GBRWS%\%GAMBFILE%" (goto :genGBr) ELSE (goto :noGBr)

:genGBr
"%GBC%\wbox.exe" "create_gb" "^^Would you like to Update Your Current GameBrowserPlugin.xml?^" "Yes;Menu"
if %ERRORLEVEL%==1 goto :inject_GBXML
if %ERRORLEVEL%==2 goto :generate_GBXML
goto :fingb

:noGBdll
SET GBR=0
"%GBC%\fart.exe" "locset.ini" "[GBR]" "0"
"%GBC%\wbox.exe" "create_gb" "RoM-Jacket cannot find the Gamebrowser plugin.^^" "Download;Continue" /DB=2 /TM=8
if %ERRORLEVEL%==1 goto :auto_gbdll
if %ERRORLEVEL%==2 goto :generate_GBXML
goto :fingb

:noGBr
SET GBR=0
"%GBC%\fart.exe" "locset.ini" "[GBR]" "0"
"%GBC%\wbox.exe" "create_gb" "RoM-Jacket cannot download components for Gamebrowser.^^" "Download;Continue" /DB=2 /TM=8
if %ERRORLEVEL%==1 goto :create_GB
if %ERRORLEVEL%==2 goto :generate_GBXML
goto :fingb


:update_MB
If not exist "%ProgramData%\MediaBrowser\MediaBrowserXml.config.sbak" (copy "%ProgramData%\MediaBrowser\MediaBrowserXml.config" "%ProgramData%\MediaBrowser\MediaBrowserXml.config.sbak")
If exist "%ProgramData%\%MBRWS%\MediaBrowserXml.config.sbak" (copy "%ProgramData%\%MBRWS%\MediaBrowserXml.config" "%ProgramData%\%MBRWS%\MediaBrowserXml.config.bak")
goto :inject_MBXML


:update_GB
if "%GBR%"=="0" goto :createwogb
"%GBC%\	.exe" "locset.ini" "[GBR]" "1"
If not exist "%ProgramData%\%MBRWS%\Plugins\Configurations\GameBrowserPlugin.xml.sbak" (copy "%ProgramData%\%MBRWS%\Plugins\Configurations\GameBrowserPlugin.xml" "%ProgramData%\%MBRWS%\Plugins\Configurations\GameBrowserPlugin.xml.sbak")
If exist "%ProgramData%\%MBRWS%\Plugins\Configurations\GameBrowserPlugin.xml" (copy "%ProgramData%\%MBRWS%\Plugins\Configurations\GameBrowserPlugin.xml" "%ProgramData%\%MBRWS%\Plugins\Configurations\GameBrowserPlugin.xml.bak")
SET GBR=1
goto :inject_GBXML


:inject_MBXML
CALL "%GBC%\buildMBXML.bat"
CALL "%GBC%\copyMediaBrowserInjection.bat"
cmd /c start "" "%PRGX%\%MBRWS%\%MBRWS%\MediaBrowserService.exe" /refresh
goto :success_MB


:inject_GBXML
call "%GBC%\getGBCfg.bat"
"%SEVENZIP%" x -y "%GBC%\net\%GBRWS%\%GBRWS%.tar" -o"%GBC%\net\%GBRWS%"
CALL "%GBC%\buildGBXML.bat"
CALL "%GBC%\copyGameBrowserInjection.bat"
"%PRGF%\%MBRWS%\%MBRWS%\MediaBrowserService.exe" /refresh
goto :success_GB

:success_GB
SET GBR=1
"%GBC%\fart.exe" "locset.ini" "[GBR]" "1"
"%GBC%\wbox.exe" "Success" "^^GameBrowser has been updated.^^" "Thanks" /TM=3
if %ERRORLEVEL%==1 goto :fingb
goto :fingb


:success_MB
SET MBR=1
"%GBC%\fart.exe" "locset.ini" "[MBR]" "1"
"%GBC%\wbox.exe" "Success" "^^MediaBrowser has been updated.^^" "Thanks" /TM=3
if %ERRORLEVEL%==1 goto :fingb
goto :fingb

:createwogb
call "%GBC%\getGBCfg.bat"
"%SEVENZIP%" x -y "%GBC%\net\%GBRWS%\%GBRWS%.tar" -o"%GBC%\net\%GBRWS%"
CALL "%GBC%\buildGBXML.bat"
SET GBBTN=;Update
goto :generate_gbxml

:no_mediabrowser
"%GBC%\wbox.exe" "confirm no mb" "^^Media Browser was not detected.^^" "Download;Menu" /DB=2 /TM=20
if %ERRORLEVEL%==1 (goto :dwn_mb)
if %ERRORLEVEL%==2 (goto :mb_complete)
goto :fingb

:mb_complete
SET MBR=0
"%GBC%\fart.exe" "locset.ini" "[MBR]" "0"
goto :generate_gbxml

:mb_install
CALL "%GBC%\getMediaBrowser.bat"
msiexec /qb /norestart /i "%GBC%\net\%MBRWS%\%MBRWSFILE%"
goto :generate_gbxml
:fingb
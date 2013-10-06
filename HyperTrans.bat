:HYPERSPINGLOBAL
if exist "%GBE%\%EMUZ%\%HYPS%\%HYPS%.exe" SET HPN=%GBE%\%EMUZ%\%HYPS%
if exist "%PRGX%\%HYPS%\%HYPS%.exe" SET HPN=%PRGX%\%HYPS%
if exist "C:\%HYPS%.exe" SET HPN=C:\%HYPS%
SET HYPINS=reinstall
if "%HPN%"=="[HPN]" set HYPINS=install
if "%HPN%"=="" set HYPINS=install
if "%HPN%"=="install" set HYPCHOICE=1
if "%HPN%"=="reinstall" set HYPCHOICE=4
:SETHSCHOICE
set CREATEDONLY=
"%GBC%\wbox.exe" "TopMenu" "^%HYPINS% Hyperspin^--------------^%HYPINS% Rom-Jacket's Custom Hyperspin.^^Mirror^--------------^Use your existing RoM-Jacket library to:^Create and populate Directory Mirrors for Hyperspin^& Create settings and XML databases.^^Transfer^--------------^Convert media to and from Hyperspin.^^Config^--------------^Configure Hyperspin using RoM-Jacket.^" "%HYPINS%;Mirror;Transfer;Config;MainMenu" /DB=%HYPCHOICE% /BW=120
if %ERRORLEVEL%==1 goto :initializehs
if %ERRORLEVEL%==2 goto :CREATEDIRS
if %ERRORLEVEL%==3 goto :globaltrans
if %ERRORLEVEL%==4 goto :confighs
if %ERRORLEVEL%==5 goto :metaout
goto :metaout

:initializehs
set HPN=[HPN]
CALL "%GBC%\installHS.bat"
if "%HPN%"=="" goto :no_HS
if "%HPN%"=="[HPN]" goto :no_HS
goto :SETHSCHOICE

:no_HS
"%GBC%\wbox.exe" "HYPinfo" "^^Hyperspin was not found.^^" "Download;Menu" /DB=2
if %ERRORLEVEL%==1 goto :initializehs
if %ERRORLEVEL%==2 goto :SETHSCHOICE
goto :transfercomplete

:CREATEDIRS
set CREATEDONLY=1
:createsc
if "%HPN%"=="" goto :no_HS
if "%HPN%"=="[HPN]" goto :no_HS
CALL "%GBC%\hyperspindirs.bat"
if "%HSDESCAPE%"=="1" goto :HYPERSPINGLOBAL
if "%CREATEDONLY%"=="1" goto :HYPERPSINGLOBAL
"%GBC%\wbox.exe" "Themes" "Would you like to create Hyperspin Themes?" "Yes;No" /DB=1
if %ERRORLEVEL%==1 goto :confighs
if %ERRORLEVEL%==2 goto :HYPERSPINGLOBAL
goto :transferComplete

:confighs
if "%HPN%"=="" goto :no_HS
if "%HPN%"=="[HPN]" goto :no_HS
:buildingdb
SET HSXC=
SET HSTC=
SET HSIC=
SET HSGC=
"%GBC%\wbox.exe" "ConfigHYPS" "^### HYPERSPIN CONFIGURATION ###^---RoM-Jacket will use Images and videos available from RoM-Jacket's repositories---^^What would you like to configure?^^#XMLs#:  XML databases for your consoles^^#Console#:  Console Themes^^#InConsole#:  In-Console Themes^^#Games#:  Game Themes^^" "XMLs;Console;InConsole;Games;All;Menu" /AL
if %ERRORLEVEL%==1 goto :HSXMLCREATE
if %ERRORLEVEL%==2 goto :HSTHEMECREATE
if %ERRORLEVEL%==3 goto :HSINSYSCREATE
if %ERRORLEVEL%==4 goto :HSGAMCREATE
if %ERRORLEVEL%==5 goto :ALLCREATE
if %ERRORLEVEL%==6 goto :HYPERSPINGLOBAL
goto :HYPERSPINGLOBAL

:ALLCREATE
SET HSXC=1
SET HSTC=1
SET HSIC=1
SET HSGC=1
:HSXMLCREATE
SET HSXC=1
goto :BEGINCREATE
:HSTHEMECREATE
SET HSTC=1
goto :BEGINCREATE
:HSINSYSCREATE
SET HSIC=1
goto :BEGINCREATE
:HSGAMCREATE
set HSGC=1
goto :BEGINCREATE

:BEGINCREATE
if "%HSXC%" NEQ "1" goto :HSCREATETHEME
cmd /c start "" "%GBC%\Wbusy.exe" "BuildingDB" "Building Databases"  /marquee
CALL "%GBC%\HLAdd.bat"
"%GBC%\Wbusy.exe" "BuildingDB" "Complete." /Stop /timeout:1
CALL "%GBC%\HLInj.bat"
:HSCREATETHEME
if "%HSTC%" NEQ "1" goto :HSCREATEINSYS
CALL "%GBC%\HSCreateTheme.bat"
call "%GBC%\HSCreateMMFE.bat"
:HSCREATEINSYS
if "%HSIC%" NEQ "1" goto :HSCREATEGAM
CALL "%GBC%\HSCreateInSystemTheme.bat"
:HSCREATEGAM
if "%HSGC%" NEQ "1" goto :HYPERSPINGLOBAL
CALL "%GBC%\HSCreateGamTheme.bat"
goto :HYPERSPINGLOBAL

:globalTrans
if "%HPN%"=="" goto :no_HS
if "%HPN%"=="[HPN]" goto :no_HS
"%GBC%\wbox.exe" "Transfer" "^---TO--^Transfer media in your Rom-Jacket Library folders to Hyperspin.^^---FROM---^Transfer media from a Hyperspin installation to your Rom-Jacket Library.^^---ALT---^Allow for a seperate location for your Hyperspin Media" "TO;FROM;ALT"
if %ERRORLEVEL%==1 goto :HSCONV
if %ERRORLEVEL%==2 goto :HSTRANS
if %ERRORLEVEL%==3 goto :RESET_HS
goto :transferComplete

:RESET_HS
SET HSALT=1
:FINDMEDIA
"%GBC%\Wfolder.exe" "SET HSMETA=" "C:" "Where is your Hyperspin Media Folder" /noquote > "%GBC%\HyperBA.cmd"
call "%GBC%\HyperBA.cmd"
if "%HSMETA%"=="" SET HSALT=
if "%HSMETA%"=="" (goto :globalTrans)
for %%A in ("%HSMETA:~0,2%") do set HSDR=%%~A
for %%a in ("%HSMETA%") do set HSMN=%%~na
if /I "%HSMN%" NEQ "Media" goto :mnotfound
goto :globalTrans

:mnotfound
"%GBC%\wbox.exe" "notfound" "The Media Folder you selected is not a typical Media Folder HS folder.^Continue?" "Continue;Reselect;MainMenu"
if %ERRORLEVEL%==1 goto :globalTrans
if %ERRORLEVEL%==2 goto :FINDMEDIA
if %ERRORLEVEL%==3 goto :transferComplete
goto :transferComplete

:HSCONV

:HYPC
CALL "%GBC%\HSConvertArt.bat"
goto :HYPERSPINGLOBAL
:HSTRANS
set SELHS=
"%GBC%\wbox.exe" "Transfer" "^What kind of data would you like to transfer from hyperspin?^^Select the location of your Hyperspin ''Media'' folder to begin the transfer^" "BoxArt;Banner;Video;All;MainMenu"
if %ERRORLEVEL%==1 goto :baTrans
if %ERRORLEVEL%==2 goto :bnTrans
if %ERRORLEVEL%==3 goto :vdTrans
if %ERRORLEVEL%==4 goto :allTrans
if %ERRORLEVEL%==5 goto :HYPERSPINGLOBAL
goto :transferComplete
:baTrans
SET SELHS=boxart
CALL "%GBC%\HSBA.bat" 	
goto :HYPERSPINGLOBAL

:vdTrans
SET SELHS=video
CALL "%GBC%\HSVD.bat"
goto :HYPERSPINGLOBAL

:bnTrans
SET SELHS=boxart
CALL "%GBC%\HSBN.bat"
goto :HYPERSPINGLOBAL

:allTrans
SET SELHS=All
CALL "%GBC%\HSAL.bat"
goto :HYPERSPINGLOBAL
:transferComplete
exit /b
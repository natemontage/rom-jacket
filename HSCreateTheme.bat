:CHECKMEDIA
if exist "%GBC%\net\%BCKD%\%BCKD%.zip" goto :FOLDERCHK
"%SEVENZIP%" x -y "%GBC%\net\%BCKD%\%BCKD%.zip" -o"%GBC%\net\%BCKD%"
goto :GETBCKD
:FOLDERCHK
if exist "%GBC%\net\%BANN%\%BANN%.zip" goto :FLDRCHK
"%SEVENZIP%" x -y "%GBC%\net\%BANN%\%BANN%.zip" -o"%GBC%\net\%BANN%"
goto :GETFLDR
:FLDRCHK
if exist "%GBC%\net\%FLDR%\%FLDR%.zip" goto :WHEELCHOICE
"%SEVENZIP%" x -y "%GBC%\net\%FLDR%\%FLDR%.zip" -o"%GBC%\net\%FLDR%"
goto :GETFLDR

:WHEELCHOICE
"%GBC%\wbox.exe" "wheelChoice" "Would you like to to use Icons or Banners for your main menu Wheels?^" "Icons;Banners" /DB=2
if %ERRORLEVEL%==1 goto :USEICON
if %ERRORLEVEL%==2 goto :USEBANN
goto :USEBANN

:USEICON
set ICNZ=1
set BANR=
goto :VIDEOCHK

:USEBANN
set ICNZ=
set BANR=1
goto :VIDEOCHK

:VIDEOCHK
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%GBC%\net\Videos"') do SET VIDCHK=%%~a
if "%VIDCHK%"=="" goto :VIDACK
goto :SETCHOICE

:GETBCKD
"%GBC%\wbox.exe" "getBackdrops" "Would you like to download Backgrounds?^## These are neccessary for Themes ##^" "Yes;No" /DB=1
if %ERRORLEVEL%==1 goto :GETIMAGES
if %ERRORLEVEL%==2 goto :FOLDERCHK
goto :HSCREATEEND
:GETIMAGES
call "%GBC%\getImages.bat"
"%SEVENZIP%" x -y "%GBC%\net\%BCKD%\%BCKD%.zip" -o"%GBC%\net\%BCKD%"
goto :FOLDERCHK

:GETFLDR
"%GBC%\wbox.exe" "getIcons" "Would you like to download Wheel Images?^Icons: Photos of the console/computer^Banners: Logo of the console/computer^" "Icon;Logo;None" /DB=1
if %ERRORLEVEL%==1 goto :GETICONS
if %ERRORLEVEL%==2 goto :GETLOGOS
if %ERRORLEVEL%==3 goto :VIDEOCHK
goto :HSCREATEEND
:GETICONS
SET ICNZ=1
SET BANR=
call "%GBC%\getIcons.bat"
"%SEVENZIP%" x -y "%GBC%\net\%FLDR%\%FLDR%.zip" -o"%GBC%\net\%FLDR%"
goto :VIDEOCHK

:GETLOGOS
SET BANR=1
SET ICNZ=
call "%GBC%\getBanners.bat"
"%SEVENZIP%" x -y "%GBC%\net\%BANN%\%BANN%.zip" -o"%GBC%\net\%BANN%"
goto :VIDEOCHK


:VIDACK
"%GBC%\wbox.exe" "getVideos" "Would you like to download Console-Videos?" "Yes;No" /DB=1
if %ERRORLEVEL%==1 goto :GETVIDEOS
if %ERRORLEVEL%==2 goto :SETCHOICE
goto :HSCREATEEND
:GETVIDEOS
mkdir "%HPN%\Media\Main Menu\Video"
call "%GBC%\getVideo.bat"
goto :SETCHOICE


:SETCHOICE
"%GBC%\wbox.exe" "SelectAll" "Choose a console you wish to create a Hyperspin Theme for^or create them all." "Select;All" /DB=3
if %ERRORLEVEL%==1 goto :ONECONSOLE
if %ERRORLEVEL%==2 goto :ALLCONSOLE
goto :HSCREATEEND

:CLEANHOUSE
for /f "tokens=* delims= " %%a in ('dir /b/ad "%GBG%\%GAM%\%HYPS%"') do (
pushd "%GBG%\%GAM%\%HYPS%\%%~a"
call :CLEAR
popd
)
mkdir "%GBG%\%GAM%\%HYPS%\Favorites"
goto :ALLCONSOLE

:CLEAR
for /f "delims=" %%d in ('dir /b /ad^| sort /r') do rd "%%d"
exit /b

:ALLCONSOLE
"%SEVENZIP%" x -y "%GBC%\net\%BCKD%\%BCKD%.zip" -o"%GBC%\net\%BCKD%"
"%SEVENZIP%" x -y "%GBC%\net\%FLDR%\%FLDR%.zip" -o"%GBC%\net\%FLDR%"
"%SEVENZIP%" x -y "%GBC%\net\%BANN%\%BANN%.zip" -o"%GBC%\net\%BANN%"
cmd /c start "" "%GBC%\Wbusy.exe" "BuildingThemes" "Building Themes"  /marquee
if not exist "%GBG%\%GAM%\%HYPS%\Favorites" mkdir "%GBG%\%GAM%\%HYPS%\Favorites"
for /f "tokens=* delims= " %%a in ('dir /b/ad %%a in ('dir /b/ad-h "%GBG%\%GAM%\%HYPS%"') do (
SET HYPCON=%%~a
CALL :ALLCONV
)
goto :ZIPUP

:ALLCONV
mkdir "%GBC%\net\%HYPS%\%HYPCON%"
if not exist "%HPN%\Media\Main Menu\%HYPCON%.zip.orig" copy /y "%HPN%\Media\Main Menu\%HYPCON%.zip" "%HPN%\Media\Main Menu\%HYPCON%.zip.orig"
move /Y "%HPN%\Media\Main Menu\%HYPCON%.zip" "%HPN%\Media\Main Menu\%HYPCON%.zip.bak"
"%GBC%\nconvert.exe" -resize %REZX% %REZY% -out png -o "%GBC%\net\%HYPS%\%HYPCON%\Background.png" "%GBC%\net\%BCKD%\%HYPCON%.jpg"
if "%ICNZ%"=="1" "%GBC%\nconvert.exe" -resize 300 300 -out png -o "%HPN%\Media\Main Menu\Images\Wheel\%HYPCON%.png" "%GBC%\net\Folder\%HYPCON%.png"
if "%BANR%"=="1" copy /y "%GBC%\net\%BANN%\%HYPCON%.png" "%HPN%\Media\Main Menu\Images\Wheel\%HYPCON%.png"
copy /Y "%GBC%\net\Videos\%HYPCON%.mp4" "%HPN%\Media\Main Menu\Video"
copy /Y "%GBC%\net\Videos\%HYPCON%.flv" "%HPN%\Media\Main Menu\Video"

if exist "%HPN%\Media\Main Menu\Video\%HYPCON%.mp4" copy /Y "%GBC%\net\%HYPS%\MainTheme.xmz" "%GBC%\net\%HYPS%\%HYPCON%\Theme.xml" && goto :THEMEZIP
if exist "%HPN%\Media\Main Menu\Video\%HYPCON%.flv" copy /Y "%GBC%\net\%HYPS%\MainTheme.xmz" "%GBC%\net\%HYPS%\%HYPCON%\Theme.xml" && goto :THEMEZIP
copy /Y "%GBC%\net\%HYPS%\MainThemeNV.xmz" "%GBC%\net\%HYPS%\%HYPCON%\Theme.xml"

:THEMEZIP
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%GBC%\net\%HYPS%\%HYPCON%"') do "%SEVENZIP%" a -mx=0 "%HPN%\Media\Main Menu\Themes\%HYPCON%.zip" "%GBC%\net\%HYPS%\%HYPCON%\%%~a"
exit /b

:ONECONSOLE
"%SEVENZIP%" x -y "%GBC%\net\%BCKD%\%BCKD%.zip" -o"%GBC%\net\%BCKD%"
if "%ICNZ%"=="1" "%SEVENZIP%" x -y "%GBC%\net\%FLDR%\%FLDR%.zip" -o"%GBC%\net\%FLDR%"
if "%BANR%"=="1" "%SEVENZIP%" x -y "%GBC%\net\%BANN%\%BANN%.zip" -o"%GBC%\net\%BANN%"
del /q "%GBC%\curlist.ini"
echo Current Library>"%GBC%\curlist.ini"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do echo %%~a>>"%GBC%\curlist.ini"
"%GBC%\Wselect.exe" "%GBC%\curlist.ini" "Select A Console" "set HYPCON=$item" > "%GBC%\transCons.cmd"
if %errorlevel%==0 GOTO :HSCREATEEND
CALL "%GBC%\transCons.cmd"
mkdir "%GBC%\net\%HYPS%\%HYPCON%"
if "%HYPCON%"=="Current Library" goto :CLEANHOUSE
if not exist "%HPN%\Media\Main Menu\%HYPCON%.zip.orig" copy /y "%HPN%\Media\Main Menu\%HYPCON%.zip" "%HPN%\Media\Main Menu\%HYPCON%.zip.orig"
move /Y "%HPN%\Media\Main Menu\%HYPCON%.zip" "%HPN%\Media\Main Menu\%HYPCON%.zip.bak"
cmd /c start "" "%GBC%\Wbusy.exe" "BuildingThemes" "Building Theme"  /marquee
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%GBC%\net\%BCKD%\%HYPCON%.jpg"') do (
"%GBC%\nconvert.exe" -resize %REZX% %REZY% -out png -o "%GBC%\net\%HYPS%\%HYPCON%\Background.png" "%GBC%\net\%BCKD%\%HYPCON%.jpg"
if "%ICNZ%"=="1" "%GBC%\nconvert.exe" -resize 300 300 -out png -o "%HPN%\Media\Main Menu\Images\Wheel\%HYPCON%.png" "%GBC%\net\Folder\%HYPCON%.png"
if "%BANR%"=="1" copy /y "%GBC%\net\%BANN%\%HYPCON%.png" "%HPN%\Media\Main Menu\Images\Wheel\%HYPCON%.png"
copy /Y "%GBC%\net\%HYPS%\MainTheme.xmz" "%GBC%\net\%HYPS%\%HYPCON%\Theme.xml"
copy /Y "%GBC%\net\Videos\%HYPCON%.mp4" "%HPN%\Media\Main Menu\Video"
copy /Y "%GBC%\net\Videos\%HYPCON%.flv" "%HPN%\Media\Main Menu\Video"
CALL :MEDIASUM
)
goto :ZIPUP
:MEDIASUM
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%GBC%\net\%HYPS%\%HYPCON%"') do "%SEVENZIP%" a -mx=0 "%HPN%\Media\Main Menu\Themes\%HYPCON%.zip" "%GBC%\net\%HYPS%\%HYPCON%\%%~a"
exit /b
:ZIPUP
"%GBC%\Wbusy.exe" "BuildingThemes" "Main Sytems Complete." /Stop /timeout:1
:HSCREATEEND
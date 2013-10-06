SET OVRW=
SET ALLOFTHEM=
"%GBC%\wbox.exe" "selectionType" "Would you like to create themes for^MULTIPLE games^or^a SINGLE game^" "Multiple;Single;Menu" /DB=1
if %ERRORLEVEL%==1 goto :CONSOLES
if %ERRORLEVEL%==2 goto :GAMES
if %ERRORLEVEL%==3 goto :HSCREATEEND
goto :HSCREATEEND

:CONSOLES
echo ALL>%GBC%\HsMedia.ini"
echo -------->>"%GBC%\HsMedia.ini"
for /f "tokens=* delims= " %%a in ('dir /b /ad "%GBG%\%GAM%\%CONS%"') do echo %%~a>>"%GBC%\HsMedia.ini"
"%GBC%\Wselect.exe" "%GBC%\HsMedia.ini" "Select a console to transfer" "set HYPCON=$item" > "%GBC%\conchoice.cmd"
if %errorlevel%==0 GOTO :metaout
CALL "%GBC%\conchoice.cmd"
for %%A in ("%HYPCON:~0,1%") do set DIRHSCHOICE=%%~A
if /I "%DIRHSCHOICE%"=="-" goto :selhscon
CALL "%GBC%\hsLst.bat"
if "%HYPCON%"=="ALL" set ALLOFTHEM=1
"%GBC%\wbox.exe" "OVERWRITE" "Would you like to overwrite existing files?" "Yes;No"
if %ERRORLEVEL%==1 goto :OVRWY
if %ERRORLEVEL%==2 goto :OVRWN
goto :HSCREATEEND

:OVRWY
SET OVRW=1
goto :TRANSTYPE
:OVRWN
SET OVRW=
goto :TRANSTYPE

:TRANSTYPE
"%GBC%\wbox.exe" "Transfer Type" "What kind of artwork would you like to transfer?^Boxart|Backgrounds|Wheels|Videos|ALL^" "Boxart;Backgrounds;Wheels;ALL;Menu"
if %ERRORLEVEL%==1 goto :BOXMETA
if %ERRORLEVEL%==2 goto :BCKMETA
if %ERRORLEVEL%==3 goto :BANMETA
if %ERRORLEVEL%==4 goto :VIDMETA
if %ERRORLEVEL%==5 goto :ALLMETA
if %ERRORLEVEL%==6 goto :HSCREATEEND
goto :HSCREATEEND

:ALLMETA
set GAMIMG=1
set GAMBCK=1
set GAMWHL=1
set GAMVID=1
goto :GAMTHEMESTART

:BOXMETA
set GAMIMG=1

goto :GAMTHEMESTART
:BCKMETA
set GAMBCK=1

goto :GAMTHEMESTART
:WHLMETA
set GAMWHL=1

goto :GAMTHEMESTART
:VIDMETA
set GAMVID=1

goto :GAMTHEMESTART

:GAMTHEMESTART
"%GBC%\Wselect.exe" "%GBC%\art.set" "Select BoxArt Directory" "set ARTNUM=$item" > "%GBC%\artSel.cmd"
if %errorlevel%==0 SET ARTNUM=Artwork3
CALL "%GBC%\artSel.cmd"
if "%ALLOFTHEM%"=="1" goto :ALLCONSOLESALLGAMES

:CONSOLEPROCESS
for /f "tokens=* delims= " %%a in ('dir /b/ad %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%HYPCON%"') do (
SET GAMDIR=%%~a
cmd /c start "" "%GBC%\Wbusy.exe" "BuildingThemes" "Building %%~a Game Themes"  /marquee
pushd "%GBG%\%GAM%\%CONS%\%HYPCON%\%%~a"
CALL :GETGAM
"%GBC%\Wbusy.exe" "BuildingThemes" "Complete." /Stop /timeout:1
popd
)
goto :ZIPUP

:ALLCONSOLESALLGAMES
for /f "tokens=* delims= " %%a in ('dir /b/ad %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
SET HYPCON=%%~a
pushd "%GBG%\%GAM%\%CONS%\%%~a"
cmd /c start "" "%GBC%\Wbusy.exe" "BuildingThemes" "Building %%~a Game Themes"  /marquee
CALL :ALLCONV
"%GBC%\Wbusy.exe" "BuildingThemes" "Complete." /Stop /timeout:1
popd
)
goto :ZIPUP

:ALLCONV
for /f "tokens=* delims= " %%a in ('dir /b/ad %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%HYPCON%"') do (
SET GAMDIR=%%~nxa
pushd "%GBG%\%GAM%\%CONS%\%HYPCON%\%%~nxa"
CALL :GETGAM
type "%GBC%\net\%HYPS%\HSGamThemeEnd.prc">>"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml
popd
)
exit /b

:GETGAM
SET THMXT=
set VIDOK=
set BOXOK=
set BANOK=
set BCKOK=
set CRTOK=
mkdir "%HPN%\Media\%HYPCON%\Themes\%GAMDIR%"
type "%GBC%\net\%HYPS%\HSGamThemeBeg.prc">"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
if "%OVRW%"=="1" CALL :OVERWRITE
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%HPN%\Media\%HYPCON%\Video\%GAMDIR%.mp4"') do SET EVID=%%~a
if "%EVID%" NEQ "" set VIDOK=1
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%HPN%\Media\%HYPCON%\Video\%GAMDIR%.flv"') do SET EVID=%%~a
if "%EVID%" NEQ "" set VIDOK=1
if exist "%HPN%\Media\%HYPCON%\Images\%ARTNUM%\%GAMDIR%.png" SET BOXOK=1
if exist "%HPN%\Media\%HYPCON%\Images\%ARTNUM%\%GAMDIR%.png" SET THMXT=1
if exist "%HPN%\Media\%HYPCON%\Images\Artwork2\%GAMDIR%.png" SET CRTOK=1
if exist "%HPN%\Media\%HYPCON%\Images\Artwork2\%GAMDIR%.png" SET THMXT=1
if exist "%HPN%\Media\%HYPCON%\Images\Backdrops\%GAMDIR%.png" SET BCKOK=1
if exist "%HPN%\Media\%HYPCON%\Images\Backdrops\%GAMDIR%.png" SET THMXT=1
if exist "%HPN%\Media\%HYPCON%\Images\Wheels\%GAMDIR%.png" SET BANOK=1
if exist "%HPN%\Media\%HYPCON%\Images\Wheels\%GAMDIR%.png" SET THMXT=1
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\*.mp4"') do (
if "%%~a" NEQ "" SET GVID=%%~na
if "%%~a" NEQ "" SET GXID=%%~xa
)
if "%GVID%" NEQ "" CALL :VIDC
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\*.flv"') do (
if "%%~a" NEQ "" SET GVID=%%~na
if "%%~a" NEQ "" SET GXID=%%~xa
)
if "%GVID%" NEQ "" CALL :VIDC
if exist "Folder.jpg" CALL :FLDRC
if exist "Folder.jpg" SET THMXT=1
REM if exist "Cart.jpg" CALL :CARTC
if exist "Backdrop.jpg" CALL :BCKDC
if exist "Backdrop.jpg" SET THMXT=1
if exist "Banner.png" CALL :BANRC
if exist "Banner.png" SET THMXT=1
if "%GVID%" NEQ "" SET THMXT=1
if "%GXID%" NEQ "" SET THMXT=1
type "%GBC%\net\%HYPS%\HSGamThemeEnd.prc">>"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
if "%THMXT%"=="1" "%SEVENZIP%" a -mx=0 "%HPN%\Media\%HYPCON%\Themes\%GAMDIR%.zip" "%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
exit /b

:VIDC
type "%GBC%\net\%HYPS%\HSGamThemeVid.prc">>"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
if "%VIDOK%"=="1" copy /Y "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\%GVID%" "%HPN%\Media\%HYPCON%\Video\%GAMDIR%.%GXID%"
exit /b
:FLDRC
type "%GBC%\net\%HYPS%\HSGamThemeArt3.prc">>"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
if "%BOXOK%"=="1" "%GBC%\nconvert.exe" -resize 275 400 -out png -o "%HPN%\Media\%HYPCON%\Images\%ARTNUM%\%GAMDIR%.png" "Folder.jpg"
exit /b
:CARTC
type "%GBC%\net\%HYPS%\HSGamThemeArt2.prc">>"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
if "%CRTOK%"=="1" "%GBC%\nconvert.exe" -resize 250 320 -out png -o "%HPN%\Media\%HYPCON%\Images\Artwork2\%GAMDIR%.png" "Cart.jpg"
exit /b
:BCKDC
if "%BCKOK%"=="1" "%GBC%\nconvert.exe" -resize %REZX% %REZY% -out png -o "%HPN%\Media\%HYPCON%\Images\Backgrounds\%GAMDIR%.png" "Backdrop.jpg"
exit /b
:BANRC
if "%BANOK%"=="1" "%GBC%\nconvert.exe" -out png -o "%HPN%\Media\%HYPCON%\Images\Wheels\%GAMDIR%.png" "Banner.png"
exit /b

:GAMES
for /f "delims=" %%a in ('Wfolder.exe "SET HYPROM=" "%GBG%\%GAM%\%CONS%" "Where is the rom's folder?" /noquote') do %%a
for %%a in ("%HYPROM%") do SET GAMDIR=%%~nxa
pushd "%HYPROM%\..\"
for %%A in ("%CD%") do set HYPROMD=%%~A
for %%a in ("%HYPROMD%") do set HYPCON=%%~nxa
popd

"%GBC%\wbox.exe" "OVERWRITE" "Would you like to overwrite existing files?" "Yes;No"
if %ERRORLEVEL%==1 goto :OVRWY2
if %ERRORLEVEL%==2 goto :OVRWN2
goto :HSCREATEEND

:OVRWY2
SET OVRW=1
goto :GAMETYPE
:OVRWN2
SET OVRW=
goto :GAMETYPE

:GAMETYPE
"%GBC%\wbox.exe" "Transfer Type" "What kind of artwork would you like to transfer?^Boxart|Backgrounds|Wheels|Videos|ALL^" "Boxart;Backgrounds;Wheels;ALL;Menu"
if %ERRORLEVEL%==1 goto :BOXMET
if %ERRORLEVEL%==2 goto :BCKMET
if %ERRORLEVEL%==3 goto :BANMET
if %ERRORLEVEL%==4 goto :VIDMET
if %ERRORLEVEL%==5 goto :ALLMET
if %ERRORLEVEL%==6 goto :HSCREATEEND
goto :HSCREATEEND

:ALLMET
set GAMIMG=1
set GAMBCK=1
set GAMWHL=1
set GAMVID=1
goto :GAMSTART

:BOXMET
set GAMIMG=1

goto :GAMSTART
:BCKMET
set GAMBCK=1

goto :GAMSTART
:WHLMET
set GAMWHL=1

goto :GAMSTART
:VIDMET
set GAMVID=1

goto :GAMSTART
:GAMSTART
del /q "%GBC%\artset.ini"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%HPN%\Media\%HYPCON%\Images"') do echo.%%~a>>"%GBC%\artset.ini"
"%GBC%\Wselect.exe" "%GBC%\artset.ini" "Select BoxArt Directory" "set ARTNUM=$item" > "%GBC%\artSel.cmd"
if %errorlevel%==0 SET ARTNUM=Artwork2
CALL "%GBC%\artSel.cmd"
pushd "%HYPROMD%\%GAMDIR%"
cmd /c start "" "%GBC%\Wbusy.exe" "BuildingThemes" "Building %GAMDIR% Theme"  /marquee
CALL :ONEGAM
"%GBC%\Wbusy.exe" "BuildingThemes" "Game Complete." /Stop /timeout:1
popd
goto :HSCREATEEND

:OVERWRITE
set VIDOK=1
set BOXOK=1
set BANOK=1
set BCKOK=1
set CRTOK=1
exit /b


:ONEGAM
SET THMXT=
set VIDOK=
set BOXOK=
set BANOK=
set BCKOK=
set CRTOK=
mkdir "%HPN%\Media\%HYPCON%\Themes\%GAMDIR%"
type "%GBC%\net\%HYPS%\HSGamThemeBeg.prc">"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%HPN%\Media\%HYPCON%\Video\%GAMDIR%.mp4"') do (
if "%%~a" NEQ "" SET EVID=%%~na
if "%%~a" NEQ "" SET EXID=%%~xa
)
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%HPN%\Media\%HYPCON%\Video\%GAMDIR%.flv"') do (
if "%%~a" NEQ "" SET EVID=%%~na
if "%%~a" NEQ "" SET EXID=%%~xa
)
if "%EVID%" NEQ "" set VIDOK=1
if exist "%HPN%\Media\%HYPCON%\Images\%ARTNUM%\%GAMDIR%.png" SET BOXOK=1
if exist "%HPN%\Media\%HYPCON%\Images\%ARTNUM%\%GAMDIR%.png" SET THMXT=1
if exist "%HPN%\Media\%HYPCON%\Images\Artwork2\%GAMDIR%.png" SET CRTOK=1
if exist "%HPN%\Media\%HYPCON%\Images\Artwork2\%GAMDIR%.png" SET THMXT=1
if exist "%HPN%\Media\%HYPCON%\Images\Backdrops\%GAMDIR%.png" SET BCKOK=1
if exist "%HPN%\Media\%HYPCON%\Images\Backdrops\%GAMDIR%.png" SET THMXT=1
if exist "%HPN%\Media\%HYPCON%\Images\Wheels\%GAMDIR%.png" SET BANOK=1
if exist "%HPN%\Media\%HYPCON%\Images\Wheels\%GAMDIR%.png" SET THMXT=1
if "%OVRW%"=="1" CALL :OVERWRITE
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\*.mp4"') do (
if "%%~a" NEQ "" SET GVID=%%~na
if "%%~a" NEQ "" SET GXID=%%~xa
)
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\*.flv"') do (
if "%%~a" NEQ "" SET GVID=%%~na
if "%%~a" NEQ "" SET GXID=%%~xa
)
if "%GVID%" NEQ "" CALL :VIDC
if exist "Folder.jpg" CALL :FLDRC
if exist "Folder.jpg" SET THMXT=1
REM if exist "Cart.jpg" CALL :CARTC
if exist "Backdrop.jpg" CALL :BCKDC
if exist "Backdrop.jpg" SET THMXT=1
if exist "Banner.png" CALL :BANRC
if exist "Banner.png" SET THMXT=1
if "%GVID%" NEQ "" SET THMXT=1
if "%GXID%" NEQ "" SET THMXT=1
type "%GBC%\net\%HYPS%\HSGamThemeEnd.prc">>"%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
if "%THMXT%"=="1" "%SEVENZIP%" a -mx=0 "%HPN%\Media\%HYPCON%\Themes\%GAMDIR%.zip" "%HPN%\Media\%HYPCON%\Themes\%GAMDIR%\Theme.xml"
:ZIPUP
:HSCREATEEND
exit /b
exit /b

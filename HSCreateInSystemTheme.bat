:SETCHOICE
"%GBC%\wbox.exe" "SelectAll" "Choose a console you wish to create an ''IN-SYSTEM Theme for^or create them all." "Select;All" /DB=1
if %ERRORLEVEL%==1 goto :ONECONSOLE
if %ERRORLEVEL%==2 goto :ALLCONSOLE
goto :HSCREATEEND

:ALLCONSOLE
cmd /c start "" "%GBC%\Wbusy.exe" "BuildingThemes" "Building In-System Themes"  /marquee
for /f "tokens=* delims= " %%a in ('dir /b/ad %%a in ('dir /b/ad-h "%GBG%\%GAM%\%HYPS%"') do (
SET HYPCON=%%~a
CALL :ALLCONV
)
goto :ZIPUP

:ALLCONV
call "%GBC%\HSDirCreate.bat"
mkdir "%GBC%\net\%HYPS%\%HYPCON%\Themes"
if not exist "%HPN%\Media\%HYPCON%\Theme\Default.zip.orig" copy /y "%HPN%\Media\%HYPCON%\Themes\Default.zip" "%HPN%\Media\%HYPCON%\Themes\Default.zip.orig"
move /Y "%HPN%\Media\%HYPCON%\Themes\Default.zip" "%HPN%\Media\%HYPCON%\Themes\Default.bak"
"%GBC%\nconvert.exe" -resize %REZX% %REZY% -out png -o "%GBC%\net\%HYPS%\%HYPCON%\Themes\Background.png" "%GBC%\net\%BCKD%\%HYPCON%1.jpg"
copy /Y "%GBC%\net\%HYPS%\InTheme.xmz" "%GBC%\net\%HYPS%\%HYPCON%\Themes\Theme.xml"
copy /Y "%HPN%\Media\Favorites\Images\Other\pointer.png" "%HPN%\Media\%HYPCON%\Images\Other\Pointer.png"
"%SEVENZIP%" a -mx=0 "%HPN%\Media\%HYPCON%\Themes\Default.zip" "%GBC%\net\%HYPS%\%HYPCON%\Themes\*"
exit /b

:ONECONSOLE
call "%GBC%\HSDirCreate.bat"
del /q "%GBC%\curlist.ini"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do echo %%~a>>"%GBC%\curlist.ini"
"%GBC%\Wselect.exe" "%GBC%\curlist.ini" "Select A Console" "set HYPCON=$item" > "%GBC%\transCons.cmd"
if %errorlevel%==0 GOTO :HSCREATEEND
CALL "%GBC%\transCons.cmd"
cmd /c start "" "%GBC%\Wbusy.exe" "BuildingThemes" "Building In-System Theme"  /marquee
mkdir "%GBC%\net\%HYPS%\%HYPCON%\Themes"
if not exist "%HPN%\Media\%HYPCON%\Theme\Default.zip.orig" copy /y "%HPN%\Media\%HYPCON%\Themes\Default.zip" "%HPN%\Media\%HYPCON%\Themes\Default.zip.orig"
move /Y "%HPN%\Media\%HYPCON%\Themes\Default.zip" "%HPN%\Media\%HYPCON%\Themes\Default.bak"
"%GBC%\nconvert.exe" -resize %REZX% %REZY% -out png -o "%GBC%\net\%HYPS%\%HYPCON%\Themes\Background.png" "%GBC%\net\%BCKD%\%HYPCON%1.jpg"
copy /Y "%GBC%\net\%HYPS%\InTheme.xmz" "%GBC%\net\%HYPS%\%HYPCON%\Themes\Theme.xml"
copy /Y "%HPN%\Media\Favorites\Images\Other\pointer.png" "%HPN%\Media\%HYPCON%\Images\Other\Pointer.png"
"%SEVENZIP%" a -mx=0 "%HPN%\Media\%HYPCON%\Themes\Default.zip" "%GBC%\net\%HYPS%\%HYPCON%\Themes\*"

:ZIPUP
CALL "%GBC%\HSCopyMedia.bat"
"%GBC%\Wbusy.exe" "BuildingThemes" "Complete." /Stop /timeout:1
:HSCREATEEND
exit /b
SET TRANSF=
SET TRANSB=
"%GBC%\wbox.exe" "SelectType" "^What kind of media do you wish to transfer to Hyperspin?^^BoxArt^Boxart will be transferred to Hyperspin^^Video^Videos will bt transferred to Hyperspin.^^Banner^Banner Artwork will bt transferred to Hyperspin as wheels.^^Backdrop^Background images will bt transferred to Hyperspin.^^ALL^Boxart and Backdrops will be transferred to Hyperspin^" "BoxArt;Backdrop;Video;Banner;ALL" /DB=1
if %ERRORLEVEL%==1 goto :FOLDERSONLY
if %ERRORLEVEL%==2 goto :BACKDROPSONLY
if %ERRORLEVEL%==3 goto :VIDEOONLY
if %ERRORLEVEL%==4 goto :BANNERONLY
if %ERRORLEVEL%==5 goto :ALLMEDIA
goto :TRANSEND

:FOLDERSONLY
SET TRANSF=1
goto :SETCHOICE
:BACKDROPSONLY
SET TRANSB=1
goto :SETCHOICE
:BACKDROPSONLY
SET TRANSV=1
goto :SETCHOICE
:BANNERONLY
SET TRANSW=1
goto :SETCHOICE
:VIDEOONLY
SET TRANSV=1
goto :SETCHOICE
:ALLMEDIA
SET TRANSF=1
SET TRANSB=1
SET TRANSW=1
SET TRANSV=1

:SETCHOICE
"%GBC%\wbox.exe" "SelectAll" "Choose a console you wish to convert for use in Hyperspin^or transfer from them all." "Select;All" /DB=1
if %ERRORLEVEL%==1 goto :SELCONSOLES
if %ERRORLEVEL%==2 goto :ALLCONSOLES
goto :TRANSEND


:SELCONSOLES
del /q "%GBC%\curlist.ini"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do echo %%~a>>"%GBC%\curlist.ini"
"%GBC%\Wselect.exe" "%GBC%\curlist.ini" "Select A Console" "set HYPCON=$item" > "%GBC%\transCons.cmd"
if %errorlevel%==0 GOTO :TRANSEND
CALL "%GBC%\transCons.cmd"
SET RJCP=%HYPCON%
pushd "%GBG%\%GAM%\%CONS%\%RJCP%"
if not exist "%HPN%\Media\%RJCP%" call :matchtst
call :copyone
popd
goto :TRANSCOMP

:matchtst
"%GBC%\wbox.exe" "notfound" "%RJCP%^does not exist in your library^or^may be named differently.^^MATCH:match to a console in your library^SKIP:creates the directory and copies the art.^" "Match;Skip"
if %ERRORLEVEL%==1 goto :match
if %ERRORLEVEL%==2 goto :skip
goto :TRANSEND

:skip
set RJCP=
exit /b

:match
del /q "%GBC%\consoles.ini"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do echo %%~a>>"%GBC%\consoles.ini"
"%GBC%\Wselect.exe" "%GBC%\consoles.ini" "%RJCP% is actually:" "set RJCP=$item" > "%GBC%\conschoice.cmd"
if %errorlevel%==0 GOTO :TRANSEND
CALL "%GBC%\conschoice.cmd"
exit /b

:copyone
CALL "%GBC%\HSDirCreate.bat"
if "%TRANSF%" NEQ "1" goto :SETGAMDIR
del /q "%GBC%\artset.ini"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%HPN%\Media\%RJCP%\Images"') do echo.%%~a>>"%GBC%\artset.ini"
echo Make_Directory>>"%GBC%\artset.ini
"%GBC%\Wselect.exe" "%GBC%\artset.ini" "Select BoxArt Directory" "set ARTNUM=$item" > "%GBC%\artSel.cmd"
if %errorlevel%==0 SET ARTNUM=%ARTNUM%
CALL "%GBC%\artSel.cmd"
if "%ARTNUM%"=="" SET ARTNUM=Wheel
if "%ARTNUM%"=="Make_Directory" "%GBC%\Winput.exe" "set ARTNUM=$input" "Enter the name of the BoxArt directory."  > "%GBC%\boxart.cmd"
call "%GBC%\boxart.cmd"
if "%ARTNUM%"=="" SET ARTNUM=Wheel
:SETGAMDIR
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%\%HYPCON%"') do (
SET GAMDIR=%%~a
call :COPYPROC
)
exit /b

:COPYPROC
start "" "%GBC%\wbusy.exe" "TransArt" "Converting %HYPCON%\%GAMDIR% artwork." /marquee
if "%TRANSW%"=="1" "%GBC%\nconvert.exe" -out png -o "%HPN%\Media\%RJCP%\Images\Wheel\%GAMDIR%.png" "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\logo.png"
if "%TRANSW%"=="1" "%GBC%\nconvert.exe" -out png -o "%HPN%\Media\%RJCP%\Images\Wheel\%GAMDIR%.png" "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\banner.png"
if "%TRANSW%"=="1" "%GBC%\nconvert.exe" -out png -o "%HPN%\Media\%RJCP%\Images\Wheel\%GAMDIR%.png" "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\banner.jpg"
if "%TRANSF%"=="1" "%GBC%\nconvert.exe" -resize 275 400 -out png -o "%HPN%\Media\%RJCP%\Images\%ARTNUM%\%GAMDIR%.png" "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\Folder.jpg"
if "%TRANSB%"=="1" "%GBC%\nconvert.exe" -resize %REZX% %REZY% -out png -o "%HPN%\Media\%RJCP%\Images\Backgrounds\%GAMDIR%.png" "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\Backdrop.jpg"
if "%TRANSV%"=="1" copy /Y "%GBC%\net\Videos\%HYPCON%.flv" "%HPN%\Media\Main Menu\Video\%RJCP%.flv"
if "%TRANSV%"=="1" copy /Y "%GBC%\net\Videos\%HYPCON%.mp4" "%HPN%\Media\Main Menu\Video\%RJCP%.mp4"
if "%TRANSV%"=="1" CALL :GVID
"%GBC%\Wbusy.exe" "TransArt" "Complete." /Stop /timeout:1
exit /b

:GVID
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\*.mp4"') do copy /Y "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\%%~a" "%HPN%\Media\%RJCP%\Video\%GAMDIR%.mp4"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\*.flv"') do copy /Y "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\backdrops\%%~a" "%HPN%\Media\%RJCP%\Video\%GAMDIR%.flv"
exit /b

:ALLCONSOLES
cmd /c start "" "%GBC%\Wbusy.exe" "TransArt" "Transferring ALL Artwork"  /marquee
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%HYPS%"') do (
set HYPCON=%%~a
SET RJCP=%%~a
pushd "%GBG%\%GAM%\%CONS%\%%~a"
if not exist "%HPN%\Media\%RJCP%" call :matchtst
call :copyart
popd

)
goto :TRANSCOMP
:copyart
CALL "%GBC%\HSDirCreate.bat"
CALL "%GBC%\HSCopyMedia.bat"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%\%HYPCON%"') do (
SET GAMDIR=%%~a
CALL :COPYART
)
exit /b
:COPYART
if "%TRANSF%"=="1" copy /Y "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\Folder.jpg" "%HPN%\Media\%RJCP%\Images\%ARTNUM%\Folder.jpg" && "%GBC%\nconvert.exe" -resize 275 400 -out png -o "%HPN%\Media\%RJCP%\Images\%ARTNUM%\%GAMDIR%.png" "%HPN%\Media\%RJCP%\Images\%ARTNUM%\Folder.jpg"
if "%TRANSB%"=="1" copy /Y "%GBG%\%GAM%\%CONS%\%HYPCON%\%GAMDIR%\Backdrop.jpg" "%HPN%\Media\%RJCP%\Images\Backgrounds\Backdrop.jpg" && "%GBC%\nconvert.exe" -out png -o "%HPN%\Media\%RJCP%\Images\Backgrounds\%GAMDIR%.png" "%HPN%\Media\%RJCP%\Images\Backgrounds\Backdrop.jpg"
if "%TRANSV%"=="1" copy /Y "%GBC%\net\Videos\%HYPCON%.mp4" "%HPN%\Media\Main Menu\Video\%RJCP%.mp4"
if "%TRANSV%"=="1" copy /Y "%GBC%\net\Videos\%HYPCON%.flv" "%HPN%\Media\Main Menu\Video\%RJCP%.flv"
exit /b

:TRANSCOMP
"%GBC%\Wbusy.exe" "TransArt" "Complete." /Stop /timeout:1
:TRANSEND
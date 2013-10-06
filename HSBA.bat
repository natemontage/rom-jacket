:boxartTrans
SET HSCHOICE=
SET RJCP=
SET SELHS=boxart
for %%A in ("%HPN:~0,2%") do set HSDR=%%~A
for %%A in ("%HPN%\Media") do set HSMETA=%%~A
set HSMN=Media

:MediaSelected
echo ALL>%GBC%\HsMedia.ini"
echo -------->>"%GBC%\HsMedia.ini"

:selhscon
for /f "tokens=* delims= " %%a in ('dir /b /ad "%HSMETA%"') do echo %%~a>>"%GBC%\HsMedia.ini"
"%GBC%\Wselect.exe" "%GBC%\HsMedia.ini" "Select a console to transfer" "set HSCHOICE=$item" > "%GBC%\conchoice.cmd"
if %errorlevel%==0 GOTO :metaout
CALL "%GBC%\conchoice.cmd"
for %%A in ("%HSCHOICE:~0,1%") do set DIRHSCHOICE=%%~A
if /I "%DIRHSCHOICE%"=="-" goto :selhscon
if "%HSCHOICE%"=="All" goto :allboxart
CALL "%GBC%\hsLst.bat"
pushd "%GBG%\%GAM%\%CONS%"
if not exist "%HSCHOICE%" goto :rjcptst
goto :testcomplete

:rjcptst
if not exist "%RJCP%" call :xnotfound
if "%RJCP%"=="" goto :metaout

:testcomplete
popd
del /q "%GBC%\artset.ini"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%HPN%\Media\%HSCHOICE%\Images"') do echo.%%~a>>"%GBC%\artset.ini"
"%GBC%\Wselect.exe" "%GBC%\artset.ini" "Select BoxArt Directory" "set ARTNUM=$item" > "%GBC%\artSel.cmd"
if %errorlevel%==0 SET ARTNUM=Wheel
CALL "%GBC%\artSel.cmd"
if "%ARTNUM%"=="" SET ARTNUM=Artwork3
if "%RJCP%" neq "" CALL "%GBC%\HyperspinBoxart.bat"
goto :metaout

:allboxart
del /q "%GBC%\hsnotfound.ini"
SET ARTNUM=Artwork3
for /f "tokens=* delims= " %%~a in ('dir /b /ad "%HSMETA%"') do (
set HSCHOICE=%%~a
CALL "%GBC%\hsLst.bat"
pushd "%GBG%\%GAM%\%CONS%"
if not exist "%RJCP%" call :matchq
popd
if "%RJCP%" neq "" CALL "%GBC%\hyperSpinBoxart.bat"
)
goto :metaout

:notfound
echo.%RJCP%>"%GBC%\hsnotfound.ini"
exit /b

:xnotfound
echo.%RJCP%>"%GBC%\hsnotfound.ini"
"%GBC%\wbox.exe" "notfound" "%HSCHOICE%^does not exist in your library^or^may be named differently.^^MATCH:match to a console in your library" "Match;Skip"
if %ERRORLEVEL%==1 goto :match
if %ERRORLEVEL%==2 goto :boxartTrans
goto :boxartTrans

:matchq
"%GBC%\wbox.exe" "notfound" "%HSCHOICE%^does not exist in your library^or^may be named differently.^^MATCH:match to a console in your library" "Match;Skip"
if %ERRORLEVEL%==1 goto :match
if %ERRORLEVEL%==2 goto :skip
set RJCP=
exit /b

:skip
set RJCP=
exit /b

:match
del /q "%GBC%\consoles.ini"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do echo %%~a>>"%GBC%\consoles.ini"
"%GBC%\Wselect.exe" "%GBC%\consoles.ini" "%HSCHOICE% is actually:" "set RJCP=$item" > "%GBC%\conschoice.cmd"
if %errorlevel%==0 GOTO :metaout
CALL "%GBC%\conschoice.cmd"
exit /b

:metaout
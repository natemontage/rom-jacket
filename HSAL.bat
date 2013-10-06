:AllTrans
for %%A in ("%HPN:~0,2%") do set HSDR=%%~A
for %%A in ("%HPN%\Media") do set HSMETA=%%~A
set HSMN=Media

:MediaSelected
for /f "tokens=* delims= " %%a in ('dir /b /ad "%HSMETA%"') do (
set HSCHOICE=%%~a
pushd "%GBG%\%GAM%\%CONS%"
CALL "%GBC%\hsLst.bat"
CALL :NWFND
popd
)
exit /b

:NWFND
if not exist "%RJCP%" call :matchq
if "%RJCP%"=="" exit /b
SET ARTNUM=Artwork3
if "%RJCP%" neq ""  CALL "%GBC%\HyperFullTransfer.bat"
exit /b

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
"%GBC%\Wselect.exe" "%GBC%\consoles.ini" "%HSCHOICE% is actually:" "set HSCHOICE=$item" > "%GBC%\conschoice.cmd"
if %errorlevel%==0 GOTO :metaout
CALL "%GBC%\conschoice.cmd"
exit /b
:metaout
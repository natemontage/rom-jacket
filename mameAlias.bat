mkdir "SOURCE"
ATTRIB +H "SOURCE"
move /Y "*.zip" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"
pushd "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE"

:aliasbegin
"%GBC%\wbox.exe" "clones" "Would you like to include clones, duplicates and bootleg games to your library?" "Yes;No" /DB=1 /BW=150 /TM=5
if %ERRORLEVEL%==1 goto :clones
if %ERRORLEVEL%==2 goto :noclones
goto :noclones

:clones
set CLONES=1
goto :procmame
:noclones
set CLONES=0
goto :procmame

:procmame
start "" "%GBC%\wbusy.exe" "MameRoms" "Preparing %ARCD% directory." /marquee
if "%CLONES%"=="1" CALL "%GBC%\CLONES.bat"
if "%CLONES%"=="0" CALL "%GBC%\NOCLONES.bat"
start "" "%GBC%\wbusy.exe" "MameRoms" "%ARCD% directory prepared" /Stop /timeout:1
popd
:quitalias
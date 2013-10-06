"%GBC%\wbox.exe" "Fuzzy" "Would you like to enable fuzzy matching for your artwork migration?" "Yes;No" /DB=2 /TM=5
if %ERRORLEVEL%==1 goto :fuzzy
if %ERRORLEVEL%==2 goto :strict
goto :strict

:fuzzy
SET DLMTR=1
goto :TRANSFER

:strict
SET DLMTR=
goto :TRANSFER

:TRANSFER
set HYPTYPE=BN
start "" "%GBC%\Wbusy.exe" "Transferring" "Migrating Hyperspin Media"  /marquee
if "%RJCP%"=="%MAME%" call "%GBC%\HyperArcade.bat" && goto :complete
if "%RJCP%"=="Sega Naomi" call "%GBC%\HyperNaomi.bat" && goto :complete
if "%RJCP%"=="Sammy Atomiswave" call "%GBC%\HyperAtomiswave.bat" && goto :complete
if "%RJCP%"=="%SEGM3%" call "%GBC%\HyperModel3.bat" && goto :complete
if "%RJCP%"=="%SEGM2%" call "%GBC%\HyperModel2.bat" && goto :complete
if "%RJCP%"=="SNK Neo Geo" call "%GBC%\HyperNeoGeo.bat" && goto :complete
if "%RJCP%"=="Capcom Play System" call "%GBC%\HyperCPS.bat" && goto :complete
if "%RJCP%"=="Capcom Play System II" call "%GBC%\HyperCPS2.bat" && goto :complete
if "%RJCP%"=="Capcom Play System III" call "%GBC%\HyperCPS3.bat" && goto :complete

if "%DLMTR%"=="1" goto :fuzmtch


:realmatch
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%HSMETA%\%HSCHOICE%\Images\Wheel\*.png"') do (
set HSNM=%%~na
CALL :hsna
)
goto :complete
:hsna
pushd "%GBG%\%GAM%\%CONS%\%RJCP%"
for /f "tokens=* delims= " %%i in ("%HSNM%") do (
set RJNM=%%~dpnxi
set DRJNM=%%~nxi
CALL :newname
popd
)
exit /b
:newname
if "%HSNM%" NEQ "%DRJNM%" exit /b
for %%a in ("%HSMETA%\%HSCHOICE%\Images\Wheel\%HSNM%.png") do copy /Y "%%~a" "%RJNM%\Banner.png"
exit /b 

:fuzmtch
for /f "tokens=1 delims=([" %%a in ('dir /b/a-d "%HSMETA%\%HSCHOICE%\Images\Wheel\*.png"') do (
set HSNM=%%~na
CALL :hsnn
)
goto :complete
:hsnn
pushd "%GBG%\%GAM%\%CONS%\%RJCP%"
for /f "tokens=* delims= " %%i in ('dir /b /ad "%HSNM%*"') do (
set RJNM=%%~dpnxi
set DRJNM=%%~nxi
CALL :newnames
popd
)
exit /b
:newnames
if "%HSNM%" NEQ "%DRJNM%" exit /b
for %%a in ("%HSMETA%\%HSCHOICE%\Images\Wheel\%HSNM%*") do copy /Y "%%~a" "%RJNM%\Banner.png"

exit /b 
:complete
start "" "%GBC%\Wbusy.exe" "Transferring" "Complete"  /Stop /Timeout:2
for /f "tokens=* delims= " %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE\neogeo.zip"') do set NGBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d/s "%GBG%\%GAM%\%CONS%\%NEOGE%\SOURCE\neogeo.zip"') do set NGBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d/s "%GBE%\%EMUZ%\%NEORAINE%\neogeo.zip"') do set NGBIOS=%%~a
copy /y "%GBE%\%EMUZ%\%NEORAINE%\%NGBIOS%" "%GBC%\net\%EXECT%\%NEOGE%"
echo.copy /y "%NGBIOS%.bak" "%NGBIOS%">>"%GBC%\bioscpy.ini"
pushd "%GBC%\net\%EXECT%\%NEOGE%"
"%GBC%\fart.exe" "fba.ini" [ROMPTH] "%GBG%\%GAM%\%CONS%\%NEOGE%\SOURCE"
popd
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\Neogeexeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%NEOGE%"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
if /I "%%~xa"==".zip" copy /Y "%GBC%\net\%EXECT%\%NEOGE%\game.ini" "%%~na.ini"
popd
)
exit /b
:addto
SET /A ADDTO+=1
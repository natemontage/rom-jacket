for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%FSUAE%\*a500*.rom"') do set AMIG500=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%FSUAE%\*Kick*1.3.rom"') do set AMIG500=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%FSUAE%\*a1200*.rom"') do set AMIG1200=%%~a
copy /y "%GBE%\%EMUZ%\%FSUAE%\%AMIG1200%" "%GBC%\net\%EXECT%\%AMIG32%"
copy /y "%GBE%\%EMUZ%\%FSUAE%\%AMIG500%" "%GBC%\net\%EXECT%\%AMIG32%"
echo. copy /y "%AMIG500%.bak" "%AMIG500%">>"%GBC%\bioscpy.ini"
echo. copy /y "%AMIG1200%.bak" "%AMIG1200%">>"%GBC%\bioscpy.ini"
pushd "%GBC%\net\%EXECT%\%CAMIG%"
"%GBC%\fart.exe" "Config.fs-uae" [REZY] %DREZY%
"%GBC%\fart.exe" "Config.fs-uae" [REZX] %DREZX%
popd

for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\Camigexeject.bat"
)
exit /b

:injext
pushd "%GBC%\net\%EXECT%\%CAMIG%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".adf"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
if /I "%%~xa"==".amig"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
if /I "%%~xa"==".adz"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
if /I "%%~xa"==".ipf"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
if /I "%%~xa"==".fdi"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
if /I "%%~xa"==".zip"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
popd
)
exit /b
:addto
SET /A ADDTO+=1
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%MEDN%\*.pce"') do set PCCDBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%MEDN%\*CD-ROM System*.pce"') do SET PCCDBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%MEDN%\*Super CD-ROM2 System*.pce"') do SET PCCDBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%MEDN%\*TurboGrafx CD*.pce"') do SET PCCDBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%MEDN%\SYSCARD3.PCE"') do SET PCCDBIOS=%%~a
copy /y "%GBE%\%EMUZ%\%MEDN%" "%GBC%\net\%EXECT%\%CSTCONS%"
echo.copy /y "%PCCDBIOS%.bak" "%PCCDBIOS%">>"%GBC%\bioscpy.ini
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\TgCDexeject.bat"
)
exit /b

:injext
pushd "%GBC%\net\%EXECT%\%TGCD%"
"%GBC%\fart.exe" "*.bat" [PCCDBIOS] "%PCCDBIOS%"
for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".cue" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cue
)
for /f "delims=" %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".iso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] iso
if /I "%%~xa"==".img" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] img
if /I "%%~xa"==".cdi" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] nrg
if /I "%%~xa"==".mds" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] mds
popd
)
exit /b
:addto
SET /A ADDTO+=1
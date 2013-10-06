pushd "%GBC%\net\%EXECT%\%FNAM%"
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%MEDN%\Famicom*.bin"') do SET FAMBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%MEDN%\Famicom*.bin"') do SET FAMBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%MEDN%\*diskys*.rom"') do SET FAMBIOS=%%~a
copy /y "%GBE%\%EMUZ%\%MEDN%\%FAMBIOS%" "%GBC%\net\%EXECT%\%CSTCONS%"
echo.copy /y "%FAMBIOS%.bak" "%FAMBIOS%">>"%GBC%\bioscpy.ini"
"%GBC%\fart.exe" "%FNAMTP%.xml" [EMUPTH] "[EMUPTH]"
"%GBC%\fart.exe" "%VFNAM%.ini" [EMUPTH] "[EMUPTH]"
"%GBC%\fart.exe" "%MEDN%*.cfg" [MEDN] "[EMUPTH]"
popd

for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\NFAMexeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%FNAM%"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".unf" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] unf
if /I "%%~xa"==".nes" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] nes
if /I "%%~xa"==".fam" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fam
if /I "%%~xa"==".fds" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fds
if /I "%%~xa"==".bin" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
if /I "%%~xa"==".zip" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] zip
if /I "%%~xa"==".unf" "*.bat" SET ROMF=%%~nxa
if /I "%%~xa"==".nes" "*.bat" SET ROMF=%%~nxa
if /I "%%~xa"==".fam" "*.bat" SET ROMF=%%~nxa
if /I "%%~xa"==".fds" "*.bat" SET ROMF=%%~nxa
if /I "%%~xa"==".bin" "*.bat" SET ROMF=%%~nxa
if /I "%%~xa"==".zip" "*.bat" SET ROMF=%%~nxa
popd
)
exit /b
:addto
SET /A ADDTO+=1
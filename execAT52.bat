pushd "%GBC%\net\%EXECT%\%AT52%"
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%ATRI%\5200.rom"') do SET AT52BIOS=%%~a
copy /y "%GBE%\%EMUZ%\%ATRI%\%AT52BIOS%" "%GBC%\net\%EXECT%\%AT52%"
echo. copy /y "%AT52BIOS%.bak" "%AT52BIOS%">>"%GBC%\bioscpy.ini"

popd
for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\AT52exeject.bat"
)
exit /b

:injext
pushd "%GBC%\net\%EXECT%\%AT52%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if "%AT52BIOS%" NEQ "" "%GBC%\fart.exe" "*.bat" [BIOS] "%AT52BIOS%"
if /I "%%~xa"==".a52"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] a52
if /I "%%~xa"==".bin"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
if /I "%%~xa"==".rom"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] rom
if /I "%%~xa"==".a52" SET AT52ROM=%%~nxa
if /I "%%~xa"==".bin" SET AT52ROM=%%~nxa
if /I "%%~xa"==".rom" SET AT52ROM=%%~nxa
popd
)
exit /b
:addto
SET /A ADDTO+=1
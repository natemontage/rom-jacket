for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%FSUAE%\*CD32*Ext*.rom"') do set CD32EXT=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%FSUAE%\*Ext*40.60*.rom"') do set CD32EXT=%%~a
for /f "tokens=* delims= " %%a in ('dir /
b/a-d "%GBE%\%EMUZ%\%FSUAE%\*Ext*CD32*.rom"') do set CD32EXT=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%FSUAE%\*40.60*Extended*.rom"') do set CD32EXT=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%FSUAE%\*Extended*40.60*.rom"') do set CD32EXT=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%FSUAE%\*KS*CD32*"') do set CD32BIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%FSUAE%\*Kick*CD32*"') do set CD32BIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%FSUAE%\*CD32*Kick*"') do set CD32BIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%FSUAE%\*40.60*Kick*"') do set CD32BIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%FSUAE%\*Kick*40.60*"') do set CD32BIOS=%%~a

pushd "%GBC%\net\%EXECT%\%AMIG32%"
"%GBC%\fart.exe" "Config.fs-uae" [KICKSTARTPTH] "[EMUPTH]\%CD32BIOS%"
"%GBC%\fart.exe" "Config.fs-uae" [EXTENDEDPTH] "[EMUPTH]\%CD32EXT%"
copy /y "%GBE%\%EMUZ%\%FSUAE%\%CD32BIOS%" "%GBC%\net\%EXECT%\%AMIG32%"
copy /y "%GBE%\%EMUZ%\%FSUAE%\%CD32EXT%" "%GBC%\net\%EXECT%\%AMIG32%"
echo. copy /y "%CD32BIOS%.bak" "%CD32BIOS%">>"%GBC%\bioscpy.ini"
echo. copy /y "%CD32EXT%.bak" "%CD32EXT%">>"%GBC%\bioscpy.ini"

popd

for /d %%g IN ("%CSTM%") DO (
  set CSTM=%%~g
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\AMIG32exeject.bat"
  popd
  )
  exit /b
  
:injext
pushd "%GBC%\net\%EXECT%\%AMIG32%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".cue"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
)
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".iso"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
if /I "%%~xa"==".img"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
if /I "%%~xa"==".bin"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
if /I "%%~xa"==".cdi"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
if /I "%%~xa"==".nrg"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
if /I "%%~xa"==".mdf"call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] fs-uae
pop
)
exit /b
:addto
SET /A ADDTO+=1 
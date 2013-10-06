for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%FOURDO%\*3DO*.bin"') do set BIOS3DO=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%FOURDO%\bios.rom"') do set BIOS3DO=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%FOURDO%\Goldstar.bin"') do set BIOS3DO=%%~a

pushd "%GBC%\net\%EXECT%\%P3DO%"
"%GBC%\fart.exe" "FourDO.Settings" [3DOBIOS] "BIOS\%BIOS3DO%"
"%GBC%\fart.exe" "FourDO.Settings" [EMUL] "[EMUPTH]"
"%GBC%\fart.exe" "FourDO.Settings" [BIOS3DO] "%BIOS3DO%"
copy /y "%GBE%\%EMUZ%\%FOURDO%\%BIOS3DO%" "%GBC%\net\%EXECT%\%P3DO%"
echo.copy /y "%BIOS3DO%.bak" "%BIOS3DO%">>"%GBC%\bioscpy.ini
echo.mkdir "Settings">>"%GBC%\bioscpy.ini
echo.mkdir "Saves">>"%GBC%\bioscpy.ini
popd

for /d %%g IN ("%CSTM%") DO (
set CSTM=%%~g
set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\P3DOexeject.bat"
)
exit /b
:injext
pushd "%GBC%\net\%EXECT%\%P3DO%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".iso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] iso
if /I "%%~xa"==".img" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] img
if /I "%%~xa"==".bin" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
if /I "%%~xa"==".cdi" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] mdf
popd
)
exit /b
:addto
SET /A ADDTO+=1
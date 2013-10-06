for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%PSX%\BIOS\scph*.bin"') do set PS1BIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%PSX%\BIOS\scph1001.bin"') do set PS1BIOS=%%~a
copy /y "%GBE%\%EMUZ%\%PSX%\BIOS\%PS1BIOS%" "%GBC%\net\%EXECT%\%PS1%"
echo.copy /y "%PS1BIOS%.bak" "BIOS\%PS1BIOS%">>"%GBC%\bioscpy.ini"
pushd "%GBC%\net\%EXECT%\%PS1%"
"%GBC%\inifile.exe" "%PSX%.ini" [BIOS] PS1=bios\%PS1BIOS%
Card2=
popd
for /d %%g IN ("%CSTM%") DO (
  %PS1%\%PSX%.ini" "%CD%"
 set CSTM=%%~g
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\Ps1exeject.bat"
  )
  exit /b
:injext
pushd "%GBC%\net\%EXECT%\%PS1%"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%CSTM%"') do (
if /I "%%~xa"==".iso" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] iso
if /I "%%~xa"==".img" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] img
if /I "%%~xa"==".bin" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] bin
if /I "%%~xa"==".cdz" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cdz
if /I "%%~xa"==".cdi" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] mdf
if /I "%%~xa"==".cue" call :addto && "%GBC%\fart.exe" "%GBC%\net\%EXECT%\%CSTCONS%\*.bat" [EXT] cue
popd
)
exit /b
:addto
SET /A ADDTO+=1
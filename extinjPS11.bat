for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PSX%\BIOS\scph*.bin"') do set PS1BIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%PSX%\BIOS\scph1001.bin"') do set PS1BIOS=%%~a
pushd "%GBC%\net\%LNCH%\%PS1%"
"%GBC%\inifile.exe" "%PSX%.ini" [BIOS] PS1=bios\%PS1BIOS%
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%PSX%.ini" [Paths] SaveStatePath=saves
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%PSX%.ini" [Paths] MemoryCardPath=cards
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%PSX%.ini" [Paths] CDImagePath=cdimages
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%PSX%.ini" [Paths] ScreenShotsPath=screenshots
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%PSX%.ini" [Cards] Card1=Card1.bin
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%PSX%.ini" [Cards] Card2=Card2.bin
if "%GGOFF%"=="1" copy /y "%PSX%.ini" "%GBE%\%EMUZ%\%PSX%"
Card2=
popd
for /d %%g IN (*) DO (
  if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%PS1%\%PSX%.ini" "%%~g"
 set CSTM=%%~g
  pushd "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
  if "%GGOFF%"=="1" copy /y "%GBC%\net\%LNCH%\%PS1%\%PSX%.ini" "%GBE%\%EMUZ%\%PSX%"
  exit /b
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.iso" "*.img" "*.bin" "*.cdz" "*.mdf" "*.cue"') do (
SET ROMN=%%~a
SET ROMD=%%~na
set ROME=%%~xa
set ROMF=%%~nxa
CALL :EACHROM
)
exit /b
:EACHROM
if exist "%ROMD%.bat" CALL :ROME
if not exist "%ROMD%.bat" CALL :ROMD
exit /b

:ROMD
if "%RECONF%"=="1" copy "..\zz.bat" "%CD%\%ROMD%.bat"
"%GBC%\fart.exe" "%ROMD%.bat" [ROMNAME] "%ROMN%"
exit /b

:ROME
if "%RECONF%"=="1" copy "..\zz.bat" "%CD%\%ROME%.bat"
"%GBC%\fart.exe" "%ROME%.bat" [ROMNAME] "%ROMN%"
exit /b
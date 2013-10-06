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
  call :injext
CALL "%GBC%\Ps1inject.bat"
popd
  )
  if "%GGOFF%"=="1" copy /y "%GBC%\net\%LNCH%\%PS1%\%PSX%.ini" "%GBE%\%EMUZ%\%PSX%"
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d') do (
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".img" "%GBC%\fart.exe" "*.bat" [EXT] img
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".cdz" "%GBC%\fart.exe" "*.bat" [EXT] cdz
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] mdf
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
)
:skp
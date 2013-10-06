for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\pcfx*.bin"') do SET PCFXBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\pcfx*.rom"') do SET PCFXBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\pcfxbios.bin"') do SET PCFXBIOS=%%~a
for /d %%g IN (*) DO (
  if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%PCFX%\%MEDN%*.cfg" "%%~g"
  set CSTM=%%~g
  pushd "%%~g"
  call :injext
CALL "%GBC%\Pcfxinject.bat"
popd
  )
  exit /b
:injext
"%GBC%\fart.exe" "*.bat" [PCFXBIOS] "%PCFXBIOS%"
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
)
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".img" "%GBC%\fart.exe" "*.bat" [EXT] img
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] mds
)
:skp
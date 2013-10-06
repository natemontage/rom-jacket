for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FOURDO%\*3DO*.bin"') do set BIOS3DO=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FOURDO%\bios.rom"') do set BIOS3DO=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%FOURDO%\Goldstar.bin"') do set BIOS3DO=%%~a

pushd "%GBC%\net\%LNCH%\%P3DO%"
"%GBC%\fart.exe" "FourDO.Settings" [3DOBIOS] "BIOS\%BIOS3DO%"
"%GBC%\fart.exe" "FourDO.Settings" [EMUPTH] "%GBE%\%EMUZ%\%FOURDO%"
"%GBC%\fart.exe" "FourDO.Settings" [BIOS3DO] "%BIOS3DO%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "FourDO.Settings" [ROMPTH] --remove
popd

for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%P3DO%\FourDO.Settings" "%%~g"
  set CSTM=%%~g
  pushd "%%~g"
  call :injext
CALL "%GBC%\P3DOinject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".img" "%GBC%\fart.exe" "*.bat" [EXT] img
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] mdf
)
:skp
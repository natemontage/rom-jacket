
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\*.pce"') do set PCCDBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\*CD-ROM System*.pce"') do SET PCCDBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\*Super CD-ROM2 System*.pce"') do SET PCCDBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\*TurboGrafx CD*.pce"') do SET PCCDBIOS=%%~a
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\SYSCARD3.PCE"') do SET PCCDBIOS=%%~a

for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%TGCD%\%MEDN%*.cfg" "%%~g"
set CSTM=%%~g
pushd "%%~g"
  call :injext
CALL "%GBC%\TgCDinject.bat"
popd
  )
  exit /b
:injext
"%GBC%\fart.exe" "*.bat" [PCCDBIOS] "%PCCDBIOS%"
call "%GBC%\CreateGamSubDir.bat"
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".cue" "%GBC%\fart.exe" "*.bat" [EXT] cue
)
for /f "delims=" %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".img" "%GBC%\fart.exe" "*.bat" [EXT] img
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
if /I "%%~xa"==".mds" "%GBC%\fart.exe" "*.bat" [EXT] mds
)
:skp
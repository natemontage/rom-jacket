pushd "%GBC%\net\%LNCH%\%MSX%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "%BMSX%.ini" [ROMPTH] "%GBE%\%EMUZ%\%BMSX%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" copy /y "%BMSX%.ini" "%GBE%\%EMUZ%\%BMSX%"
if "%GGOFF%"=="1" copy /Y "*.config" "%GBE%\%EMUZ%\%BMSX%\Keyboard Config"
popd
for /d %%g IN (*) DO (
  set CSTM=%%~g
  if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%MSX%\%BMSX%.ini" "%%~g"
  if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%MSX%\*.conifg" "%%~g"
  pushd "%%~g"
  call :injext
CALL "%GBC%\MSXinject.bat"
popd
  )
exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".dsk" "%GBC%\fart.exe" "*.bat" [EXT] dsk
if /I "%%~xa"==".dsk" "%GBC%\fart.exe" "*.bat" [TYP] diskA
if /I "%%~xa"==".mx1" "%GBC%\fart.exe" "*.bat" [EXT] mx1	
if /I "%%~xa"==".mx1" "%GBC%\fart.exe" "*.bat" [TYPE] rom1
if /I "%%~xa"==".mx2" "%GBC%\fart.exe" "*.bat" [EXT] mx2
if /I "%%~xa"==".mx2" "%GBC%\fart.exe" "*.bat" [TYP] rom1
if /I "%%~xa"==".rom" "%GBC%\fart.exe" "*.bat" [EXT] rom
if /I "%%~xa"==".rom" "%GBC%\fart.exe" "*.bat" [TYP] rom1
if /I "%%~xa"==".ri" "%GBC%\fart.exe" "*.bat" [EXT] ri
if /I "%%~xa"==".ri" "%GBC%\fart.exe" "*.bat" [TYP] diskA
if /I "%%~xa"==".sc" "%GBC%\fart.exe" "*.bat" [EXT] sc
if /I "%%~xa"==".sc" "%GBC%\fart.exe" "*.bat" [TYP] rom1
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [TYP] rom1
if /I "%%~xa"==".di1" "%GBC%\fart.exe" "*.bat" [EXT] di1
if /I "%%~xa"==".di1" "%GBC%\fart.exe" "*.bat" [TYP] diskA
if /I "%%~xa"==".di2" "%GBC%\fart.exe" "*.bat" [EXT] di2	
if /I "%%~xa"==".di2" "%GBC%\fart.exe" "*.bat" [TYP] diskA	
if /I "%%~xa"==".360" "%GBC%\fart.exe" "*.bat" [EXT] 360	
if /I "%%~xa"==".360" "%GBC%\fart.exe" "*.bat" [TYP] diskA	
if /I "%%~xa"==".720" "%GBC%\fart.exe" "*.bat" [EXT] 720	
if /I "%%~xa"==".720" "%GBC%\fart.exe" "*.bat" [TYP] diskA
if /I "%%~xa"==".sf7" "%GBC%\fart.exe" "*.bat" [EXT] sf7
if /I "%%~xa"==".sf7" "%GBC%\fart.exe" "*.bat" [TYP] diskA
if /I "%%~xa"==".cas" "%GBC%\fart.exe" "*.bat" [EXT] cas
if /I "%%~xa"==".cas" "%GBC%\fart.exe" "*.bat" [TYP] cas
)

:skp
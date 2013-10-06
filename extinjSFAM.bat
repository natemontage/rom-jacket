pushd "%GBC%\net\%LNCH%\%SFAM%"
"%GBC%\fart.exe" "snesgt.ini" [REZX] %DREZX%
"%GBC%\fart.exe" "snesgt.ini" [REZY] %DREZY%
"%GBC%\fart.exe" "zsnesw.cfg" [EMUPTH] "%GBE%\%EMUZ%\%ZSNS%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" "cvidmode=19" "cvidmode=2"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" ".sstates" --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" ".snaps" --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" ".Mem" --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" [ROMPTH] --remove
if "%GGOFF%"=="1" "%GBC%\fart.exe" "zsnesw.cfg" \ \\
if "%GGOFF%"=="1" copy /y "zsnesw.cfg" "%EMUZ%\%EMUZ%\%ZSNS%"
if "%GGOFF%"=="1" copy /y "snesgt.ini" "%EMUZ%\%EMUZ%\%SNSGT%\snesgt.ini"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%SFAM%\*.cfg" "%%~g"
 set CSTM=%%~g
  pushd "%%~g"
CALL "%GBC%\SFAMinject.bat"
  call :injext
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".smc" "%GBC%\fart.exe" "*.bat" [EXT] smc
if /I "%%~xa"==".sfc" "%GBC%\fart.exe" "*.bat" [EXT] sfc
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
:skp
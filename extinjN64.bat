pushd "%GBC%\net\%LNCH%\%N64%"
"%GBC%\fart.exe" "Project64.cfg" [REZX] %DREZX%
"%GBC%\fart.exe" "Project64.cfg" [REZY] %DREZY%
"%GBC%\fart.exe" "Project64.cfg" [EMUPTH] "%GBE%\%EMUZ%\%PJ64%"
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Directory] Instant Save=%GBE%\%EMUZ%\%PJ64%\Save\
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Directory] Plugin=%GBE%\%EMUZ%\%PJ64%\Plugin\
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Directory] Save=%GBE%\%EMUZ%\%PJ64%\Save\
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Directory] Snap Shot=%GBE%\%EMUZ%\%PJ64%\Screenshots\
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Directory] Texture Dir=%GBE%\%EMUZ%\%PJ64%\Save\
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "Project64.cfg" [Recent File] Recent Rom 0=
if "%GGOFF%"=="1" copy /y "Project64.cfg" "%GBE%\%EMUZ%\%PJ64%\Config"
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%N64%\*.cpf" "%%~g"
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%N64%\*.ini" "%%~g"
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%N64%\*.cfg" "%%~g"
 set CSTM=%%~g
  pushd "%%~g"
  call :injext
CALL "%GBC%\N64inject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".pal" SET ROMNM=%%~a
if /I "%%~xa"==".usa" SET ROMNM=%%~a
if /I "%%~xa"==".u64" SET ROMNM=%%~a
if /I "%%~xa"==".j64" SET ROMNM=%%~a
if /I "%%~xa"==".v64" SET ROMNM=%%~a
if /I "%%~xa"==".n64" SET ROMNM=%%~a
if /I "%%~xa"==".z64" SET ROMNM=%%~a
if /I "%%~xa"==".zip" SET ROMNM=%%~a
if /I "%%~xa"==".pal" "%GBC%\fart.exe" "*.bat" [EXT] pal
if /I "%%~xa"==".usa" "%GBC%\fart.exe" "*.bat" [EXT] usa
if /I "%%~xa"==".u64" "%GBC%\fart.exe" "*.bat" [EXT] u64
if /I "%%~xa"==".j64" "%GBC%\fart.exe" "*.bat" [EXT] j64
if /I "%%~xa"==".v64" "%GBC%\fart.exe" "*.bat" [EXT] v64
if /I "%%~xa"==".n64" "%GBC%\fart.exe" "*.bat" [EXT] n64
if /I "%%~xa"==".z64" "%GBC%\fart.exe" "*.bat" [EXT] z64
if /I "%%~xa"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
)
:skp
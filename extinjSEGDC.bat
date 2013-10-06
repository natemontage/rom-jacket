pushd "%GBC%\net\%LNCH%\%SEGDC%"
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%NULLDC%.cfg" [ImageReader] LoadDefaultImage=0
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%NULLDC%.cfg" [ImageReader] DefaultImage=
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%NULLDC%.cfg" [ImageReader] LastImage==
popd
for /d %%g in (*) do (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%SEGDC%\%NULLDC%.cfg" "%%~g"
set CSTM=%%~g
Pushd "%%~g"
call :injext
CALL "%GBC%\SEGDCinject.bat"
popd
)
if "%GGOFF%"=="1" copy /y "%NULLDC%.cfg" "%GBE%\%EMUZ%\%NULLDC%"
exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
set DCROM=%%~a
if /I "%%~xa"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%%~xa"==".mdf" "%GBC%\fart.exe" "*.bat" [EXT] mdf
if /I "%%~xa"==".mds" "%GBC%\fart.exe" "*.bat" [EXT] mds
if /I "%%~xa"==".nrg" "%GBC%\fart.exe" "*.bat" [EXT] nrg
if /I "%%~xa"==".gdi" "%GBC%\fart.exe" "*.bat" [EXT] gdi
if /I "%%~xa"==".chd" "%GBC%\fart.exe" "*.bat" [EXT] chd
if /I "%%~xa"==".iso" "%GBC%\fart.exe" "*.bat" [EXT] iso
if /I "%%~xa"==".cdi" CALL "%GBC%\Segdcinject.bat"
if /I "%%~xa"==".mdf" CALL "%GBC%\Segdcinject.bat"
if /I "%%~xa"==".mds" CALL "%GBC%\Segdcinject.bat"
if /I "%%~xa"==".nrg" CALL "%GBC%\Segdcinject.bat"
if /I "%%~xa"==".gdi" CALL "%GBC%\Segdcinject.bat"
if /I "%%~xa"==".chd" CALL "%GBC%\Segdcinject.bat"
if /I "%%~xa"==".iso" CALL "%GBC%\Segdcinject.bat"
)
:skp
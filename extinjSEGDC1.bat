pushd "%GBC%\net\%LNCH%\%SEGDC%"
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%NULLDC%.cfg" [ImageReader] LoadDefaultImage=0
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%NULLDC%.cfg" [ImageReader] DefaultImage=
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "%NULLDC%.cfg" [ImageReader] LastImage==
popd
for /d %%g in (*) do (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%SEGDC%\%NULLDC%.cfg" "%%~g"
set CSTM=%%~g
Pushd "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
if "%GGOFF%"=="1" copy /y "%NULLDC%.cfg" "%GBE%\%EMUZ%\%NULLDC%"

exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*cdi" "*.mdf" "*.nrg" "*.mds" "*.gdi" "*.chd" "*.iso"') do (
SET ROMN=%%~a
SET ROMD=%%~na
set ROME=%%~xa
set DCROM=%%~nxa
set ROMF=%%~nxa
CALL :EACHROM
if "%%~xa" NEQ "" CALL "%GBC%\Segdcinject.bat"
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
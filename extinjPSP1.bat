pushd "%GBC%\net\%LNCH%\%PSP%"
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "ppsspp.ini" [General] AutoLoadLast=False 
if "%GGOFF%"=="1" "%GBC%\inifile.exe" "ppsspp.ini" [General] Recent = 
if "%GGOFF%"=="1" copy /y "Settings.properties" "%GBE%\%EMUZ%\%JPCSP%"
if "%GGOFF%"=="1" copy /y "ppsspp.ini" "%GBE%\%EMUZ%\%PSSP%\ppsspp.ini"
popd

for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%PSP%\Settings.properties" "%%~g\Settings.properties"
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%PSP%\ppsspp "%%~g\ppsspp.ini"
set CSTM=%%~g
pushd "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.cso" "*.iso" "*.jso" "*.bin" "*.pbp"') do (
SET ROMN=%%~a
SET ROMD=%%~na
set ROME=%%~xa
set PSPROM=%%~nxa
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
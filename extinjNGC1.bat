pushd "%GBC%\net\%LNCH%\%NGC%"
if "%DXV%" EQU "11" "%GBC%\inifile.exe" "%DOLPH%.ini" [Core] GFXBackend=Direct3D11
popd
for /d %%g IN (*) DO (
mkdir "%%~g\.Profiles"
attrib +H "%%~g\.Profiles"
mkdir "%%~g\.Mem"
attrib +H "%%~g\.Mem"
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NGC%\*.ini" "%%~g"
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NGC%\GCP*.ini" "%%~g\.Profiles"
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%NGC%\*.raw" "%%~g\.Mem"
 SET NGCROM=
 set CSTM=%%~g
  pushd "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.iso" "*.gcm"') do (
SET ROMN=%%~a
SET ROMD=%%~na
set ROME=%%~xa
set ROMF=%%~nxa
set NGCROM=%%~nxa
set ROM=%%~nxa
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
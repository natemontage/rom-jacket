if "%GGOFF%"=="1" REG ADD "HKEY_CURRENT_USER\Software\ShinyTechnologies\Nostalgia" /f /v "Capture Folder" /t REG_SZ /d "%GBE%\%EMUZ%\%NOSTL%\captures"
if "%GGOFF%"=="1" REG ADD "HKEY_CURRENT_USER\Software\ShinyTechnologies\Nostalgia" /f /v "Hide on Run" /t REG_DWORD /d 1
if "%GGOFF%"=="1" REG ADD "HKEY_CURRENT_USER\Software\ShinyTechnologies\Nostalgia" /f /v "Images Folder" /t REG_SZ /d "%GBE%\%EMUZ%\%NOSTL%\images"
if "%GGOFF%"=="1" REG ADD "HKEY_CURRENT_USER\Software\ShinyTechnologies\Nostalgia" /f /v "Manuals Folder" /t REG_SZ /d "%GBE%\%EMUZ%\%NOSTL%\manuals"
if "%GGOFF%"=="1" REG ADD "HKEY_CURRENT_USER\Software\ShinyTechnologies\Nostalgia" /f /v "Rom Folder" /t REG_SZ /d "%GBE%\%EMUZ%\%NOSTL%\roms"
if "%GGOFF%"=="1" REG ADD "HKEY_CURRENT_USER\Software\ShinyTechnologies\Nostalgia" /f /v "SaveGame Folder" /t REG_SZ /d "%GBE%\%EMUZ%\%NOSTL%\saves"
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%INTEL%\input.cfg" "%GBE%\%EMUZ%\%NOSTL%"
for /d %%g IN (*) DO (
  set CSTM=%%~g
  pushd "%%~g"
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%INTEL%\input.cfg" "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.int" "*.itv" "*.rom" "*.bin"') do (
SET ROMN=%%~a
SET ROMD=%%~na
set ROME=%%~xa
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
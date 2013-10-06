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
  call :injext
CALL "%GBC%\Intelinject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
  for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".int" "%GBC%\fart.exe" "*.bat" [EXT] int
if /I "%%~xa"==".itv" "%GBC%\fart.exe" "*.bat" [EXT] itv
if /I "%%~xa"==".rom" "%GBC%\fart.exe" "*.bat" [EXT] rom
if /I "%%~xa"==".bin" "%GBC%\fart.exe" "*.bat" [EXT] bin
)

:skp
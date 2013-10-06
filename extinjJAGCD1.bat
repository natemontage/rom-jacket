for /d %%g IN (*) DO (
set CSTM=%%~g
  pushd "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.iso" "*.cdi" "*.bin" "*.cue" "*.j64" "*.jag" "*.img" "*.nrg" "*.mdf"') do (
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
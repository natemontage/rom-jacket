set TOUHLNK=
for /d %%g IN (*) DO (
  set CSTM=%%~g
  pushd "%%~g"
CALL "%GBC%\Touhouinject.bat"
call :rominj
if "%TOUHLNK%" NEQ "" CALL "%GBC%\touhou2inject.bat"
popd
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.fdi" "*.hdi"') do (
SET ROMN=%%~a
SET ROMD=%%~na
set ROME=%%~xa
set ROMF=%%~nxa
CALL :EACHROM
)
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.lnk"') do (
SET ROMN=%%~a
SET ROMD=%%~na
set ROME=%%~xa
set TOUHLNK=%%~nxa
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
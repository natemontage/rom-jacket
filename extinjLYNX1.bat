pushd "%GBC%\net\%LNCH%\%LYNX%"
"%GBC%\fart.exe" "%MEDN%*.cfg" [MEDN] "%GBE%\%EMUZ%\%MEDN%"
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBE%\%EMUZ%\%MEDN%\*lynxboot*"') do set LYNXBIOS=%%~a

popd

for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%LYNX%\%MEDN%*.cfg" "%%~g"
 set CSTM=%%~g
  pushd "%%~g"
call :rominj
if "%RECONF%"=="1" CALL "%GBC%\%SHRTN%inject.bat"
popd
)
exit /b

:rominj
"%GBC%\fart.exe" "*.bat" [LYNXBIOS] "%LYNXBIOS%"
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.zip" "*.lnx"') do (
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
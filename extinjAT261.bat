for /d %%g IN (*) DO (
pushd "%GBC%\net\%LNCH%\%AT26%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "stella.ini" [ROMPTH] [EMUPTH]
"%GBC%\fart.exe" "stella.ini" [EMUPTH] "%GBE%\%EMUZ%\%STLA%"
if "%RECONF%"=="1" copy /Y "stella.ini" "%%~g\stella.ini"
popd
set CSTM=%%~g
pushd "%%~g"
call :rominj
CALL "%GBC%\%SHRTN%inject.bat"
popd
if "%RECONF%"=="1" CALL "%GBC%\AT26inject.bat"
popd
)
if "%GGOFF%"=="1" copy /Y "%GBC%\net\%LNCH%\%AT26%\stella.ini" "%GBE%\%EMUZ%\%STLA%"
exit /b
)
exit /b

:rominj
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /s/b/a-d-h "*.z26" "*.a26" "*.bin" "*.rom"') do (
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
copy "..\zz.bat" "%CD%"
rename "zz.bat" "%ROMD%.bat"
"%GBC%\fart.exe" "%ROMD%.bat" [ROMNAME] "%ROMN%"
exit /b

:ROME
copy "..\zz.bat" "%CD%"
rename "zz.bat" "%ROME%.bat"
"%GBC%\fart.exe" "%ROME%.bat" [ROMNAME] "%ROMN%"
exit /b
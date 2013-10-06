set TOUHLNK=
for /d %%g IN (*) DO (
  set CSTM=%%~g
  pushd "%%~g"
CALL "%GBC%\Touhouinject.bat"
  call :injext
if "%TOUHLNK%" NEQ "" CALL "%GBC%\touhou2inject.bat"
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".fdi" "%GBC%\fart.exe" "*.bat" [TOUHUFDD] "%GBG%\%GAM%\%CONS%\%TOUHU%\%CSTM%\%TOUHUFDD%"
if /I "%%~xa"==".hdi" "%GBC%\fart.exe" "*.bat" [TOUHUHDD] "%GBG%\%GAM%\%CONS%\%TOUHU%\%CSTM%\%TOUHUHDD%"
if /I "%%~xa"==".lnk" SET TOUHLNK=%%~a
)
:skp
set TOUHLNK=
for /d %%g IN (*) DO (
  set CSTM=%%~g
CALL "%GBC%\Touhuinject.bat"
  pushd "%%~g"
  call :injext
popd 
 )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
if /I "%%~xa"==".lnk" set TOUHLNK=%%~a
if /I "%%~xa"==".lnk" CALL "%GBC%\touhou2inject.bat"
 )
:skp
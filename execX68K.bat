"%SEVENZIP%" e -y "%GBC%\net\M71\M71.7z" -o"%GBC%\net\%EXECT%\%CSTCONS%"
"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBC%\net\%EXECT%\%CSTCONS%" "%CEMU%\%EMEXE%.exe"
pushd "%GBE%\net\%EXECT%\%X68K%"
copy /y "*.rom"  "%GBC%\net\%EXECT%\%CSTCONS%" 
for /f "tokens=* delims= " %%a in ('dir /b/a-d "%GBE%\%EMUZ%\%CEMU%\*.bin" "%GBE%\%EMUZ%\%CEMU%\*.dat" "%GBE%\%EMUZ%\%CEMU%\*.rom"') do echo. copy /y "%%~a.bak" "roms">>"%GBC%\prefxe.ini"
popd
for /d %%g IN ("%CSTM%") DO (
  set CSTM=%%~g
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
CALL "%GBC%\X68Kexeject.bat"
  )
  exit /b
:injext
:skp
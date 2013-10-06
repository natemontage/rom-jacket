"%SEVENZIP%" e -y "%GBC%\net\%EMEX%\%EMEX%.7z" -o"%GBC%\net\%EXECT%\%CSTCONS%" "%XTURB%\X1.exe"
for /d %%g IN (*) DO (
  set CSTM=%%~g
  set /A ADDTO=0
call :injext
if "%ADDTO%" GEQ "2" set FNDMORE=1
popd
  )
  exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
CALL "%GBC%\SHRPX1exeject.bat"
)
exit /b
:addto
SET /A ADDTO+=1
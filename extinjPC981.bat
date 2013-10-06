for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%PC98%\np21nt.ini" "%%~g"
  set CSTM=%%~g
  pushd "%%~g"
  call :injext
  CALL "%GBC%\PC98inject.bat"
  popd
  )
exit /b

:injext
call "%GBC%\CreateGamSubDir.bat"
CALL "%GBC%\PC98inject.bat"
)
:skp
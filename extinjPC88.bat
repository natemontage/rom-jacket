pushd "%GBC%\net\%LNCH%\%PC88%\"
"%GBC%\inifile.exe" "m88.ini" [M88p2 for Windows] Directory=%GBE%\%EMUZ%\%M88%
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%PC88%\m88.ini" "%%~g"
  set CSTM=%%~g
  pushd "%%~g"
  call :injext
  CALL "%GBC%\PC88inject.bat"
  popd
  )
exit /b

:injext
call "%GBC%\CreateGamSubDir.bat"
CALL "%GBC%\PC88inject.bat"
)
:skp
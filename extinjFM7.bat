pushd "%GBC%\net\%LNCH%\%FM7%"
if "%GGOFF%"=="1" "%GBC%\fart.exe" "XM7.ini" [ROMPTH] [EMUPTH]
popd
for /d %%g IN (*) DO (
if "%RECONF%"=="1" copy /Y "%GBC%\net\%LNCH%\%FM7%\*.ini" "%%~g"
set CSTM=%%~g
pushd "%%~g"
call :injext
CALL "%GBC%\FM7inject.bat"
)
if "%GGOFF%"=="1" copy /Y "XM7.ini" "%GBE%\%EMUZ%\%XM7%"
exit /b
:injext
call "%GBC%\CreateGamSubDir.bat"
popd
:skp
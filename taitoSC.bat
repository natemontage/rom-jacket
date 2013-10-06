pushd "SOURCE"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h') do (
SET NWDIR=%%~a
CALL :SCMKR
)
goto :aliasing

:SCMKR
pushd "%NWDIR%"
for /f "tokens=* delims= " %%a in ('dir /b /a-d-h "%NWDIR%*launcher.exe"') do "%GBC%\xxmklink.exe" "%GBG%\%GAM%\%CONS%\%TAITX%\%NWDIR%.lnk" "%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE\%NWDIR%\%%~a" " " "%GBG%\%GAM%\%CONS%\%TAITX%\SOURCE\%NWDIR%" "%NWDIR%" 1 " "
popd
exit /b
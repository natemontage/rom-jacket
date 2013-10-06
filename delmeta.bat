for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
pushd "%GBG%\%GAM%\%CONS%\%%~a"
del /q "Fanart*.*"
del /q "Backdrop*.png"
del /q "Backdrop*.jpg"
del /q "Folder*.*"
del /q "Banner*.*"
del /q "console.xml"
del /q "*.Settings"

rmdir /s /q "%FLDR%"
rmdir /s /q "%CONS%"
CALL :DELBG
popd
)
:DELBG
for /f "tokens=* delims= " %%b in ('dir /b /ad-h "%BCKD%*"') do (
rmdir /s /q "%%~b"
)
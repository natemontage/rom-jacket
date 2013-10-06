for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
SET NWCN=%%~a
CALL :GAMDIR
)
exit /b

:GAMDIR
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%\%NWCN%"') do (
SET CSTRM=%%~a
call :METARENAME
)
exit /b

:METARENAME
rename "%GBG%\%GAM%\%CONS%\%NWCN%\%CSTRM%\*_Fanart.jpg" "Backdrop.jpg"
rename "%GBG%\%GAM%\%CONS%\%NWCN%\%CSTRM%\*_Thumb.jpg" "Folder.jpg"
exit /b
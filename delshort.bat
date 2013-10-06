for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do (
set BE=%%a
CALL :RED
)

set CURNTA=conselect.set
if exist "%GBC%\conselect.ini" set CURNTA=conselect.ini
for /f "tokens=* delims= " %%a in ('type "%GBC%\%CURNTA%"') do (
set BE=%%a
CALL :RED
)
exit /b

:RED
if exist "%GBG%\%ROMJ%\%BE%.lnk" del /q "%GBG%\%ROMJ%\%BE%.lnk"
exit /b
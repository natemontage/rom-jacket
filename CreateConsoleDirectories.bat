if not exist "%GBG%\%GAM%" mkdir "%GBG%\%GAM%"	
if not exist "%GBG%\%GAM%\%CONS%" mkdir "%GBG%\%GAM%\%CONS%"
set CURNTA=conselect.set
if exist "%GBC%\conselect.ini" set CURNTA=conselect.ini
for /f "tokens=* delims= " %%a in ('type "%GBC%\%CURNTA%"') do (
set DRTC=%%~a
call :create
)
exit /b

:create
if not exist "%GBG%\%GAM%\%CONS%\%%~a" mkdir "%GBG%\%GAM%\%CONS%\%DRTC%"
	
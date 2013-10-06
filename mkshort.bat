for /f "delims=" %%d in ('dir /s /b /ad-h "%GBG%\%GAM%\%CONS%"^| sort /r') do rd "%%d"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%CONS%"') do echo.%%~a>>"%GBC%\tomake.ini"
CALL "%GBC%\createConsoleDirectories.bat"
for /f "tokens=* delims= " %%a in ('type "%GBC%\tomake.ini"') do (
set BE=%%a
SET ICNF=%GBC%\BatchScriptLauncher.ico
CALL :RED
)
set CURNTA=conselect.set
if exist "%GBC%\conselect.ini" set CURNTA=conselect.ini
for /f "tokens=* delims= " %%a in ('type "%GBC%\%CURNTA%"') do (
set BE=%%a
SET ICNF=%GBC%\Helper.ico
CALL :RED
)
goto :mkout
:RED
if not exist "%GBG%\%ROMJ%\%BE%.lnk" "%GBC%\XXMKLINK.exe" "%GBG%\%ROMJ%\%BE%.lnk" "%GBG%\%GAM%\%CONS%\%BE%" " " "%GBG%\%GAM%\%CONS%" " " 1 "%ICNF%"
:mkout
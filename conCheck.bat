CALL "%GBC%\shortname.bat"
set CURNTA=conselect.set
if exist "%GBC%\conselect.ini" set CURNTA=conselect.ini
for /f "tokens=* delims= " %%a in ('type "%GBC%\%CURNTA%"') do if /i "%CSTCONS%"=="%%~a" goto :CALLING
exit /b
:EVERYROM
if "%FERID%"=="1" CALL "%GBC%\extinj%SHRTN%1.bat"
exit /b

:CALLING
SET INJSKP=1
if /I "%ALLEXT%"==".pdf" move /y "%ALLNAM%" ".Man"
if "%FERID%"=="1" CALL :EVERYROM
if "%FERID%"=="1" exit /b
CALL "%GBC%\extinj%SHRTN%.bat"
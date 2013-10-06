:READINI
set NthN=%INIVAR%
set nthl=0
for /F "tokens=*" %%i in ("%GBC%\locset.ini") do call :WRITE %%i
exit /b 0

:WRITE
set /a nthl+=1
if %nthl%==%NthN% (echo %VARVAL%) else echo %*
exit /b
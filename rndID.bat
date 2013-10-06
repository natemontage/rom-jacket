del /q altnum.ini
Setlocal EnableDelayedExpansion
Set _Alphanumeric=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789
Set _count=0
:_loop
Set /a _count+=1
SET _RND=%Random%
Set /A _RND=_RND%%61
SET _rndalphanum=!_Alphanumeric:~%_RND%,1!
Echo !_rndalphanum!>>altnum.ini
If !_count! leq 33 goto _loop
for /f "Tokens=*" %%i in (altnum.ini) do (
set var=%%i
if defined var set data=!data!!var!
)
set RNDVAR=!data!
echo %RNDVAR% >"%GBC%\randnum.ini"
endlocal
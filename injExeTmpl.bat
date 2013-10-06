echo.%userprofile%>"%GBC%\user.ini"
FOR /F "tokens=* delims= " %%a in ('type "%GBC%\user.ini"') DO SET CURSR=%%~a
FOR /F "usebackq tokens=3 skip=1" %%i in (`REG QUERY "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\User Shell Folders" /v Desktop`) DO (
SET DESKTOPDIR=%%i
)
echo.%DESKTOPDIR%>"%GBC%\desk."
FOR /F "tokens=* delims= " %%a in ('type "%GBC%\desk.ini"') DO SET USKDP=%%~a

FOR /F "usebackq delims=" %%i in (`ECHO %DESKTOPDIR%`) DO (
SET DESKTOPDIR=%%i
)
echo.%DESKTOPDIR%>"%GBC%\desk.ini"
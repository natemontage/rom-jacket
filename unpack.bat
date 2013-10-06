for /r %%i in ('dir /b "%libsel%\*.*") do (
if /i "%%~xi" EQU ".zip" goto :uzpa
if /i "%%~xi" EQU ".rar" goto :urar
if /i "%%~xi" EQU ".7z" goto :u7z
)

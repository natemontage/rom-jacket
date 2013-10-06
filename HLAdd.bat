:ALLHYP
%GBD%
cd "%GBC%"
del /q "%GBC%\net\%HYPS%\*.set"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%HYPS%"') do (
SET HYPSYS=%%~a
CALL :HSXMLADD
)
goto :HSBUILD

:HSXMLADD
copy "%GBC%\net\%HYPS%\%HYPS%.sys.prt" "%GBC%\net\%HYPS%\%HYPSYS%.set"
pushd "%GBC%\net\%HYPS%"
"%GBC%\fart.exe" "%HYPSYS%.set" [SYS] "%HYPSYS%"
popd
exit /b

:HSBUILD
type "%GBC%\net\%HYPS%\%HYPS%.begin.prt">"%GBC%\net\%HYPS%\Main Menu.xml"
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%GBC%\net\%HYPS%\*.set"') do type "%GBC%\net\%HYPS%\%%~a">>"%GBC%\net\%HYPS%\Main Menu.xml"

:HYPC
type "%GBC%\net\%HYPS%\%HYPS%.end.prt">>"%GBC%\net\%HYPS%\Main Menu.xml"
mkdir "%HPN%\Databases\Main Menu"
copy /Y "%GBC%\net\%HYPS%\Main Menu.xml" "%HPN%\Databases\Main Menu"
:HSADDCOMPLETE
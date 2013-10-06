if not exist "%GBC%\net\%HYPS%\Main Menu.xml" goto :BEGINXML
"%GBC%\wbox.exe" "Replace" "Would you like to replace your existing console XML files?" "Yes;No" /DB=2
if %ERRORLEVEL%==1 goto :BEGINXML
if %ERRORLEVEL%==2 goto :HSBUILDCOMP
goto :HSBUILDCOMP

:BEGINXML
cmd /c start "" "%GBC%\Wbusy.exe" "BuildingXMLS" "Building XMLs"  /marquee
%GBD%
cd "%GBC%"
del /q "%GBC%\net\%HYPS%\*.inj"
del /q "%GBC%\net\%HYPS%\*.int"
del /q "%GBC%\net\%HYPS%\*.xml"
CALL "%GBC%\HSprep.bat"
CALL "%GBC%\HSGamAdd.bat"
copy /Y "%GBC%\net\%HYPS%\%HYPS%.ini" "%GBC%\net\%HYPS%\Setting.int"
for /f "tokens=* delims= " %%a in ('dir /b/ad-h "%GBG%\%GAM%\%HYPS%"') do (
SET HYPSYS=%%~a
CALL :HSINJADD
)
goto :HSBUILD

:HSINJADD
copy /Y "%GBC%\net\%HYPS%\Setting.int" "%GBC%\net\%HYPS%\%HYPSYS%.inj"
pushd "%GBC%\net\%HYPS%"
"%GBC%\fart.exe" "%HYPSYS%.inj" [GBE] "%GBE%"
"%GBC%\fart.exe" "%HYPSYS%.inj" [GBG] "%GBG%"
"%GBC%\fart.exe" "%HYPSYS%.inj" [GAM] "%GAM%"
"%GBC%\fart.exe" "%HYPSYS%.inj" [EMUZ] "%EMUZ%"
"%GBC%\fart.exe" "%HYPSYS%.inj" [HYPS] "%HYPS%"
"%GBC%\fart.exe" "%HYPSYS%.inj" [BATCHL] "%BATCHL%"
"%GBC%\fart.exe" "%HYPSYS%.inj" [CONS] "%CONS%"
"%GBC%\fart.exe" "%HYPSYS%.inj" [CONDIR] "%HYPSYS%"
popd
rename "%GBC%\net\%HYPS%\%HYPSYS%.setting.inj" "%HYPSYS%.inj"
exit /b

:HSBUILD
REM "%GBC%\wbox.exe" "locateHS" "Please locate the Hyperspin Directory" "Okay" /TM=3
REM for /f "delims=" %%a in ('Wfolder.exe "SET HSPN=" "%PRGX%" "Where is the Hyperspin Folder:?  eg:''%PRGX%''" /noquote') do %%a
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h "%GBC%\net\%HYPS%\*.inj"') do copy /Y "%GBC%\net\%HYPS%\%%~a" "%HPN%\Settings\%%~na.ini"
"%GBC%\Wbusy.exe" "BuildingXMLS" "Complete." /Stop /timeout:1
:HSBUILDCOMP
del /s /q "%GBC%\net\%GBRWS%\*.xml"
del /s /q "%GBC%\net\%GBRWS%\*.prt"
del /s /q "%GBC%\net\%GBRWS%\*.png"
del /s /q "%GBC%\net\%GBRWS%\*.vf"

"%SEVENZIP%" x -y "%GBC%\net\%GBRWS%\%GBRWS%.tar" -o"%GBC%\net\%GBRWS%"
set EMUCNT=0
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (set /A EMUCNT+=1)

del /q "%GBC%\net\%GBRWS%\appetype">>"%GBC%\net\%GBRWS%\tmp.xml
type "%GBC%\net\%GBRWS%\beginXML.prt">>"%GBC%\net\%GBRWS%\tmp.xml
type "%GBC%\net\%GBRWS%\appendBatch.prt">>"%GBC%\net\%GBRWS%\tmp.xml"
type "%GBC%\net\%GBRWS%\mid.prt">>"%GBC%\net\%GBRWS%\tmp.xml"

for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
set NWCON=%%~a
CALL :injectAdd
)
goto :endAdd

:injectAdd
CALL "%GBC%\gbAdd.bat"
copy /Y "%GBC%\net\%GBRWS%\ConsAdd.prt" "%GBC%\net\%GBRWS%\%NWCON%ConsAdd.prt"
pushd "%GBC%\net\%GBRWS%"
"%GBC%\fart.exe" "%NWCON%ConsAdd.prt" [GBNAME] "%ALTMP%"
"%GBC%\fart.exe" "%NWCON%ConsAdd.prt" [CONSOLEPATH] "%GBG%\%GAM%\%CONS%\%NWCON%"
"%GBC%\fart.exe" "%NWCON%ConsAdd.prt" [EMUZ] "%NWCON%"
popd
type "%GBC%\net\%GBRWS%\%NWCON%ConsAdd.prt">>"%GBC%\net\%GBRWS%\tmp.xml"
exit /b

:endAdd
type "%GBC%\net\%GBRWS%\endXML.prt">>"%GBC%\net\%GBRWS%\tmp.xml"
if "%MBR%"=="1" copy /Y "%GBC%\net\%GBRWS%\Console.vf" "%ProgramData%\%MBRWS%\StartupFolder"

copy /Y "%GBC%\net\%GBRWS%\tmp.xml" "%GBC%\net\%GBRWS%\GameBrowserPlugin.xml
call "%GBC%\InjectGameBrowserPlugin.bat"
::del /q "%GBC%\net\%GBRWS%\tmp.xml"
::del /q "%GBC%\net\%GBRWS%\*.prt"
goto :built

:built
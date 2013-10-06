if "%CFGALLG%"=="1" goto :GLOBALINJ
SET JOYOV=
SET BATOV=
SET CFGOV=
goto :DELOPTIONS
:GLOBALINJ
start "" "%GBC%\wbusy.exe" "clearing" "Resetting Rom-Jacket Library Components." /marquee
if "%CFGOV%"=="1" call "%GBC%\delcfgs.bat"
if "%BATOV%"=="1" del /s /q "%GBG%\%GAM%\%CONS%\*.bat"
if "%JOYOV%"=="1" del /s /q "%GBG%\%GAM%\%CONS%\*.xpadderprofile"
start "" "%GBC%\wbusy.exe" "clearing" "Complete" /Stop /timeout:1
goto :delcomp

:DELOPTIONS
"%GBC%\wbox.exe" "RJCFGRC" "Would you like to reset existing RoM-Jacket Library components?^^Launchers^Only Launchers will be deleted^^Config^Only Emulator-Configuration files will be deleted.^^Joy^Only Joystick-profiles will be deleted.^^ALL^Launchers, Joystick-Profiles, Emulator-Configuration files will be deleted.^^None^Nothing will be deleted." "Launchers;Config;Joy;ALL;None" /DB=5 /BW=75
if %ERRORLEVEL%==1 goto :BATS
if %ERRORLEVEL%==2 goto :CFGS
if %ERRORLEVEL%==3 goto :JOYS
if %ERRORLEVEL%==4 goto :ALL
if %ERRORLEVEL%==5 goto :NONE
goto :delcomp

:BATS
SET BATOV=1
start "" "%GBC%\wbusy.exe" "clearing" "Resetting Launchers" /marquee
del /s /q "%GBG%\%GAM%\%CONS%\*.bat"
start "" "%GBC%\wbusy.exe" "clearing" "Complete" /Stop /timeout:1
goto :DELOPTIONS

:CFGS
SET CFGOV=1
start "" "%GBC%\wbusy.exe" "clearing" "Resetting Emulator Configurations" /marquee
call "%GBC%\delcfgs.bat"
start "" "%GBC%\wbusy.exe" "clearing" "Complete" /Stop /timeout:1
goto :DELOPTIONS

:JOYS
SET JOYOV=1
start "" "%GBC%\wbusy.exe" "clearing" "Resetting Jostick-Profiles" /marquee
del /s /q "%GBG%\%GAM%\%CONS%\*.xpadderprofile"
start "" "%GBC%\wbusy.exe" "clearing" "Complete" /Stop /timeout:1
goto :DELOPTIONS

:ALL
SET JOYOV=1
SET BATOV=1
SET CFGOV=1
start "" "%GBC%\wbusy.exe" "clearing" "Resetting Rom-Jacket Library Components." /marquee
del /s /q "%GBG%\%GAM%\%CONS%\*.bat"
CALL "%GBC%\delcfgs.bat"
del /s /q "%GBG%\%GAM%\%CONS%\*.xpadderprofile"
start "" "%GBC%\wbusy.exe" "clearing" "Complete" /Stop /timeout:1

:NONE
:delcomp
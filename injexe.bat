"%GBC%\fart.exe" "*.bat" "[DMT]" "REM [DMT]" 
"%GBC%\fart.exe" "*.bat" "REM [XFG]" --remove 
"%GBC%\fart.exe" "*.bat" "[XFG]" --remove 
if "%XPADDER%"=="DISABLED" "%GBC%\fart.exe" "*.bat" [XPT] "REM [XPT]" 
if "%XPADDER%"=="[XPD]" "%GBC%\fart.exe" "*.bat" [XPT] "REM [XPT]" 
if "%XPADDER%"=="" "%GBC%\fart.exe" "*.bat" [XPT] "REM [XPT]" 
if "%XPADDER%"=="[XPD]" "%GBC%\fart.exe" "*.bat" [XPT] --remove 
"%GBC%\fart.exe" "*.bat" [XPT] --remove 
"%GBC%\fart.exe" "*.bat" [XPD] --remove

REM copy /Y "%GBC%\net\%XPROF%\EMU\%CSTCONS%\*.xpadderprofile" "%CSTM%"
"%GBC%\fart.exe" "*.bat" [EMUL] "%%CD%%"
"%GBC%\fart.exe" "*.bat" [EMUL] "%%CD%%"
call "%GBC%\emuexe.bat"
"%GBC%\fart.exe" "*.bat" [EMUZ] "%EMEXE%"
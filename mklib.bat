del /q "%GBC%\Folder.ico"
del /q "%GBC%\reshack.ini"
del /q "%GBC%\inclCfg.ini"
del /q "%GBC%\injbios.ini"
del /q "%GBC%\includeRoms.ini"
del /q "%GBC%\includevar.ini"
del /q "%GBC%\injLnch.ini"
del /q "%GBC%\bioscpy.ini"
del /q "%GBC%\prefxe.ini"
del /q "%GBC%\gsetup.ini"
goto :GETROM

set /a dlvar=0
for /f "tokens=* delims= " %%a in ('type "%GBC%\hundo.set"') do (
call :resets
)
goto :GETROM

:resets
set EMUFILE%dlvar%=
set ADDFILE%dlvar%=
set /a dlvar+=1
if %dlvar%==100 goto :EOF
exit /b

:GETROM
for %%a in ("%LIBIT%") do set CSTCONS=%%~nxa
set NOTICE=1

:UNSUPPORTED
for /f "Tokens=* delims= " %%a in ('type "%GBC%\conselect.set"') do if "%%~a"=="%CSTCONS%" SET NOTICE=0
if "%NOTICE%"=="1" goto :unnotice

:SUPPORTED
for %%a in ("%SEGM2%" "%CDI%" "%NEOGE%" "%CPS%" "%CPS2%" "%CPS3%" "%DAPH%" "%TAITX%" "%WIN32%" "%ARCD%" "%SSAT%" "%FMTOWNS%") do if "%%~a"=="%CSTCONS%" goto :unnotice
del /q "%GBC%\net\%EXECT%\%CSTCONS%\gamelist.ini.*"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\setcfg.bat"
goto :UNZIP

:unnotice
"%GBC%\wbox.exe" "This system is not supported at this time." "Select another system?" "Select;QUIT"
if %ERRORLEVEL%==1 goto :GETROM
if %ERRORLEVEL%==2 goto :EOF
goto :EOF


:UNZIP
"%SEVENZIP%" x -y "%GBC%\net\%EXECT%\%EXECT%.zip" -o"%GBC%\net\%EXECT%"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\*_Multi_Game.bat"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\%ROMN%.bat"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\launch.bat"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\*.bak"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\instExe.bat"

:MASSINCLUDE
for /f "tokens=* delims= " %%a in ('dir /s/b/ad-h "%GBG%\%GAM%\%CONS%\%CSTCONS%"') do (
set /A ROMSZ=0
set ROMZ=%%~nxa
pushd "%%~a"
call :GETALLROMS
popd
)
goto :INCLUDEXPADDER

:GETALLROMS
for /f "tokens=* delims= " %%a in ('dir /b/a-d-h') do (
SET ROMU=%%~dpnxa
SET ROME=%%~nxa
SET ROMN=%%~na
SET ROMST=%%~za
SET ALLEXT=%%~xa
call :TOLIST
)
exit /b

:TOLIST
if /i "%ALLEXT%"==".exe" exit /b
if /i "%ALLEXT%"==".png" exit /b
if /i "%ALLEXT%"==".bmp" exit /b
if /i "%ALLEXT%"==".bat" exit /b
if /i "%ALLEXT%"==".jpg" exit /b
if /i "%ALLEXT%"==".xml" exit /b
if /i "%ALLEXT%"==".tbn" exit /b
if /i "%ALLEXT%"==".nfo" exit /b
if /i "%ALLEXT%"==".cfg" exit /b
if /i "%ALLEXT%"==".htm" exit /b
if /i "%ALLEXT%"==".html" exit /b
if /i "%ALLEXT%"==".jpeg" exit /b
if /i "%ALLEXT%"==".conf" exit /b
if /i "%ALLEXT%"==".confg" exit /b
if /i "%ALLEXT%"==".config" exit /b
if /i "%ALLEXT%"==".settings" exit /b
if /i "%ALLEXT%"==".properties" exit /b
call "%GBC%\checkall.bat"
if "%GOODEX%"=="1" echo.%ROME%>>"%GBC%\net\%EXECT%\%CSTCONS%\gamelist.ini"
if "%GOODEX%"=="1" echo.%ROMU%>>"%GBC%\net\%EXECT%\%CSTCONS%\inclRoms.ini"
set /A ROMSZ=%ROMSZ% + %ROMST%
SET INCLU=1
SET INJROMF=1
exit /b

:INCLUDEXPADDER
for %%a in ("%GBC%\net\%XPROF%\%CSTCONS%\Player1.xpadderprofile") do (
SET PLAYR=%%~a
if exist "%%~a" set PLYRX=%%~a
)
for %%a in ("%GBC%\net\%XPROF%\%CSTCONS%\Player2.xpadderprofile") do if exist "%%~a" set PLYRX= "%PLAYR%"  "%%~a"

:ADDINROMS

for /f "tokens=* delims= " %%a in ('type "%GBC%\net\%EXECT%\%CSTCONS%\inclRoms.ini"') do echo|set /p=" "%%~a" ">>"%GBC%\includeRoms.ini"
for /f "tokens=* delims= " %%a in ('type "%GBC%\includeRoms.ini"') do set ADDEDF="%%~a

:EMUSEL
SET INSTOPT=Quick_Run;Install
SET INSTO1=CONTINUE
SET INSTO2=INSTALL
SET INSTMTHD=Would you like to run temporarily or install to your disk?
call "%GBC%\emuDefaults.bat"
call "%GBC%\emuexe.bat"
type CustomEmulator>"%GBC%\supportedEmulators.ini"
type "%GBC%\supportedEmulators.set">>"%GBC%\supportedEmulators.ini"
"%GBC%\wbox.exe" "SelEmu" "Select the Emulator" "Default;%CEMU%" /db=1 /TM=3
if %ERRORLEVEL%==1 goto :DEFAULTEMU
if %ERRORLEVEL%==2 goto :DEFAULTEMU
goto :DEFAULTEMU

:DEFAULTEMU
call "%GBC%\emuDefaults.bat"
call "%GBC%\emuexe.bat"
if "%CEMU%"=="Default" goto :CHOOSEMU
goto :INIOUT

:CHOOSEMU
echo.CustomEmulator>"%GBC%\supportedEmulators.ini"
for /f "tokens=* delims= " %%a in ('type "%GBC%\supportedemulators.set"') do echo.%%~a>>"%GBC%\supportedemulators.ini"
"%GBC%\Wselect.exe" "%GBC%\supportedEmulators.ini" "Select An Emulator to associate with %CSTCONS%" "set CEMUZ=$item" > "%GBC%\emuAssign.cmd"
if %errorlevel%==0 GOTO :QUITOUT								
CALL "%GBC%\emuAssign.cmd"
if /i "%CEMUZ%"=="CustomEmulator" goto :CHOOSEMU
if /i "%CEMUZ%"=="Mess" call "%GBC%\messtype.bat"
if /i "%CEMUZ%"=="Mess64" call "%GBC%\messtype.bat"
if /i "%CEMUZ%"=="Messui" call "%GBC%\messtype.bat"
if /i "%CEMUZ%"=="Messui64" call "%GBC%\messtype.bat"
if /i "%CEMUZ%"=="UME" call "%GBC%\messtype.bat"
if /i "%CEMUZ%"=="UME64" call "%GBC%\messtype.bat"

:INIOUT
start "" "%GBC%\Wbusy.exe" "Compiling" "Compling %CSTCONS% Executable" /Marquee
echo.if exist "firstrun.ini" goto :create>>"%GBC%\prefxe.bat"
call "%GBC%\shortname.bat"
call "%GBC%\shortemu.bat"
call "%GBC%\genExe.bat"

set CVAREMU=%CEMU%
start "" "%GBC%\Wbusy.exe" "Compiling" "Complete" /Stop /timeout:1
set /a EXESIZE=%ROMSZ% / 1000000

"%GBC%\wbox.exe" "saveto" "^#########################^File size of the exe will be approximately^%EXESIZE% mb^#########################^ Save to the desktop or choose a destination" "Destkop;Choose" /db=1 /bw=170
if %ERRORLEVEL%==1 goto :seldesk
if %ERRORLEVEL%==2 goto :chooseloc
goto :QUITOUT

:GETEMU
for /f "delims=" %%a in ('Wfile.exe "SET CUSTEMU=" "*.*" "Select the Emulator for %CSTCONS%" /noquote') do %%a
if "%CUSTEMU%"=="" goto :reassign
for /f "tokens=* delims= " %%a in ("%CUSTEMU%") do (
SET CUSTEMUEXE=%%~nxa
SET CUSTEMUNEWPATH=%%~dpa
)

:seldesk
for %%a in ("%USKDP%") do set DESTN=%%~a
goto :GENXE

:chooseloc
pushd "%GBC%"
for /f "delims=" %%a in ('Wfolder.exe "SET DESTN=" "%USKDP%" "Select the destination for your executable" /noquote') do %%a
popd
goto :GENXE


:GENXE
set ICNINC=
set ICEXT=
set IMGON=
goto :COMPILE

:COMPILE
"%SEVENZIP%" e -y "%GBC%\7za.zip" -o"%GBC%" "7za.exe"
"%SEVENZIP%" e -y "%GBC%\7za.zip" -o"%GBC%" "7zsd.sfx"

pushd "%DESTN%"
"%GBC%\nconvert.exe" -resize 64 64 -out ico -o "%GBC%\Folder.ico" "%GBG%\%GAM%\%CONS%\%CSTCONS%\Folder.png"
if not exist "%GBC%\Folder.ico" copy /y "%GBC%\exec.ico" "%GBC%\Folder.ico"
start "" "%GBC%\Wbusy.exe" "Generating" "Generating Executable" /Marquee
call "%GBC%\compExe.bat" "%GBC%\net\%EXECT%\%CSTCONS%\launch.bat" "%GBC%\net\%EXECT%\%CSTCONS%\setcfg.bat" "%GBC%\wbox.exe" "%GBC%\wfolder.exe" "%GBC%\fart.exe" "%GBC%\7za.exe"  "%GBC%\inifile.exe" "%GBC%\wselect.exe" "%GBC%\xxmklink.exe" "%GBC%\net\%EXECT%\%CSTCONS%\%SHRTN%_Multi_Game.bat" "%GBC%\instExe.set" "%GBC%\injExeTmpl.bat" "%GBC%\instExe.bat" "%GBC%\Folder.ico" "%EMULOC%" "%INROM%" %EMUFILES% %ADDEDF% %ICNADD% %PLYRX%
popd
SET EXENAME=%SHRTN%_Multi_Game
pushd "%GBC%"
"%SEVENZIP%" x -y "%GBC%\ResHack.zip" -o"%GBC%"
copy /y "%GBC%\reshck.set" "%GBC%\reshack.ini"
rename "%DESTN%\launch.exe" "%EXENAME%.exe"
"%GBC%\fart.exe" "%GBC%\reshack.ini" [DESTN] "%DESTN%"
"%GBC%\fart.exe" "%GBC%\reshack.ini" [ROMN] "%EXENAME%"
"%GBC%\fart.exe" "%GBC%\reshack.ini" [ICOLOC] "%GBC%\Folder.ico"
pushd "%DESTN%"
"%GBC%\ResHacker.exe" -script "%GBC%\reshack.ini"
popd
popd
start "" "%GBC%\Wbusy.exe" "Generating" "Complete" /Stop /timeout:1
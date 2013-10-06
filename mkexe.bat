del /q "%GBC%\inclRoms.ini"
del /q "%GBC%\reshack.ini"
del /q "%GBC%\inclCfg.ini"
del /q "%GBC%\prefxe.bat"
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
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET CSTROM=" "%GBG%\%GAM%\%CONS%\" "Select the ROM" /noquote') do %%a
if /i "%CSTROM%"=="" goto :QUITOUT
for %%a in ("%CSTROM%") do set ROMN=%%~na
for %%a in ("%CSTROM%") do set ROMF=%%~nxa
for %%a in ("%CSTROM%") do set INROM=%%~dpnxa
for %%a in ("%CSTROM%") do set CSTXE=%%~xa
for %%a in ("%CSTROM%") do set CUSTCONTMP=%%~dpa
for %%a in ("%CUSTCONTMP:~0,-1%") do set CSTM=%%~a
for %%a in ("%CSTM%") do set CSTMN=%%~nxa
for %%a in ("%CSTM:%%ROMN%%=%") do set ENDCONT=%%~a
for %%a in ("%%CSTM:%ENDCONT%=%%") do call SET CSTCONP=%%~a
for %%a in ("%%CSTCONP:%CSTMN%=%%") do call SET CSTCONF=%%~a
for %%A in ("%CSTCONF:*\Console\=%") do set CSTCONB=%%~A
for %%A in ("%CSTCONB:~0,-1%") do set CSTCONS=%%~A
if "%CSTROM%"=="" goto :EOF
set NOTICE=1
:UNSUPPORTED
for /f "Tokens=* delims= " %%a in ('type "%GBC%\conselect.set"') do if "%%~a"=="%CSTCONS%" SET NOTICE=0
if "%NOTICE%"=="1" goto :unnotice
:SUPPORTED
for %%a in ("%SEGM2%" "%CDI%" "%NEOGE%" "%CPS%" "%CPS2%" "%CPS3%" "%DAPH%" "%TAITX%" "%WIN32%" "%ARCD%" "%SSAT%" "%FMTOWNS%") do if "%%~a"=="%CSTCONS%" goto :unnotice
REM if "%CSTCONS%"=="%SEGM2%" goto :unnotice
REM if "%CSTCONS%"=="%CDI%" goto :unnotice
REM "%CSTCONS%"=="%NEOGE%" goto :unnotice
REM "%CSTCONS%"=="%CPS%" goto :unnotice
REM "%CSTCONS%"=="%CPS2%" goto :unnotice
REM "%CSTCONS%"=="%CPS3%" goto :unnotice
REM "%CSTCONS%"=="%DAPHN%" goto :unnotice
REM "%CSTCONS%"=="%TAITX%" goto :unnotice
REM "%CSTCONS%"=="%WIN32%" goto :unnotice
REM "%CSTCONS%"=="%ARCD%" goto :unnotice
REM "%CSTCONS%"=="%SSAT%" goto :unnotice
REM "%CSTCONS%"=="%FMTOWNS%" goto :unnotice
del /q "%GBC%\net\%EXECT%\%CSTCONS%\gamelist.ini.*"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\setcfg.bat"
goto :UNZIP

:unnotice
"%GBC%\wbox.exe" "This system is not supported at this time." "Select another system?" "Select;QUIT"
if %ERRORLEVEL%==1 goto :GETROM
if %ERRORLEVEL%==2 goto :EOF
goto :######


:UNZIP
"%SEVENZIP%" x -y "%GBC%\net\%EXECT%\%EXECT%.zip" -o"%GBC%\net\%EXECT%"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\%ROMN%.bat"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\launch.bat"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\*.bak"
del /q "%GBC%\net\%EXECT%\%CSTCONS%\instExe.bat"

echo.%ROMF%>>"%GBC%\net\%EXECT%\%CSTCONS%\gamelist.ini"
SET ADDEDF=
SET INCLU=

:ADDA
"%GBC%\wbox.exe" "AddRoms" "Select Another file to add to your executable?" "Select;Finish"
if %ERRORLEVEL%==1 goto :SELECTA
if %ERRORLEVEL%==2 goto :ADDFILES
goto :FINA

:SELECTA

:GETFILE
set ADDFILE=
for /f "delims=" %%a in ('%GBC%\Wfile.exe "SET ADDFILE=" "%CUSTCONTMP%" "Select addtional file?" /noquote') do %%a
if "%ADDFILE%"=="" goto :ADDFILES
SET INCLU=1
for %%a in ("%ADDFILE%") do echo.%%~nxa>>"%GBC%\net\%EXECT%\%CSTCONS%\gamelist.ini"
for %%a in ("%ADDFILE%") do echo.%%~a>>"%GBC%\inclRoms.ini"
goto :ADDA

:MULTIQ 
"%GBC%\wbox.exe" "MultiGame" "Are you creating a multi-game executable?" "Yes;No" /db=2
if %ERRORLEVEL%==1 goto :ADDEDGAMES
if %ERRORLEVEL%==2 goto :ADDEDSOURCE
goto :ADDEDSOURCE
:ADDEDGAMES
SET INJROMF=1
exit /b
:ADDEDSOURCE
SET INJROMF=
exit /b
:ADDFILES
if "%INCLU%"=="1" call :MULTIQ
for /f "tokens=* delims= " %%a in ('type "%GBC%\inclRoms.ini"') do echo|set /p=" "%%~a" ">>"%GBC%\includeRoms.ini"
for /f "tokens=* delims= " %%a in ('type "%GBC%\includeRoms.ini"') do set ADDEDF="%%~a

for %%a in ("%GBC%\net\%XPROF%\%CSTCONS%\Player1.xpadderprofile") do (
SET PLAYR=%%~a
if exist "%%~a" set PLYRX=%%~a
)

for %%a in ("%GBC%\net\%XPROF%\%CSTCONS%\Player2.xpadderprofile") do if exist "%%~a" set PLYRX= "%PLAYR%"  "%%~a"
for %%a in ("%CSTM%\Player1.xpadderprofile") do (
SET PLAYR=%%~a
if exist "%%~a" set PLYRX=%%~a
)

for %%a in ("%CSTM%\Player2.xpadderprofile") do if exist "%%~a" set PLYRX= "%PLAYR%" "%%~a"

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
"%GBC%\Wselect.exe" "%GBC%\supportedEmulators.ini" "Select An Emulator to associate with %ROMN%" "set CEMUZ=$item" > "%GBC%\emuAssign.cmd"
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
start "" "%GBC%\Wbusy.exe" "Compiling" "Compling Executable" /Marquee
echo.if exist "firstrun.ini" goto :create>>"%GBC%\prefxe.bat"
call "%GBC%\shortname.bat"
call "%GBC%\shortemu.bat"
call "%GBC%\genExe.bat"

set CVAREMU=%CEMU%
start "" "%GBC%\Wbusy.exe" "Compiling" "Complete" /Stop /timeout:1
"%GBC%\wbox.exe" "saveto" "Save to the desktop or choose a destination" "Destkop;Choose" /db=1
if %ERRORLEVEL%==1 goto :seldesk
if %ERRORLEVEL%==2 goto :chooseloc
goto :QUITOUT

:GETEMU
for /f "delims=" %%a in ('Wfile.exe "SET CUSTEMU=" "*.*" "Select the Emulator for %CUSTCONS%" /noquote') do %%a
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

:ncvrtp
set IMGON=1
set ICEXT=.png
"%GBC%\nconvert.exe" -resize 64 64 -out ico -o "%HPN%\Media\%RJCP%\Images\%ARTNUM%\Folder.ico" "%CSTM%\Folder%ICEXT%"
exit /b

:ncvrtj
set IMGON=1
set ICEXT=.jpg
"%GBC%\nconvert.exe" -resize 64 64 -out ico -o "%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico" "%CSTM%\Folder%ICEXT%"
exit /b

:GENXE
set ICNINC=
set ICEXT=
set IMGON=
if "%INJROMF%"=="1" set IMGON=0
if "%INJROMF%"=="1" goto :COMPILE
if exist "%CSTM%\Folder.jpg" call :ncvrtj
if exist "%CSTM%\Folder.png" call :ncvrtp

:COMPILE
"%SEVENZIP%" e -y "%GBC%\7za.zip" -o"%GBC%" "7za.exe"
"%SEVENZIP%" e -y "%GBC%\7za.zip" -o"%GBC%" "7zsd.sfx"

pushd "%DESTN%"
for %%a in ("%GBC%") do if "%IMGON%"=="" set ICOLOC=%%~a
for %%a in ("%GBC%\net\%EXECT%\%CSTCONS%") do if "%IMGON%"=="1" set ICOLOC=%%~a
if "%IMGON%"=="" copy /y "%GBC%\exec.ico" "%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico"
if "%INJROMF%"=="1" "%GBC%\nconvert.exe" -resize 64 64 -out ico -o "%GBC%\net\%EXECT%\%CSTCONS%\Folder.ico" "%GBG%\%GAM%\%CONS%\%CSTCONS%\Folder%ICEXT%"
start "" "%GBC%\Wbusy.exe" "Generating" "Generating Executable" /Marquee
call "%GBC%\compExe.bat" "%GBC%\net\%EXECT%\%CSTCONS%\launch.bat" "%GBC%\net\%EXECT%\%CSTCONS%\setcfg.bat" "%GBC%\wbox.exe" "%GBC%\wfolder.exe" "%GBC%\fart.exe" "%GBC%\7za.exe"  "%GBC%\inifile.exe" "%GBC%\wselect.exe" "%GBC%\xxmklink.exe" "%GBC%\net\%EXECT%\%CSTCONS%\%ROMN%.bat" "%GBC%\instExe.set" "%GBC%\injExeTmpl.bat" "%GBC%\instExe.bat" "%ICOLOC%\Folder.ico" "%EMULOC%" "%INROM%" %EMUFILES% %ADDEDF% %ICNADD% %PLYRX%
popd



pushd "%GBC%\net\%EXECT%\%CSTCONS%"
"%SEVENZIP%" x -y "%GBC%\ResHack.zip" -o"%GBC%"
copy /y "%GBC%\reshck.set" "%GBC%\reshack.ini"
rename "%DESTN%\launch.exe" "%ROMN%.exe"
"%GBC%\fart.exe" "%GBC%\reshack.ini" [DESTN] "%DESTN%"
"%GBC%\fart.exe" "%GBC%\reshack.ini" [ROMN] "%ROMN%"
"%GBC%\fart.exe" "%GBC%\reshack.ini" [ICOLOC] "%ICOLOC%\Folder.ico"
"%GBC%\ResHacker.exe" -script "%GBC%\reshack.ini"
start "" "%GBC%\Wbusy.exe" "Generating" "Complete" /Stop /timeout:1
popd
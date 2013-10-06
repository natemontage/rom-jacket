%GBD%
cd "%GBC%"
start "" "%GBC%\wbusy.exe" "instXML" "Downloading/Installing Console Info" /marquee
:dlCXML
mkdir "%GBC%\net\%CXML%"
SET urlNthL=70
SET /A urlNthL -= 1
CALL :CXML2_LGrab
GOTO :CXMLAUTO

:CXML2_LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
    SET CXMLURL=%%A
    goto :EOF
)

:CXMLAUTO
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir="%GBC%\net\%CXML%" "%MIR1%/%CXMLURL%" "%MIR2%/%CXMLURL%" "%MIR3%/%CXMLURL%" "%MIR4%/%CXMLURL%" "%MIR5%/%CXMLURL%"
for %%A in ("%GBC%\net\%CXML%\*.zip") do set CXMLXE=%%~A
if "%CXMLXE%"=="" exit /b
for /f "delims=" %%a in ('dir /b "%CXMLXE%"') do set CXMLFILE=%%~a
"%SEVENZIP%" x -y "%GBC%\net\%CXML%\%CXMLFILE%" -o"%GBC%\net\%CXML%"
for /f "tokens=* delims= " %%a in ('dir /b /ad-h "%GBG%\%GAM%\%CONS%"') do (
copy /Y "%GBC%\net\%CXML%\%%~a\*.xml" "%GBG%\%GAM%\%CONS%\%%~a"
if "%CXMLFILE%"=="" goto notFound
)
start "" "%GBC%\wbusy.exe" "instXML" "Complete" /Stop /timeout:1
goto :finCXML
:notFound
start "" "%GBC%\wbusy.exe" "instXML" "Not Found" /Stop /timeout:1
"%GBC%\wbox.exe" "NotFound" "XML data could not be found." "Download;Quit"
if %ERRORLEVEL%==1 goto :dlCXML
if %ERRORLEVEL%==2 goto :finXML
:finCXML

SET urlNthL=43
SET /A urlNthL -= 1
CALL :MAXLGrab
GOTO MAXCONT

:MAXLGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\%INDX%"') DO (
SET MAXURL=%%A
goto :EOF
)

:MAXCONT
start /min /w "" "%GBC%\aria2c.exe" --continue=true --split=5 --file-allocation=none --dir= "%MA%" -P "%GBC%\net -O max_201.zip -O2max_201.zip -O3max_201.zip -O4max_201.zip -O5max_201.zip\%MAX%"
for %%A in ("%GBC%\net\%MAX%\*.zip") do set MAXXE=%%~A
for /f "delims=" %%a in ('dir /b "%MAXXE%"') do set MAXFILE=%%~nxa
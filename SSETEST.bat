"%GBC%\CHKCPU32.exe" /V>"%GBC%\ssetype.ini"
SET urlNthL=17
SET /A urlNthL -= 1
CALL :SSEERSLGrab
GOTO SSEERSCONT
:SSEERSLGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\ssetype.ini"') DO (
SET SSEERSURL=%%A
goto :EOF
)
:SSEERSCONT
for /f "tokens=2 delims=:" %%A in ("%SSEERSURL%") do set SSEERS=%%~A
for /f "tokens=1 delims=, " %%A in ("%SSEERS%") do set MMX=%%~A
for /f "tokens=2 delims=, " %%A in ("%SSEERS%") do set SSE=%%~A
for /f "tokens=3 delims=, " %%A in ("%SSEERS%") do set SSE2=%%~A
for /f "tokens=4 delims=, " %%A in ("%SSEERS%") do set SSE3=%%~A
for /f "tokens=5 delims=, " %%A in ("%SSEERS%") do set SSSE3=%%~A
for /f "tokens=6 delims=, " %%A in ("%SSEERS%") do set SSE4=%%~A
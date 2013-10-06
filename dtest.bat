"%DAMVAR%" -get_letter scsi, 0
for %%a in ("%errorlevel%") do set /A DRVNUM=%%~a
if /I "%DRVNUM%"=="0" set DRVLTR=A 
if /I "%DRVNUM%"=="1" set DRVLTR=B
if /I "%DRVNUM%"=="2" set DRVLTR=C
if /I "%DRVNUM%"=="3" set DRVLTR=D
if /I "%DRVNUM%"=="4" set DRVLTR=E
if /I "%DRVNUM%"=="5" set DRVLTR=F
if /I "%DRVNUM%"=="6" set DRVLTR=G
if /I "%DRVNUM%"=="7" set DRVLTR=H
if /I "%DRVNUM%"=="8" set DRVLTR=I
if /I "%DRVNUM%"=="9" set DRVLTR=J
if /I "%DRVNUM%"=="10" set DRVLTR=K
if /I "%DRVNUM%"=="11" set DRVLTR=L
if /I "%DRVNUM%"=="12" set DRVLTR=M
if /I "%DRVNUM%"=="13" set DRVLTR=N
if /I "%DRVNUM%"=="14" set DRVLTR=O
if /I "%DRVNUM%"=="15" set DRVLTR=P
if /I "%DRVNUM%"=="16" set DRVLTR=Q
if /I "%DRVNUM%"=="17" set DRVLTR=R
if /I "%DRVNUM%"=="18" set DRVLTR=S
if /I "%DRVNUM%"=="19" set DRVLTR=T
if /I "%DRVNUM%"=="20" set DRVLTR=U
if /I "%DRVNUM%"=="21" set DRVLTR=V
if /I "%DRVNUM%"=="22" set DRVLTR=W
if /I "%DRVNUM%"=="23" set DRVLTR=X
if /I "%DRVNUM%"=="24" set DRVLTR=Y
if /I "%DRVNUM%"=="25" set DRVLTR=Z
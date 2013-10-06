for /f "delims=" %%d in ('dir /s /b /ad-h "%GBG%\%ROMJ%"^| sort /r') do rd "%%d"
for /f "delims=" %%d in ('dir /s /b /ad-h "%GBG%\%GAM%\%CONS%"^| sort /r') do rd "%%d"
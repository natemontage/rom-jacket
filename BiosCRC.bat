CALL :%EMUZN%
exit /b

:PCCD
del /q "%GBC%\crc.ini"
echo. 2585C0B3>>"%GBC%\crc.ini"
echo. 6D9A73EF>>"%GBC%\crc.ini"
echo. 2B5B75FE>>"%GBC%\crc.ini"
SET BEXT=.pce
for %%a in ("%GBE%\%EMUZ%"\%MEDN%") do SET EMUPTH=%%~a
call :CRCCHECK
exit /b

:APL2GS
del /q "%GBC%\crc.ini"
echo. DE7DDF29>>"%GBC%\crc.ini"
echo. 42F124B0>>"%GBC%\crc.ini"
for %%a in ("%GBE%\%EMUZ%"\%KEGS%") do SET EMUPTH=%%~a
SET BEXT=Rom03gd*
call :CRCCHECK
SET BEXT=.ROM2
call :CRCCHECK
SET BEXT=ROM 03
call :CRCCHECK
SET BEXT=ROM 01
call :CRCCHECK
SET BEXT=.rom
call :CRCCHECK
exit /b

:PCFX
del /q "%GBC%\crc.ini"
echo. 76FFB97A>>"%GBC%\crc.ini"
for %%a in ("%GBE%\%EMUZ%"\%MEDN%") do SET EMUPTH=%%~a
SET BEXT=pcfx*.bin
call :CRCCHECK
SET BEXT=pcfx*.rom
call :CRCCHECK
exit /b

:NEOGEO
del /q "%GBC%\crc.ini"
echo. 6893A277>>"%GBC%\crc.ini"
echo. AFCE86AC>>"%GBC%\crc.ini"
SET BEXT=neogeo*
for %%a in ("%GBE%\%EMUZ%"\%FBA%") do SET EMUPTH=%%~a
call :CRCCHECK
for %%a in ("%GBE%\%EMUZ%"\%MAME%\SOURCE") do SET EMUPTH=%%~a
call :CRCCHECK
exit /b

:NEOCD
echo. 6893A277>>"%GBC%\crc.ini"
SET BEXT=neocd*.bin
for %%a in ("%GBE%\%EMUZ%"\%FBA%") do SET EMUPTH=%%~a
call :CRCCHECK
rename "%GETCRCNUM%" "neocdz.bin"
for %%a in ("%GBE%\%EMUZ%"\%MAME%\SOURCE") do SET EMUPTH=%%~a
SET BEXT=.zip
call :CRCCHECK
exit /b

:AT8H
del /q "%GBC%\crc.ini"
echo. 4248D3E3>>"%GBC%\crc.ini"
echo. 3E28A1FE>>"%GBC%\crc.ini"
echo. 7D684184>>"%GBC%\crc.ini"
echo. 1F9CD270>>"%GBC%\crc.ini"
SET BEXT=.rom
for %%a in ("%GBE%\%EMUZ%"\%STEEM%") do SET EMUPTH=%%~a
call :CRCCHECK
exit /b

:NGBA
del /q "%GBC%\crc.ini"
echo. 81977335>>"%GBC%\crc.ini"
for %%a in ("%GBE%\%EMUZ%"\%VGBA%") do SET EMUPTH=%%~a
SET BEXT=GBA*.rom
call :CRCCHECK
exit /b

:NDS
del /q "%GBC%\crc.ini"
echo. 81977335>>"%GBC%\crc.ini"
echo. 1280F0D5>>"%GBC%\crc.ini"
echo. 945F9DC9>>"%GBC%\crc.ini"
for %%a in ("%GBE%\%EMUZ%"\%NOGBA%") do SET EMUPTH=%%~a
SET BEXT=.rom
call :CRCCHECK
SET BEXT=.bin
call :CRCCHECK
exit /b

:AT52
del /q "%GBC%\crc.ini"
echo. 4248D3E3>>"%GBC%\crc.ini"
SET BEXT=.rom
for %%a in ("%GBE%\%EMUZ%"\%STEEM%") do SET EMUPTH=%%~a
call :CRCCHECK
exit /b


:CRCCHECK
for /f "tokens=* delims= " %%a in ("dir /b/a-d/s "*%BEXT%"') do (
echo.
SET GETCRCNUM=%%~a
SET BAIOSFILE=%%~a
SET BAIOSBIOS=%%~nxa
call :GETCRC
)
exit /b


:GETCRC
for %%a in ('"%GBC%\crc.exe" "%GETCRCNUM%"') do set CRCNUM=%%~a
for /f "tokens=* delims= " %%a in ('type "%GBC%\crc.ini"') do (
if "%CRCNUM%"=="%%~a" CALL :COPYCRC
exit /b

:COPYCRC
echo.%BAIOSBIOS%">>"%GBC%\net\BIOS\%EMUZN%BIOS.ini"
if exist "%EMUPTH%" copy /y "%GETCRCNUM%" "%GBE%\%EMUZ%\%EMUPTH%"
exit /b
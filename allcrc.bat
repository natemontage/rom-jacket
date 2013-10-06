del /q "%GBC%\allcrc.ini"
if exist "%GBE%\%EMUZ%\%MESS%" call "%GBC%\net\messbios.bat"
for /f "tokens=* delims= " %%a in ('dir /b/a-d/s "%GBC%\net\BIOS"') do (
set BIOTA=%%~dpnxa
set BIOTN=%%~nxa
call :ALLCRC
)
goto :BEGIN

:ALLCRC
for /f "tokens=2 delims=:" %%a in ('"%GBC%\crc.exe" "%BIOTA%"') do echo.%BIOTN%:%%~a:>>"%GBC%\allcrc.ini"
exit /b

:BEGIN
for /f "tokens=* delims= " %%a in ('dir /b/ad "%GBE%\%EMUZ%"') do (
SET CVAREMU=%%~a
CALL "%GBC%\shortemu.bat"
call :CRCCHK
)
exit /b

:CRCCHK
for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\allcrc.ini"') do (
set CRCNAM=%%~a
set CRCNAF=%%~nxa
set CRCNUM=%%~b
call :SUPCHK
)
exit /b

:SUPCHK
if not exist "%GBC%\net\CRC\%CVAREMU%.set" exit /b
for /f "tokens=1,2 delims=:" %%a in ('type "%GBC%\net\CRC\%CVAREMU%.set"') do (
set BIOSN=%%~a
set BIOSC=%%~b
if "%%~b"=="%CRCNUM%" call :%SHRTE%
)
exit /b

:CRCCHK
for /f "tokens=1,2 delims= " %%a in ('type "%GBC%\allcrc.ini"') do if "%%~b"=="%CRCNUM%" move /y "%%~a" "%GBE%\%EMUZ%\%CVAREMU%"


:DMUL
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%DMUL%\roms\%BIOSN%"
exit /b

:NEKO
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%NEKO%\%BIOSN%"
exit /b

:FBA
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%FBA%\%BIOSN%"
exit /b

:MAME
move /y "%CRCNAM%" "%GBG%\%GAM%\%CONS%\%ARCD%\SOURCE\%BIOSN%"
exit /b

:NEORAINE
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%NEORAINE%\%BIOSN%"
exit /b

:NULLDC
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%NULLDC%\data\%BIOSN%"
exit /b

:VGBA
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%VGBA%\%BIOSN%"
exit /b

:NOGBA
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%NOGBA%\%BIOSN%"
exit /b

:DESMUME
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%DESMUME%\%BIOSN%"
exit /b

:XM6
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%XM6%\%BIOSN%"
exit /b

:FUSN
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%FUSN%\%BIOSN%"
exit /b

:ATRI
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%ATRI%\%BIOSN%"
exit /b

:SSF
mkdir "%GBE%\%EMUZ%\%SSF%\Setting"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\Saturn"
mkdir "%GBE%\%EMUZ%\%SSF%\Setting\STV"
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%SSF%\Setting\Saturn\%BIOSN%"
exit /b

:FMUNZ
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%FMUNZ%\%BIOSN%"
exit /b

:MEDN
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%FMUNZ%\%BIOSN%"
exit /b

:XM7
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%XM7%\%BIOSN%"
exit /b

:STEEM
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%STEEM%\%BIOSN%"
exit /b

:A800
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%ALTRA%\%BIOSN%"
exit /b

:PCSX2
mkdir "%GBE%\%EMUZ%\%PCSX2%\BIOS"
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%PCSX2%\BIOS\%BIOSN%"
exit /b

:PSX
mkdir "%GBE%\%EMUZ%\%PSX%\BIOS"
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%PSX%\BIOS\%BIOSN%"
exit /b

:KEGS
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%KEGS%\%BIOSN%"
exit /b

:NOSTL
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%NOSTL%\%BIOSN%"
exit /b

:FM7
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%XM7%\%BIOSN%"
exit /b

:BMSX
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%BMSX%\%BIOSN%"
exit /b

:ATRI
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%ATRI%\%BIOSN%"
exit /b

:CDI
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%WCDI%\rom\%BIOSN%"
exit /b

:FSUAE
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%FSUAE%\%BIOSN%"
exit /b

:FOURDO
move /y "%CRCNAM%" "%GBE%\%EMUZ%\%FOURDO%\%BIOSN%"
exit /b

:MESS
exit /b
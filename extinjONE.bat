SET INJSKP=0
CALL "%GBC%\conCheck.bat"
if "%INJSKP%"=="1" goto :extinjEnd
cd "%CUSTGAMPTH%"
SET CSTROM=%CD%

:injextall
call "%GBC%\CreateGamSubDir.bat"
if "%INJSKP%"=="1" exit /b
for /f "tokens=* delims= " %%a in ('dir /b/a-d') do (
SET ALLEXT=%%~xa
CALL :SETEXT
)
:SETEXT
if /I "%ALLEXT%"==".vb" "%GBC%\fart.exe" "*.bat" [EXT] vb
if /I "%ALLEXT%"==".2D" "%GBC%\fart.exe" "*.bat" [EXT] 2D
if /I "%ALLEXT%"==".st" "%GBC%\fart.exe" "*.bat" [EXT] st
if /I "%ALLEXT%"==".vb" "%GBC%\fart.exe" "*.bat" [EXT] vb
if /I "%ALLEXT%"==".gz" "%GBC%\fart.exe" "*.bat" [EXT] gz
if /I "%ALLEXT%"==".gg" "%GBC%\fart.exe" "*.bat" [EXT] gg
if /I "%ALLEXT%"==".md" "%GBC%\fart.exe" "*.bat" [EXT] md
if /I "%ALLEXT%"==".gb" "%GBC%\fart.exe" "*.bat" [EXT] gb
if /I "%ALLEXT%"==".ws" "%GBC%\fart.exe" "*.bat" [EXT] ws
if /I "%ALLEXT%"==".ds" "%GBC%\fart.exe" "*.bat" [EXT] ds
if /I "%ALLEXT%"==".a26" "%GBC%\fart.exe" "*.bat" [EXT] a26
if /I "%ALLEXT%"==".a52" "%GBC%\fart.exe" "*.bat" [EXT] a52
if /I "%ALLEXT%"==".a78" "%GBC%\fart.exe" "*.bat" [EXT] a78
if /I "%ALLEXT%"==".adf" "%GBC%\fart.exe" "*.bat" [EXT] adf
if /I "%ALLEXT%"==".adz" "%GBC%\fart.exe" "*.bat" [EXT] adz
if /I "%ALLEXT%"==".msa" "%GBC%\fart.exe" "*.bat" [EXT] msa
if /I "%ALLEXT%"==".fds" "%GBC%\fart.exe" "*.bat" [EXT] fds
if /I "%ALLEXT%"==".fig" "%GBC%\fart.exe" "*.bat" [EXT] fig
if /I "%ALLEXT%"==".srm" "%GBC%\fart.exe" "*.bat" [EXT] srm
if /I "%ALLEXT%"==".swf" "%GBC%\fart.exe" "*.bat" [EXT] swf
if /I "%ALLEXT%"==".smc" "%GBC%\fart.exe" "*.bat" [EXT] smc
if /I "%ALLEXT%"==".sfc" "%GBC%\fart.exe" "*.bat" [EXT] sfc
if /I "%ALLEXT%"==".pbp" "%GBC%\fart.exe" "*.bat" [EXT] pbp
if /I "%ALLEXT%"==".cdi" "%GBC%\fart.exe" "*.bat" [EXT] cdi
if /I "%ALLEXT%"==".td0" "%GBC%\fart.exe" "*.bat" [EXT] td0
if /I "%ALLEXT%"==".sdf" "%GBC%\fart.exe" "*.bat" [EXT] sdf
if /I "%ALLEXT%"==".pgm" "%GBC%\fart.exe" "*.bat" [EXT] pgm
if /I "%ALLEXT%"==".mgt" "%GBC%\fart.exe" "*.bat" [EXT] mgt
if /I "%ALLEXT%"==".j64" "%GBC%\fart.exe" "*.bat" [EXT] j64
if /I "%ALLEXT%"==".jag" "%GBC%\fart.exe" "*.bat" [EXT] jag
if /I "%ALLEXT%"==".z26" "%GBC%\fart.exe" "*.bat" [EXT] z26
if /I "%ALLEXT%"==".rom" "%GBC%\fart.exe" "*.bat" [EXT] rom
if /I "%ALLEXT%"==".z80" "%GBC%\fart.exe" "*.bat" [EXT] z80
if /I "%ALLEXT%"==".sbd" "%GBC%\fart.exe" "*.bat" [EXT] sbd
if /I "%ALLEXT%"==".tzx" "%GBC%\fart.exe" "*.bat" [EXT] tzx
if /I "%ALLEXT%"==".lnk" "%GBC%\fart.exe" "*.bat" [EXT] lnk
if /I "%ALLEXT%"==".wad" "%GBC%\fart.exe" "*.bat" [EXT] wad
if /I "%ALLEXT%"==".cpm" "%GBC%\fart.exe" "*.bat" [EXT] cpm
if /I "%ALLEXT%"==".vec" "%GBC%\fart.exe" "*.bat" [EXT] vec
if /I "%ALLEXT%"==".sbt" "%GBC%\fart.exe" "*.bat" [EXT] sbt
if /I "%ALLEXT%"==".sgx" "%GBC%\fart.exe" "*.bat" [EXT] sgx
if /I "%ALLEXT%"==".pce" "%GBC%\fart.exe" "*.bat" [EXT] pce
if /I "%ALLEXT%"==".32x" "%GBC%\fart.exe" "*.bat" [EXT] 32x
if /I "%ALLEXT%"==".gen" "%GBC%\fart.exe" "*.bat" [EXT] gen
if /I "%ALLEXT%"==".smd" "%GBC%\fart.exe" "*.bat" [EXT] smd
if /I "%ALLEXT%"==".cso" "%GBC%\fart.exe" "*.bat" [EXT] cso
if /I "%ALLEXT%"==".jso" "%GBC%\fart.exe" "*.bat" [EXT] jso
if /I "%ALLEXT%"==".gbc" "%GBC%\fart.exe" "*.bat" [EXT] gbc
if /I "%ALLEXT%"==".gba" "%GBC%\fart.exe" "*.bat" [EXT] gba
if /I "%ALLEXT%"==".xex" "%GBC%\fart.exe" "*.bat" [EXT] xex
if /I "%ALLEXT%"==".prg" "%GBC%\fart.exe" "*.bat" [EXT] prg
if /I "%ALLEXT%"==".atr" "%GBC%\fart.exe" "*.bat" [EXT] atr
if /I "%ALLEXT%"==".atx" "%GBC%\fart.exe" "*.bat" [EXT] atx
if /I "%ALLEXT%"==".atz" "%GBC%\fart.exe" "*.bat" [EXT] atz
if /I "%ALLEXT%"==".dcm" "%GBC%\fart.exe" "*.bat" [EXT] dcm
if /I "%ALLEXT%"==".com" "%GBC%\fart.exe" "*.bat" [EXT] com
if /I "%ALLEXT%"==".mx2" "%GBC%\fart.exe" "*.bat" [EXT] mx2
if /I "%ALLEXT%"==".mx1" "%GBC%\fart.exe" "*.bat" [EXT] mx1
if /I "%ALLEXT%"==".xfd" "%GBC%\fart.exe" "*.bat" [EXT] xfd
if /I "%ALLEXT%"==".pro" "%GBC%\fart.exe" "*.bat" [EXT] pro
if /I "%ALLEXT%"==".bas" "%GBC%\fart.exe" "*.bat" [EXT] bas
if /I "%ALLEXT%"==".ssd" "%GBC%\fart.exe" "*.bat" [EXT] ssd
if /I "%ALLEXT%"==".uef" "%GBC%\fart.exe" "*.bat" [EXT] uef
if /I "%ALLEXT%"==".unf" "%GBC%\fart.exe" "*.bat" [EXT] unf
if /I "%ALLEXT%"==".nes" "%GBC%\fart.exe" "*.bat" [EXT] nes
if /I "%ALLEXT%"==".fam" "%GBC%\fart.exe" "*.bat" [EXT] fam
if /I "%ALLEXT%"==".nds" "%GBC%\fart.exe" "*.bat" [EXT] nds
if /I "%ALLEXT%"==".fds" "%GBC%\fart.exe" "*.bat" [EXT] fds
if /I "%ALLEXT%"==".ngp" "%GBC%\fart.exe" "*.bat" [EXT] ngp
if /I "%ALLEXT%"==".npk" "%GBC%\fart.exe" "*.bat" [EXT] npk
if /I "%ALLEXT%"==".ngc" "%GBC%\fart.exe" "*.bat" [EXT] ngc
if /I "%ALLEXT%"==".neo" "%GBC%\fart.exe" "*.bat" [EXT] neo
if /I "%ALLEXT%"==".nd5" "%GBC%\fart.exe" "*.bat" [EXT] nd5
if /I "%ALLEXT%"==".pal" "%GBC%\fart.exe" "*.bat" [EXT] pal
if /I "%ALLEXT%"==".usa" "%GBC%\fart.exe" "*.bat" [EXT] usa
if /I "%ALLEXT%"==".u64" "%GBC%\fart.exe" "*.bat" [EXT] u64
if /I "%ALLEXT%"==".j64" "%GBC%\fart.exe" "*.bat" [EXT] j64
if /I "%ALLEXT%"==".v64" "%GBC%\fart.exe" "*.bat" [EXT] v64
if /I "%ALLEXT%"==".n64" "%GBC%\fart.exe" "*.bat" [EXT] n64
if /I "%ALLEXT%"==".z64" "%GBC%\fart.exe" "*.bat" [EXT] z64
if /I "%ALLEXT%"==".lnx" "%GBC%\fart.exe" "*.bat" [EXT] lnx
if /I "%ALLEXT%"==".int" "%GBC%\fart.exe" "*.bat" [EXT] int
if /I "%ALLEXT%"==".tap" "%GBC%\fart.exe" "*.bat" [EXT] tap
if /I "%ALLEXT%"==".dsk" "%GBC%\fart.exe" "*.bat" [EXT] dsk
if /I "%ALLEXT%"==".sad" "%GBC%\fart.exe" "*.bat" [EXT] sad
if /I "%ALLEXT%"==".col" "%GBC%\fart.exe" "*.bat" [EXT] col
if /I "%ALLEXT%"==".xdf" "%GBC%\fart.exe" "*.bat" [EXT] xdf
if /I "%ALLEXT%"==".dup" "%GBC%\fart.exe" "*.bat" [EXT] dup
if /I "%ALLEXT%"==".2hd" "%GBC%\fart.exe" "*.bat" [EXT] 2hd
if /I "%ALLEXT%"==".ipf" "%GBC%\fart.exe" "*.bat" [EXT] ipf
if /I "%ALLEXT%"==".dim" "%GBC%\fart.exe" "*.bat" [EXT] dim
if /I "%ALLEXT%"==".fdi" "%GBC%\fart.exe" "*.bat" [EXT] fdi
if /I "%ALLEXT%"==".hdi" "%GBC%\fart.exe" "*.bat" [EXT] hdi
if /I "%ALLEXT%"==".hdf" "%GBC%\fart.exe" "*.bat" [EXT] hdf
if /I "%ALLEXT%"==".nhd" "%GBC%\fart.exe" "*.bat" [EXT] nhd
if /I "%ALLEXT%"==".thd" "%GBC%\fart.exe" "*.bat" [EXT] thd
if /I "%ALLEXT%"==".hdm" "%GBC%\fart.exe" "*.bat" [EXT] hdm
if /I "%ALLEXT%"==".hds" "%GBC%\fart.exe" "*.bat" [EXT] hds
if /I "%ALLEXT%"==".d98" "%GBC%\fart.exe" "*.bat" [EXT] d98
if /I "%ALLEXT%"==".2DD" "%GBC%\fart.exe" "*.bat" [EXT] 2DD
if /I "%ALLEXT%"==".vfd" "%GBC%\fart.exe" "*.bat" [EXT] vfd
if /I "%ALLEXT%"==".t77" "%GBC%\fart.exe" "*.bat" [EXT] t77
if /I "%ALLEXT%"==".d77" "%GBC%\fart.exe" "*.bat" [EXT] d77
if /I "%ALLEXT%"==".d88" "%GBC%\fart.exe" "*.bat" [EXT] d88
if /I "%ALLEXT%"==".88d" "%GBC%\fart.exe" "*.bat" [EXT] 88d
if /I "%ALLEXT%"==".wsc" "%GBC%\fart.exe" "*.bat" [EXT] wsc
if /I "%ALLEXT%"==".zip" "%GBC%\fart.exe" "*.bat" [EXT] zip
if /I "%ALLEXT%"==".vboy" "%GBC%\fart.exe" "*.bat" [EXT] vboy
if /I "%ALLEXT%"==".wbfs" "%GBC%\fart.exe" "*.bat" [EXT] wbfs
if /I "%ALLEXT%"==".amiga" "%GBC%\fart.exe" "*.bat" [EXT] amiga
:extinjEND

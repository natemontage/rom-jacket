if not exist "%GBG%\%ROMJ%\%WSTMP%" goto :fztstd
CALL "%GBC%\fuzzyromchk.bat"
CALL "%GBC%\renamef.bat"
CALL "%GBC%\fuzextmv.bat"
:FZCOMPL

set FZTST=1
goto :fzout

:fztst
set FZTST=
:fzout

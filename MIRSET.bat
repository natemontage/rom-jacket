:MIRROR1
SET urlNthL=1
SET /A urlNthL -= 1
CALL :MIR1LGrab
GOTO MIRROR2
:MIR1LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\mirrors.set"') DO (
    SET MIR1=%%A
    goto :EOF
)
:MIRROR2
SET urlNthL=2
SET /A urlNthL -= 1
CALL :MIR2LGrab
GOTO MIRROR3
:MIR2LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\mirrors.set"') DO (
    SET MIR2=%%A
    goto :EOF
)
:MIRROR3
SET urlNthL=3
SET /A urlNthL -= 1
CALL :MIR3LGrab
GOTO MIRROR4
:MIR3LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\mirrors.set"') DO (
    SET MIR3=%%A
    goto :EOF
)
:MIRROR4
SET urlNthL=4
SET /A urlNthL -= 1
CALL :MIR4LGrab
GOTO MIRROR5
:MIR4LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\mirrors.set"') DO (
    SET MIR4=%%A
    goto :EOF
)
:MIRROR5
SET urlNthL=5
SET /A urlNthL -= 1
CALL :MIR5LGrab
GOTO :MIRROR6
:MIR5LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\mirrors.set"') DO (
    SET MIR5=%%A
    goto :EOF
)
:MIRROR6
SET urlNthL=6
SET /A urlNthL -= 1
CALL :MIR6LGrab
GOTO :MIRROR7
:MIR6LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\mirrors.set"') DO (
    SET MIR6=%%A
    goto :EOF
)
:MIRROR7
SET urlNthL=7
SET /A urlNthL -= 1
CALL :MIR7LGrab
GOTO :MIRROR8
:MIR7LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\mirrors.set"') DO (
    SET MIR7=%%A
    goto :EOF
)
:MIRROR8
SET urlNthL=8
SET /A urlNthL -= 1
CALL :MIR8LGrab
GOTO :MIRROR9
:MIR8LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\mirrors.set"') DO (
    SET MIR8=%%A
    goto :EOF
)
:MIRROR9
SET urlNthL=9
SET /A urlNthL -= 1
CALL :MIR9LGrab
GOTO :MIRROR10
:MIR9LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\mirrors.set"') DO (
    SET MIR9=%%A
    goto :EOF
)
:MIRROR10
SET urlNthL=10
SET /A urlNthL -= 1
CALL :MIR10LGrab
GOTO :MIRRORCONT
:MIR10LGrab
FOR /F "tokens=*" %%A IN ('MORE /E +%urlNthL% "%GBC%\mirrors.set"') DO (
    SET MIR10=%%A
    goto :EOF
)
:MIRRORCONT
exit /b
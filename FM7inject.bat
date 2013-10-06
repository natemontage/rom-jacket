SET FM7DSK=
SET FM7DSK1=
SET FM7DSK2=
SET FM7DSK3=

for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Disk 1*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side1*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side 1*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side_1*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side-1*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side-A*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side_A*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*SideA*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Disk A*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Disk-A*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Disk1*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Tape-1*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*TapeA*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Tape_A*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Tape1*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*TapeA*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\* A.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*_A.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*-A.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK1=%%~a
if /I "%%~xa"==".t77" SET FM7DSK1=%%~a
if /I "%%~xa"==".2D" SET FM7DSK1=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK1=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK1=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Disk 2*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side2*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side 2*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side_2*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side-2*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side-B*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side_B*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*SideB*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Disk B*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Disk-B*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Disk2*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Tape-2*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*TapeB*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Tape_B*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Tape2*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*TapeB*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\* B.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*_B.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*-B.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK2=%%~a
if /I "%%~xa"==".t77" SET FM7DSK2=%%~a
if /I "%%~xa"==".2D" SET FM7DSK2=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK2=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK2=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Disk 3*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side3*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side 3*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side_3*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side-3*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side-C*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Side_C*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*SideC*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Disk C*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Disk-C*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Disk3*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Tape-3*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*TapeC*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Tape_C*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*Tape3*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*TapeC*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\* C.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*_C.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\*-C.*"') do (
if /I "%%~xa"==".d77" SET FM7DSK3=%%~a
if /I "%%~xa"==".t77" SET FM7DSK3=%%~a
if /I "%%~xa"==".2D" SET FM7DSK3=%%~a
if /I "%%~xa"==".2DD" SET FM7DSK3=%%~a
if /I "%%~xa"==".vfd" SET FM7DSK3=%%~a
)

for /f "tokens=* delims= " %%a in ('dir /b /a-d "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%"') do (
if /I "%%~xa"==".d77" SET FM7DSK=%%~a
CALL :disking
if /I "%%~xa"==".t77" SET FM7DSK=%%~a
CALL :disking
if /I "%%~xa"==".2d" SET FM7DSK=%%~a
CALL :disking 
if /I "%%~xa"==".2dd" SET FM7DSK=%%~a
CALL :disking 
if /I "%%~xa"==".vfd" SET FM7DSK=%%~a
CALL :disking 
)
goto :injecFM7s

:disking
if /I "%FM7DSK%"=="%FM7DSK2%" exit /b
if /I "%FM7DSK%"=="%FM7DSK3%" exit /b
if /I "%FM7DSK%"=="%FM7DSK4%" exit /b
if /I "%FM7DSK%"=="" exit /b

:injecFM7s
pushd "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%"
"%GBC%\fart.exe" "*.bat" [DSK1] "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\%FM7DSK%"
if "%FM7DSK2%"=="" "%GBC%\fart.exe" "*.bat" --remove [DSK2]
if "%FM7DSK3%"=="" "%GBC%\fart.exe" "*.bat" --remove [DSK3]
if "%FM7DSK4%"=="" "%GBC%\fart.exe" "*.bat" --remove [DSK4]
if "%FM7DSK2%" NEQ "" "%GBC%\fart.exe" "*.bat" [DSK2] "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\%FM7DSK2%"
if "%FM7DSK3%" NEQ "" "%GBC%\fart.exe" "*.bat" [DSK3] "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\%FM7DSK3%"
if "%FM7DSK4%" NEQ "" "%GBC%\fart.exe" "*.bat" [DSK4] "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%\%FM7DSK4%"
popd
goto :FM7end

:FM7end
pushd "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%"
"%GBC%\fart.exe" "%XM7%.INI" [ROMPTH] "%GBG%\%GAM%\%CONS%\%FM7%\%CSTM%"
"%GBC%\fart.exe" "%XM7%.INI" [ROM] "%FM7DSK%"
"%GBC%\fart.exe" "%XM7%.INI" [EMUPTH] "%GBE%\%EMUZ%\%XM7%"
popd
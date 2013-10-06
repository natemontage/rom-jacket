for %%A in ("%GBE%\%EMUZ%\%PJVE%\data\roms\cartridge") do set VXPTH=%%~A

set NWDIR=Armor Attack
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Armor_Attack.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Bedlam
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Bedlam.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Berzerk
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Berzerk.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Blitz!
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Blitz.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Cosmic Chasm
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Cosmic_Chasm.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Dark Tower
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Dark_Tower.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Fortress of Narzod
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Fortress_of_Narzod.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Heads Up - Action Soccer
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Heads_Up.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Hyperchase (Analog Controls)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Hyperchase.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=MineStorm
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Minestorm.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=MineStorm II
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Minestorm2.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Polar Rescue
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Polar_Rescue.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Pole Position
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Pole_Position.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Rip-Off
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Rip_Off.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Scramble
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Scramble.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Solar Quest
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Solar_Quest.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Space Wars
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Space_Wars.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Spike
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Spike.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Star Castle
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Star_Castle.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Star Hawk
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Star_Hawk.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Star Trek
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Star_Trek.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Test Cartridge
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Test_Rev4.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Tour de France
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Tour_de_France.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Web Wars
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Web_Wars.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"

set VXPTH=%GBE%\%EMUZ%\%PJVE%\data\roms\homebrew

set NWDIR=Gravitrex
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Gravitrex.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Nebula Commander
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Nebula.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Patriots
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Patriots.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Patriots III
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Patriots3.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Protector
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\py050712.zip"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Revector
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Revector.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Space Frenzy
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Space_Frenzy.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Spike Hoppin'
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Spike_Hoppin.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Star Sling 4k  (Analog Controls)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\SSlingTE.bin.jverom"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Thrust
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Thrust.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=V-Frogger
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\VFrogger.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Vec Fu
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\VecFu.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Vecmania 64K
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Vecmania.bin.jverom"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Vectopia 64K
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Vectopia.bin.jverom"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Vector 21
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Vector21.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=War of the Robots
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\WOTR.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=War of the Robots - Bow to the Queen
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\BTTQ.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Wormhole
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Wormhole.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"

set VXPTH=%GBE%\%EMUZ%\%PJVE%\data\roms\homebrew

set NWDIR=Verzerk (VecVoice enabled Berzerk)
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Verzerk.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=YASI
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\py050712.zip"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"

set VXPTH=%GBE%\%EMUZ%\%PJVE%\data\roms\cartridge

set NWDIR=Animaction
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Animaction.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Art Master
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Art_Master.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Engine Analyzer
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Engine_Analyzer.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Melody Master
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Melody_Master.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"

set VXPTH=%GBE%\%EMUZ%\%PJVE%\data\roms\homebrew\demo

set NWDIR=3D Demo
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\3D_demo.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Bresenham
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\bnz17.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Lineart
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\lineart.zip"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Lineart2
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\lineart.zip"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Lineart3
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\lineart.zip"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Lineart4
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\lineart.zip"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=OldskOOl
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\oldskool.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Performance VX
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\performance_vx.zip"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Pimmelsafari II
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\pimmelsafari2.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"

set VXPTH=%GBE%\%EMUZ%\%PJVE%\data\roms\cartridge

set NWDIR=Clean Sweep
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Clean_Sweep.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Pitcher's Duel
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Pitchers_Duel.bin"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
set NWDIR=Spinball
for /f "tokens=* delims= " %%a in ('dir /b /a-d "%VXPTH%\Spinball.bi"') do set ROM=%%~a
mkdir "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%" & mklink "%GBG%\%GAM%\%CONS%\%VECTX%\%NWDIR%\%ROM%" "%VXPTH%\%ROM%"
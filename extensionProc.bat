:ACELEc
if not exist "%GBG%\%GAM%\%CONS%\%ACELE%" (goto :ACARCc)
pushd "%GBG%\%GAM%\%CONS%\%ACELE%"
CALL "%GBC%\extinjACELE.bat"
popd
:ACARCc
if not exist "%GBG%\%GAM%\%CONS%\%ACARC%" (goto :ACBBCc)
pushd "%GBG%\%GAM%\%CONS%\%ACARC%"
CALL "%GBC%\extinjACARC.bat"
popd
:ACBBCc
if not exist "%GBG%\%GAM%\%CONS%\%ACBBC%" (goto :BWSCc)
pushd "%GBG%\%GAM%\%CONS%\%ACBBC%"
CALL "%GBC%\extinjACBBC.bat"
popd
:BWSc
if not exist "%GBG%\%GAM%\%CONS%\%BWS%" (goto :BWSCc)
pushd "%GBG%\%GAM%\%CONS%\%BWS%"
CALL "%GBC%\extinjBWS.bat"
popd
:BWSCc
if not exist "%GBG%\%GAM%\%CONS%\%BWSC%" (goto :CM64c)
pushd "%GBG%\%GAM%\%CONS%\%BWSC%"
CALL "%GBC%\extinjBWSC.bat"
popd
:CM64c
if not exist "%GBG%\%GAM%\%CONS%\%CM64%" (goto :P3DOc)
pushd "%GBG%\%GAM%\%CONS%\%CM64%"
CALL "%GBC%\extinjCM64.bat"
popd
:P3DOc
if not exist "%GBG%\%GAM%\%CONS%\%P3DO%" (goto :CDIc)
pushd "%GBG%\%GAM%\%CONS%\%P3DO%"
CALL "%GBC%\extinjP3DO.bat"
popd
:CDIc
if not exist "%GBG%\%GAM%\%CONS%\%CDI%" (goto :APL2Ec)
pushd "%GBG%\%GAM%\%CONS%\%CDI%"
CALL "%GBC%\extinjCDI.bat"
popd
:APL2Ec
if not exist "%GBG%\%GAM%\%CONS%\%APL2E%" (goto :APL2GSc)
pushd "%GBG%\%GAM%\%CONS%\%APL2E%"
CALL "%GBC%\extinjAPL2E.bat"
popd
:APL2GSc
if not exist "%GBG%\%GAM%\%CONS%\%APL2GS%" (goto :FMTOWNSc)
pushd "%GBG%\%GAM%\%CONS%\%APL2GS%"
CALL "%GBC%\extinjAPL2GS.bat"
popd
:FMTOWNSc
if not exist "%GBG%\%GAM%\%CONS%\%FMTOWNS%" (goto :NEOPKTc)
pushd "%GBG%\%GAM%\%CONS%\%FMTOWNS%"
CALL "%GBC%\extinjFMTOWNS.bat"
popd
:NEOPKTc
if not exist "%GBG%\%GAM%\%CONS%\%NEOPKT%" (goto :NEOPKTCc)
pushd "%GBG%\%GAM%\%CONS%\%NEOPKT%"
CALL "%GBC%\extinjNEOPKT.bat"
popd
:NEOPKTCc
if not exist "%GBG%\%GAM%\%CONS%\%NEOPKTC%" (goto :FLASHc)
pushd "%GBG%\%GAM%\%CONS%\%NEOPKTC%"
CALL "%GBC%\extinjNEOPKTC.bat"
popd
:FLASHc
if not exist "%GBG%\%GAM%\%CONS%\%FLASH%" (goto :MSDSc)
pushd "%GBG%\%GAM%\%CONS%\%FLASH%"
CALL "%GBC%\extinjFLASH.bat"
popd
:MSDSc
if not exist "%GBG%\%GAM%\%CONS%\%MSDS%" (goto :WIN32c)
pushd "%GBG%\%GAM%\%CONS%\%MSDS%"
CALL "%GBC%\extinjMSDS.bat"
popd
:WIN32c
if not exist "%GBG%\%GAM%\%CONS%\%WIN32%" (goto :CAMIGc)
pushd "%GBG%\%GAM%\%CONS%\%WIN32%"
CALL "%GBC%\extinjWIN32.bat"
popd
:CAMIGc
if not exist "%GBG%\%GAM%\%CONS%\%CAMIG%" (goto :AMIG32c)
pushd "%GBG%\%GAM%\%CONS%\%CAMIG%"
CALL "%GBC%\extinjCAMIG.bat"
popd
:AMIG32c
if not exist "%GBG%\%GAM%\%CONS%\%AMIG32%" (goto :INTELc)
pushd "%GBG%\%GAM%\%CONS%\%AMIG32%"
CALL "%GBC%\extinjAMIG32.bat"
popd
:INTELc
if not exist "%GBG%\%GAM%\%CONS%\%INTEL%" (goto :COLECc)
pushd "%GBG%\%GAM%\%CONS%\%INTEL%"
CALL "%GBC%\extinjINTEL.bat"
popd
:COLECc
if not exist "%GBG%\%GAM%\%CONS%\%COLEC%" (goto :AT26c)
pushd "%GBG%\%GAM%\%CONS%\%COLEC%"
CALL "%GBC%\extinjCOLEC.bat"
popd
:AT26c
if not exist "%GBG%\%GAM%\%CONS%\%AT26%" (goto :AT52c)
pushd "%GBG%\%GAM%\%CONS%\%AT26%"
CALL "%GBC%\extinjAT26.bat"
popd
:AT52c
if not exist "%GBG%\%GAM%\%CONS%\%AT52%" (goto :AMSTRc)
pushd "%GBG%\%GAM%\%CONS%\%AT52%"
CALL "%GBC%\extinjAT52.bat"
popd
:AMSTRc
if not exist "%GBG%\%GAM%\%CONS%\%AMSTR%" (goto :JAGCDc)
pushd "%GBG%\%GAM%\%CONS%\%AMSTR%"
CALL "%GBC%\extinjAMSTR.bat"
popd
:JAGCDc
if not exist "%GBG%\%GAM%\%CONS%\%JAGCD%" (goto :JAGc)
pushd "%GBG%\%GAM%\%CONS%\%JAGCD%"
CALL "%GBC%\extinjJAGCD.bat"
popd
:JAGc
if not exist "%GBG%\%GAM%\%CONS%\%JAG%" (goto :LYNXc)
pushd "%GBG%\%GAM%\%CONS%\%JAG%"
CALL "%GBC%\extinjJAG.bat"
popd
:LYNXc
if not exist "%GBG%\%GAM%\%CONS%\%LYNX%" (goto :AT78c)
pushd "%GBG%\%GAM%\%CONS%\%LYNX%"
CALL "%GBC%\extinjLYNX.bat"
popd
:AT78c
if not exist "%GBG%\%GAM%\%CONS%\%AT78%" (goto :N64c)
pushd "%GBG%\%GAM%\%CONS%\%AT78%"
CALL "%GBC%\extinjAT78.bat"
popd
:N64c
if not exist "%GBG%\%GAM%\%CONS%\%N64%" (goto :NDSc)
pushd "%GBG%\%GAM%\%CONS%\%N64%"
CALL "%GBC%\extinjN64.bat"
popd
:NDSc
if not exist "%GBG%\%GAM%\%CONS%\%NDS%" (goto :WIIc)
pushd "%GBG%\%GAM%\%CONS%\%NDS%"
CALL "%GBC%\extinjNDS.bat"
popd
:WIIc
if not exist "%GBG%\%GAM%\%CONS%\%WII%" (goto :NGCc)
pushd "%GBG%\%GAM%\%CONS%\%WII%"
CALL "%GBC%\extinjWII.bat"
popd
:NGCc
if not exist "%GBG%\%GAM%\%CONS%\%NGC%" (goto :NGBc)
pushd "%GBG%\%GAM%\%CONS%\%NGC%"
CALL "%GBC%\extinjNGC.bat"
popd
:NGBc
if not exist "%GBG%\%GAM%\%CONS%\%NGB%" (goto :NGBCc)
pushd "%GBG%\%GAM%\%CONS%\%NGB%"
CALL "%GBC%\extinjNGB.bat"
popd
:NGBCc
if not exist "%GBG%\%GAM%\%CONS%\%NGBC%" (goto :NGBAc)
pushd "%GBG%\%GAM%\%CONS%\%NGBC%"
CALL "%GBC%\extinjNGBC.bat"
popd
:NGBAc
if not exist "%GBG%\%GAM%\%CONS%\%NGBA%" (goto :NESc)
pushd "%GBG%\%GAM%\%CONS%\%NGBA%"
CALL "%GBC%\extinjNGBA.bat"
popd
:NESc
if not exist "%GBG%\%GAM%\%CONS%\%NES%" (goto :SNFAMc)
pushd "%GBG%\%GAM%\%CONS%\%NES%"
CALL "%GBC%\extinjNES.bat"
popd
:NFAMc
if not exist "%GBG%\%GAM%\%CONS%\%NFAM%" (goto :SNESc)
pushd "%GBG%\%GAM%\%CONS%\%NFAM%"
CALL "%GBC%\extinjNFAM.bat"
popd
:SNESc
if not exist "%GBG%\%GAM%\%CONS%\%SNES%" (goto :SFAMc)
pushd "%GBG%\%GAM%\%CONS%\%SNES%"
CALL "%GBC%\extinjSNES.bat"
popd
:SFAMc
if not exist "%GBG%\%GAM%\%CONS%\%SFAM%" (goto :PCFXc)
pushd "%GBG%\%GAM%\%CONS%\%SFAM%"
CALL "%GBC%\extinjSFAM.bat"
popd
:PCFXc
if not exist "%GBG%\%GAM%\%CONS%\%PCFX%" (goto :PC98c)
pushd "%GBG%\%GAM%\%CONS%\%PCFX%"
CALL "%GBC%\extinjPCFX.bat"
popd
:PC98c
if not exist "%GBG%\%GAM%\%CONS%\%PC98%" (goto :MSXc)
pushd "%GBG%\%GAM%\%CONS%\%PC98%"
CALL "%GBC%\extinjPC98.bat"
popd
:MSXc
if not exist "%GBG%\%GAM%\%CONS%\%MSX%" (goto :TOUHUc)
pushd "%GBG%\%GAM%\%CONS%\%MSX%"
CALL "%GBC%\extinjMSX.bat"
popd
:TOUHUc
if not exist "%GBG%\%GAM%\%CONS%\%TOUHU%" (goto :X68Kc)
pushd "%GBG%\%GAM%\%CONS%\%TOUHU%"
CALL "%GBC%\extinjTOUHU.bat"
popd
:X68Kc
if not exist "%GBG%\%GAM%\%CONS%\%X68K%" (goto :SEGAGc)
pushd "%GBG%\%GAM%\%CONS%\%X68K%"
CALL "%GBC%\extinjX68K.bat"
popd
:SEGAGc
if not exist "%GBG%\%GAM%\%CONS%\%SEGAG%" (goto :SEGAMDc)
pushd "%GBG%\%GAM%\%CONS%\%SEGAG%"
CALL "%GBC%\extinjSEGAMD.bat"
popd
:SEGAMDc
if not exist "%GBG%\%GAM%\%CONS%\%SEGAMD%" (goto :SEG1Kc)
pushd "%GBG%\%GAM%\%CONS%\%SEGAMD%"
CALL "%GBC%\extinjSEGAG.bat"
popd
:SEG1Kc
if not exist "%GBG%\%GAM%\%CONS%\%SEG1K%" (goto :SEGMSc)
pushd "%GBG%\%GAM%\%CONS%\%SEG1K%"
CALL "%GBC%\extinjSEG1K.bat"
popd
:SEGMSc
if not exist "%GBG%\%GAM%\%CONS%\%SEGMS%" (goto :SEGDCc)
pushd "%GBG%\%GAM%\%CONS%\%SEGMS%"
CALL "%GBC%\extinjSEGMS.bat"
popd
:SEGDCc
if not exist "%GBG%\%GAM%\%CONS%\%SEGDC%" (goto :SEGGc)
pushd "%GBG%\%GAM%\%CONS%\%SEGDC%"
CALL "%GBC%\extinjSEGDC.bat"
popd
:SEGGc
if not exist "%GBG%\%GAM%\%CONS%\%SEGG%" (goto :SEGCDc)
pushd "%GBG%\%GAM%\%CONS%\%SEGG%"
CALL "%GBC%\extinjSEGG.bat"
popd
:SEGCDc
if not exist "%GBG%\%GAM%\%CONS%\%SEGCD%" (goto :SSATc)
pushd "%GBG%\%GAM%\%CONS%\%SEGCD%"
CALL "%GBC%\extinjSEGCD.bat"
popd
:SSATc
if not exist "%GBG%\%GAM%\%CONS%\%SSAT%" (goto :SG32Xc)
pushd "%GBG%\%GAM%\%CONS%\%SSAT%"
CALL "%GBC%\extinjSSAT.bat"
popd
:SG32Xc
if not exist "%GBG%\%GAM%\%CONS%\%SG32X%" (goto :PS1c)
pushd "%GBG%\%GAM%\%CONS%\%SG32X%"
CALL "%GBC%\extinjSG32X.bat"
popd
:PS1c
if not exist "%GBG%\%GAM%\%CONS%\%PS1%" (goto :PSPc)
pushd "%GBG%\%GAM%\%CONS%\%PS1%"
CALL "%GBC%\extinjPS1.bat"
popd
:PSPc
if not exist "%GBG%\%GAM%\%CONS%\%PSP%" (goto :TG16c)
pushd "%GBG%\%GAM%\%CONS%\%PSP%"
CALL "%GBC%\extinjPSP.bat" 
popd
:TG16c
if not exist "%GBG%\%GAM%\%CONS%\%TG16%" (goto :TGCDc)
pushd "%GBG%\%GAM%\%CONS%\%TG16%"
CALL "%GBC%\extinjTG16.bat"
popd
:TGCDc
if not exist "%GBG%\%GAM%\%CONS%\%TGCD%" (goto :PS2c)
pushd "%GBG%\%GAM%\%CONS%\%TGCD%"
CALL "%GBC%\extinjTGCD.bat"
popd
:PS2c
if not exist "%GBG%\%GAM%\%CONS%\%PS2%" (goto :PCECDc)
pushd "%GBG%\%GAM%\%CONS%\%PS2%"
CALL "%GBC%\extinjPS2.bat"
popd
:PCECDc
if not exist "%GBG%\%GAM%\%CONS%\%PCECD%" (goto :SGFXc)
pushd "%GBG%\%GAM%\%CONS%\%PCECD%"
CALL "%GBC%\extinjPCECD.bat"
popd
:SGFXc
if not exist "%GBG%\%GAM%\%CONS%\%SGFX%" (goto :EMARCc)
pushd "%GBG%\%GAM%\%CONS%\%SGFX%"
CALL "%GBC%\extinjSGFX.bat"
popd
:EMARCc
if not exist "%GBG%\%GAM%\%CONS%\%EMARC%" (goto :PCENGc)
pushd "%GBG%\%GAM%\%CONS%\%EMARC%"
CALL "%GBC%\extinjEMARC.bat"
popd
:PCENGc
if not exist "%GBG%\%GAM%\%CONS%\%PCENG%" (goto :VECTXc)
pushd "%GBG%\%GAM%\%CONS%\%PCENG%"
CALL "%GBC%\extinjPCENG.bat"
popd
:VECTXc
if not exist "%GBG%\%GAM%\%CONS%\%VECTX%" (goto :ZXSPc)
pushd "%GBG%\%GAM%\%CONS%\%VECTX%"
CALL "%GBC%\extinjVECTX.bat"
popd
:ZXSPc
if not exist "%GBG%\%GAM%\%CONS%\%ZXSP%" (goto :ARCDc)
pushd "%GBG%\%GAM%\%CONS%\%ZXSP%"
CALL "%GBC%\extinjZXSP.bat"
popd
:ARCDc
if not exist "%GBG%\%GAM%\%CONS%\%ARCD%" (goto :CPSc)
pushd "%GBG%\%GAM%\%CONS%\%ARCD%"
CALL "%GBC%\extinjARCD.bat"
popd
:CPSc
if not exist "%GBG%\%GAM%\%CONS%\%CPS%" (goto :CPS2c)
pushd "%GBG%\%GAM%\%CONS%\%CPS%"
CALL "%GBC%\extinjCPS.bat"
popd
:CPS2c
if not exist "%GBG%\%GAM%\%CONS%\%CPS2%" (goto :CPS3c)
pushd "%GBG%\%GAM%\%CONS%\%CPS2%"
CALL "%GBC%\extinjCPS2.bat"
popd
:CPS3c
if not exist "%GBG%\%GAM%\%CONS%\%CPS3%" (goto :DAPHNc)
pushd "%GBG%\%GAM%\%CONS%\%CPS3%"
CALL "%GBC%\extinjCPS3.bat"
popd
:DAPHNc
if not exist "%GBG%\%GAM%\%CONS%\%DAPHN%" (goto :NEOPKTCc)
pushd "%GBG%\%GAM%\%CONS%\%DAPHN%"
CALL "%GBC%\extinjDAPHN.bat"
popd
:NEOPKTCc
if not exist "%GBG%\%GAM%\%CONS%\%NEOPKTC%" (goto :FM7c)
pushd "%GBG%\%GAM%\%CONS%\%NEOPKTC%"
CALL "%GBC%\extinjNEOPKTC.bat"
popd
:FM7c
if not exist "%GBG%\%GAM%\%CONS%\%FM7%" (goto :SAMCc)
pushd "%GBG%\%GAM%\%CONS%\%FM7%"
CALL "%GBC%\extinjFM7.bat"
popd
:SAMCc
if not exist "%GBG%\%GAM%\%CONS%\%SAMC%" (goto :AT8Hc)
pushd "%GBG%\%GAM%\%CONS%\%SAMC%"
CALL "%GBC%\extinjSAMC.bat"
popd
:AT8Hc
if not exist "%GBG%\%GAM%\%CONS%\%AT8H%" (goto :ATSTc)
pushd "%GBG%\%GAM%\%CONS%\%AT8H%"
CALL "%GBC%\extinjAT8H.bat"
popd
:ATSTc
if not exist "%GBG%\%GAM%\%CONS%\%ATST%" (goto :NAOMIc)
pushd "%GBG%\%GAM%\%CONS%\%ATST%"
CALL "%GBC%\extinjATST.bat"
popd
:NAOMIc
if not exist "%GBG%\%GAM%\%CONS%\%NAOMI%" (goto :SEGM3c)
pushd "%GBG%\%GAM%\%CONS%\%NAOMI%"
CALL "%GBC%\extinjNAOMI.bat"
popd
:SEGM3c
if not exist "%GBG%\%GAM%\%CONS%\%SEGM3%" (goto :SEGM2c)
pushd "%GBG%\%GAM%\%CONS%\%SEGM3%"
CALL "%GBC%\extinjSEGM3.bat"
popd
:SEGM2c
if not exist "%GBG%\%GAM%\%CONS%\%SEGM2%" (goto :TAITXc)
pushd "%GBG%\%GAM%\%CONS%\%SEGM2%"
CALL "%GBC%\extinjSEGM2.bat"
popd
:TAITXc
if not exist "%GBG%\%GAM%\%CONS%\%TAITX%" (goto :NEOGEc)
pushd "%GBG%\%GAM%\%CONS%\%TAITX%"
CALL "%GBC%\extinjTAITX.bat"
popd
:NEOGEc
if not exist "%GBG%\%GAM%\%CONS%\%NEOGE%" (goto :NEOCDc)
pushd "%GBG%\%GAM%\%CONS%\%NEOGE%"
CALL "%GBC%\extinjNEOGE.bat"
popd
:NEOCDc
if not exist "%GBG%\%GAM%\%CONS%\%NEOCD%" (goto :NEO64c)
pushd "%GBG%\%GAM%\%CONS%\%NEOCD%"
CALL "%GBC%\extinjNEOCD.bat"
popd
:NEO64c
if not exist "%GBG%\%GAM%\%CONS%\%NEO64%" (goto :ATMSc)
pushd "%GBG%\%GAM%\%CONS%\%NEO64%"
CALL "%GBC%\extinjNEO64.bat"
popd
:ATMSc
if not exist "%GBG%\%GAM%\%CONS%\%ATMS%" (goto :extprocdone)
pushd "%GBG%\%GAM%\%CONS%\%ATMS%"
CALL "%GBC%\extinjATMS.bat"
popd
:extprocdone
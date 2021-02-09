####MFV AVENA####
#MFV leaf number 
MFV_1 <- STI_ln_1 - min(STI100_AV_LN) / (max(STI100_AV_LN) - min(STI100_AV_LN))
MFV_2 <- STI_ln_2 - min(STI100_AV_LN) / (max(STI100_AV_LN) - min(STI100_AV_LN))
MFV_3 <- STI_ln_3 - min(STI100_AV_LN) / (max(STI100_AV_LN) - min(STI100_AV_LN))
MFV_4 <- STI_ln_4 - min(STI100_AV_LN) / (max(STI100_AV_LN) - min(STI100_AV_LN))
MFV_5 <- STI_ln_5 - min(STI100_AV_LN) / (max(STI100_AV_LN) - min(STI100_AV_LN))
MFV_6 <- STI_ln_6 - min(STI100_AV_LN) / (max(STI100_AV_LN) - min(STI100_AV_LN))

MFV100_AV_LN <- c(MFV_1, MFV_2, MFV_3, MFV_4, MFV_5, MFV_6)

#MFV stem length 
MFV_1_sl <- STI_sl_1 - min(STI100_AV_SL) / (max(STI100_AV_SL) - min(STI100_AV_SL))
MFV_2_sl <- STI_sl_2 - min(STI100_AV_SL) / (max(STI100_AV_SL) - min(STI100_AV_SL))
MFV_3_sl <- STI_sl_3 - min(STI100_AV_SL) / (max(STI100_AV_SL) - min(STI100_AV_SL))
MFV_4_sl <- STI_sl_4 - min(STI100_AV_SL) / (max(STI100_AV_SL) - min(STI100_AV_SL))
MFV_5_sl <- STI_sl_5 - min(STI100_AV_SL) / (max(STI100_AV_SL) - min(STI100_AV_SL))
MFV_6_sl <- STI_sl_6 - min(STI100_AV_SL) / (max(STI100_AV_SL) - min(STI100_AV_SL))

MFV100_AV_SL <- c(MFV_1_sl, MFV_2_sl, MFV_3_sl, MFV_4_sl, MFV_5_sl, MFV_6_sl)

#MFV Root length 
MFV_1_rl <- STI_rl_1 - min(STI100_AV_RL) / (max(STI100_AV_RL) - min(STI100_AV_RL))
MFV_2_rl <- STI_rl_2 - min(STI100_AV_RL) / (max(STI100_AV_RL) - min(STI100_AV_RL))
MFV_3_rl <- STI_rl_3 - min(STI100_AV_RL) / (max(STI100_AV_RL) - min(STI100_AV_RL))
MFV_4_rl <- STI_rl_4 - min(STI100_AV_RL) / (max(STI100_AV_RL) - min(STI100_AV_RL))
MFV_5_rl <- STI_rl_5 - min(STI100_AV_RL) / (max(STI100_AV_RL) - min(STI100_AV_RL))
MFV_6_rl <- STI_rl_6 - min(STI100_AV_RL) / (max(STI100_AV_RL) - min(STI100_AV_RL))

MFV100_AV_RL <- c(MFV_1_rl, MFV_2_rl, MFV_3_rl, MFV_4_rl, MFV_5_rl, MFV_6_rl)

#MFV Fresh weight
MFV_1_fw <- STI_fw_1 - min(STI100_AV_FW) / (max(STI100_AV_FW) - min(STI100_AV_FW))
MFV_2_fw <- STI_fw_2 - min(STI100_AV_FW) / (max(STI100_AV_FW) - min(STI100_AV_FW))
MFV_3_fw <- STI_fw_3 - min(STI100_AV_FW) / (max(STI100_AV_FW) - min(STI100_AV_FW))
MFV_4_fw <- STI_fw_4 - min(STI100_AV_FW) / (max(STI100_AV_FW) - min(STI100_AV_FW))
MFV_5_fw <- STI_fw_5 - min(STI100_AV_FW) / (max(STI100_AV_FW) - min(STI100_AV_FW))
MFV_6_fw <- STI_fw_6 - min(STI100_AV_FW) / (max(STI100_AV_FW) - min(STI100_AV_FW))

MFV100_AV_FW <- c(MFV_1_fw, MFV_2_fw, MFV_3_fw, MFV_4_fw, MFV_5_fw, MFV_6_fw)

#MFV Dry weight

MFV_1_dw <- STI_dw_1 - min(STI100_AV_DW) / (max(STI100_AV_DW) - min(STI100_AV_DW))
MFV_2_dw <- STI_dw_2 - min(STI100_AV_DW) / (max(STI100_AV_DW) - min(STI100_AV_DW))
MFV_3_dw <- STI_dw_3 - min(STI100_AV_DW) / (max(STI100_AV_DW) - min(STI100_AV_DW))
MFV_4_dw <- STI_dw_4 - min(STI100_AV_DW) / (max(STI100_AV_DW) - min(STI100_AV_DW))
MFV_5_dw <- STI_dw_5 - min(STI100_AV_DW) / (max(STI100_AV_DW) - min(STI100_AV_DW))
MFV_6_dw <- STI_dw_6 - min(STI100_AV_DW) / (max(STI100_AV_DW) - min(STI100_AV_DW))

MFV100_AV_DW <- c(MFV_1_dw, MFV_2_dw, MFV_3_dw, MFV_4_dw, MFV_5_dw, MFV_6_dw)

MFV_AV <-data.frame("MFV_Leaf_number"=mean(MFV100_AV_LN),"MFV_Stem_Length"=mean(MFV100_AV_SL),"MFV_Root_Length"= mean(MFV100_AV_RL),"MFV_Fresh_weight"= mean(MFV100_AV_FW), "MFV_Dry_weight"=mean(MFV100_AV_DW))

####MFV AVENA 200####
#MFV leaf number 
MFV_01 <- STI_ln_01 - min(STI200_AV_LN) / (max(STI200_AV_LN) - min(STI200_AV_LN))
MFV_02 <- STI_ln_02 - min(STI200_AV_LN) / (max(STI200_AV_LN) - min(STI200_AV_LN))
MFV_03 <- STI_ln_03 - min(STI200_AV_LN) / (max(STI200_AV_LN) - min(STI200_AV_LN))
MFV_04 <- STI_ln_04 - min(STI200_AV_LN) / (max(STI200_AV_LN) - min(STI200_AV_LN))
MFV_05 <- STI_ln_05 - min(STI200_AV_LN) / (max(STI200_AV_LN) - min(STI200_AV_LN))
MFV_06 <- STI_ln_06 - min(STI200_AV_LN) / (max(STI200_AV_LN) - min(STI200_AV_LN))

MFV200_AV_LN <- c(MFV_01, MFV_02, MFV_03, MFV_04, MFV_05, MFV_06)


#MFV stem length 
MFV_01_sl <- STI_sl_01 - min(STI200_AV_SL) / (max(STI200_AV_SL) - min(STI200_AV_SL))
MFV_02_sl <- STI_sl_02 - min(STI200_AV_SL) / (max(STI200_AV_SL) - min(STI200_AV_SL))
MFV_03_sl <- STI_sl_03 - min(STI200_AV_SL) / (max(STI200_AV_SL) - min(STI200_AV_SL))
MFV_04_sl <- STI_sl_04 - min(STI200_AV_SL) / (max(STI200_AV_SL) - min(STI200_AV_SL))
MFV_05_sl <- STI_sl_05 - min(STI200_AV_SL) / (max(STI200_AV_SL) - min(STI200_AV_SL))
MFV_06_sl <- STI_sl_06 - min(STI200_AV_SL) / (max(STI200_AV_SL) - min(STI200_AV_SL))

MFV200_AV_SL <- c(MFV_01_sl, MFV_02_sl, MFV_03_sl, MFV_04_sl, MFV_05_sl, MFV_06_sl)

#MFV Root length 
MFV_01_rl <- STI_rl_01 - min(STI200_AV_RL) / (max(STI200_AV_RL) - min(STI200_AV_RL))
MFV_02_rl <- STI_rl_02 - min(STI200_AV_RL) / (max(STI200_AV_RL) - min(STI200_AV_RL))
MFV_03_rl <- STI_rl_03 - min(STI200_AV_RL) / (max(STI200_AV_RL) - min(STI200_AV_RL))
MFV_04_rl <- STI_rl_04 - min(STI200_AV_RL) / (max(STI200_AV_RL) - min(STI200_AV_RL))
MFV_05_rl <- STI_rl_05 - min(STI200_AV_RL) / (max(STI200_AV_RL) - min(STI200_AV_RL))
MFV_06_rl <- STI_rl_06 - min(STI200_AV_RL) / (max(STI200_AV_RL) - min(STI200_AV_RL))

MFV200_AV_RL <- c(MFV_01_rl, MFV_02_rl, MFV_03_rl, MFV_04_rl, MFV_05_rl, MFV_06_rl)

#MFV Fresh weight
MFV_01_fw <- STI_fw_01 - min(STI200_AV_FW) / (max(STI200_AV_FW) - min(STI200_AV_FW))
MFV_02_fw <- STI_fw_02 - min(STI200_AV_FW) / (max(STI200_AV_FW) - min(STI200_AV_FW))
MFV_03_fw <- STI_fw_03 - min(STI200_AV_FW) / (max(STI200_AV_FW) - min(STI200_AV_FW))
MFV_04_fw <- STI_fw_04 - min(STI200_AV_FW) / (max(STI200_AV_FW) - min(STI200_AV_FW))
MFV_05_fw <- STI_fw_05 - min(STI200_AV_FW) / (max(STI200_AV_FW) - min(STI200_AV_FW))
MFV_06_fw <- STI_fw_06 - min(STI200_AV_FW) / (max(STI200_AV_FW) - min(STI200_AV_FW))

MFV200_AV_FW <- c(MFV_01_fw, MFV_02_fw, MFV_03_fw, MFV_04_fw, MFV_05_fw, MFV_06_fw)

#MFV Dry weight

MFV_01_dw <- STI_dw_01 - min(STI200_AV_DW) / (max(STI200_AV_DW) - min(STI200_AV_DW))
MFV_02_dw <- STI_dw_02 - min(STI200_AV_DW) / (max(STI200_AV_DW) - min(STI200_AV_DW))
MFV_03_dw <- STI_dw_03 - min(STI200_AV_DW) / (max(STI200_AV_DW) - min(STI200_AV_DW))
MFV_04_dw <- STI_dw_04 - min(STI200_AV_DW) / (max(STI200_AV_DW) - min(STI200_AV_DW))
MFV_05_dw <- STI_dw_05 - min(STI200_AV_DW) / (max(STI200_AV_DW) - min(STI200_AV_DW))
MFV_06_dw <- STI_dw_06 - min(STI200_AV_DW) / (max(STI200_AV_DW) - min(STI200_AV_DW))

MFV200_AV_DW <- c(MFV_01_dw, MFV_02_dw, MFV_03_dw, MFV_04_dw, MFV_05_dw, MFV_06_dw)

MFV200_AV <-data.frame("MFV_Leaf_number"=mean(MFV200_AV_LN),"MFV_Stem_Length"=mean(MFV200_AV_SL),"MFV_Root_Length"= mean(MFV200_AV_RL),"MFV_Fresh_weight"= mean(MFV200_AV_FW), "MFV_Dry_weight"=mean(MFV200_AV_DW))

####DROUGHT####
#MFV leaf number 
MFV_001 <- DTI_ln_01 - min(DTI_AV_LN) / (max(DTI_AV_LN) - min(DTI_AV_LN))
MFV_002 <- DTI_ln_02 - min(DTI_AV_LN) / (max(DTI_AV_LN) - min(DTI_AV_LN))
MFV_003 <- DTI_ln_03 - min(DTI_AV_LN) / (max(DTI_AV_LN) - min(DTI_AV_LN))
MFV_004 <- DTI_ln_04 - min(DTI_AV_LN) / (max(DTI_AV_LN) - min(DTI_AV_LN))
MFV_005 <- DTI_ln_05 - min(DTI_AV_LN) / (max(DTI_AV_LN) - min(DTI_AV_LN))
MFV_006 <- DTI_ln_06 - min(DTI_AV_LN) / (max(DTI_AV_LN) - min(DTI_AV_LN))

MFV_D_AV_LN <- c(MFV_001, MFV_002, MFV_003, MFV_004, MFV_005, MFV_006)


#MFV stem length 
MFV_001_sl <- DTI_sl_01 - min(DTI_AV_SL) / (max(DTI_AV_SL) - min(DTI_AV_SL))
MFV_002_sl <- DTI_sl_02 - min(DTI_AV_SL) / (max(DTI_AV_SL) - min(DTI_AV_SL))
MFV_003_sl <- DTI_sl_03 - min(DTI_AV_SL) / (max(DTI_AV_SL) - min(DTI_AV_SL))
MFV_004_sl <- DTI_sl_04 - min(DTI_AV_SL) / (max(DTI_AV_SL) - min(DTI_AV_SL))
MFV_005_sl <- DTI_sl_05 - min(DTI_AV_SL) / (max(DTI_AV_SL) - min(DTI_AV_SL))
MFV_006_sl <- DTI_sl_06 - min(DTI_AV_SL) / (max(DTI_AV_SL) - min(DTI_AV_SL))

MFV_D_AV_SL <- c(MFV_001_sl, MFV_002_sl, MFV_003_sl, MFV_004_sl, MFV_005_sl, MFV_006_sl)

#MFV Root length 
MFV_001_rl <- DTI_rl_01 - min(DTI_AV_RL) / (max(DTI_AV_RL) - min(DTI_AV_RL))
MFV_002_rl <- DTI_rl_02 - min(DTI_AV_RL) / (max(DTI_AV_RL) - min(DTI_AV_RL))
MFV_003_rl <- DTI_rl_03 - min(DTI_AV_RL) / (max(DTI_AV_RL) - min(DTI_AV_RL))
MFV_004_rl <- DTI_rl_04 - min(DTI_AV_RL) / (max(DTI_AV_RL) - min(DTI_AV_RL))
MFV_005_rl <- DTI_rl_05 - min(DTI_AV_RL) / (max(DTI_AV_RL) - min(DTI_AV_RL))
MFV_006_rl <- DTI_rl_06 - min(DTI_AV_RL) / (max(DTI_AV_RL) - min(DTI_AV_RL))

MFV_D_AV_RL <- c(MFV_001_rl, MFV_002_rl, MFV_003_rl, MFV_004_rl, MFV_005_rl, MFV_006_rl)

#MFV Fresh weight
MFV_001_fw <- DTI_fw_01 - min(DTI_AV_FW) / (max(DTI_AV_FW) - min(DTI_AV_FW))
MFV_002_fw <- DTI_fw_02 - min(DTI_AV_FW) / (max(DTI_AV_FW) - min(DTI_AV_FW))
MFV_003_fw <- DTI_fw_03 - min(DTI_AV_FW) / (max(DTI_AV_FW) - min(DTI_AV_FW))
MFV_004_fw <- DTI_fw_04 - min(DTI_AV_FW) / (max(DTI_AV_FW) - min(DTI_AV_FW))
MFV_005_fw <- DTI_fw_05 - min(DTI_AV_FW) / (max(DTI_AV_FW) - min(DTI_AV_FW))
MFV_006_fw <- DTI_fw_06 - min(DTI_AV_FW) / (max(DTI_AV_FW) - min(DTI_AV_FW))

MFV_D_AV_FW <- c(MFV_001_fw, MFV_002_fw, MFV_003_fw, MFV_004_fw, MFV_005_fw, MFV_006_fw)

#MFV Dry weight

MFV_001_dw <- DTI_dw_01 - min(DTI_AV_DW) / (max(DTI_AV_DW) - min(DTI_AV_DW))
MFV_002_dw <- DTI_dw_02 - min(DTI_AV_DW) / (max(DTI_AV_DW) - min(DTI_AV_DW))
MFV_003_dw <- DTI_dw_03 - min(DTI_AV_DW) / (max(DTI_AV_DW) - min(DTI_AV_DW))
MFV_004_dw <- DTI_dw_04 - min(DTI_AV_DW) / (max(DTI_AV_DW) - min(DTI_AV_DW))
MFV_005_dw <- DTI_dw_05 - min(DTI_AV_DW) / (max(DTI_AV_DW) - min(DTI_AV_DW))
MFV_006_dw <- DTI_dw_06 - min(DTI_AV_DW) / (max(DTI_AV_DW) - min(DTI_AV_DW))

MFV_D_AV_DW <- c(MFV_001_dw, MFV_002_dw, MFV_003_dw, MFV_004_dw, MFV_005_dw, MFV_006_dw)

MFV_D_AV <-data.frame("MFV_Leaf_number"=mean(MFV_D_AV_LN),"MFV_Stem_Length"=mean(MFV_D_AV_SL),"MFV_Root_Length"= mean(MFV_D_AV_RL),"MFV_Fresh_weight"= mean(MFV_D_AV_FW), "MFV_Dry_weight"=mean(MFV_D_AV_DW))

MFV_AV <- data.frame(MFV_AV, MFV200_AV, MFV_D_AV)


####MFV TRITICUM####

#MFV leaf number 
MFV_1_T <- STI01_LN - min(STI100_LN) / (max(STI100_LN) - min(STI100_LN))
MFV_2_T <- STI02_LN - min(STI100_LN) / (max(STI100_LN) - min(STI100_LN))
MFV_3_T <- STI03_LN - min(STI100_LN) / (max(STI100_LN) - min(STI100_LN))
MFV_4_T <- STI04_LN - min(STI100_LN) / (max(STI100_LN) - min(STI100_LN))
MFV_5_T <- STI05_LN - min(STI100_LN) / (max(STI100_LN) - min(STI100_LN))
MFV_6_T <- STI06_LN - min(STI100_LN) / (max(STI100_LN) - min(STI100_LN))

MFV100_TR_LN <- c(MFV_1_T, MFV_2_T, MFV_3_T, MFV_4_T, MFV_5_T, MFV_6_T)

#MFV stem length 
MFV_1_T_SL <- STI01_SL - min(STI100_SL) / (max(STI100_SL) - min(STI100_SL))
MFV_2_T_SL <- STI02_SL - min(STI100_SL) / (max(STI100_SL) - min(STI100_SL))
MFV_3_T_SL <- STI03_SL - min(STI100_SL) / (max(STI100_SL) - min(STI100_SL))
MFV_4_T_SL <- STI04_SL - min(STI100_SL) / (max(STI100_SL) - min(STI100_SL))
MFV_5_T_SL <- STI05_SL - min(STI100_SL) / (max(STI100_SL) - min(STI100_SL))
MFV_6_T_SL <- STI06_SL - min(STI100_SL) / (max(STI100_SL) - min(STI100_SL))

MFV100_TR_SL <- c(MFV_1_T_SL, MFV_2_T_SL, MFV_3_T_SL, MFV_4_T_SL, MFV_5_T_SL, MFV_6_T_SL)

#MFV Root length

MFV_1_T_RL <- STI01_RL - min(STI100_SL) / (max(STI100_SL) - min(STI100_SL))
MFV_2_T_RL <- STI02_RL - min(STI100_SL) / (max(STI100_SL) - min(STI100_SL))
MFV_3_T_RL <- STI03_RL - min(STI100_SL) / (max(STI100_SL) - min(STI100_SL))
MFV_4_T_RL <- STI04_RL - min(STI100_SL) / (max(STI100_SL) - min(STI100_SL))
MFV_5_T_RL <- STI05_RL - min(STI100_SL) / (max(STI100_SL) - min(STI100_SL))
MFV_6_T_RL <- STI06_RL - min(STI100_SL) / (max(STI100_SL) - min(STI100_SL))

MFV100_TR_SL <- c(MFV_1_T_SL, MFV_2_T_SL, MFV_3_T_SL, MFV_4_T_SL, MFV_5_T_SL, MFV_6_T_SL)

#MFV Fresh weight


#MFV Dry weight


MFV_TRI <-data.frame("MFV_Leaf_number"=mean(MFV100_AV_LN),"MFV_Stem_Length"=mean(MFV100_AV_SL),"MFV_Root_Length"= mean(MFV100_AV_RL),"MFV_Fresh_weight"= mean(MFV100_AV_FW), "MFV_Dry_weight"=mean(MFV100_AV_DW))

####MFV TRITICUM 200####
#MFV leaf number 
MFV_01 <- STI_ln_01 - min(STI200_AV_LN) / (max(STI200_AV_LN) - min(STI200_AV_LN))
MFV_02 <- STI_ln_02 - min(STI200_AV_LN) / (max(STI200_AV_LN) - min(STI200_AV_LN))
MFV_03 <- STI_ln_03 - min(STI200_AV_LN) / (max(STI200_AV_LN) - min(STI200_AV_LN))
MFV_04 <- STI_ln_04 - min(STI200_AV_LN) / (max(STI200_AV_LN) - min(STI200_AV_LN))
MFV_05 <- STI_ln_05 - min(STI200_AV_LN) / (max(STI200_AV_LN) - min(STI200_AV_LN))
MFV_06 <- STI_ln_06 - min(STI200_AV_LN) / (max(STI200_AV_LN) - min(STI200_AV_LN))

MFV200_AV_LN <- c(MFV_01, MFV_02, MFV_03, MFV_04, MFV_05, MFV_06)


#MFV stem length 
MFV_01_sl <- STI_sl_01 - min(STI200_AV_SL) / (max(STI200_AV_SL) - min(STI200_AV_SL))
MFV_02_sl <- STI_sl_02 - min(STI200_AV_SL) / (max(STI200_AV_SL) - min(STI200_AV_SL))
MFV_03_sl <- STI_sl_03 - min(STI200_AV_SL) / (max(STI200_AV_SL) - min(STI200_AV_SL))
MFV_04_sl <- STI_sl_04 - min(STI200_AV_SL) / (max(STI200_AV_SL) - min(STI200_AV_SL))
MFV_05_sl <- STI_sl_05 - min(STI200_AV_SL) / (max(STI200_AV_SL) - min(STI200_AV_SL))
MFV_06_sl <- STI_sl_06 - min(STI200_AV_SL) / (max(STI200_AV_SL) - min(STI200_AV_SL))

MFV200_AV_SL <- c(MFV_01_sl, MFV_02_sl, MFV_03_sl, MFV_04_sl, MFV_05_sl, MFV_06_sl)

#MFV Root length 
MFV_01_rl <- STI_rl_01 - min(STI200_AV_RL) / (max(STI200_AV_RL) - min(STI200_AV_RL))
MFV_02_rl <- STI_rl_02 - min(STI200_AV_RL) / (max(STI200_AV_RL) - min(STI200_AV_RL))
MFV_03_rl <- STI_rl_03 - min(STI200_AV_RL) / (max(STI200_AV_RL) - min(STI200_AV_RL))
MFV_04_rl <- STI_rl_04 - min(STI200_AV_RL) / (max(STI200_AV_RL) - min(STI200_AV_RL))
MFV_05_rl <- STI_rl_05 - min(STI200_AV_RL) / (max(STI200_AV_RL) - min(STI200_AV_RL))
MFV_06_rl <- STI_rl_06 - min(STI200_AV_RL) / (max(STI200_AV_RL) - min(STI200_AV_RL))

MFV200_AV_RL <- c(MFV_01_rl, MFV_02_rl, MFV_03_rl, MFV_04_rl, MFV_05_rl, MFV_06_rl)

#MFV Fresh weight
MFV_01_fw <- STI_fw_01 - min(STI200_AV_FW) / (max(STI200_AV_FW) - min(STI200_AV_FW))
MFV_02_fw <- STI_fw_02 - min(STI200_AV_FW) / (max(STI200_AV_FW) - min(STI200_AV_FW))
MFV_03_fw <- STI_fw_03 - min(STI200_AV_FW) / (max(STI200_AV_FW) - min(STI200_AV_FW))
MFV_04_fw <- STI_fw_04 - min(STI200_AV_FW) / (max(STI200_AV_FW) - min(STI200_AV_FW))
MFV_05_fw <- STI_fw_05 - min(STI200_AV_FW) / (max(STI200_AV_FW) - min(STI200_AV_FW))
MFV_06_fw <- STI_fw_06 - min(STI200_AV_FW) / (max(STI200_AV_FW) - min(STI200_AV_FW))

MFV200_AV_FW <- c(MFV_01_fw, MFV_02_fw, MFV_03_fw, MFV_04_fw, MFV_05_fw, MFV_06_fw)

#MFV Dry weight

MFV_01_dw <- STI_dw_01 - min(STI200_AV_DW) / (max(STI200_AV_DW) - min(STI200_AV_DW))
MFV_02_dw <- STI_dw_02 - min(STI200_AV_DW) / (max(STI200_AV_DW) - min(STI200_AV_DW))
MFV_03_dw <- STI_dw_03 - min(STI200_AV_DW) / (max(STI200_AV_DW) - min(STI200_AV_DW))
MFV_04_dw <- STI_dw_04 - min(STI200_AV_DW) / (max(STI200_AV_DW) - min(STI200_AV_DW))
MFV_05_dw <- STI_dw_05 - min(STI200_AV_DW) / (max(STI200_AV_DW) - min(STI200_AV_DW))
MFV_06_dw <- STI_dw_06 - min(STI200_AV_DW) / (max(STI200_AV_DW) - min(STI200_AV_DW))

MFV200_AV_DW <- c(MFV_01_dw, MFV_02_dw, MFV_03_dw, MFV_04_dw, MFV_05_dw, MFV_06_dw)

MFV200_AV <-data.frame("MFV_Leaf_number"=mean(MFV200_AV_LN),"MFV_Stem_Length"=mean(MFV200_AV_SL),"MFV_Root_Length"= mean(MFV200_AV_RL),"MFV_Fresh_weight"= mean(MFV200_AV_FW), "MFV_Dry_weight"=mean(MFV200_AV_DW))

####DROUGHT####
#MFV leaf number 
MFV_001 <- DTI_ln_01 - min(DTI_AV_LN) / (max(DTI_AV_LN) - min(DTI_AV_LN))
MFV_002 <- DTI_ln_02 - min(DTI_AV_LN) / (max(DTI_AV_LN) - min(DTI_AV_LN))
MFV_003 <- DTI_ln_03 - min(DTI_AV_LN) / (max(DTI_AV_LN) - min(DTI_AV_LN))
MFV_004 <- DTI_ln_04 - min(DTI_AV_LN) / (max(DTI_AV_LN) - min(DTI_AV_LN))
MFV_005 <- DTI_ln_05 - min(DTI_AV_LN) / (max(DTI_AV_LN) - min(DTI_AV_LN))
MFV_006 <- DTI_ln_06 - min(DTI_AV_LN) / (max(DTI_AV_LN) - min(DTI_AV_LN))

MFV_D_AV_LN <- c(MFV_001, MFV_002, MFV_003, MFV_004, MFV_005, MFV_006)


#MFV stem length 
MFV_001_sl <- DTI_sl_01 - min(DTI_AV_SL) / (max(DTI_AV_SL) - min(DTI_AV_SL))
MFV_002_sl <- DTI_sl_02 - min(DTI_AV_SL) / (max(DTI_AV_SL) - min(DTI_AV_SL))
MFV_003_sl <- DTI_sl_03 - min(DTI_AV_SL) / (max(DTI_AV_SL) - min(DTI_AV_SL))
MFV_004_sl <- DTI_sl_04 - min(DTI_AV_SL) / (max(DTI_AV_SL) - min(DTI_AV_SL))
MFV_005_sl <- DTI_sl_05 - min(DTI_AV_SL) / (max(DTI_AV_SL) - min(DTI_AV_SL))
MFV_006_sl <- DTI_sl_06 - min(DTI_AV_SL) / (max(DTI_AV_SL) - min(DTI_AV_SL))

MFV_D_AV_SL <- c(MFV_001_sl, MFV_002_sl, MFV_003_sl, MFV_004_sl, MFV_005_sl, MFV_006_sl)

#MFV Root length 
MFV_001_rl <- DTI_rl_01 - min(DTI_AV_RL) / (max(DTI_AV_RL) - min(DTI_AV_RL))
MFV_002_rl <- DTI_rl_02 - min(DTI_AV_RL) / (max(DTI_AV_RL) - min(DTI_AV_RL))
MFV_003_rl <- DTI_rl_03 - min(DTI_AV_RL) / (max(DTI_AV_RL) - min(DTI_AV_RL))
MFV_004_rl <- DTI_rl_04 - min(DTI_AV_RL) / (max(DTI_AV_RL) - min(DTI_AV_RL))
MFV_005_rl <- DTI_rl_05 - min(DTI_AV_RL) / (max(DTI_AV_RL) - min(DTI_AV_RL))
MFV_006_rl <- DTI_rl_06 - min(DTI_AV_RL) / (max(DTI_AV_RL) - min(DTI_AV_RL))

MFV_D_AV_RL <- c(MFV_001_rl, MFV_002_rl, MFV_003_rl, MFV_004_rl, MFV_005_rl, MFV_006_rl)

#MFV Fresh weight
MFV_001_fw <- DTI_fw_01 - min(DTI_AV_FW) / (max(DTI_AV_FW) - min(DTI_AV_FW))
MFV_002_fw <- DTI_fw_02 - min(DTI_AV_FW) / (max(DTI_AV_FW) - min(DTI_AV_FW))
MFV_003_fw <- DTI_fw_03 - min(DTI_AV_FW) / (max(DTI_AV_FW) - min(DTI_AV_FW))
MFV_004_fw <- DTI_fw_04 - min(DTI_AV_FW) / (max(DTI_AV_FW) - min(DTI_AV_FW))
MFV_005_fw <- DTI_fw_05 - min(DTI_AV_FW) / (max(DTI_AV_FW) - min(DTI_AV_FW))
MFV_006_fw <- DTI_fw_06 - min(DTI_AV_FW) / (max(DTI_AV_FW) - min(DTI_AV_FW))

MFV_D_AV_FW <- c(MFV_001_fw, MFV_002_fw, MFV_003_fw, MFV_004_fw, MFV_005_fw, MFV_006_fw)

#MFV Dry weight

MFV_001_dw <- DTI_dw_01 - min(DTI_AV_DW) / (max(DTI_AV_DW) - min(DTI_AV_DW))
MFV_002_dw <- DTI_dw_02 - min(DTI_AV_DW) / (max(DTI_AV_DW) - min(DTI_AV_DW))
MFV_003_dw <- DTI_dw_03 - min(DTI_AV_DW) / (max(DTI_AV_DW) - min(DTI_AV_DW))
MFV_004_dw <- DTI_dw_04 - min(DTI_AV_DW) / (max(DTI_AV_DW) - min(DTI_AV_DW))
MFV_005_dw <- DTI_dw_05 - min(DTI_AV_DW) / (max(DTI_AV_DW) - min(DTI_AV_DW))
MFV_006_dw <- DTI_dw_06 - min(DTI_AV_DW) / (max(DTI_AV_DW) - min(DTI_AV_DW))

MFV_D_AV_DW <- c(MFV_001_dw, MFV_002_dw, MFV_003_dw, MFV_004_dw, MFV_005_dw, MFV_006_dw)

MFV_D_AV <-data.frame("MFV_Leaf_number"=mean(MFV200_AV_LN),"MFV_Stem_Length"=mean(MFV200_AV_SL),"MFV_Root_Length"= mean(MFV200_AV_RL),"MFV_Fresh_weight"= mean(MFV200_AV_FW), "MFV_Dry_weight"=mean(MFV200_AV_DW))

MFV_AV <- data.frame(MFV_AV, MFV200_AV, MFV_D_AV)


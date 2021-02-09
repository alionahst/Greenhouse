
Data.avena <- Data.last[Data.last$Species == "Avena",]
Data.triticum <- Data.last[Data.last$Species == "Triticum",]

####Avena####
#Treatment 100
#STI Leaf number

STI_ln_1 <- Data.avena$Leaf_number[7] / Data.avena$Leaf_number[1]
STI_ln_2 <- Data.avena$Leaf_number[8] / Data.avena$Leaf_number[2]
STI_ln_3 <- Data.avena$Leaf_number[9] / Data.avena$Leaf_number[3]
STI_ln_4 <- Data.avena$Leaf_number[10] / Data.avena$Leaf_number[4]
STI_ln_5 <- Data.avena$Leaf_number[11] / Data.avena$Leaf_number[5]
STI_ln_6 <- Data.avena$Leaf_number[12] / Data.avena$Leaf_number[6]

STI100_AV_LN <- c(STI_ln_1, STI_ln_2, STI_ln_3, STI_ln_4, STI_ln_5, STI_ln_6)
STI_LN_Avena <- as.data.frame(STI100_AV_LN)

#STI Stem length

STI_sl_1 <- Data.avena$Stem_length[7] / Data.avena$Stem_length[1]
STI_sl_2 <- Data.avena$Stem_length[8] / Data.avena$Stem_length[2]
STI_sl_3 <- Data.avena$Stem_length[9] / Data.avena$Stem_length[3]
STI_sl_4 <- Data.avena$Stem_length[10] / Data.avena$Stem_length[4]
STI_sl_5 <- Data.avena$Stem_length[11] / Data.avena$Stem_length[5]
STI_sl_6 <- Data.avena$Stem_length[12] / Data.avena$Stem_length[6]

STI100_AV_SL <- c(STI_sl_1, STI_sl_2, STI_sl_3, STI_sl_4, STI_sl_5, STI_sl_6)
STI_SL_Avena <- as.data.frame(STI100_AV_SL)


#STI Root length

STI_rl_1 <- Data.avena$Root_Length[7] / Data.avena$Root_Length[1]
STI_rl_2 <- Data.avena$Root_Length[8] / Data.avena$Root_Length[2]
STI_rl_3 <- Data.avena$Root_Length[9] / Data.avena$Root_Length[3]
STI_rl_4 <- Data.avena$Root_Length[10] / Data.avena$Root_Length[4]
STI_rl_5 <- Data.avena$Root_Length[11] / Data.avena$Root_Length[5]
STI_rl_6 <- Data.avena$Root_Length[12] / Data.avena$Root_Length[6]

STI100_AV_RL <- c(STI_rl_1, STI_rl_2, STI_rl_3, STI_rl_4, STI_rl_5, STI_rl_6)
STI_RL_Avena <- as.data.frame(STI100_AV_RL)


#STI Fresh weight

STI_fw_1 <- Data.avena$Fresh_weight[7] / Data.avena$Fresh_weight[1]
STI_fw_2 <- Data.avena$Fresh_weight[8] / Data.avena$Fresh_weight[2]
STI_fw_3 <- Data.avena$Fresh_weight[9] / Data.avena$Fresh_weight[3]
STI_fw_4 <- Data.avena$Fresh_weight[10] / Data.avena$Fresh_weight[4]
STI_fw_5 <- Data.avena$Fresh_weight[11] / Data.avena$Fresh_weight[5]
STI_fw_6 <- Data.avena$Fresh_weight[12] / Data.avena$Fresh_weight[6]

STI100_AV_FW <- c(STI_fw_1, STI_fw_2, STI_fw_3, STI_fw_4, STI_fw_5, STI_fw_6)
STI_FW_Avena <- as.data.frame(STI100_AV_FW)

#STI Dry weight

STI_dw_1 <- Data.avena$Dry_weight[7] / Data.avena$Dry_weight[1]
STI_dw_2 <- Data.avena$Dry_weight[8] / Data.avena$Dry_weight[2]
STI_dw_3 <- Data.avena$Dry_weight[9] / Data.avena$Dry_weight[3]
STI_dw_4 <- Data.avena$Dry_weight[10] / Data.avena$Dry_weight[4]
STI_dw_5 <- Data.avena$Dry_weight[11] / Data.avena$Dry_weight[5]
STI_dw_6 <- Data.avena$Dry_weight[12] / Data.avena$Dry_weight[6]

STI100_AV_DW <- c(STI_dw_1, STI_dw_2, STI_dw_3, STI_dw_4, STI_dw_5, STI_dw_6)
STI_DW_Avena <- as.data.frame(STI100_AV_DW)

#table
STI_AV_100 <- data.frame( STI_LN_Avena ,STI_SL_Avena, STI_RL_Avena, STI_FW_Avena, STI_DW_Avena)




#Treatment  200
#STI Leaf number

STI_ln_01 <- Data.avena$Leaf_number[13] / Data.avena$Leaf_number[1]
STI_ln_02 <- Data.avena$Leaf_number[14] / Data.avena$Leaf_number[2]
STI_ln_03 <- Data.avena$Leaf_number[15] / Data.avena$Leaf_number[3]
STI_ln_04 <- Data.avena$Leaf_number[16] / Data.avena$Leaf_number[4]
STI_ln_05 <- Data.avena$Leaf_number[17] / Data.avena$Leaf_number[5]
STI_ln_06 <- Data.avena$Leaf_number[18] / Data.avena$Leaf_number[6]

STI200_AV_LN <- c(STI_ln_01, STI_ln_02, STI_ln_03, STI_ln_04, STI_ln_05, STI_ln_06)
STI_LN_Avena_200 <- as.data.frame(STI200_AV_LN)

#STI Stem length

STI_sl_01 <- Data.avena$Stem_length[13] / Data.avena$Stem_length[1]
STI_sl_02 <- Data.avena$Stem_length[14] / Data.avena$Stem_length[2]
STI_sl_03 <- Data.avena$Stem_length[15] / Data.avena$Stem_length[3]
STI_sl_04 <- Data.avena$Stem_length[16] / Data.avena$Stem_length[4]
STI_sl_05 <- Data.avena$Stem_length[17] / Data.avena$Stem_length[5]
STI_sl_06 <- Data.avena$Stem_length[18] / Data.avena$Stem_length[6]

STI200_AV_SL <- c(STI_sl_01, STI_sl_02, STI_sl_03, STI_sl_04, STI_sl_05, STI_sl_06)
STI_SL_Avena_200 <- as.data.frame(STI200_AV_SL)


#STI Root length

STI_rl_01 <- Data.avena$Root_Length[13] / Data.avena$Root_Length[1]
STI_rl_02 <- Data.avena$Root_Length[14] / Data.avena$Root_Length[2]
STI_rl_03 <- Data.avena$Root_Length[15] / Data.avena$Root_Length[3]
STI_rl_04 <- Data.avena$Root_Length[16] / Data.avena$Root_Length[4]
STI_rl_05 <- Data.avena$Root_Length[17] / Data.avena$Root_Length[5]
STI_rl_06 <- Data.avena$Root_Length[18] / Data.avena$Root_Length[6]

STI200_AV_RL <- c(STI_rl_01, STI_rl_02, STI_rl_03, STI_rl_04, STI_rl_05, STI_rl_06)
STI_RL_Avena_200 <- as.data.frame(STI200_AV_RL)


#STI Fresh weight

STI_fw_01 <- Data.avena$Fresh_weight[13] / Data.avena$Fresh_weight[1]
STI_fw_02 <- Data.avena$Fresh_weight[14] / Data.avena$Fresh_weight[2]
STI_fw_03 <- Data.avena$Fresh_weight[15] / Data.avena$Fresh_weight[3]
STI_fw_04 <- Data.avena$Fresh_weight[16] / Data.avena$Fresh_weight[4]
STI_fw_05 <- Data.avena$Fresh_weight[17] / Data.avena$Fresh_weight[5]
STI_fw_06 <- Data.avena$Fresh_weight[18] / Data.avena$Fresh_weight[6]

STI200_AV_FW <- c(STI_fw_01, STI_fw_02, STI_fw_03, STI_fw_04, STI_fw_05, STI_fw_06)
STI_FW_Avena_200 <- as.data.frame(STI200_AV_FW)

#STI Dry weight

STI_dw_01 <- Data.avena$Dry_weight[13] / Data.avena$Dry_weight[1]
STI_dw_02 <- Data.avena$Dry_weight[14] / Data.avena$Dry_weight[2]
STI_dw_03 <- Data.avena$Dry_weight[15] / Data.avena$Dry_weight[3]
STI_dw_04 <- Data.avena$Dry_weight[16] / Data.avena$Dry_weight[4]
STI_dw_05 <- Data.avena$Dry_weight[17] / Data.avena$Dry_weight[5]
STI_dw_06 <- Data.avena$Dry_weight[18] / Data.avena$Dry_weight[6]

STI200_AV_DW <- c(STI_dw_01, STI_dw_02, STI_dw_03, STI_dw_04, STI_dw_05, STI_dw_06)
STI_DW_Avena_200 <- as.data.frame(STI200_AV_DW)

#table
STI_AV_200 <- data.frame(STI_LN_Avena_200 ,STI_SL_Avena_200, STI_RL_Avena_200, STI_FW_Avena_200, STI_DW_Avena_200)



#Drought
#DTI Leaf number

DTI_ln_01 <- Data.avena$Leaf_number[19] / Data.avena$Leaf_number[1]
DTI_ln_02 <- Data.avena$Leaf_number[20] / Data.avena$Leaf_number[2]
DTI_ln_03 <- Data.avena$Leaf_number[21] / Data.avena$Leaf_number[3]
DTI_ln_04 <- Data.avena$Leaf_number[22] / Data.avena$Leaf_number[4]
DTI_ln_05 <- Data.avena$Leaf_number[23] / Data.avena$Leaf_number[5]
DTI_ln_06 <- Data.avena$Leaf_number[24] / Data.avena$Leaf_number[6]

DTI_AV_LN <- c(DTI_ln_01, DTI_ln_02, DTI_ln_03, DTI_ln_04, DTI_ln_05, DTI_ln_06)
DTI_LN_Avena <- as.data.frame(DTI_AV_LN)

#DTI Stem length

DTI_sl_01 <- Data.avena$Stem_length[19] / Data.avena$Stem_length[1]
DTI_sl_02 <- Data.avena$Stem_length[20] / Data.avena$Stem_length[2]
DTI_sl_03 <- Data.avena$Stem_length[21] / Data.avena$Stem_length[3]
DTI_sl_04 <- Data.avena$Stem_length[22] / Data.avena$Stem_length[4]
DTI_sl_05 <- Data.avena$Stem_length[23] / Data.avena$Stem_length[5]
DTI_sl_06 <- Data.avena$Stem_length[24] / Data.avena$Stem_length[6]

DTI_AV_SL <- c(DTI_sl_01, DTI_sl_02, DTI_sl_03, DTI_sl_04, DTI_sl_05, DTI_sl_06)
DTI_SL_Avena <- as.data.frame(DTI_AV_SL)


#DTI Root length

DTI_rl_01 <- Data.avena$Root_Length[19] / Data.avena$Root_Length[1]
DTI_rl_02 <- Data.avena$Root_Length[20] / Data.avena$Root_Length[2]
DTI_rl_03 <- Data.avena$Root_Length[21] / Data.avena$Root_Length[3]
DTI_rl_04 <- Data.avena$Root_Length[22] / Data.avena$Root_Length[4]
DTI_rl_05 <- Data.avena$Root_Length[23] / Data.avena$Root_Length[5]
DTI_rl_06 <- Data.avena$Root_Length[24] / Data.avena$Root_Length[6]

DTI_AV_RL <- c(DTI_rl_01, DTI_rl_02, DTI_rl_03, DTI_rl_04, DTI_rl_05, DTI_rl_06)
DTI_RL_Avena <- as.data.frame(DTI_AV_RL)


#DTI Fresh weight

DTI_fw_01 <- Data.avena$Fresh_weight[19] / Data.avena$Fresh_weight[1]
DTI_fw_02 <- Data.avena$Fresh_weight[20] / Data.avena$Fresh_weight[2]
DTI_fw_03 <- Data.avena$Fresh_weight[21] / Data.avena$Fresh_weight[3]
DTI_fw_04 <- Data.avena$Fresh_weight[22] / Data.avena$Fresh_weight[4]
DTI_fw_05 <- Data.avena$Fresh_weight[23] / Data.avena$Fresh_weight[5]
DTI_fw_06 <- Data.avena$Fresh_weight[24] / Data.avena$Fresh_weight[6]

DTI_AV_FW <- c(DTI_fw_01, DTI_fw_02, DTI_fw_03, DTI_fw_04, DTI_fw_05, DTI_fw_06)
DTI_FW_Avena <- as.data.frame(DTI_AV_FW)

#STI Dry weight

DTI_dw_01 <- Data.avena$Dry_weight[19] / Data.avena$Dry_weight[1]
DTI_dw_02 <- Data.avena$Dry_weight[20] / Data.avena$Dry_weight[2]
DTI_dw_03 <- Data.avena$Dry_weight[21] / Data.avena$Dry_weight[3]
DTI_dw_04 <- Data.avena$Dry_weight[22] / Data.avena$Dry_weight[4]
DTI_dw_05 <- Data.avena$Dry_weight[23] / Data.avena$Dry_weight[5]
DTI_dw_06 <- Data.avena$Dry_weight[24] / Data.avena$Dry_weight[6]

DTI_AV_DW <- c(DTI_dw_01, DTI_dw_02, DTI_dw_03, DTI_dw_04, DTI_dw_05, DTI_dw_06)
DTI_DW_Avena <- as.data.frame(DTI_AV_DW)

#table
DTI_AV <- data.frame(DTI_LN_Avena ,DTI_SL_Avena, DTI_RL_Avena, DTI_FW_Avena, DTI_DW_Avena)


####Triticum####
#TRATMENT 100
#Leaf number
STI01_LN <- Data.triticum$Leaf_number[7] / Data.triticum$Leaf_number[1]
STI02_LN <- Data.triticum$Leaf_number[8] / Data.triticum$Leaf_number[2]
STI03_LN <- Data.triticum$Leaf_number[9] / Data.triticum$Leaf_number[3]
STI04_LN <- Data.triticum$Leaf_number[10] / Data.triticum$Leaf_number[4]
STI05_LN <- Data.triticum$Leaf_number[11] / Data.triticum$Leaf_number[5]
STI06_LN <- Data.triticum$Leaf_number[12] / Data.triticum$Leaf_number[6]

STI100_LN <- c(STI01_LN, STI02_LN, STI03_LN, STI04_LN, STI05_LN, STI06_LN)

STI_LN_Tri <- as.data.frame(STI100_LN)

#Stem length

STI01_SL <- Data.triticum$Stem_length[7] / Data.triticum$Stem_length[1]
STI02_SL <- Data.triticum$Stem_length[8] / Data.triticum$Stem_length[2]
STI03_SL <- Data.triticum$Stem_length[9] / Data.triticum$Stem_length[3]
STI04_SL <- Data.triticum$Stem_length[10] / Data.triticum$Stem_length[4]
STI05_SL <- Data.triticum$Stem_length[11] / Data.triticum$Stem_length[5]
STI06_SL <- Data.triticum$Stem_length[12] / Data.triticum$Stem_length[6]

STI100_SL <- c(STI01_SL, STI02_SL, STI03_SL, STI04_SL, STI05_SL, STI06_SL)

STI_SL_Tri <- as.data.frame(STI100_SL)

#Root length
STI01_RL <- Data.triticum$Root_Length[7] / Data.triticum$Root_Length[1]
STI02_RL <- Data.triticum$Root_Length[8] / Data.triticum$Root_Length[2]
STI03_RL <- Data.triticum$Root_Length[9] / Data.triticum$Root_Length[3]
STI04_RL <- Data.triticum$Root_Length[10] / Data.triticum$Root_Length[4]
STI05_RL <- Data.triticum$Root_Length[11] / Data.triticum$Root_Length[5]
STI06_RL <- Data.triticum$Root_Length[12] / Data.triticum$Root_Length[6]

STI100_RL <- c(STI01_RL, STI02_RL, STI03_RL, STI04_RL, STI05_RL, STI06_RL)

STI_RL_Tri <- as.data.frame(STI100_RL)


#Fresh weight

STI01_FW <- Data.triticum$Fresh_weight[7] / Data.triticum$Fresh_weight[1]
STI02_FW <- Data.triticum$Fresh_weight[8] / Data.triticum$Fresh_weight[2]
STI03_FW <- Data.triticum$Fresh_weight[9] / Data.triticum$Fresh_weight[3]
STI04_FW <- Data.triticum$Fresh_weight[10] / Data.triticum$Fresh_weight[4]
STI05_FW <- Data.triticum$Fresh_weight[11] / Data.triticum$Fresh_weight[5]
STI06_FW <- Data.triticum$Fresh_weight[12] / Data.triticum$Fresh_weight[6]

STI100_FW <- c(STI01_FW, STI02_FW, STI03_FW, STI04_FW, STI05_FW, STI06_FW)

STI_FW_Tri <- as.data.frame(STI100_FW)

#Dry weigth

STI01_DW <- Data.triticum$Dry_weight[7] / Data.triticum$Dry_weight[1]
STI02_DW <- Data.triticum$Dry_weight[8] / Data.triticum$Dry_weight[2]
STI03_DW <- Data.triticum$Dry_weight[9] / Data.triticum$Dry_weight[3]
STI04_DW <- Data.triticum$Dry_weight[10] / Data.triticum$Dry_weight[4]
STI05_DW <- Data.triticum$Dry_weight[11] / Data.triticum$Dry_weight[5]
STI06_DW <- Data.triticum$Dry_weight[12] / Data.triticum$Dry_weight[6]

STI100_DW <- c(STI01_DW, STI02_DW, STI03_DW, STI04_DW, STI05_DW, STI06_DW)

STI_DW_Tri <- as.data.frame(STI100_DW)

#table
STI_TR_100 <- data.frame(STI_LN_Tri ,STI_SL_Tri, STI_RL_Tri, STI_FW_Tri, STI_DW_Tri)

#treatment 200 
#Leaf number
STI001_LN <- Data.triticum$Leaf_number[13] / Data.triticum$Leaf_number[1]
STI002_LN <- Data.triticum$Leaf_number[14] / Data.triticum$Leaf_number[2]
STI003_LN <- Data.triticum$Leaf_number[15] / Data.triticum$Leaf_number[3]
STI004_LN <- Data.triticum$Leaf_number[16] / Data.triticum$Leaf_number[4]
STI005_LN <- Data.triticum$Leaf_number[17] / Data.triticum$Leaf_number[5]
STI006_LN <- Data.triticum$Leaf_number[18] / Data.triticum$Leaf_number[6]

STI200_LN <- c(STI001_LN, STI002_LN, STI003_LN, STI004_LN, STI005_LN, STI006_LN)

STI_LN_Tri_200 <- as.data.frame(STI100_LN)

#Stem length

STI001_SL <- Data.triticum$Stem_length[13] / Data.triticum$Stem_length[1]
STI002_SL <- Data.triticum$Stem_length[14] / Data.triticum$Stem_length[2]
STI003_SL <- Data.triticum$Stem_length[15] / Data.triticum$Stem_length[3]
STI004_SL <- Data.triticum$Stem_length[16] / Data.triticum$Stem_length[4]
STI005_SL <- Data.triticum$Stem_length[17] / Data.triticum$Stem_length[5]
STI006_SL <- Data.triticum$Stem_length[18] / Data.triticum$Stem_length[6]

STI200_SL <- c(STI001_SL, STI002_SL, STI003_SL, STI004_SL, STI005_SL, STI006_SL)

STI_SL_Tri_200 <- as.data.frame(STI200_SL)

#Root length
STI001_RL <- Data.triticum$Root_Length[13] / Data.triticum$Root_Length[1]
STI002_RL <- Data.triticum$Root_Length[14] / Data.triticum$Root_Length[2]
STI003_RL <- Data.triticum$Root_Length[15] / Data.triticum$Root_Length[3]
STI004_RL <- Data.triticum$Root_Length[16] / Data.triticum$Root_Length[4]
STI005_RL <- Data.triticum$Root_Length[17] / Data.triticum$Root_Length[5]
STI006_RL <- Data.triticum$Root_Length[18] / Data.triticum$Root_Length[6]

STI200_RL <- c(STI001_RL, STI002_RL, STI003_RL, STI004_RL, STI005_RL, STI006_RL)

STI_RL_Tri_200 <- as.data.frame(STI200_RL)


#Fresh weight

STI001_FW <- Data.triticum$Fresh_weight[13] / Data.triticum$Fresh_weight[1]
STI002_FW <- Data.triticum$Fresh_weight[14] / Data.triticum$Fresh_weight[2]
STI003_FW <- Data.triticum$Fresh_weight[15] / Data.triticum$Fresh_weight[3]
STI004_FW <- Data.triticum$Fresh_weight[16] / Data.triticum$Fresh_weight[4]
STI005_FW <- Data.triticum$Fresh_weight[17] / Data.triticum$Fresh_weight[5]
STI006_FW <- Data.triticum$Fresh_weight[18] / Data.triticum$Fresh_weight[6]

STI200_FW <- c(STI001_FW, STI002_FW, STI003_FW, STI004_FW, STI005_FW, STI006_FW)

STI_FW_Tri_200 <- as.data.frame(STI200_FW)

#Dry weigth

STI001_DW <- Data.triticum$Dry_weight[13] / Data.triticum$Dry_weight[1]
STI002_DW <- Data.triticum$Dry_weight[14] / Data.triticum$Dry_weight[2]
STI003_DW <- Data.triticum$Dry_weight[15] / Data.triticum$Dry_weight[3]
STI004_DW <- Data.triticum$Dry_weight[16] / Data.triticum$Dry_weight[4]
STI005_DW <- Data.triticum$Dry_weight[17] / Data.triticum$Dry_weight[5]
STI006_DW <- Data.triticum$Dry_weight[18] / Data.triticum$Dry_weight[6]

STI200_DW <- c(STI001_DW, STI002_DW, STI003_DW, STI004_DW, STI005_DW, STI006_DW)

STI_DW_Tri_200 <- as.data.frame(STI200_DW)

#table
STI_TR_200 <- data.frame(STI_LN_Tri_200 ,STI_SL_Tri_200 , STI_RL_Tri_200 , STI_FW_Tri_200 , STI_DW_Tri_200)

#Drought
#Leaf number
DTI01_LN <- Data.triticum$Leaf_number[19] / Data.triticum$Leaf_number[1]
DTI02_LN <- Data.triticum$Leaf_number[20] / Data.triticum$Leaf_number[2]
DTI03_LN <- Data.triticum$Leaf_number[21] / Data.triticum$Leaf_number[3]
DTI04_LN <- Data.triticum$Leaf_number[22] / Data.triticum$Leaf_number[4]
DTI05_LN <- Data.triticum$Leaf_number[23] / Data.triticum$Leaf_number[5]
DTI06_LN <- Data.triticum$Leaf_number[24] / Data.triticum$Leaf_number[6]

DTI_LN <- c(DTI01_LN, DTI02_LN, DTI03_LN, DTI04_LN, DTI05_LN, DTI06_LN)

DTI_LN_Tri <- as.data.frame(DTI_LN)

#Stem length

DTI01_SL <- Data.triticum$Stem_length[19] / Data.triticum$Stem_length[1]
DTI02_SL <- Data.triticum$Stem_length[20] / Data.triticum$Stem_length[2]
DTI03_SL <- Data.triticum$Stem_length[21] / Data.triticum$Stem_length[3]
DTI04_SL <- Data.triticum$Stem_length[22] / Data.triticum$Stem_length[4]
DTI05_SL <- Data.triticum$Stem_length[23] / Data.triticum$Stem_length[5]
DTI06_SL <- Data.triticum$Stem_length[24] / Data.triticum$Stem_length[6]

DTI_SL <- c(DTI01_SL, DTI02_SL, DTI03_SL, DTI04_SL, DTI05_SL, DTI06_SL)

DTI_SL_Tri <- as.data.frame(DTI_SL)

#Root length
DTI01_RL <- Data.triticum$Root_Length[19] / Data.triticum$Root_Length[1]
DTI02_RL <- Data.triticum$Root_Length[20] / Data.triticum$Root_Length[2]
DTI03_RL <- Data.triticum$Root_Length[21] / Data.triticum$Root_Length[3]
DTI04_RL <- Data.triticum$Root_Length[22] / Data.triticum$Root_Length[4]
DTI05_RL <- Data.triticum$Root_Length[23] / Data.triticum$Root_Length[5]
DTI06_RL <- Data.triticum$Root_Length[24] / Data.triticum$Root_Length[6]

DTI_RL <- c(DTI01_RL, DTI02_RL, DTI03_RL, DTI04_RL, DTI05_RL, DTI06_RL)

DTI_RL_Tri <- as.data.frame(DTI_RL)


#Fresh weight

DTI01_FW <- Data.triticum$Fresh_weight[19] / Data.triticum$Fresh_weight[1]
DTI02_FW <- Data.triticum$Fresh_weight[20] / Data.triticum$Fresh_weight[2]
DTI03_FW <- Data.triticum$Fresh_weight[21] / Data.triticum$Fresh_weight[3]
DTI04_FW <- Data.triticum$Fresh_weight[22] / Data.triticum$Fresh_weight[4]
DTI05_FW <- Data.triticum$Fresh_weight[23] / Data.triticum$Fresh_weight[5]
DTI06_FW <- Data.triticum$Fresh_weight[24] / Data.triticum$Fresh_weight[6]

DTI_FW <- c(DTI01_FW, DTI02_FW, DTI03_FW, DTI04_FW, DTI05_FW, DTI06_FW)

DTI_FW_Tri <- as.data.frame(DTI_FW)

#Dry weigth

DTI01_DW <- Data.triticum$Dry_weight[19] / Data.triticum$Dry_weight[1]
DTI02_DW <- Data.triticum$Dry_weight[20] / Data.triticum$Dry_weight[2]
DTI03_DW <- Data.triticum$Dry_weight[21] / Data.triticum$Dry_weight[3]
DTI04_DW <- Data.triticum$Dry_weight[22] / Data.triticum$Dry_weight[4]
DTI05_DW <- Data.triticum$Dry_weight[23] / Data.triticum$Dry_weight[5]
DTI06_DW <- Data.triticum$Dry_weight[24] / Data.triticum$Dry_weight[6]

DTI_DW <- c(DTI01_DW, DTI02_DW, DTI03_DW, DTI04_DW, DTI05_DW, DTI06_DW)

DTI_DW_Tri <- as.data.frame(DTI_DW)

#table
DTI_TR <- data.frame(DTI_LN_Tri ,DTI_SL_Tri, DTI_RL_Tri, DTI_FW_Tri, DTI_DW_Tri)




library("readxl")
Data <- read_excel("210129_Greenhouse_results.xlsx")
Data <- Data[-12]
#Dataframe with only the last day
Data.last <- Data[Data$Date =="201214" , ]
Data.avena <- Data.last[Data.last$Species == "Avena",]
Data.triticum <- Data.last[Data.last$Species == "Triticum",]

####Avena####
####*100####
STI_ln_av_100 <- STI_sl_av_100 <- STI_rl_av_100 <- STI_fw_av_100 <- STI_dw_av_100 <- c()
for(i in 7:12){
  for(j in 1:6){
    STI_ln_av_100 <- c(STI_ln_av_100, (Data.avena$Leaf_number[i] / Data.avena$Leaf_number[j]))
    STI_sl_av_100 <- c(STI_sl_av_100, (Data.avena$Stem_length[i] / Data.avena$Stem_length[j]))
    STI_rl_av_100 <- c(STI_rl_av_100, (Data.avena$Root_Length[i] / Data.avena$Root_Length[j]))
    STI_fw_av_100 <- c(STI_fw_av_100, (Data.avena$Fresh_weight[i] / Data.avena$Fresh_weight[j]))
    STI_dw_av_100 <- c(STI_dw_av_100, (Data.avena$Dry_weight[i] / Data.avena$Dry_weight[j]))
  }
}
STI_AV_100 <- data.frame(LN = STI_ln_av_100,
                         SL = STI_sl_av_100,
                         RL = STI_rl_av_100,
                         FW = STI_fw_av_100,
                         DW = STI_dw_av_100)
####*200####
STI_ln_av_200 <- STI_sl_av_200 <- STI_rl_av_200 <- STI_fw_av_200 <- STI_dw_av_200 <- c()
for(i in 13:18){
  for(j in 1:6){
    STI_ln_av_200 <- c(STI_ln_av_200, (Data.avena$Leaf_number[i] / Data.avena$Leaf_number[j]))
    STI_sl_av_200 <- c(STI_sl_av_200, (Data.avena$Stem_length[i] / Data.avena$Stem_length[j]))
    STI_rl_av_200 <- c(STI_rl_av_200, (Data.avena$Root_Length[i] / Data.avena$Root_Length[j]))
    STI_fw_av_200 <- c(STI_fw_av_200, (Data.avena$Fresh_weight[i] / Data.avena$Fresh_weight[j]))
    STI_dw_av_200 <- c(STI_dw_av_200, (Data.avena$Dry_weight[i] / Data.avena$Dry_weight[j]))
  }
}
STI_AV_200 <- data.frame(LN = STI_ln_av_200,
                         SL = STI_sl_av_200,
                         RL = STI_rl_av_200,
                         FW = STI_fw_av_200,
                         DW = STI_dw_av_200)
####*Drought####
DTI_ln_av <- DTI_sl_av <- DTI_rl_av <- DTI_fw_av <- DTI_dw_av <- c()
for(i in 19:24){
  for(j in 1:6){
    DTI_ln_av <- c(DTI_ln_av, (Data.avena$Leaf_number[i] / Data.avena$Leaf_number[j]))
    DTI_sl_av <- c(DTI_sl_av, (Data.avena$Stem_length[i] / Data.avena$Stem_length[j]))
    DTI_rl_av <- c(DTI_rl_av, (Data.avena$Root_Length[i] / Data.avena$Root_Length[j]))
    DTI_fw_av <- c(DTI_fw_av, (Data.avena$Fresh_weight[i] / Data.avena$Fresh_weight[j]))
    DTI_dw_av <- c(DTI_dw_av, (Data.avena$Dry_weight[i] / Data.avena$Dry_weight[j]))
  }
}
DTI_AV <- data.frame(LN = DTI_ln_av,
                     SL = DTI_sl_av,
                     RL = DTI_rl_av,
                     FW = DTI_fw_av,
                     DW = DTI_dw_av)
####Triticum####
####*100####
STI_ln_tr_100 <- STI_sl_tr_100 <- STI_rl_tr_100 <- STI_fw_tr_100 <- STI_dw_tr_100 <- c()
for(i in 7:12){
  for(j in 1:6){
    STI_ln_tr_100 <- c(STI_ln_tr_100, (Data.triticum$Leaf_number[i] / Data.triticum$Leaf_number[j]))
    STI_sl_tr_100 <- c(STI_sl_tr_100, (Data.triticum$Stem_length[i] / Data.triticum$Stem_length[j]))
    STI_rl_tr_100 <- c(STI_rl_tr_100, (Data.triticum$Root_Length[i] / Data.triticum$Root_Length[j]))
    STI_fw_tr_100 <- c(STI_fw_tr_100, (Data.triticum$Fresh_weight[i] / Data.triticum$Fresh_weight[j]))
    STI_dw_tr_100 <- c(STI_dw_tr_100, (Data.triticum$Dry_weight[i] / Data.triticum$Dry_weight[j]))
  }
}
STI_TR_100 <- data.frame(LN = STI_ln_tr_100,
                         SL = STI_sl_tr_100,
                         RL = STI_rl_tr_100,
                         FW = STI_fw_tr_100,
                         DW = STI_dw_tr_100)
####*200####
STI_ln_tr_200 <- STI_sl_tr_200 <- STI_rl_tr_200 <- STI_fw_tr_200 <- STI_dw_tr_200 <- c()
for(i in 13:18){
  for(j in 1:6){
    STI_ln_tr_200 <- c(STI_ln_tr_200, (Data.triticum$Leaf_number[i] / Data.triticum$Leaf_number[j]))
    STI_sl_tr_200 <- c(STI_sl_tr_200, (Data.triticum$Stem_length[i] / Data.triticum$Stem_length[j]))
    STI_rl_tr_200 <- c(STI_rl_tr_200, (Data.triticum$Root_Length[i] / Data.triticum$Root_Length[j]))
    STI_fw_tr_200 <- c(STI_fw_tr_200, (Data.triticum$Fresh_weight[i] / Data.triticum$Fresh_weight[j]))
    STI_dw_tr_200 <- c(STI_dw_tr_200, (Data.triticum$Dry_weight[i] / Data.triticum$Dry_weight[j]))
  }
}
STI_TR_200 <- data.frame(LN = STI_ln_tr_200,
                         SL = STI_sl_tr_200,
                         RL = STI_rl_tr_200,
                         FW = STI_fw_tr_200,
                         DW = STI_dw_tr_200)
####*Drought####
DTI_ln_tr <- DTI_sl_tr <- DTI_rl_tr <- DTI_fw_tr <- DTI_dw_tr <- c()
for(i in 19:24){
  for(j in 1:6){
    DTI_ln_tr <- c(DTI_ln_tr, (Data.triticum$Leaf_number[i] / Data.triticum$Leaf_number[j]))
    DTI_sl_tr <- c(DTI_sl_tr, (Data.triticum$Stem_length[i] / Data.triticum$Stem_length[j]))
    DTI_rl_tr <- c(DTI_rl_tr, (Data.triticum$Root_Length[i] / Data.triticum$Root_Length[j]))
    DTI_fw_tr <- c(DTI_fw_tr, (Data.triticum$Fresh_weight[i] / Data.triticum$Fresh_weight[j]))
    DTI_dw_tr <- c(DTI_dw_tr, (Data.triticum$Dry_weight[i] / Data.triticum$Dry_weight[j]))
  }
}
DTI_TR <- data.frame(LN = DTI_ln_tr,
                     SL = DTI_sl_tr,
                     RL = DTI_rl_tr,
                     FW = DTI_fw_tr,
                     DW = DTI_dw_tr)
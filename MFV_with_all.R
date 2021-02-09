####AVENA####
####*100####
MFV100_AV_LN <- MFV100_AV_SL <- MFV100_AV_RL <- MFV100_AV_FW <- MFV100_AV_DW <- c()
for(i in 1:36){
  MFV100_AV_LN <- c(MFV100_AV_LN, ((STI_AV_100$LN[i])- min(STI_AV_100$LN))/(max(STI_AV_100$LN)-min(STI_AV_100$LN)))
  MFV100_AV_SL <- c(MFV100_AV_SL, ((STI_AV_100$SL[i])- min(STI_AV_100$SL))/(max(STI_AV_100$SL)-min(STI_AV_100$SL)))
  MFV100_AV_RL <- c(MFV100_AV_RL, ((STI_AV_100$RL[i])- min(STI_AV_100$RL))/(max(STI_AV_100$RL)-min(STI_AV_100$RL)))
  MFV100_AV_FW <- c(MFV100_AV_FW, ((STI_AV_100$FW[i])- min(STI_AV_100$FW))/(max(STI_AV_100$FW)-min(STI_AV_100$FW)))
  MFV100_AV_DW <- c(MFV100_AV_DW, ((STI_AV_100$DW[i])- min(STI_AV_100$DW))/(max(STI_AV_100$DW)-min(STI_AV_100$DW)))
}
MFV_AV <-data.frame("MFV_Leaf_number" = mean(MFV100_AV_LN),
                    "MFV_Stem_Length" = mean(MFV100_AV_SL),
                    "MFV_Root_Length" = mean(MFV100_AV_RL),
                    "MFV_Fresh_weight" = mean(MFV100_AV_FW),
                    "MFV_Dry_weight"= mean(MFV100_AV_DW))
MFV_AV <- t(MFV_AV)
####*200####
MFV200_AV_LN <- MFV200_AV_SL <- MFV200_AV_RL <- MFV200_AV_FW <- MFV200_AV_DW <- c()
for(i in 1:36){
  MFV200_AV_LN <- c(MFV200_AV_LN, ((STI_AV_200$LN[i])- min(STI_AV_200$LN))/(max(STI_AV_200$LN)-min(STI_AV_200$LN)))
  MFV200_AV_SL <- c(MFV200_AV_SL, ((STI_AV_200$SL[i])- min(STI_AV_200$SL))/(max(STI_AV_200$SL)-min(STI_AV_200$SL)))
  MFV200_AV_RL <- c(MFV200_AV_RL, ((STI_AV_200$RL[i])- min(STI_AV_200$RL))/(max(STI_AV_200$RL)-min(STI_AV_200$RL)))
  MFV200_AV_FW <- c(MFV200_AV_FW, ((STI_AV_200$FW[i])- min(STI_AV_200$FW))/(max(STI_AV_200$FW)-min(STI_AV_200$FW)))
  MFV200_AV_DW <- c(MFV200_AV_DW, ((STI_AV_200$DW[i])- min(STI_AV_200$DW))/(max(STI_AV_200$DW)-min(STI_AV_200$DW)))
}
MFV200_AV <-data.frame("MFV_Leaf_number" = mean(MFV200_AV_LN),
                    "MFV_Stem_Length" = mean(MFV200_AV_SL),
                    "MFV_Root_Length" = mean(MFV200_AV_RL),
                    "MFV_Fresh_weight" = mean(MFV200_AV_FW),
                    "MFV_Dry_weight"= mean(MFV200_AV_DW))
MFV200_AV <- t(MFV200_AV)
####*Drought####
MFV_D_AV_LN <- MFV_D_AV_SL <- MFV_D_AV_RL <- MFV_D_AV_FW <- MFV_D_AV_DW <- c()
for(i in 1:36){
  MFV_D_AV_LN <- c(MFV_D_AV_LN, ((DTI_AV$LN[i])- min(DTI_AV$LN))/(max(DTI_AV$LN)-min(DTI_AV$LN)))
  MFV_D_AV_SL <- c(MFV_D_AV_SL, ((DTI_AV$SL[i])- min(DTI_AV$SL))/(max(DTI_AV$SL)-min(DTI_AV$SL)))
  MFV_D_AV_RL <- c(MFV_D_AV_RL, ((DTI_AV$RL[i])- min(DTI_AV$RL))/(max(DTI_AV$RL)-min(DTI_AV$RL)))
  MFV_D_AV_FW <- c(MFV_D_AV_FW, ((DTI_AV$FW[i])- min(DTI_AV$FW))/(max(DTI_AV$FW)-min(DTI_AV$FW)))
  MFV_D_AV_DW <- c(MFV_D_AV_DW, ((DTI_AV$DW[i])- min(DTI_AV$DW))/(max(DTI_AV$DW)-min(DTI_AV$DW)))
}
MFV_D_AV <-data.frame("MFV_Leaf_number" = mean(MFV_D_AV_LN),
                       "MFV_Stem_Length" = mean(MFV_D_AV_SL),
                       "MFV_Root_Length" = mean(MFV_D_AV_RL),
                       "MFV_Fresh_weight" = mean(MFV_D_AV_FW),
                       "MFV_Dry_weight"= mean(MFV_D_AV_DW))
MFV_D_AV <- t(MFV_D_AV)
MFV_AV <- data.frame(MFV_AV, MFV200_AV, MFV_D_AV)
####TRITICUM####
####*100####
MFV100_TR_LN <- MFV100_TR_SL <- MFV100_TR_RL <- MFV100_TR_FW <- MFV100_TR_DW <- c()
for(i in 1:36){
  MFV100_TR_LN <- c(MFV100_TR_LN, ((STI_TR_100$LN[i])- min(STI_TR_100$LN))/(max(STI_TR_100$LN)-min(STI_TR_100$LN)))
  MFV100_TR_SL <- c(MFV100_TR_SL, ((STI_TR_100$SL[i])- min(STI_TR_100$SL))/(max(STI_TR_100$SL)-min(STI_TR_100$SL)))
  MFV100_TR_RL <- c(MFV100_TR_RL, ((STI_TR_100$RL[i])- min(STI_TR_100$RL))/(max(STI_TR_100$RL)-min(STI_TR_100$RL)))
  MFV100_TR_FW <- c(MFV100_TR_FW, ((STI_TR_100$FW[i])- min(STI_TR_100$FW))/(max(STI_TR_100$FW)-min(STI_TR_100$FW)))
  MFV100_TR_DW <- c(MFV100_TR_DW, ((STI_TR_100$DW[i])- min(STI_TR_100$DW))/(max(STI_TR_100$DW)-min(STI_TR_100$DW)))
}
MFV_TR <-data.frame("MFV_Leaf_number" = mean(MFV100_TR_LN),
                    "MFV_Stem_Length" = mean(MFV100_TR_SL),
                    "MFV_Root_Length" = mean(MFV100_TR_RL),
                    "MFV_Fresh_weight" = mean(MFV100_TR_FW),
                    "MFV_Dry_weight"= mean(MFV100_TR_DW))
MFV_TR <- t(MFV_TR)
####*200####
MFV200_TR_LN <- MFV200_TR_SL <- MFV200_TR_RL <- MFV200_TR_FW <- MFV200_TR_DW <- c()
for(i in 1:36){
  MFV200_TR_LN <- c(MFV200_TR_LN, ((STI_TR_200$LN[i])- min(STI_TR_200$LN))/(max(STI_TR_200$LN)-min(STI_TR_200$LN)))
  MFV200_TR_SL <- c(MFV200_TR_SL, ((STI_TR_200$SL[i])- min(STI_TR_200$SL))/(max(STI_TR_200$SL)-min(STI_TR_200$SL)))
  MFV200_TR_RL <- c(MFV200_TR_RL, ((STI_TR_200$RL[i])- min(STI_TR_200$RL))/(max(STI_TR_200$RL)-min(STI_TR_200$RL)))
  MFV200_TR_FW <- c(MFV200_TR_FW, ((STI_TR_200$FW[i])- min(STI_TR_200$FW))/(max(STI_TR_200$FW)-min(STI_TR_200$FW)))
  MFV200_TR_DW <- c(MFV200_TR_DW, ((STI_TR_200$DW[i])- min(STI_TR_200$DW))/(max(STI_TR_200$DW)-min(STI_TR_200$DW)))
}
MFV200_TR <-data.frame("MFV_Leaf_number" = mean(MFV200_TR_LN),
                       "MFV_Stem_Length" = mean(MFV200_TR_SL),
                       "MFV_Root_Length" = mean(MFV200_TR_RL),
                       "MFV_Fresh_weight" = mean(MFV200_TR_FW),
                       "MFV_Dry_weight"= mean(MFV200_TR_DW))
MFV200_TR <- t(MFV200_TR)
####*Drought####
MFV_D_TR_LN <- MFV_D_TR_SL <- MFV_D_TR_RL <- MFV_D_TR_FW <- MFV_D_TR_DW <- c()
for(i in 1:36){
  MFV_D_TR_LN <- c(MFV_D_TR_LN, ((DTI_TR$LN[i])- min(DTI_TR$LN))/(max(DTI_TR$LN)-min(DTI_TR$LN)))
  MFV_D_TR_SL <- c(MFV_D_TR_SL, ((DTI_TR$SL[i])- min(DTI_TR$SL))/(max(DTI_TR$SL)-min(DTI_TR$SL)))
  MFV_D_TR_RL <- c(MFV_D_TR_RL, ((DTI_TR$RL[i])- min(DTI_TR$RL))/(max(DTI_TR$RL)-min(DTI_TR$RL)))
  MFV_D_TR_FW <- c(MFV_D_TR_FW, ((DTI_TR$FW[i])- min(DTI_TR$FW))/(max(DTI_TR$FW)-min(DTI_TR$FW)))
  MFV_D_TR_DW <- c(MFV_D_TR_DW, ((DTI_TR$DW[i])- min(DTI_TR$DW))/(max(DTI_TR$DW)-min(DTI_TR$DW)))
}
MFV_D_TR <-data.frame("MFV_Leaf_number" = mean(MFV_D_TR_LN),
                      "MFV_Stem_Length" = mean(MFV_D_TR_SL),
                      "MFV_Root_Length" = mean(MFV_D_TR_RL),
                      "MFV_Fresh_weight" = mean(MFV_D_TR_FW),
                      "MFV_Dry_weight"= mean(MFV_D_TR_DW))
MFV_D_TR <- t(MFV_D_TR)
MFV_TR <- data.frame(MFV_TR, MFV200_TR, MFV_D_TR)
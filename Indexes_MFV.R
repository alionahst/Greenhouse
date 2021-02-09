
Data.avena <- Data.last[Data.last$Species == "Avena",]
Data.triticum <- Data.last[Data.last$Species == "Triticum",]

####Avena####

#STI

STI_1 <- Data.avena$Leaf_number[7] / Data.avena$Leaf_number[1]
STI_2 <- Data.avena$Leaf_number[8] / Data.avena$Leaf_number[2]
STI_3 <- Data.avena$Leaf_number[9] / Data.avena$Leaf_number[3]
STI_4 <- Data.avena$Leaf_number[10] / Data.avena$Leaf_number[4]
STI_5 <- Data.avena$Leaf_number[11] / Data.avena$Leaf_number[5]
STI_6 <- Data.avena$Leaf_number[12] / Data.avena$Leaf_number[6]

STI100_AV_LN <- c(STI_1, STI_2, STI_3, STI_4, STI_5, STI_6)
min(STI100_AV_LN)

STI_LN_Avena <- as.data.frame(STI100_AV_LN)







#MFV
MFV_1 <- STI_1 - min(STI100_AV_LN) / (max(STI100_AV_LN) - min(STI100_AV_LN))
MFV_2 <- STI_2 - min(STI100_AV_LN) / (max(STI100_AV_LN) - min(STI100_AV_LN))
MFV_3 <- STI_3 - min(STI100_AV_LN) / (max(STI100_AV_LN) - min(STI100_AV_LN))
MFV_4 <- STI_4 - min(STI100_AV_LN) / (max(STI100_AV_LN) - min(STI100_AV_LN))
MFV_5 <- STI_5 - min(STI100_AV_LN) / (max(STI100_AV_LN) - min(STI100_AV_LN))
MFV_6 <- STI_6 - min(STI100_AV_LN) / (max(STI100_AV_LN) - min(STI100_AV_LN))

MFV100_AV_LN <- c(MFV_1, MFV_2, MFV_3, MFV_4, MFV_5, MFV_6)
MFV100_AV <- as.data.frame(mean(MFV100_AV_LN))















####Triticum####
STI1 <- Data.triticum$Leaf_number[7] / Data.triticum$Leaf_number[1]
STI2 <- Data.triticum$Leaf_number[8] / Data.triticum$Leaf_number[2]
STI3 <- Data.triticum$Leaf_number[9] / Data.triticum$Leaf_number[3]
STI4 <- Data.triticum$Leaf_number[10] / Data.triticum$Leaf_number[4]
STI5 <- Data.triticum$Leaf_number[11] / Data.triticum$Leaf_number[5]
STI6 <- Data.triticum$Leaf_number[12] / Data.triticum$Leaf_number[6]

STI100_TR <- c(STI1, STI2, STI3, STI4, STI5, STI6)

STI_LN_Triticum <- as.data.frame(STI100_TR)

mean(STI100_TR)

###creating data.frame with the experiment results
library("readxl")
Data <- read_excel("210129_Greenhouse_results.xlsx")
Data <- Data[-12] #removing temperature out of the data.frame

#####---------------**Avena fatua---------------#####
####-------------------*Leaf_number for 20/12/14-------------------####
####Control vs Treatments####
LN_A_C_anv <- LN_A_C_shp <- LN_A_C_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200", "Drought")){
  LN_A_C_anv <- aov(Data$Leaf_number[Data$Species == "Avena" & 
                                       Data$Date == "201214" & 
                                       Data$Treatment == "Control"] ~ 
                      Data$Leaf_number[Data$Species == "Avena" & 
                                         Data$Date == "201214" & 
                                         Data$Treatment == i])
  LN_A_C_shp[i] <- shapiro.test(LN_A_C_anv$residuals)$p.value
  LN_A_C_col <- c(LN_A_C_col, ifelse (LN_A_C_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
LN_A_C_res <- data.frame ("P-value" = LN_A_C_shp, "Normality" = LN_A_C_col)
rownames(LN_A_C_res) <- c("LN Control vs 100", "LN Control vs 200", "LN Control vs Drought")

####Drought vs NaCl####
LN_A_D_anv <- LN_A_D_shp <- LN_A_D_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200")){
  LN_A_D_anv <- aov(Data$Leaf_number[Data$Species == "Avena" & 
                                       Data$Date == "201214" & 
                                       Data$Treatment == "Drought"] ~ 
                      Data$Leaf_number[Data$Species == "Avena" & 
                                         Data$Date == "201214" & 
                                         Data$Treatment == i])
  LN_A_D_shp[i] <- shapiro.test(LN_A_D_anv$residuals)$p.value
  LN_A_D_col <- c(LN_A_D_col, ifelse (LN_A_D_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
LN_A_D_res <- data.frame ("P-value" = LN_A_D_shp, "Normality" = LN_A_D_col)
rownames(LN_A_D_res) <- c("LN Drought vs 100", "LN Drought vs 200")

####100 vs 200####
LN_A_T_anv <- aov(Data$Leaf_number[Data$Species == "Avena" & 
                                     Data$Date == "201214" & 
                                     Data$Treatment == "100"] ~ 
                    Data$Leaf_number[Data$Species == "Avena" & 
                                       Data$Date == "201214" & 
                                       Data$Treatment == "200"])
LN_A_T_shp <- shapiro.test(LN_A_T_anv$residuals)$p.value
LN_A_T_col <- c(ifelse (LN_A_T_shp <= 0.05, "False", "True"))
#Creating table with the results
LN_A_T_res <- data.frame ("P-value" = LN_A_T_shp, "Normality" = LN_A_T_col)
rownames(LN_A_T_res) <- c("LN 100 vs 200")

####-------------------*Stem_length for 20/12/14-------------------####
####Control vs Treatments####
SL_A_C_anv <- SL_A_C_shp <- SL_A_C_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200", "Drought")){
  SL_A_C_anv <- aov(Data$Stem_length[Data$Species == "Avena" & 
                                       Data$Date == "201214" & 
                                       Data$Treatment == "Control"] ~ 
                      Data$Stem_length[Data$Species == "Avena" & 
                                         Data$Date == "201214" & 
                                         Data$Treatment == i])
  SL_A_C_shp[i] <- shapiro.test(SL_A_C_anv$residuals)$p.value
  SL_A_C_col <- c(SL_A_C_col, ifelse (SL_A_C_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
SL_A_C_res <- data.frame ("P-value" = SL_A_C_shp, "Normality" = SL_A_C_col)
rownames(SL_A_C_res) <- c("SL Control vs 100", "SL Control vs 200", "SL Control vs Drought")

####Drought vs NaCl####
SL_A_D_anv <- SL_A_D_shp <- SL_A_D_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200")){
  SL_A_D_anv <- aov(Data$Stem_length[Data$Species == "Avena" & 
                                       Data$Date == "201214" & 
                                       Data$Treatment == "Drought"] ~ 
                      Data$Stem_length[Data$Species == "Avena" & 
                                         Data$Date == "201214" & 
                                         Data$Treatment == i])
  SL_A_D_shp[i] <- shapiro.test(SL_A_D_anv$residuals)$p.value
  SL_A_D_col <- c(SL_A_D_col, ifelse (SL_A_D_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
SL_A_D_res <- data.frame ("P-value" = SL_A_D_shp, "Normality" = SL_A_D_col)
rownames(SL_A_D_res) <- c("SL Drought vs 100", "SL Drought vs 200")

####100 vs 200####
SL_A_T_anv <- aov(Data$Stem_length[Data$Species == "Avena" & 
                                     Data$Date == "201214" & 
                                     Data$Treatment == "100"] ~ 
                    Data$Stem_length[Data$Species == "Avena" & 
                                       Data$Date == "201214" & 
                                       Data$Treatment == "200"])
SL_A_T_shp <- shapiro.test(SL_A_T_anv$residuals)$p.value
SL_A_T_col <- c(ifelse (SL_A_T_shp <= 0.05, "False", "True"))
#Creating table with the results
SL_A_T_res <- data.frame ("P-value" = SL_A_T_shp, "Normality" = SL_A_T_col)
rownames(SL_A_T_res) <- c("SL 100 vs 200")

####-------------------*Root_Length for 20/12/14-------------------####
####Control vs Treatments####
RL_A_C_anv <- RL_A_C_shp <- RL_A_C_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200", "Drought")){
  RL_A_C_anv <- aov(Data$Root_Length[Data$Species == "Avena" & 
                                       Data$Date == "201214" & 
                                       Data$Treatment == "Control"] ~ 
                      Data$Root_Length[Data$Species == "Avena" & 
                                         Data$Date == "201214" & 
                                         Data$Treatment == i])
  RL_A_C_shp[i] <- shapiro.test(RL_A_C_anv$residuals)$p.value
  RL_A_C_col <- c(RL_A_C_col, ifelse (RL_A_C_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
RL_A_C_res <- data.frame ("P-value" = RL_A_C_shp, "Normality" = RL_A_C_col)
rownames(RL_A_C_res) <- c("RL Control vs 100", "RL Control vs 200", "RL Control vs Drought")

####Drought vs NaCl####
RL_A_D_anv <- RL_A_D_shp <- RL_A_D_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200")){
  RL_A_D_anv <- aov(Data$Root_Length[Data$Species == "Avena" & 
                                       Data$Date == "201214" & 
                                       Data$Treatment == "Drought"] ~ 
                      Data$Root_Length[Data$Species == "Avena" & 
                                         Data$Date == "201214" & 
                                         Data$Treatment == i])
  RL_A_D_shp[i] <- shapiro.test(RL_A_D_anv$residuals)$p.value
  RL_A_D_col <- c(RL_A_D_col, ifelse (RL_A_D_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
RL_A_D_res <- data.frame ("P-value" = RL_A_D_shp, "Normality" = RL_A_D_col)
rownames(RL_A_D_res) <- c("RL Drought vs 100", "RL Drought vs 200")

####100 vs 200####
RL_A_T_anv <- aov(Data$Root_Length[Data$Species == "Avena" & 
                                     Data$Date == "201214" & 
                                     Data$Treatment == "100"] ~ 
                    Data$Root_Length[Data$Species == "Avena" & 
                                       Data$Date == "201214" & 
                                       Data$Treatment == "200"])
RL_A_T_shp <- shapiro.test(RL_A_T_anv$residuals)$p.value
RL_A_T_col <- c(ifelse (RL_A_T_shp <= 0.05, "False", "True"))
#Creating table with the results
RL_A_T_res <- data.frame ("P-value" = RL_A_T_shp, "Normality" = RL_A_T_col)
rownames(RL_A_T_res) <- c("RL 100 vs 200")

####-------------------*Fresh_weight for 20/12/14-------------------####
####Control vs Treatments####
FW_A_C_anv <- FW_A_C_shp <- FW_A_C_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200", "Drought")){
  FW_A_C_anv <- aov(Data$Fresh_weight[Data$Species == "Avena" & 
                                        Data$Date == "201214" & 
                                        Data$Treatment == "Control"] ~ 
                      Data$Fresh_weight[Data$Species == "Avena" & 
                                          Data$Date == "201214" & 
                                          Data$Treatment == i])
  FW_A_C_shp[i] <- shapiro.test(FW_A_C_anv$residuals)$p.value
  FW_A_C_col <- c(FW_A_C_col, ifelse (FW_A_C_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
FW_A_C_res <- data.frame ("P-value" = FW_A_C_shp, "Normality" = FW_A_C_col)
rownames(FW_A_C_res) <- c("FW Control vs 100", "FW Control vs 200", "FW Control vs Drought")

####Drought vs NaCl####
FW_A_D_anv <- FW_A_D_shp <- FW_A_D_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200")){
  FW_A_D_anv <- aov(Data$Fresh_weight[Data$Species == "Avena" & 
                                        Data$Date == "201214" & 
                                        Data$Treatment == "Drought"] ~ 
                      Data$Fresh_weight[Data$Species == "Avena" & 
                                          Data$Date == "201214" & 
                                          Data$Treatment == i])
  FW_A_D_shp[i] <- shapiro.test(FW_A_D_anv$residuals)$p.value
  FW_A_D_col <- c(FW_A_D_col, ifelse (FW_A_D_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
FW_A_D_res <- data.frame ("P-value" = FW_A_D_shp, "Normality" = FW_A_D_col)
rownames(FW_A_D_res) <- c("FW Drought vs 100", "FW Drought vs 200")

####100 vs 200####
FW_A_T_anv <- aov(Data$Fresh_weight[Data$Species == "Avena" & 
                                      Data$Date == "201214" & 
                                      Data$Treatment == "100"] ~ 
                    Data$Fresh_weight[Data$Species == "Avena" & 
                                        Data$Date == "201214" & 
                                        Data$Treatment == "200"])
FW_A_T_shp <- shapiro.test(FW_A_T_anv$residuals)$p.value
FW_A_T_col <- c(ifelse (FW_A_T_shp <= 0.05, "False", "True"))
#Creating table with the results
FW_A_T_res <- data.frame ("P-value" = FW_A_T_shp, "Normality" = FW_A_T_col)
rownames(FW_A_T_res) <- c("FW 100 vs 200")

####-------------------*Dry_weight for 20/12/14-------------------####
####Control vs Treatments####
DW_A_C_anv <- DW_A_C_shp <- DW_A_C_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200", "Drought")){
  DW_A_C_anv <- aov(Data$Dry_weight[Data$Species == "Avena" & 
                                      Data$Date == "201214" & 
                                      Data$Treatment == "Control"] ~ 
                      Data$Dry_weight[Data$Species == "Avena" & 
                                        Data$Date == "201214" & 
                                        Data$Treatment == i])
  DW_A_C_shp[i] <- shapiro.test(DW_A_C_anv$residuals)$p.value
  DW_A_C_col <- c(DW_A_C_col, ifelse (DW_A_C_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
DW_A_C_res <- data.frame ("P-value" = DW_A_C_shp, "Normality" = DW_A_C_col)
rownames(DW_A_C_res) <- c("DW Control vs 100", "DW Control vs 200", "DW Control vs Drought")

####Drought vs NaCl####
DW_A_D_anv <- DW_A_D_shp <- DW_A_D_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200")){
  DW_A_D_anv <- aov(Data$Dry_weight[Data$Species == "Avena" & 
                                      Data$Date == "201214" & 
                                      Data$Treatment == "Drought"] ~ 
                      Data$Dry_weight[Data$Species == "Avena" & 
                                        Data$Date == "201214" & 
                                        Data$Treatment == i])
  DW_A_D_shp[i] <- shapiro.test(DW_A_D_anv$residuals)$p.value
  DW_A_D_col <- c(DW_A_D_col, ifelse (DW_A_D_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
DW_A_D_res <- data.frame ("P-value" = DW_A_D_shp, "Normality" = DW_A_D_col)
rownames(DW_A_D_res) <- c("DW Drought vs 100", "DW Drought vs 200")

####100 vs 200####
DW_A_T_anv <- aov(Data$Dry_weight[Data$Species == "Avena" & 
                                    Data$Date == "201214" & 
                                    Data$Treatment == "100"] ~ 
                    Data$Dry_weight[Data$Species == "Avena" & 
                                      Data$Date == "201214" & 
                                      Data$Treatment == "200"])
DW_A_T_shp <- shapiro.test(DW_A_T_anv$residuals)$p.value
DW_A_T_col <- c(ifelse (DW_A_T_shp <= 0.05, "False", "True"))
#Creating table with the results
DW_A_T_res <- data.frame ("P-value" = DW_A_T_shp, "Normality" = DW_A_T_col)
rownames(DW_A_T_res) <- c("DW 100 vs 200")

####Creating summary table for Avena fatua####
Avena_norm <- rbind(LN_A_C_res, 
                    LN_A_D_res, 
                    LN_A_T_res, 
                    SL_A_C_res, 
                    SL_A_D_res, 
                    SL_A_T_res,
                    RL_A_C_res, 
                    RL_A_D_res, 
                    RL_A_T_res,
                    FW_A_C_res, 
                    FW_A_D_res, 
                    FW_A_T_res,
                    DW_A_C_res,
                    DW_A_D_res,
                    DW_A_T_res)

#####---------------**Triticum aestivum---------------#####
####-------------------*Leaf_number for 20/12/14-------------------####
####Control vs Treatments####
LN_Tr_C_anv <- LN_Tr_C_shp <- LN_Tr_C_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200", "Drought")){
  LN_Tr_C_anv <- aov(Data$Leaf_number[Data$Species == "Triticum" & 
                                        Data$Date == "201214" & 
                                        Data$Treatment == "Control"] ~ 
                       Data$Leaf_number[Data$Species == "Triticum" & 
                                          Data$Date == "201214" & 
                                          Data$Treatment == i])
  LN_Tr_C_shp[i] <- shapiro.test(LN_Tr_C_anv$residuals)$p.value
  LN_Tr_C_col <- c(LN_Tr_C_col, ifelse (LN_Tr_C_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
LN_Tr_C_res <- data.frame ("P-value" = LN_Tr_C_shp, "Normality" = LN_Tr_C_col)
rownames(LN_Tr_C_res) <- c("LN Control vs 100", "LN Control vs 200", "LN Control vs Drought")

####Drought vs NaCl####
LN_Tr_D_anv <- LN_Tr_D_shp <- LN_Tr_D_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200")){
  LN_Tr_D_anv <- aov(Data$Leaf_number[Data$Species == "Triticum" & 
                                        Data$Date == "201214" & 
                                        Data$Treatment == "Drought"] ~ 
                       Data$Leaf_number[Data$Species == "Triticum" & 
                                          Data$Date == "201214" & 
                                          Data$Treatment == i])
  LN_Tr_D_shp[i] <- shapiro.test(LN_Tr_D_anv$residuals)$p.value
  LN_Tr_D_col <- c(LN_Tr_D_col, ifelse (LN_Tr_D_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
LN_Tr_D_res <- data.frame ("P-value" = LN_Tr_D_shp, "Normality" = LN_Tr_D_col)
rownames(LN_Tr_D_res) <- c("LN Drought vs 100", "LN Drought vs 200")

####100 vs 200####
LN_Tr_T_anv <- aov(Data$Leaf_number[Data$Species == "Triticum" & 
                                      Data$Date == "201214" & 
                                      Data$Treatment == "100"] ~ 
                     Data$Leaf_number[Data$Species == "Triticum" & 
                                        Data$Date == "201214" & 
                                        Data$Treatment == "200"])
LN_Tr_T_shp <- shapiro.test(LN_Tr_T_anv$residuals)$p.value
LN_Tr_T_col <- c(ifelse (LN_Tr_T_shp <= 0.05, "False", "True"))
#Creating table with the results
LN_Tr_T_res <- data.frame ("P-value" = LN_Tr_T_shp, "Normality" = LN_Tr_T_col)
rownames(LN_Tr_T_res) <- c("LN 100 vs 200")

####-------------------*Stem_length for 20/12/14-------------------####
####Control vs Treatments####
SL_Tr_C_anv <- SL_Tr_C_shp <- SL_Tr_C_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200", "Drought")){
  SL_Tr_C_anv <- aov(Data$Stem_length[Data$Species == "Triticum" & 
                                        Data$Date == "201214" & 
                                        Data$Treatment == "Control"] ~ 
                       Data$Stem_length[Data$Species == "Triticum" & 
                                          Data$Date == "201214" & 
                                          Data$Treatment == i])
  SL_Tr_C_shp[i] <- shapiro.test(SL_Tr_C_anv$residuals)$p.value
  SL_Tr_C_col <- c(SL_Tr_C_col, ifelse (SL_Tr_C_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
SL_Tr_C_res <- data.frame ("P-value" = SL_Tr_C_shp, "Normality" = SL_Tr_C_col)
rownames(SL_Tr_C_res) <- c("SL Control vs 100", "SL Control vs 200", "SL Control vs Drought")

####Drought vs NaCl####
SL_Tr_D_anv <- SL_Tr_D_shp <- SL_Tr_D_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200")){
  SL_Tr_D_anv <- aov(Data$Stem_length[Data$Species == "Triticum" & 
                                        Data$Date == "201214" & 
                                        Data$Treatment == "Drought"] ~ 
                       Data$Stem_length[Data$Species == "Triticum" & 
                                          Data$Date == "201214" & 
                                          Data$Treatment == i])
  SL_Tr_D_shp[i] <- shapiro.test(SL_Tr_D_anv$residuals)$p.value
  SL_Tr_D_col <- c(SL_Tr_D_col, ifelse (SL_Tr_D_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
SL_Tr_D_res <- data.frame ("P-value" = SL_Tr_D_shp, "Normality" = SL_Tr_D_col)
rownames(SL_Tr_D_res) <- c("SL Drought vs 100", "SL Drought vs 200")

####100 vs 200####
SL_Tr_T_anv <- aov(Data$Stem_length[Data$Species == "Triticum" & 
                                      Data$Date == "201214" & 
                                      Data$Treatment == "100"] ~ 
                     Data$Stem_length[Data$Species == "Triticum" & 
                                        Data$Date == "201214" & 
                                        Data$Treatment == "200"])
SL_Tr_T_shp <- shapiro.test(SL_Tr_T_anv$residuals)$p.value
SL_Tr_T_col <- c(ifelse (SL_Tr_T_shp <= 0.05, "False", "True"))
#Creating table with the results
SL_Tr_T_res <- data.frame ("P-value" = SL_Tr_T_shp, "Normality" = SL_Tr_T_col)
rownames(SL_Tr_T_res) <- c("SL 100 vs 200")

####-------------------*Root_Length for 20/12/14-------------------####
####Control vs Treatments####
RL_Tr_C_anv <- RL_Tr_C_shp <- RL_Tr_C_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200", "Drought")){
  RL_Tr_C_anv <- aov(Data$Root_Length[Data$Species == "Triticum" & 
                                        Data$Date == "201214" & 
                                        Data$Treatment == "Control"] ~ 
                       Data$Root_Length[Data$Species == "Triticum" & 
                                          Data$Date == "201214" & 
                                          Data$Treatment == i])
  RL_Tr_C_shp[i] <- shapiro.test(RL_Tr_C_anv$residuals)$p.value
  RL_Tr_C_col <- c(RL_Tr_C_col, ifelse (RL_Tr_C_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
RL_Tr_C_res <- data.frame ("P-value" = RL_Tr_C_shp, "Normality" = RL_Tr_C_col)
rownames(RL_Tr_C_res) <- c("RL Control vs 100", "RL Control vs 200", "RL Control vs Drought")

####Drought vs NaCl####
RL_Tr_D_anv <- RL_Tr_D_shp <- RL_Tr_D_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200")){
  RL_Tr_D_anv <- aov(Data$Root_Length[Data$Species == "Triticum" & 
                                        Data$Date == "201214" & 
                                        Data$Treatment == "Drought"] ~ 
                       Data$Root_Length[Data$Species == "Triticum" & 
                                          Data$Date == "201214" & 
                                          Data$Treatment == i])
  RL_Tr_D_shp[i] <- shapiro.test(RL_Tr_D_anv$residuals)$p.value
  RL_Tr_D_col <- c(RL_Tr_D_col, ifelse (RL_Tr_D_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
RL_Tr_D_res <- data.frame ("P-value" = RL_Tr_D_shp, "Normality" = RL_Tr_D_col)
rownames(RL_Tr_D_res) <- c("RL Drought vs 100", "RL Drought vs 200")

####100 vs 200####
RL_Tr_T_anv <- aov(Data$Root_Length[Data$Species == "Triticum" & 
                                      Data$Date == "201214" & 
                                      Data$Treatment == "100"] ~ 
                     Data$Root_Length[Data$Species == "Triticum" & 
                                        Data$Date == "201214" & 
                                        Data$Treatment == "200"])
RL_Tr_T_shp <- shapiro.test(RL_Tr_T_anv$residuals)$p.value
RL_Tr_T_col <- c(ifelse (RL_Tr_T_shp <= 0.05, "False", "True"))
#Creating table with the results
RL_Tr_T_res <- data.frame ("P-value" = RL_Tr_T_shp, "Normality" = RL_Tr_T_col)
rownames(RL_Tr_T_res) <- c("RL 100 vs 200")

####-------------------*Fresh_weight for 20/12/14-------------------####
####Control vs Treatments####
FW_Tr_C_anv <- FW_Tr_C_shp <- FW_Tr_C_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200", "Drought")){
  FW_Tr_C_anv <- aov(Data$Fresh_weight[Data$Species == "Triticum" & 
                                         Data$Date == "201214" & 
                                         Data$Treatment == "Control"] ~ 
                       Data$Fresh_weight[Data$Species == "Triticum" & 
                                           Data$Date == "201214" & 
                                           Data$Treatment == i])
  FW_Tr_C_shp[i] <- shapiro.test(FW_Tr_C_anv$residuals)$p.value
  FW_Tr_C_col <- c(FW_Tr_C_col, ifelse (FW_Tr_C_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
FW_Tr_C_res <- data.frame ("P-value" = FW_Tr_C_shp, "Normality" = FW_Tr_C_col)
rownames(FW_Tr_C_res) <- c("FW Control vs 100", "FW Control vs 200", "FW Control vs Drought")

####Drought vs NaCl####
FW_Tr_D_anv <- FW_Tr_D_shp <- FW_Tr_D_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200")){
  FW_Tr_D_anv <- aov(Data$Fresh_weight[Data$Species == "Triticum" & 
                                         Data$Date == "201214" & 
                                         Data$Treatment == "Drought"] ~ 
                       Data$Fresh_weight[Data$Species == "Triticum" & 
                                           Data$Date == "201214" & 
                                           Data$Treatment == i])
  FW_Tr_D_shp[i] <- shapiro.test(FW_Tr_D_anv$residuals)$p.value
  FW_Tr_D_col <- c(FW_Tr_D_col, ifelse (FW_Tr_D_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
FW_Tr_D_res <- data.frame ("P-value" = FW_Tr_D_shp, "Normality" = FW_Tr_D_col)
rownames(FW_Tr_D_res) <- c("FW Drought vs 100", "FW Drought vs 200")

####100 vs 200####
FW_Tr_T_anv <- aov(Data$Fresh_weight[Data$Species == "Triticum" & 
                                       Data$Date == "201214" & 
                                       Data$Treatment == "100"] ~ 
                     Data$Fresh_weight[Data$Species == "Triticum" & 
                                         Data$Date == "201214" & 
                                         Data$Treatment == "200"])
FW_Tr_T_shp <- shapiro.test(FW_Tr_T_anv$residuals)$p.value
FW_Tr_T_col <- c(ifelse (FW_Tr_T_shp <= 0.05, "False", "True"))
#Creating table with the results
FW_Tr_T_res <- data.frame ("P-value" = FW_Tr_T_shp, "Normality" = FW_Tr_T_col)
rownames(FW_Tr_T_res) <- c("FW 100 vs 200")

####-------------------*Dry_weight for 20/12/14-------------------####
####Control vs Treatments####
DW_Tr_C_anv <- DW_Tr_C_shp <- DW_Tr_C_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200", "Drought")){
  DW_Tr_C_anv <- aov(Data$Dry_weight[Data$Species == "Triticum" & 
                                       Data$Date == "201214" & 
                                       Data$Treatment == "Control"] ~ 
                       Data$Dry_weight[Data$Species == "Triticum" & 
                                         Data$Date == "201214" & 
                                         Data$Treatment == i])
  DW_Tr_C_shp[i] <- shapiro.test(DW_Tr_C_anv$residuals)$p.value
  DW_Tr_C_col <- c(DW_Tr_C_col, ifelse (DW_Tr_C_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
DW_Tr_C_res <- data.frame ("P-value" = DW_Tr_C_shp, "Normality" = DW_Tr_C_col)
rownames(DW_Tr_C_res) <- c("DW Control vs 100", "DW Control vs 200", "DW Control vs Drought")

####Drought vs NaCl####
DW_Tr_D_anv <- DW_Tr_D_shp <- DW_Tr_D_col <- numeric() #creating empty vectors
#testing the normality
for(i in c("100", "200")){
  DW_Tr_D_anv <- aov(Data$Dry_weight[Data$Species == "Triticum" & 
                                       Data$Date == "201214" & 
                                       Data$Treatment == "Drought"] ~ 
                       Data$Dry_weight[Data$Species == "Triticum" & 
                                         Data$Date == "201214" & 
                                         Data$Treatment == i])
  DW_Tr_D_shp[i] <- shapiro.test(DW_Tr_D_anv$residuals)$p.value
  DW_Tr_D_col <- c(DW_Tr_D_col, ifelse (DW_Tr_D_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
DW_Tr_D_res <- data.frame ("P-value" = DW_Tr_D_shp, "Normality" = DW_Tr_D_col)
rownames(DW_Tr_D_res) <- c("DW Drought vs 100", "DW Drought vs 200")

####100 vs 200####
DW_Tr_T_anv <- aov(Data$Dry_weight[Data$Species == "Triticum" & 
                                     Data$Date == "201214" & 
                                     Data$Treatment == "100"] ~ 
                     Data$Dry_weight[Data$Species == "Triticum" & 
                                       Data$Date == "201214" & 
                                       Data$Treatment == "200"])
DW_Tr_T_shp <- shapiro.test(DW_Tr_T_anv$residuals)$p.value
DW_Tr_T_col <- c(ifelse (DW_Tr_T_shp <= 0.05, "False", "True"))
#Creating table with the results
DW_Tr_T_res <- data.frame ("P-value" = DW_Tr_T_shp, "Normality" = DW_Tr_T_col)
rownames(DW_Tr_T_res) <- c("DW 100 vs 200")

####Creating summary table for Triticum aestivum####
Triticum_norm <- rbind(LN_Tr_C_res, 
                    LN_Tr_D_res, 
                    LN_Tr_T_res, 
                    SL_Tr_C_res, 
                    SL_Tr_D_res, 
                    SL_Tr_T_res,
                    RL_Tr_C_res, 
                    RL_Tr_D_res, 
                    RL_Tr_T_res,
                    FW_Tr_C_res, 
                    FW_Tr_D_res, 
                    FW_Tr_T_res,
                    DW_Tr_C_res,
                    DW_Tr_D_res,
                    DW_Tr_T_res)

#####---------------**Avena vs Triticum---------------#####
####-------------------*20/12/14-------------------####
####Leaf_number####
LN_AT_anv <- LN_AT_shp <- LN_AT_col <- numeric() #creating empty vectors
#testing the normality
for(i in unique(Data$Treatment)){
  LN_AT_anv <- aov(Data$Leaf_number[Data$Species == "Avena" & 
                                      Data$Date == "201214" & 
                                      Data$Treatment == i] ~ 
                     Data$Leaf_number[Data$Species == "Triticum" & 
                                        Data$Date == "201214" & 
                                        Data$Treatment == i])
  LN_AT_shp[i] <- shapiro.test(LN_AT_anv$residuals)$p.value
  LN_AT_col <- c(LN_AT_col, ifelse (LN_AT_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
LN_AT_res <- data.frame ("P-value" = LN_AT_shp, "Normality" = LN_AT_col)
rownames(LN_AT_res) <- c("LN Control", "LN 100", "LN 200", "LN Drought")

####Stem_length####
SL_AT_anv <- SL_AT_shp <- SL_AT_col <- numeric() #creating empty vectors
#testing the normality
for(i in unique(Data$Treatment)){
  SL_AT_anv <- aov(Data$Stem_length[Data$Species == "Avena" & 
                                      Data$Date == "201214" & 
                                      Data$Treatment == i] ~ 
                     Data$Stem_length[Data$Species == "Triticum" & 
                                        Data$Date == "201214" & 
                                        Data$Treatment == i])
  SL_AT_shp[i] <- shapiro.test(SL_AT_anv$residuals)$p.value
  SL_AT_col <- c(SL_AT_col, ifelse (SL_AT_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
SL_AT_res <- data.frame ("P-value" = SL_AT_shp, "Normality" = SL_AT_col)
rownames(SL_AT_res) <- c("SL Control", "SL 100", "SL 200", "SL Drought")

####Root_Length####
RL_AT_anv <- RL_AT_shp <- RL_AT_col <- numeric() #creating empty vectors
#testing the normality
for(i in unique(Data$Treatment)){
  RL_AT_anv <- aov(Data$Root_Length[Data$Species == "Avena" & 
                                      Data$Date == "201214" & 
                                      Data$Treatment == i] ~ 
                     Data$Root_Length[Data$Species == "Triticum" & 
                                        Data$Date == "201214" & 
                                        Data$Treatment == i])
  RL_AT_shp[i] <- shapiro.test(RL_AT_anv$residuals)$p.value
  RL_AT_col <- c(RL_AT_col, ifelse (RL_AT_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
RL_AT_res <- data.frame ("P-value" = RL_AT_shp, "Normality" = RL_AT_col)
rownames(RL_AT_res) <- c("RL Control", "RL 100", "RL 200", "RL Drought")

####Fresh_weight####
FW_AT_anv <- FW_AT_shp <- FW_AT_col <- numeric() #creating empty vectors
#testing the normality
for(i in unique(Data$Treatment)){
  FW_AT_anv <- aov(Data$Fresh_weight[Data$Species == "Avena" & 
                                       Data$Date == "201214" & 
                                       Data$Treatment == i] ~ 
                     Data$Fresh_weight[Data$Species == "Triticum" & 
                                         Data$Date == "201214" & 
                                         Data$Treatment == i])
  FW_AT_shp[i] <- shapiro.test(FW_AT_anv$residuals)$p.value
  FW_AT_col <- c(FW_AT_col, ifelse (FW_AT_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
FW_AT_res <- data.frame ("P-value" = FW_AT_shp, "Normality" = FW_AT_col)
rownames(FW_AT_res) <- c("FW Control", "FW 100", "FW 200", "FW Drought")

####Dry_weight####
DW_AT_anv <- DW_AT_shp <- DW_AT_col <- numeric() #creating empty vectors
#testing the normality
for(i in unique(Data$Treatment)){
  DW_AT_anv <- aov(Data$Dry_weight[Data$Species == "Avena" & 
                                     Data$Date == "201214" & 
                                     Data$Treatment == i] ~ 
                     Data$Dry_weight[Data$Species == "Triticum" & 
                                       Data$Date == "201214" & 
                                       Data$Treatment == i])
  DW_AT_shp[i] <- shapiro.test(DW_AT_anv$residuals)$p.value
  DW_AT_col <- c(DW_AT_col, ifelse (DW_AT_shp[i] <= 0.05, "False", "True"))
}
#Creating table with the results
DW_AT_res <- data.frame ("P-value" = DW_AT_shp, "Normality" = DW_AT_col)
rownames(DW_AT_res) <- c("DW Control", "DW 100", "DW 200", "DW Drought")
####Creating summary table for Triticum aestivum vs Avena fatua####
Tr_Av_norm <- rbind(LN_AT_res, 
                    SL_AT_res,
                    RL_AT_res,
                    FW_AT_res,
                    DW_AT_res)
library("readxl")
Data <- read_excel("210129_Greenhouse_results.xlsx")
Data <- Data[-12]
####Working Table####
Evol_table <- na.omit(Data[c(1:5, 8)])
#for dates
d <- rep("06/11/20", 6)
d <- c(d, rep("18/11/20", 6))
d <- c(d, rep("30/11/20", 6))
d <- c(d, rep("14/12/20", 6))
new_date <- rep(d,8)
Evol_table$Date <- as.Date(new_date, format='%d/%m/%y')

####Leaf number####
library(agricolae)
Evol_LN_aov <- aov(Leaf_number ~ Species, data = Evol_table)
Evol_LN_shapir <- shapiro.test(Evol_LN_aov$residuals)
Evol_LN_shapir

Evol_LN_krw_sp <- kruskal(Evol_table$Leaf_number,
                          Evol_table$Species,
                          alpha = 0.05)
Evol_LN_krw_sp$groups

####6 NOV####
NOV_06 <- subset(Evol_table,
                 Date == "2020-11-06",
                 select = c(Species, Treatment, Leaf_number, Stem_length))
####Avena####
AV_LN_06 <- kruskal(NOV_06$Leaf_number[NOV_06$Species == "Avena"],
                    NOV_06$Treatment[NOV_06$Species == "Avena"],
                    alpha = 0.05,
                    console=TRUE)
AV_LN_06_t <- data.frame(Treatment = row.names(AV_LN_06$groups),
                         "NOV_06" = AV_LN_06$groups[[2]])

AV_SL_06 <- kruskal(NOV_06$Stem_length[NOV_06$Species == "Avena"],
                    NOV_06$Treatment[NOV_06$Species == "Avena"],
                    alpha = 0.05)
AV_SL_06_t <- data.frame(Treatment = row.names(AV_SL_06$groups),
                         "NOV_06" = AV_SL_06$groups[[2]])
####Triticum####
TR_LN_06 <- kruskal(NOV_06$Leaf_number[NOV_06$Species == "Triticum"],
                    NOV_06$Treatment[NOV_06$Species == "Triticum"],
                    alpha = 0.05)
TR_LN_06_t <- data.frame(Treatment = row.names(TR_LN_06$groups),
                         "NOV_06" = TR_LN_06$groups[[2]])

TR_SL_06 <- kruskal(NOV_06$Stem_length[NOV_06$Species == "Triticum"],
                    NOV_06$Treatment[NOV_06$Species == "Triticum"],
                    alpha = 0.05)
TR_SL_06_t <- data.frame(Treatment = row.names(TR_SL_06$groups),
                         "NOV_06" = TR_SL_06$groups[[2]])
####18 NOV####
NOV_18 <- subset(Evol_table, Date == "2020-11-18", select = c(Species, Treatment, Leaf_number, Stem_length))
####Avena####
AV_LN_18 <- kruskal(NOV_18$Leaf_number[NOV_18$Species == "Avena"],
                    NOV_18$Treatment[NOV_18$Species == "Avena"],
                    alpha = 0.05)
AV_LN_18_t <- data.frame(Treatment = row.names(AV_LN_18$groups),
                         "NOV_18" = AV_LN_18$groups[[2]])

AV_SL_18 <- kruskal(NOV_18$Stem_length[NOV_18$Species == "Avena"],
                    NOV_18$Treatment[NOV_18$Species == "Avena"],
                    alpha = 0.05)
AV_SL_18_t <- data.frame(Treatment = row.names(AV_SL_18$groups),
                         "NOV_18" = AV_SL_18$groups[[2]])
####Triticum####
TR_LN_18 <- kruskal(NOV_18$Leaf_number[NOV_18$Species == "Triticum"],
                    NOV_18$Treatment[NOV_18$Species == "Triticum"],
                    alpha = 0.05)
TR_LN_18_t <- data.frame(Treatment = row.names(TR_LN_18$groups),
                         "NOV_18" = TR_LN_18$groups[[2]])

TR_SL_18 <- kruskal(NOV_18$Stem_length[NOV_18$Species == "Triticum"],
                    NOV_18$Treatment[NOV_18$Species == "Triticum"],
                    alpha = 0.05)
TR_SL_18_t <- data.frame(Treatment = row.names(TR_SL_18$groups),
                         "NOV_18" = TR_SL_18$groups[[2]])
####30 NOV####
NOV_30 <- subset(Evol_table, Date == "2020-11-30", select = c(Species, Treatment, Leaf_number, Stem_length))
####Avena####
AV_LN_30 <- kruskal(NOV_30$Leaf_number[NOV_30$Species == "Avena"],
                    NOV_30$Treatment[NOV_30$Species == "Avena"],
                    alpha = 0.05)
AV_LN_30_t <- data.frame(Treatment = row.names(AV_LN_30$groups),
                         "NOV_30" = AV_LN_30$groups[[2]])

AV_SL_30 <- kruskal(NOV_30$Stem_length[NOV_30$Species == "Avena"],
                    NOV_30$Treatment[NOV_30$Species == "Avena"],
                    alpha = 0.05)
AV_SL_30_t <- data.frame(Treatment = row.names(AV_SL_30$groups),
                         "NOV_30" = AV_SL_30$groups[[2]])
####Triticum####
TR_LN_30 <- kruskal(NOV_30$Leaf_number[NOV_30$Species == "Triticum"],
                    NOV_30$Treatment[NOV_30$Species == "Triticum"],
                    alpha = 0.05)
TR_LN_30_t <- data.frame(Treatment = row.names(TR_LN_30$groups),
                         "NOV_30" = TR_LN_30$groups[[2]])

TR_SL_30 <- kruskal(NOV_30$Stem_length[NOV_30$Species == "Triticum"],
                    NOV_30$Treatment[NOV_30$Species == "Triticum"],
                    alpha = 0.05)
TR_SL_30_t <- data.frame(Treatment = row.names(TR_SL_30$groups),
                         "NOV_30" = TR_SL_30$groups[[2]])
####14 DEC####
DEC_14 <- subset(Evol_table, Date == "2020-12-14", select = c(Species, Treatment, Leaf_number, Stem_length))
####Avena####
AV_LN_14 <- kruskal(DEC_14$Leaf_number[DEC_14$Species == "Avena"],
                    DEC_14$Treatment[DEC_14$Species == "Avena"],
                    alpha = 0.05)
AV_LN_14_t <- data.frame(Treatment = row.names(AV_LN_14$groups),
                         "DEC_14" = AV_LN_14$groups[[2]])

AV_SL_14 <- kruskal(DEC_14$Stem_length[DEC_14$Species == "Avena"],
                    DEC_14$Treatment[DEC_14$Species == "Avena"],
                    alpha = 0.05)
AV_SL_14_t <- data.frame(Treatment = row.names(AV_SL_14$groups),
                         "DEC_14" = AV_SL_14$groups[[2]])
####Triticum####
TR_LN_14 <- kruskal(DEC_14$Leaf_number[DEC_14$Species == "Triticum"],
                    DEC_14$Treatment[DEC_14$Species == "Triticum"],
                    alpha = 0.05)
TR_LN_14_t <- data.frame(Treatment = row.names(TR_LN_14$groups),
                         "DEC_14" = TR_LN_14$groups[[2]])

TR_SL_14 <- kruskal(DEC_14$Stem_length[DEC_14$Species == "Triticum"],
                    DEC_14$Treatment[DEC_14$Species == "Triticum"],
                    alpha = 0.05)
TR_SL_14_t <- data.frame(Treatment = row.names(TR_SL_14$groups),
                         "DEC_14" = TR_SL_14$groups[[2]])

AV_LN_EV <- merge(AV_LN_06_t, AV_LN_18_t, by = "Treatment")
AV_LN_EV <- merge(AV_LN_EV, AV_LN_30_t, by = "Treatment")
AV_LN_EV <- merge(AV_LN_EV, AV_LN_14_t, by = "Treatment")
AV_LN_EV <- AV_LN_EV[c(3, 1, 2, 4), ]

AV_SL_EV <- merge(AV_SL_06_t, AV_SL_18_t, by = "Treatment")
AV_SL_EV <- merge(AV_SL_EV, AV_SL_30_t, by = "Treatment")
AV_SL_EV <- merge(AV_SL_EV, AV_SL_14_t, by = "Treatment")
AV_SL_EV <- AV_SL_EV[c(3, 1, 2, 4), ]

TR_LN_EV <- merge(TR_LN_06_t, TR_LN_18_t, by = "Treatment")
TR_LN_EV <- merge(TR_LN_EV, TR_LN_30_t, by = "Treatment")
TR_LN_EV <- merge(TR_LN_EV, TR_LN_14_t, by = "Treatment")
TR_LN_EV <- TR_LN_EV[c(3, 1, 2, 4), ]

TR_SL_EV <- merge(TR_SL_06_t, TR_SL_18_t, by = "Treatment")
TR_SL_EV <- merge(TR_SL_EV, TR_SL_30_t, by = "Treatment")
TR_SL_EV <- merge(TR_SL_EV, TR_SL_14_t, by = "Treatment")
TR_SL_EV <- TR_SL_EV[c(3, 1, 2, 4), ]
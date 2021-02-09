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
#            Evol_table$Leaf_number groups
#Triticum              105.08333      a
#Avena                  87.91667      b

####within sp between tr####
Evol_LN_krw_tr_Av <- kruskal(Evol_table$Leaf_number[Evol_table$Species == "Avena"],
                             Evol_table$Treatment[Evol_table$Species == "Avena"],
                             alpha = 0.05)
Evol_LN_krw_tr_Av$groups
#        Evol_table$Leaf_number[Evol_table$Species == "Avena"] groups
#Control                                              57.75000      a
#100                                                  62.85417      a
#200                                                  53.50000      a
#Drought                                              19.89583      b

Evol_LN_krw_tr_Tr <- kruskal(Evol_table$Leaf_number[Evol_table$Species == "Triticum"],
                             Evol_table$Treatment[Evol_table$Species == "Triticum"],
                             alpha = 0.05)
Evol_LN_krw_tr_Tr$groups
#        Evol_table$Leaf_number[Evol_table$Species == "Triticum"] groups
#Control                                                 63.06250      a
#100                                                     55.02083     ab
#200                                                     42.77083     bc
#Drought                                                 33.14583      c

####Stem length####
Evol_SL_aov <- aov(Stem_length ~ Species, data = Evol_table)
Evol_SL_shapir <- shapiro.test(Evol_SL_aov$residuals)
Evol_SL_shapir

Evol_SL_krw_sp <- kruskal(Evol_table$Stem_length,
                          Evol_table$Species,
                          alpha = 0.05)
Evol_SL_krw_sp$groups
#             Evol_table$Stem_length groups
#Avena                  96.53125      a
#Triticum               96.46875      a

####within sp between tr####
Evol_SL_krw_tr_Av <- kruskal(Evol_table$Stem_length[Evol_table$Species == "Avena"],
                             Evol_table$Treatment[Evol_table$Species == "Avena"],
                             alpha = 0.05)
Evol_SL_krw_tr_Av$groups
#        Evol_table$Stem_length[Evol_table$Species == "Avena"] groups
#Control                                              60.02083      a
#100                                                  59.00000      a
#200                                                  48.20833      a
#Drought                                              26.77083      b

Evol_SL_krw_tr_Tr <- kruskal(Evol_table$Stem_length[Evol_table$Species == "Triticum"],
                             Evol_table$Treatment[Evol_table$Species == "Triticum"],
                             alpha = 0.05)
Evol_SL_krw_tr_Tr$groups
#        Evol_table$Stem_length[Evol_table$Species == "Triticum"] groups
#Control                                                 60.22917      a
#100                                                     54.27083     ab
#200                                                     36.25000      c
#Drought                                                 43.25000     bc
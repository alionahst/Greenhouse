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
Evol_table$Date2 <- as.Date(new_date, format='%d/%m/%y')

####Leaf number####
library(agricolae)
Evol_LN_aov <- aov(Stem_length ~ Species, data = Evol_table)
Evol_LN_shapir <- shapiro.test(Evol_LN_aov$residuals)
Evol_LN_shapir

Evol_LN_krw_sp <- kruskal(Evol_table$Stem_length,   #checking the difference
                       Evol_table$Species,
                        alpha = 0.05)
Evol_LN_krw_sp$groups
#            Evol_table$Stem_length groups
#Triticum              105.08333      a
#Avena                  87.91667      b

Evol_LN_krw_tr_Av <- kruskal(Evol_table$Stem_length[Evol_table$Species == "Avena"],   #checking the difference
                          Evol_table$Treatment,
                          alpha = 0.05)
Evol_LN_krw_tr_Av$groups
#            Evol_table$Stem_length[Evol_table$Species == "Avena"] groups
#Control                                             115.00000     ab
#100                                                 125.20833      a
#200                                                 106.50000      b
#Drought                                              39.29167      c

Evol_LN_krw_tr_Tr <- kruskal(Evol_table$Stem_length[Evol_table$Species == "Triticum"],   #checking the difference
                          Evol_table$Treatment,
                          alpha = 0.05)
Evol_LN_krw_tr_Tr$groups
#           Evol_table$Stem_length[Evol_table$Species == "Triticum"] groups
#Control                                                125.62500      a
#100                                                    109.54167      a
#200                                                     85.04167      b
#Drought                                                 65.79167      b

####Stem length####
Evol_SL_aov <- aov(Stem_length ~ Species, data = Evol_table)
Evol_SL_shapir <- shapiro.test(Evol_SL_aov$residuals)
Evol_SL_shapir

Evol_SL_krw_sp <- kruskal(Evol_table$Stem_length,   #checking the difference
                          Evol_table$Species,
                          alpha = 0.05)
Evol_SL_krw_sp$groups
#             Evol_table$Stem_length groups
#Avena                  96.53125      a
#Triticum               96.46875      a
Evol_SL_krw_tr_Av <- kruskal(Evol_table$Stem_length[Evol_table$Species == "Avena"],   #checking the difference
                             Evol_table$Treatment,
                             alpha = 0.05)
Evol_SL_krw_tr_Av$groups
#            Evol_table$Stem_length[Evol_table$Species == "Avena"] groups
#Control                                             119.54167      a
#100                                                 117.50000      a
#200                                                  95.91667      b
#Drought                                              53.04167      c

Evol_SL_krw_tr_Tr <- kruskal(Evol_table$Stem_length[Evol_table$Species == "Triticum"],   #checking the difference
                             Evol_table$Treatment,
                             alpha = 0.05)
Evol_SL_krw_tr_Tr$groups
#            Evol_table$Stem_length[Evol_table$Species == "Triticum"] groups
#Control                                                 119.9583      a
#100                                                     108.0417      a
#Drought                                                  86.0000      b
#200                                                      72.0000      b
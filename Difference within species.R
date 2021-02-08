###creating data.frame with the experiment results
library("readxl")
library("agricolae")
Data <- read_excel("210129_Greenhouse_results.xlsx")
Data <- Data[-12] #removing temperature out of the data.frame

####-----------------Avena-----------------####
#creating working data.frame with Avena data
work_list_Avena <- subset(Data, Date == "201214" & Species == "Avena",
                          select = c(Treatment,
                                     Leaf_number,
                                     Stem_length,
                                     Root_Length,
                                     Fresh_weight,
                                     Dry_weight))
####Leaf_number ANOVA (normal)####
aov_LN_Avena <- aov(Leaf_number ~ Treatment,          #performing ANOVA
                    data = work_list_Avena)
shap_LN_Avena <- shapiro.test(aov_LN_Avena$residuals) #checking normality
shap_LN_Avena                                         #printing normality check
dif_LN_Avena <- HSD.test(y=aov_LN_Avena, "Treatment") #checking the difference
dif_LN_Avena$groups                                   #printing the difference
####Stem_length ANOVA (normal)####
aov_SL_Avena <- aov(Stem_length ~ Treatment,          #performing ANOVA
                    data = work_list_Avena)
shap_SL_Avena <- shapiro.test(aov_SL_Avena$residuals) #checking normality
shap_SL_Avena                                         #printing normality check
dif_SL_Avena <- HSD.test(y=aov_SL_Avena, "Treatment") #checking the difference
dif_SL_Avena$groups                                   #printing the difference
####Root_Length ANOVA (normal)####
aov_RL_Avena <- aov(Root_Length ~ Treatment,          #performing ANOVA
                    data = work_list_Avena)
shap_RL_Avena <- shapiro.test(aov_RL_Avena$residuals) #checking normality
shap_RL_Avena                                         #printing normality check
dif_RL_Avena <- HSD.test(y=aov_RL_Avena, "Treatment") #checking the difference
dif_RL_Avena$groups                                   #printing the difference
####Fresh_weight ANOVA (normal) ####
aov_FW_Avena <- aov(Fresh_weight ~ Treatment,         #performing ANOVA
                    data = work_list_Avena)
shap_FW_Avena <- shapiro.test(aov_FW_Avena$residuals) #checking normality
shap_FW_Avena                                         #printing normality check
dif_FW_Avena <- HSD.test(y=aov_FW_Avena, "Treatment") #checking the difference
dif_FW_Avena$groups                                   #printing the difference
####Dry_weight ANOVA (not normal)####
aov_DW_Avena <- aov(Dry_weight ~ Treatment,           #performing ANOVA
                    data = work_list_Avena)
shap_DW_Avena <- shapiro.test(aov_DW_Avena$residuals) #checking normality
shap_DW_Avena                                         #printing normality check
#not normal (even after transformation)
####Dry_weight Kruskal-Wallis####
krw_DW_Avena <- kruskal(work_list_Avena$Dry_weight,   #checking the difference
                        work_list_Avena$Treatment,
                        alpha = 0.05)
krw_DW_Avena$groups                                   #printing the difference

####-----------------Triticum-----------------####
#creating working data.frame with Triticum data
work_list_Triticum <- subset(Data, Date == "201214" & Species == "Triticum",
                          select = c(Treatment,
                                     Leaf_number,
                                     Stem_length,
                                     Root_Length,
                                     Fresh_weight,
                                     Dry_weight))

####Leaf_number ANOVA (not normal)####
aov_LN_Triticum <- aov(Leaf_number ~ Treatment,             #performing ANOVA
                    data = work_list_Triticum)
shap_LN_Triticum <- shapiro.test(aov_LN_Triticum$residuals) #checking normality
shap_LN_Triticum                                            #printing normality check
#not normal
####Leaf_number Kruskal-Wallis####
krw_LN_Triticum <- kruskal(work_list_Triticum$Leaf_number,  #checking the difference
                        work_list_Triticum$Treatment,
                        alpha = 0.05)
krw_LN_Triticum$groups                                      #printing the difference
####Stem_length ANOVA####
aov_SL_Triticum <- aov(Stem_length ~ Treatment,             #performing ANOVA
                    data = work_list_Triticum)
shap_SL_Triticum <- shapiro.test(aov_SL_Triticum$residuals) #checking normality
shap_SL_Triticum                                            #printing normality check
#not normal
####Stem_length Kruskal-Wallis####
krw_SL_Triticum <- kruskal(work_list_Triticum$Stem_length,  #checking the difference
                           work_list_Triticum$Treatment,
                           alpha = 0.05)
krw_SL_Triticum$groups                                      #printing the difference
####Root_Length ANOVA (normal)####
aov_RL_Triticum <- aov(Root_Length ~ Treatment,             #performing ANOVA
                    data = work_list_Triticum)
shap_RL_Triticum <- shapiro.test(aov_RL_Triticum$residuals) #checking normality
shap_RL_Triticum                                            #printing normality check
dif_RL_Triticum <- HSD.test(y=aov_RL_Triticum, "Treatment") #checking the difference
dif_RL_Triticum$groups                                      #printing the difference
####Fresh_weight ANOVA####
aov_FW_Triticum <- aov(Fresh_weight ~ Treatment,            #performing ANOVA
                    data = work_list_Triticum)
shap_FW_Triticum <- shapiro.test(aov_FW_Triticum$residuals) #checking normality
shap_FW_Triticum                                            #printing normality check
#not normal
####Fresh_weight Kruskal-Wallis####
krw_FW_Triticum <- kruskal(work_list_Triticum$Fresh_weight,  #checking the difference
                           work_list_Triticum$Treatment,
                           alpha = 0.05)
krw_FW_Triticum$groups                                      #printing the difference
####Dry_weight ANOVA####
aov_DW_Triticum <- aov(Dry_weight ~ Treatment,              #performing ANOVA
                    data = work_list_Triticum)
shap_DW_Triticum <- shapiro.test(aov_DW_Triticum$residuals) #checking normality
shap_DW_Triticum                                            #printing normality check
#not normal
####Dry_weight Kruskal-Wallis####
krw_DW_Triticum <- kruskal(work_list_Triticum$Dry_weight,   #checking the difference
                           work_list_Triticum$Treatment,
                           alpha = 0.05)
krw_DW_Triticum$groups
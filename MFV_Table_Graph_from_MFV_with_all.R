AV_100 <- mean(MFV_AV$MFV_AV)
AV_200 <- mean(MFV_AV$MFV200_AV)
AV_drought <- mean(MFV_AV$MFV_D_AV)
AV <- c(AV_100, AV_200, AV_drought)

TR_100 <- mean(MFV_TR$MFV_TR)
TR_200 <- mean(MFV_TR$MFV200_TR)
TR_drought <- mean(MFV_TR$MFV_D_TR)
TR <- c(TR_100, TR_200, TR_drought)

# Make table
MFVV <- c(AV, TR)
MFV_Treat <- c("100mM", "200mM", "Drought", "100mM", "200mM", "Drought")
MFV_Species <- c("Avena", "Avena", "Avena", "Triticum", "Triticum", "Triticum")
MFV_table <- data.frame(Treatment = MFV_Treat,
                        Species = MFV_Species,
                        MFV = MFVV )
library(ggplot2)
ggplot(data=MFV_table, aes(x=Treatment, y=MFV, fill=Species)) +
  geom_bar(stat="identity", position=position_dodge())+ 
  labs(title="MFV barplots under different treatments")+ 
  theme(plot.title = element_text(hjust = 0.5))
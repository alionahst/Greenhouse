AV_100 <- mean(c(MFV_AV[,1], MFV_AV[,2], MFV_AV[,3], MFV_AV[,4], MFV_AV[,5]))
AV_200 <- mean(c(MFV_AV[,6], MFV_AV[,7], MFV_AV[,8], MFV_AV[,9], MFV_AV[,10]))
AV_drought <- mean(c(MFV_AV[,11], MFV_AV[,12], MFV_AV[,13], MFV_AV[,14], MFV_AV[,15]))
AV <- c(AV_100, AV_200, AV_drought)


TR_100 <- mean(c(MFV_TR[,1], MFV_TR[,2], MFV_TR[,3], MFV_TR[,4], MFV_TR[,5]))
TR_200 <- mean(c(MFV_TR[,6], MFV_TR[,7], MFV_TR[,8], MFV_TR[,9], MFV_TR[,10]))
TR_drought <- mean(c(MFV_TR[,11], MFV_TR[,12], MFV_TR[,13], MFV_TR[,14], MFV_TR[,15]))
TR <- c(TR_100, TR_200, TR_drought)

# Make table
MFVV <- c(AV, TR)
MFV_Treat <- c("100mM", "200mM", "Drought", "100mM", "200mM", "Drought")
MFV_Species <- c("Avena", "Avena", "Avena", "Triticum", "Triticum", "Triticum")
MFV_table <- data.frame(Treatment = MFV_Treat, Species = MFV_Species, MFV = MFVV )

ggplot(data=MFV_table, aes(x=Treatment, y=MFV, fill=Species)) +
  geom_bar(stat="identity", position=position_dodge())+ 
  labs(title="MVF barplots under different treatment")+ 
  theme(plot.title = element_text(hjust = 0.5))


d <- rep("06/11/20", 6)
d <- c(d, rep("11/11/20", 6))
d <- c(d, rep("18/11/20", 6))
d <- c(d, rep("30/11/20", 6))
d <- c(d, rep("14/12/20", 6))
new_date <- rep(d,8)
Data$Date2 <- new_date

Data$Date2 <- as.Date(Data$Date2, format='%d/%m/%y')


library(ggplot2)



# Leaf number
#ggplot(Data[Data$Species =="Avena",], aes(x=Date2, y = Leaf_number, color = Treatment, na.rm=TRUE )) + geom_point() + geom_smooth()
#ggplot(Data[Data$Species =="Avena",], aes(x=Date2, y = Leaf_number, color = Treatment, na.rm=TRUE )) + geom_jitter() + geom_smooth()
ggplot(Data[Data$Species =="Avena",], aes(x=Date2, y = Leaf_number, color = Treatment, na.rm=TRUE )) + geom_smooth() + labs(title="Evolution of leaf number in A. fatua", y="Leaf number", x="Date") + theme(plot.title = element_text(hjust = 0.5))
ggplot(Data[Data$Species =="Triticum",], aes(x=Date2, y = Leaf_number, color = Treatment, na.rm=TRUE )) + geom_smooth() + labs(title="Evolution of leaf number in T. aestivum", y="Leaf number", x="Date") + theme(plot.title = element_text(hjust = 0.5))

#Have ave and triticum both together 
#ggplot(Data, aes(x=Date2, y = Leaf_number, color = Treatment,  linetype = Species, na.rm=TRUE )) + geom_smooth()
# without interval confidence
ggplot(Data, aes(x=Date2, y = Leaf_number, color = Treatment,  linetype = Species, na.rm=TRUE )) + geom_smooth(se=F) + labs(title="Comparison of leaf number evolution between A. fatua and T. aestivum", y="Leaf number", x="Date") + theme(plot.title = element_text(hjust = 0.5))


# Stem_Length
ggplot(Data[Data$Species =="Avena",], aes(x=Date2, y = Stem_length, color = Treatment, na.rm=TRUE )) + geom_smooth()  + labs(title="Evolution of stem length in A. fatua", y="Stem length (cm)", x="Date") + theme(plot.title = element_text(hjust = 0.5))
ggplot(Data[Data$Species =="Triticum",], aes(x=Date2, y = Stem_length, color = Treatment, na.rm=TRUE )) + geom_smooth() + labs(title="Evolution of stem length in T. aestivum", y="Stem length (cm)", x="Date") + theme(plot.title = element_text(hjust = 0.5))

ggplot(Data, aes(x=Date2, y = Stem_length, color = Treatment,  linetype = Species, na.rm=TRUE )) + geom_smooth(se=F) + labs(title="Comparison of stem length evolution between A. fatua and T. aestivum", y="stem length (cm)", x="Date") + theme(plot.title = element_text(hjust = 0.5)) 


# Relative humidity
ggplot(Data[Data$Species =="Avena",], aes(x=Date2, y = RH, color = Treatment, na.rm=TRUE )) + geom_smooth()  + labs(title="Evolution of relative humidity in A. fatua", y="Relative humidity (%)", x="Date") + theme(plot.title = element_text(hjust = 0.5))
# Test statistical difference between 100mM and control for RH. 
ggplot(Data[Data$Species =="Triticum",], aes(x=Date2, y = RH, color = Treatment, na.rm=TRUE )) + geom_smooth() + labs(title="Evolution of relative humidity in T. aestivum", y="Relative humidity (%)", x="Date") + theme(plot.title = element_text(hjust = 0.5))

ggplot(Data, aes(x=Date2, y = RH, color = Treatment,  linetype = Species, na.rm=TRUE )) + geom_smooth(se=F) + labs(title="Comparison of relative humidity evolution between A. fatua and T. aestivum", y="Relative humidity (%)", x="Date") + theme(plot.title = element_text(hjust = 0.5))


# EC
ggplot(Data[Data$Species =="Avena",], aes(x=Date2, y = EC, color = Treatment, na.rm=TRUE )) + geom_smooth() + labs(title="Evolution of EC number in A. fatua", y="EC (mS/cm)", x="Date") + theme(plot.title = element_text(hjust = 0.5))
ggplot(Data[Data$Species =="Triticum",], aes(x=Date2, y = EC, color = Treatment, na.rm=TRUE )) + geom_smooth() + labs(title="Evolution of EC number in T. aestivum", y="EC(mS/cm)", x="Date") + theme(plot.title = element_text(hjust = 0.5))

ggplot(Data, aes(x=Date2, y = EC, color = Treatment,  linetype = Species, na.rm=TRUE )) + geom_smooth(se=F) + labs(title="Comparison of EC evolution between A. fatua and T. aestivum", y="EC (mS/cm)", x="Date") + theme(plot.title = element_text(hjust = 0.5))





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
ggplot(Data[Data$Species =="Avena",], aes(x=Date2, y = Leaf_number, color = Treatment, na.rm=TRUE )) + geom_smooth() + labs(title="Evolution of leaf number in Avena Fatua", y="Leaf number", x="Date")
ggplot(Data[Data$Species =="Triticum",], aes(x=Date2, y = Leaf_number, color = Treatment, na.rm=TRUE )) + geom_smooth() + labs(title="Evolution of leaf number in Triticum aestivum", y="Leaf number", x="Date") 

#Have ave and triticum both together 
#ggplot(Data, aes(x=Date2, y = Leaf_number, color = Treatment,  linetype = Species, na.rm=TRUE )) + geom_smooth()
# without interval confidence
ggplot(Data, aes(x=Date2, y = Leaf_number, color = Treatment,  linetype = Species, na.rm=TRUE )) + geom_smooth(se=F) + labs(title="Comparison of leaf number evolution between Avena Fatua and Triticum aestivum", y="Leaf number", x="Date") 


# Stem_Length
ggplot(Data[Data$Species =="Avena",], aes(x=Date2, y = Stem_length, color = Treatment, na.rm=TRUE )) + geom_smooth()  + labs(title="Evolution of stem length in Avena Fatua", y="Stem length", x="Date")
ggplot(Data[Data$Species =="Triticum",], aes(x=Date2, y = Stem_length, color = Treatment, na.rm=TRUE )) + geom_smooth() + labs(title="Evolution of stem length in Triticum aestivum", y="Stem length", x="Date")

ggplot(Data, aes(x=Date2, y = Stem_length, color = Treatment,  linetype = Species, na.rm=TRUE )) + geom_smooth(se=F) + labs(title="Comparison of stem length evolution between Avena Fatua and Triticum aestivum", y="stem length", x="Date") 


# Relative humidity
ggplot(Data[Data$Species =="Avena",], aes(x=Date2, y = RH, color = Treatment, na.rm=TRUE )) + geom_smooth()  + labs(title="Evolution of relative humidity in Avena Fatua", y="Relative humidity", x="Date")
# Test statistical difference between 100mM and control for RH. 
ggplot(Data[Data$Species =="Triticum",], aes(x=Date2, y = RH, color = Treatment, na.rm=TRUE )) + geom_smooth() + labs(title="Evolution of relative humidity in Triticum Aestivum", y="Relative humidity", x="Date")

ggplot(Data, aes(x=Date2, y = Leaf_number, color = Treatment,  linetype = Species, na.rm=TRUE )) + geom_smooth(se=F) + labs(title="Comparison of relative humidity evolution between Avena Fatua and Triticum aestivum", y="Relative humidity", x="Date") 


# EC
ggplot(Data[Data$Species =="Avena",], aes(x=Date2, y = EC, color = Treatment, na.rm=TRUE )) + geom_smooth() + labs(title="Evolution of EC number in Avena Fatua", y="EC", x="Date")
ggplot(Data[Data$Species =="Triticum",], aes(x=Date2, y = EC, color = Treatment, na.rm=TRUE )) + geom_smooth() + labs(title="Evolution of EC number in Triticum aestivum", y="EC", x="Date")

ggplot(Data, aes(x=Date2, y = EC, color = Treatment,  linetype = Species, na.rm=TRUE )) + geom_smooth(se=F) + labs(title="Comparison of EC evolution between Avena Fatua and Triticum aestivum", y="EC", x="Date") 




#Comparison within one parameter between species and treatment


Control <- Data.last[Data.last$Treatment=="Control",]
OnemM <- Data.last[Data.last$Treatment=="100",]
TwomM <- Data.last[Data.last$Treatment=="200",]
Drought <- Data.last[Data.last$Treatment=="Drought",]


####Leaf number####
Data.last$Leaf_number <- as.numeric(Data.last$Leaf_number)
LeafGraph<- ggplot(Data.last, aes(x = Treatment2 , y = Leaf_number))
LeafGraph<- LeafGraph +geom_boxplot(
  aes(fill = Species),
  position = position_dodge(0.75)) +
  labs(y= "Leaf number", x = "Treatment")+ 
  ggtitle("Leaf number under different treatment")+ 
  theme(plot.title = element_text(hjust = 0.5))
LeafGraph

# normality LEAF NUMBER : True, false, True, true
ln1 <-aov(Control$Leaf_number ~ Control$Species, data = Control)
summary(ln1)
#statisitcal difference
ln2 <- agricolae::kruskal(OnemM$Leaf_number,OnemM$Species)
ln2
# no statistical difference 
ln3 <-aov(TwomM$Leaf_number ~ TwomM$Species, data = TwomM)
summary(ln3)
# no statistical difference 
ln4 <-aov(Drought$Leaf_number ~ Drought$Species, data = Drought)
summary(ln4)
#  statistical difference 


####Stem length####
Data.last$Stem_length <- as.numeric(Data.last$Stem_length)
StemGraph<- ggplot(Data.last, aes(x = Treatment2 , y = Stem_length))
StemGraph<- StemGraph +geom_boxplot(
  aes(fill = Species),
  position = position_dodge(0.75)) +
  labs(y= "Stem length (cm)", x = "Treatment")+ 
  ggtitle("Stem length under different treatment")+ 
  theme(plot.title = element_text(hjust = 0.5))
StemGraph


# normality: True, true, True, true
sl1 <-aov(Control$Stem_length ~ Control$Species, data = Control)
summary(sl1)
# No statisitcal difference
sl2 <-aov(OnemM$Stem_length ~ OnemM$Species, data = OnemM)
summary(sl2)
#statistical difference : **
sl3 <-aov(TwomM$Stem_length ~ TwomM$Species, data = TwomM)
summary(sl3)
# no statistical difference BUT if we discard TA3.4 it might have
sl4 <-aov(Drought$Stem_length ~ Drought$Species, data = Drought)
summary(sl4)
# no statistical difference 



####Root length####
Data.last$Root_Length <- as.numeric(Data.last$Root_Length)
RootGraph<- ggplot(Data.last, aes(x = Treatment2 , y = Root_Length))
RootGraph<- RootGraph +geom_boxplot(
  aes(fill = Species),
  position = position_dodge(0.75)) +
  labs(y= "Root length (cm)", x = "Treatment")+ 
  ggtitle("Root length under different treatment")+ 
  theme(plot.title = element_text(hjust = 0.5))
RootGraph

# normality: True, true, false, true
rl1 <-aov(Control$Root_Length ~ Control$Species, data = Control)
summary(rl1)
# No statisitcal difference 
rl2 <-aov(OnemM$Root_Length ~ OnemM$Species, data = OnemM)
summary(rl2)
#No statistical difference 
rl3 <- agricolae::kruskal(TwomM$Root_Length,TwomM$Species)
rl3
# no statistical difference
rl4 <-aov(Control$Root_Length ~ Control$Species, data = Control)
summary(rl4)
# No statisitcal difference 




####Dry weight####
Data.last$Dry_weight <- as.numeric(Data.last$Dry_weight)
DryGraph<- ggplot(Data.last, aes(x = Treatment2 , y = Dry_weight))
DryGraph<- DryGraph +geom_boxplot(
  aes(fill = Species),
  position = position_dodge(0.75)) +
  labs(y= "Dry weight (g)", x = "Treatment")+ 
  ggtitle("Dry weight under different treatment")+ 
  theme(plot.title = element_text(hjust = 0.5))
DryGraph

# normality for all DRY WEIGHT 
dw1 <-aov(Control$Dry_weight ~ Control$Species, data = Control)
summary(dw1)
# No statisitcal difference 
dw2 <-aov(OnemM$Dry_weight ~ OnemM$Species, data = OnemM)
summary(dw2)
# no statistical difference 
dw3 <-aov(TwomM$Dry_weight ~ TwomM$Species, data = TwomM)
summary(dw3)
# no statistical difference 
dw4 <-aov(Drought$Dry_weight ~ Drought$Species, data = Drought)
summary(dw4)
#  statistical difference : *


####Fresh weight####
Data.last$Fresh_weight <- as.numeric(Data.last$Fresh_weight)
FreshGraph<- ggplot(Data.last, aes(x = Treatment2 , y = Fresh_weight))
FreshGraph<- FreshGraph +geom_boxplot(
  aes(fill = Species),
  position = position_dodge(0.75)) +
  labs(y= "Fresh weight (g)", x = "Treatment")+ 
  ggtitle("Fresh weight under different treatment")+ 
  theme(plot.title = element_text(hjust = 0.5)) 
FreshGraph

# normality for all FRESH WEIGHT 
fw1 <-aov(Control$Fresh_weight ~ Control$Species, data = Control)
summary(fw1)
# No statisitcal difference 
fw2 <-aov(OnemM$Fresh_weight ~ OnemM$Species, data = OnemM)
summary(fw2)
# no statistical difference 
fw3 <-aov(TwomM$Fresh_weight ~ TwomM$Species, data = TwomM)
summary(fw3)
# no statistical difference 
fw4 <-aov(Drought$Fresh_weight ~ Drought$Species, data = Drought)
summary(fw4)
# statistical difference : *
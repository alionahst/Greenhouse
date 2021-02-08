#Graphs Nacho
library(ggplot2)
library(dplyr)
#Dataframe with only the last day
Data.last <- Data[Data$Date =="201214" , ]



Data.last$Treatment <- as.factor(Data.last$Treatment)
Data.last$Stem_length <- as.numeric(Data.last$Stem_length)
#Treatment2 created to reorder the variables in the graph
Data.last$Treatment2 <- factor(Data.last$Treatment, c("Control", "100", "200", "Drought"))

#Stem length graph
StemGraph<- ggplot(Data.last, aes(x = Treatment2 , y = Stem_length))
StemGraph<- StemGraph +geom_boxplot(
  aes(fill = Treatment2),
  position = position_dodge(0.75)) +
  labs(y= "Stem length (cm)", x = "Treatment")+
  facet_wrap(~Species)+ 
  theme(legend.position = "none")+
  ggtitle("Stem length under different treatment")+ 
  theme(plot.title = element_text(hjust = 0.5))
StemGraph

#Leaf number graph
Data.last$Leaf_number <- as.numeric(Data.last$Leaf_number)
LeafGraph<- ggplot(Data.last, aes(x = Treatment2 , y = Leaf_number))
LeafGraph<- LeafGraph +geom_boxplot(
  aes(fill = Treatment2),
  position = position_dodge(0.75)) +
  labs(y= "Leaves number", x = "Treatment")+
  facet_wrap(~Species)+ 
  theme(legend.position = "none") +
  ggtitle("Leaf number under different treatment")+ 
  theme(plot.title = element_text(hjust = 0.5))
LeafGraph

#Root length graph
Data.last$Root_Length <- as.numeric(Data.last$Root_Length)
RootGraph<- ggplot(Data.last, aes(x = Treatment2 , y = Root_Length))
RootGraph<- RootGraph +geom_boxplot(
  aes(fill = Treatment2),
  position = position_dodge(0.75)) +
  labs(y= "Root Length (cm)", x = "Treatment")+
  facet_wrap(~Species)+ 
  theme(legend.position = "none")+
  ggtitle("Root length under different treatment")+ 
  theme(plot.title = element_text(hjust = 0.5))
RootGraph

#Fresh weight graph 
Data.last$Fresh_weight <- as.numeric(Data.last$Fresh_weight)
FreshGraph<- ggplot(Data.last, aes(x = Treatment2 , y = Fresh_weight))
FreshGraph<- FreshGraph +geom_boxplot(
  aes(fill = Treatment2),
  position = position_dodge(0.75)) +
  labs(y= "Fresh weight (g)", x = "Treatment")+
  facet_wrap(~Species)+ 
  theme(legend.position = "none")+
  ggtitle("Fresh weight under different treatment")+ 
  theme(plot.title = element_text(hjust = 0.5))
FreshGraph


#Dry weight graph
Data.last$Dry_weight <- as.numeric(Data.last$Dry_weight)
DryGraph<- ggplot(Data.last, aes(x = Treatment2 , y = Dry_weight))
DryGraph<- DryGraph +geom_boxplot(
  aes(fill = Treatment2),
  position = position_dodge(0.75)) +
  labs(y= "Dry weight (g)", x = "Treatment")+
  facet_wrap(~Species)+ 
  theme(legend.position = "none")+
  ggtitle("Dry weight under different treatment")+ 
  theme(plot.title = element_text(hjust = 0.5))
DryGraph


###IN CASE THAT WE WANT TO KEEP THEM TOGETHER just remove "facet_wrap" and change "fill(Treatment2)" to "fill(Species")
Data.last$Dry_weight <- as.numeric(Data.last$Dry_weight)
DryGraph<- ggplot(Data.last, aes(x = Treatment2 , y = Dry_weight))
DryGraph<- DryGraph +geom_boxplot(
  aes(fill = Species),
  position = position_dodge(0.75)) +
  labs(y= "Dry weight (g)", x = "Treatment")+ 
  ggtitle("Dry weight under different treatment")+ 
  theme(plot.title = element_text(hjust = 0.5))
DryGraph

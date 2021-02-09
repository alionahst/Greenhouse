#Graphs Nacho
library(ggplot2)
library(dplyr)
library(ggpubr)
#Dataframe with only the last day
Data.last <- Data[Data$Date =="201214" , ]



Data.last$Treatment <- as.factor(Data.last$Treatment)
Data.last$Stem_length <- as.numeric(Data.last$Stem_length)
#Treatment2 created to reorder the variables in the graph
Data.last$Treatment2 <- factor(Data.last$Treatment, c("Control", "100", "200", "Drought"))

#Stem length graph
Data.last$Stem_length <- as.numeric(Data.last$Stem_length)
StemGraphA<- ggplot(Data.last[Data.last$Species == "Avena" ,], aes(x = Treatment2 , y = Stem_length))
StemGraphA<- StemGraphA +geom_boxplot(
  aes(fill = Treatment2),
  position = position_dodge(0.75)) +
  labs(y= "Stem length (cm)", x = "Treatment")+
  theme(legend.position = "none") +
  ggtitle("Avena")+ 
  theme(plot.title = element_text(hjust = 0.5))+
  annotate(geom="text", x=1, y=70, label="a", cex= 6, color="black")+
  annotate(geom="text", x=2, y=70, label="ab", cex= 6, color="black")+
  annotate(geom="text", x=3, y=70, label="b", cex= 6, color="black")+
  annotate(geom="text", x=4, y=70, label="c", cex= 6, color="black")

StemGraphT<- ggplot(Data.last[Data.last$Species == "Triticum" ,], aes(x = Treatment2 , y = Stem_length))
StemGraphT<- StemGraphT +geom_boxplot(
  aes(fill = Treatment2),
  position = position_dodge(0.75)) +
  labs(y= NULL, x = "Treatment")+
  theme(legend.position = "none") +
  ggtitle("Triticum")+ 
  theme(plot.title = element_text(hjust = 0.5))+
  annotate(geom="text", x=1, y=70, label="a", cex= 6, color="black")+
  annotate(geom="text", x=2, y=70, label="a", cex= 6, color="black")+
  annotate(geom="text", x=3, y=70, label="b", cex= 6, color="black")+
  annotate(geom="text", x=4, y=70, label="b", cex= 6, color="black")

StemGraph <- ggarrange(
  StemGraphA, NULL,  StemGraphT,
  nrow = 1, widths = c(1, -0.035, 1),
  labels = c("", "", ""))

StemGraph <-   annotate_figure(StemGraph,
                               top = text_grob("Stem length under different treatments", face = "bold", size = 14)) 
StemGraph


#Leaf number graph
Data.last$Leaf_number <- as.numeric(Data.last$Leaf_number)
LeafGraphA<- ggplot(Data.last[Data.last$Species == "Avena" ,], aes(x = Treatment2 , y = Leaf_number))
LeafGraphA<- LeafGraphA +geom_boxplot(
  aes(fill = Treatment2),
  position = position_dodge(0.75)) +
  labs(y= "Leaves number", x = "Treatment")+
  theme(legend.position = "none") +
  ggtitle("Avena")+ 
  theme(plot.title = element_text(hjust = 0.5))+
  annotate(geom="text", x=1, y=10, label="a", cex= 6, color="black")+
  annotate(geom="text", x=2, y=10, label="a", cex= 6, color="black")+
  annotate(geom="text", x=3, y=10, label="a", cex= 6, color="black")+
  annotate(geom="text", x=4, y=10, label="b", cex= 6, color="black")


LeafGraphT<- ggplot(Data.last[Data.last$Species == "Triticum" ,], aes(x = Treatment2 , y = Leaf_number))
LeafGraphT<- LeafGraphT +geom_boxplot(
  aes(fill = Treatment2),
  position = position_dodge(0.75)) +
  labs(y= NULL, x = "Treatment")+
  theme(legend.position = "none") +
  ggtitle("Triticum")+ 
  theme(plot.title = element_text(hjust = 0.5))+
  annotate(geom="text", x=1, y=10, label="a", cex= 6, color="black")+
  annotate(geom="text", x=2, y=10, label="a", cex= 6, color="black")+
  annotate(geom="text", x=3, y=10, label="b", cex= 6, color="black")+
  annotate(geom="text", x=4, y=10, label="c", cex= 6, color="black")


LeafGraph <- ggarrange(
  LeafGraphA, NULL,  LeafGraphT,
  nrow = 1, widths = c(1, -0.035, 1),
  labels = c("", "", "")
)
LeafGraph <-   annotate_figure(LeafGraph,
                top = text_grob("Leaf number", face = "bold", size = 14)) 
LeafGraph

#Root length graph
Data.last$Root_Length <- as.numeric(Data.last$Root_Length)
RootGraphA<- ggplot(Data.last[Data.last$Species == "Avena" ,], aes(x = Treatment2 , y = Root_Length))
RootGraphA<- RootGraphA +geom_boxplot(
  aes(fill = Treatment2),
  position = position_dodge(0.75)) +
  labs(y= "Root length (cm)", x = "Treatment")+
  theme(legend.position = "none") +
  ggtitle("Avena")+ 
  theme(plot.title = element_text(hjust = 0.5))+
  annotate(geom="text", x=1, y=30, label="a", cex= 6, color="black")+
  annotate(geom="text", x=2, y=30, label="a", cex= 6, color="black")+
  annotate(geom="text", x=3, y=30, label="a", cex= 6, color="black")+
  annotate(geom="text", x=4, y=30, label="a", cex= 6, color="black")


RootGraphT<- ggplot(Data.last[Data.last$Species == "Triticum" ,], aes(x = Treatment2 , y = Root_Length))
RootGraphT<- RootGraphT +geom_boxplot(
  aes(fill = Treatment2),
  position = position_dodge(0.75)) +
  labs(y= NULL, x = "Treatment")+
  theme(legend.position = "none") +
  ggtitle("Triticum")+ 
  theme(plot.title = element_text(hjust = 0.5))+
  annotate(geom="text", x=1, y=40, label="a", cex= 6, color="black")+
  annotate(geom="text", x=2, y=40, label="a", cex= 6, color="black")+
  annotate(geom="text", x=3, y=40, label="a", cex= 6, color="black")+
  annotate(geom="text", x=4, y=40, label="a", cex= 6, color="black")


RootGraph <- ggarrange(
  RootGraphA, NULL,  RootGraphT,
  nrow = 1, widths = c(1, -0.035, 1),
  labels = c("", "", "")
)
RootGraph <-   annotate_figure(RootGraph,
                               top = text_grob("Root length under different treatments", face = "bold", size = 14)) 
RootGraph



#Fresh weight graph 

Data.last$Fresh_weight <- as.numeric(Data.last$Fresh_weight)
FreshGraphA<- ggplot(Data.last[Data.last$Species == "Avena" ,], aes(x = Treatment2 , y = Fresh_weight))
FreshGraphA<- FreshGraphA +geom_boxplot(
  aes(fill = Treatment2),
  position = position_dodge(0.75)) +
  labs(y= "Fresh weight (g)", x = "Treatment")+
  theme(legend.position = "none") +
  ggtitle("Avena")+ 
  theme(plot.title = element_text(hjust = 0.5))+
  annotate(geom="text", x=1, y=10, label="a", cex= 6, color="black")+
  annotate(geom="text", x=2, y=10, label="ab", cex= 6, color="black")+
  annotate(geom="text", x=3, y=10, label="bc", cex= 6, color="black")+
  annotate(geom="text", x=4, y=10, label="c", cex= 6, color="black")


FreshGraphT<- ggplot(Data.last[Data.last$Species == "Triticum" ,], aes(x = Treatment2 , y = Fresh_weight))
FreshGraphT<- FreshGraphT +geom_boxplot(
  aes(fill = Treatment2),
  position = position_dodge(0.75)) +
  labs(y= NULL, x = "Treatment")+
  theme(legend.position = "none") +
  ggtitle("Triticum")+ 
  theme(plot.title = element_text(hjust = 0.5))+
  annotate(geom="text", x=1, y=10, label="a", cex= 6, color="black")+
  annotate(geom="text", x=2, y=10, label="b", cex= 6, color="black")+
  annotate(geom="text", x=3, y=10, label="c", cex= 6, color="black")+
  annotate(geom="text", x=4, y=10, label="d", cex= 6, color="black")


FreshGraph <- ggarrange(
  FreshGraphA, NULL,  FreshGraphT,
  nrow = 1, widths = c(1, -0.035, 1),
  labels = c("", "", "")
)
FreshGraph <-   annotate_figure(FreshGraph,
                               top = text_grob("Fresh weight under different treatments", face = "bold", size = 14)) 
FreshGraph



#Dry weight graph

Data.last$Dry_weight <- as.numeric(Data.last$Dry_weight)
DryGraphA<- ggplot(Data.last[Data.last$Species == "Avena" ,], aes(x = Treatment2 , y = Dry_weight))
DryGraphA<- DryGraphA +geom_boxplot(
  aes(fill = Treatment2),
  position = position_dodge(0.75)) +
  labs(y= "Dry weight (g)", x = "Treatment")+
  theme(legend.position = "none") +
  ggtitle("Avena")+ 
  theme(plot.title = element_text(hjust = 0.5))+
  annotate(geom="text", x=1, y=8.75, label="a", cex= 6, color="black")+
  annotate(geom="text", x=2, y=8.75, label="ab", cex= 6, color="black")+
  annotate(geom="text", x=3, y=8.75, label="b", cex= 6, color="black")+
  annotate(geom="text", x=4, y=8.75, label="c", cex= 6, color="black")


DryGraphT<- ggplot(Data.last[Data.last$Species == "Triticum" ,], aes(x = Treatment2 , y = Dry_weight))
DryGraphT<- DryGraphT +geom_boxplot(
  aes(fill = Treatment2),
  position = position_dodge(0.75)) +
  labs(y= NULL, x = "Treatment")+
  theme(legend.position = "none") +
  ggtitle("Triticum")+ 
  theme(plot.title = element_text(hjust = 0.5))+
  annotate(geom="text", x=1, y=8.75, label="a", cex= 6, color="black")+
  annotate(geom="text", x=2, y=8.75, label="b", cex= 6, color="black")+
  annotate(geom="text", x=3, y=8.75, label="c", cex= 6, color="black")+
  annotate(geom="text", x=4, y=8.75, label="d", cex= 6, color="black")


DryGraph <- ggarrange(
  DryGraphA, NULL,  DryGraphT,
  nrow = 1, widths = c(1, -0.035, 1),
  labels = c("", "", "")
)
DryGraph <-   annotate_figure(DryGraph,
                                top = text_grob("Dry weight under different treatments", face = "bold", size = 14)) 
DryGraph

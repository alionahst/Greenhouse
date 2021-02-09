## ---- PearsonCor

#install.packages('Hmisc')
#install.packages('corrplot')
library(Hmisc)
library(corrplot)

# create a table with all the variables but without 3 first columns
data_cor <- (Data.last[c(5,8:11)])
#perform Pearson correlation test
res1 <- cor.mtest(data_cor, conf.level = .95)
#Plot the results
M1 <-cor(data_cor)
corrplot(M1, p.mat = res1$p, sig.level = .05, type = "lower", tl.srt=25)


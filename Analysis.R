#creating data.frame with the experiment results
#Data_csv <- "210129_Greenhouse_results.csv"
#Data <- read.table(Data_csv, header = TRUE, sep = ";")

library("readxl")
Data <- read_excel("210129_Greenhouse_results.xlsx")

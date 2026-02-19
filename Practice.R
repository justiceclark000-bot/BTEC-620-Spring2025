#Name: Justice Clark; Date: 02/19/2026; Purpose: Practice.R

#Install Affymetrix library/Package
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("affy")


#Loads the library Affy
library(affy)

#Set the working directory to a folder where you have .CEL
setwd("/Users/jclark/Downloads/Cel Files ") 

#Read the 4 .CEL files in R
data <-ReadAffy()

#Generate a boxplot to visualize dataset
boxplot(data)

#Normalize dataset to remove any outliers and stabilize the median for all .CEL files
normalizeddata<-rma(data)

#Generate a boxplot to visualize normalized dataset
boxplot(exprs(normalizeddata))

#Fold change analysis for comparing treatment vs control samples
#Let's assume GSM4843.CEL AND GSM4844.CEL SAMPLES TO BE Leukemia/Blood cancer and GSM4845.CEL AND GSM4846.CEL TO BE Normal blood samples 

#Take means/average on each row
Newdata <-exprs(normalizeddata)
Treatment <-Newdata[,c(1,2)]
Control <-Newdata[,c(3,4)]

head(Treatment)
head(Control)

#Apply the rowmeans function to calculate averages 
Treatmentaverage <-rowMeans(Treatment)
Controlaverage <-rowMeans(Control)

head(Treatmentaverage)
head(Controlaverage)

#Apply fold change by subtraction 
foldchange <-Treatmentaverage - Controlaverage

head(foldchange)

#If the gene's fold change value is>2 its an up-regu;ated gene, and if it's <-2 its a down-regulated gene, and if genes are between -2 and +2, they are insignificant genes. 

#Export variable foldchange in a CSV file
write.csv(foldchange, "foldchange.csv")
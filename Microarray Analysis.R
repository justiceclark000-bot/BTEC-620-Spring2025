#Name: Justice Clark; Date: 02/3/2026; Purpose: Microarray Analysis

#Install Affymetrix library/Package
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("affy")

#Loads the library Affy
library(affy)

#Set the working directory to a folder where you have .CEL
setwd("/Users/jclark/Downloads") 

#Read the 4 .CEL files in R
data <-ReadAffy()

#Generate a boxplot to visualize dataset
boxplot(data)

#Normalize dataset to remove any outliers and stabilize the median for all .CEL files
normalizeddata<-rma(data)

#Generate a boxplot to visualize normalized dataset
boxplot (exprs(normalizeddata))

#Fold change analysis for comparing treatment vs control samples
#Let's assume GSM4843.CEL AND GSM4844.CEL SAMPLES TO BE Leukemia/Blood cancer and GSM4845.CEL AND GSM4846.CEL TO BE Normal blood samples 




RMA_Normalized Plot. PDF
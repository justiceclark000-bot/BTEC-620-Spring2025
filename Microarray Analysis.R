#Name: Justice Clark; Date: 01/27/2026; Purpose: Microarray Analysis

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

#Normalize dataset to remove any outliers and stablize the median for all .CEL files

Raw-Microarray-plot
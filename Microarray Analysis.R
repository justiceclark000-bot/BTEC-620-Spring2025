#Name: Justice Clark; Date: 01/27/2026; Purpose: Microarray Analysis

#Install Affymetrix library/Package
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("affy")
library(affy)
setwd("/Users/jclark/Downloads") 
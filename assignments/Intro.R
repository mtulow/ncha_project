#############################################################
#
# Get to know R and the ncha dataset 
#
#############################################################


##### Read in the data
##### This requires an additional R package
##### You can install this package by running the code below, but
#####   only do so once. 

## highlight code to run once
# install.packages("readxl")

## Load the library to read the excel file
library(readxl)


#### Create a variable with the folder directory for the data file. You will
####    need to change this value for your own computer
dataDir = "data"

### Read in the Dataset
ncha = read_excel(paste(dataDir, 
                "NCHA-III WEB SPRING 2021 UTAH VALLEY UNIVERSITY  - TIMESTAMP.xlsx", 
                sep = "/"), sheet = "NCHA-III WEB SPRING 2021 UTAH V")

ncha = as.data.frame(ncha)


### How many rows are there in the data?
nrow(ncha)

### How many columns are there in the data?
ncol(ncha)

### What is the value in the 100th row, and the 52nd column?
ncha[100, 52]

### What is the value in the 150th row and 53rd column?
ncha[150, 53]

### What is the breakdown (count of each possible value) of the variable 'RSEX'?
table(ncha$RSEX)

### What is the breakdown (count of each possible value) of the variable 'N3Q1'?
table(ncha$N3Q1)

### Save the value of N3Q6 as x, and the value of N3Q7 as y
x = ncha$N3Q6
y = ncha$N3Q7

### Add x + y (save it as another variable) and find the 10th value.
z1 = x + y
z1[10]

### Multiply x*y and find the 11th value.
z2 = x*y
z2[11]

### Test if the 100th value of x is equal to the 200th value of y.
x[100] == y[200]

### Test if the 150th value of x is equal to the 250th value of y
x[150] == y[250]


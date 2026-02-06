#############################################################
#
# Creating various plots in R
#
#############################################################
## Load the library to read the excel file
library(readxl)



#### You will need to change this value for your own computer
dataDir = "data"

### Read in the Dataset
ncha = read_excel(paste(dataDir, 
                "NCHA-III WEB SPRING 2021 UTAH VALLEY UNIVERSITY  - TIMESTAMP.xlsx", 
                sep = "/"), sheet = "NCHA-III WEB SPRING 2021 UTAH V")

ncha = as.data.frame(ncha)

#### N3Q5 - Plans for losing weight (categorical)
#### N3Q9A - Number of sugar-sweetened beverages in a day (numerical)

#### Create a Pie chart. Remember you must pass in the numbers in a table, or use the table function.
pie(table(ncha$N3Q5), main = "Student's Weight Loss Goals")

#### Create a Bar chart. Remember you must pass in the numbers in a table, or use the table function.
barplot(table(ncha$N3Q5), main = "Student's Weight Loss Goals")

#### Create a Histogram. Pass in the raw information (no table required). 
hist(ncha$N3Q9A, main = "Number of Sugar-Sweetened Beverages in a Day", xlab = "Beverages per day")

#### Create a Boxplot. Pass in the raw information (no table required). 
boxplot(ncha$N3Q9A, main = "Number of Sugar-Sweetened Beverages in a Day", ylab = "Beverages per day")

#### Side-by-Side boxplot. Pass in information as continuous ~ categorical. 
boxplot(ncha$N3Q9A ~ ncha$N3Q5, ylab = "Number of Sugar-Sweetened Beverages in a Day", xlab = "Student's Weight Loss Goals")


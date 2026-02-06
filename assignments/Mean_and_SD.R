#############################################################
#
# Finding the mean and standard deviation
#
#############################################################
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

#### N3Q18C - Within the last 2 weeks, on how many days did you manually operate
####  a device to text, email, video chat, or use the internet while driving?

#### Calculate the mean, removing missing values
mean(ncha$N3Q18C, na.rm = TRUE)


#### Calculate the SD, removing missing values
sd(ncha$N3Q18C, na.rm = TRUE)


#############################################################
#
# Normal distribution values
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

#### N3Q60 - How many times have you spent time outdoors intending to get a tan?
#### N3Q71 - Weight in Pounds

#### Calculate the mean
mu = mean(ncha$N3Q71, na.rm = TRUE)
mu

#### Calculate the SD
sigma = sd(ncha$N3Q71, na.rm = TRUE)
sigma


#### Find a value 1.23 standard deviations below the mean
x = mu - 1.23*sigma
x

#### Find the probability of an observation being less than the value
pnorm(x, mean = mu, sd = sigma)

### Find the probability of an observation being greater than the value
1 - pnorm(x, mean = mu, sd = sigma)


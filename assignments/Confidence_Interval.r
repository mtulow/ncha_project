#############################################################
#
# Confidence interval for a mean
#
#############################################################
## Load the library to read the excel file
library(readxl)


#### You will need to change this value for your own computer
dataDir = "~/Desktop/stat_2050/ncha_project/data"

### Read in the Dataset
ncha = read_excel(paste(dataDir, 
                "NCHA-III WEB SPRING 2021 UTAH VALLEY UNIVERSITY  - TIMESTAMP.xlsx", 
                sep = "/"), sheet = "NCHA-III WEB SPRING 2021 UTAH V")

ncha = as.data.frame(ncha)

#### Find the mean, sd, and n, then use those to calculate the SE
xBar = mean(ncha$BMI, na.rm = TRUE)
sigma = sd(ncha$BMI, na.rm = TRUE)
n = sum(!is.na(ncha$BMI))
SE = sigma / sqrt(n)

#### Calculate your t star value given the confidence level. 
tStar = qt( (1 - .85) / 2, df = n - 1, lower.tail = FALSE )

#### Calculate the confidence interval as xbar plus/minus tStar*SE
xBar - tStar*SE
xBar + tStar*SE


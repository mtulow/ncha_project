#############################################################
#
# t and z tests
#
#############################################################
## Load the library to read the excel file
library(readxl)


#### You will need to change this value for your own computer
dataDir = "/Users/muttulow/Desktop/stat_2050/ncha_project/data"

### Read in the Dataset
ncha = read_excel(paste(dataDir, 
                "NCHA-III WEB SPRING 2021 UTAH VALLEY UNIVERSITY  - TIMESTAMP.xlsx", 
                sep = "/"), sheet = "NCHA-III WEB SPRING 2021 UTAH V")

ncha = as.data.frame(ncha)

#### Single sample t-test - make sure to specify the null hypothesis using mu = ___
# H0: mu is equal to 23
# Ha: mu is not equal to 23
t.test(ncha$BMI, mu = 23)

# Conclusion: We reject H0 and conclude that the true mean is different from 23.


#### Two sample t-test - we are selecting a subset of the variable here using the brackets.
# H0: difference is equal to 0
# Ha: difference is not equal to 0
t.test(x = ncha$BMI[ncha$N3Q1 == "Good"], 
        y = ncha$BMI[ncha$N3Q1 == "Excellent"], var.equal = TRUE)

# Conclusion: We reject H0 and conclude that the difference in means is not equal to 0.


#### One sample proportion z-test - make sure to specify the null hypothesis using p = ___
# H0: p = .5
# Ha: p not equal to .5
prop.test(table(ncha$N3Q1 == "Good"), p = .5)

# Conclusion: We reject H0 and conclude that the proportion answering 'Good' 
#             is not equal to 0.5. 


#### two sample proportion z-test
####  Here we need to create a smaller dataset that only contains those that we 
####    want to compare. That is the first line. We then use that dataset in the 
####    second line to conduct the test. 

# H0: difference in proportions is equal to 0
# Ha: difference in proportions is not equal to 0
smallData = ncha[ncha$RSEX %in% c("Male", "Female"), ]
prop.test(table(smallData$N3Q1 == "Good", smallData$RSEX))

# Conclusion: We cannot reject H0 and cannot conclude there is a difference in 
#             proportion answering 'good' between male and female.


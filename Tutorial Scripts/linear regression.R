#predicting criterion scores using simple linear regression in R

#Set WD
#SelectionData.csv

df <- read.csv("SelectionData.csv")

install.packages("lessR")
library(lessR)

#estimate simple linear regression model (unstandardized coefficients)
Regression(Performance ~ Conscientiousness, data=df)

#estimate simple linear regression model with standardized coefficients
Regression(Performance ~ Conscientiousness, data=df,
           rescale="z")

#predict criterion scores using model

#assign simple linear regression model to an object
reg_mod <- Regression(Performance ~ Conscientiousness, data=df)

#reference estimated model intercept and assign to object
b0 <- reg_mod$coefficients["(Intercept)"]

#reference estimated model slope/regression/weight coefficient
b1 <- reg_mod$coefficients["Conscientiousness"]

#read in new data
new_df <- read.csv("ApplicantData.csv")

#assemble regresssion equation and assign to new predictor variable and new df
#Y = b +mx
new_df$Perf_Predict_Consc <- b0 + b1 * new_df$Conscientiousness

#sort df by new variable 
new_df[order(-new_df$Perf_Predict_Consc),]

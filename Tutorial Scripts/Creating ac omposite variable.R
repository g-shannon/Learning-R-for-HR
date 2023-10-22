# Creating a composite variable
# Set wd

# overall scale score variable (specific type of composite variable
# for multi-item scales)

df <- read.csv("survey.csv")
head(df)

# check Cronbach's
library(psych)

alpha(df[, c("Engage1", "Engage2", "Engage3", "Engage4")])

# alpha = 0.84
# also check item content - do they meet qualitative conceptual definition of engagement?
# Yes - compute composite variable to represent "engagement"

# create composite variable in data frame
df$Engage_Overall <- rowMeans(df[, c("Engage1", "Engage2", "Engage3", "Engage4")],
                              na.rm = TRUE)

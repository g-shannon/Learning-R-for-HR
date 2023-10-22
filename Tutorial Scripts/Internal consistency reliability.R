# Internal consistency reliability
# set WD

library(readr)
SurvDF <- read.csv("survey.csv")
head(SurvDF)

# psych package
library(psych)

# estimate Cronbach's alpha
alpha(SurvDF[, c("TurnInt1", "TurnInt2", "TurnInt3")])

# adequate ICR (alpha) >= .70
# access qualitative nature of each itme: do we need them all even if alpha is
# good? 

# Job satisfcation alpha
alpha(SurvDF[, c("JobSat1", "JobSat2", "JobSat3")])
# raw alpha is "good" = 0.78
# alpha will increase to .82 if JobSat3 is dropped

# Engagement alpha
alpha(SurvDF[, c("Engage1", "Engage2", "Engage3", "Engage4")])

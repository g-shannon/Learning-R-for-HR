# Centering and standardizing variables in R

# Set WD

library(readr)

DiffPred <- read_csv("DiffPred.csv")

#centering: Grand-Mean Centering
# perf_eval = Y (Intercept) + X*(Interview)

DiffPred$c_interview <- DiffPred$interview - mean(DiffPred$interview, na.rm=TRUE)

mean(DiffPred$interview, na.rm=TRUE)
mean(DiffPred$c_interview, na.rm=TRUE)
round(mean(DiffPred$c_interview, na.rm=TRUE), 5)


# standardizing (creating z-scores: mean = 0; variance $ SDV = 1)

DiffPred$st_interview <- scale(DiffPred$interview)
sd(DiffPred$st_interview, na.rm=TRUE)
var(DiffPred$st_interview, na.rm=TRUE)

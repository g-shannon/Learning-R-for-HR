# paired samples t-test (no control group), dependent outcome measures
#comparing the mean of diffeneces between 2 sets, same group (pre and post test scores)
# teasting for significant difference from zero
#set WD 

#wide data (row per employee, columns are pre scores and post scores)

td <- read.csv("TrainingEvaluation_PrePostOnly.csv")

# estimate paired-samples t-test
# install lessR
install.packages("lessR")
library(lessR)

ttest(PreTest, PostTest, data = td, paired = TRUE)

#statistically different result plus large effect size
# therefore move on to viz:

# data visualization bar chart
# create a vector of means for first and second outcome variables
prepost_means  <- c(mean(td$PreTest, na.rm=TRUE), mean(td$PostTest, na.rm=TRUE))

# create a vector of manes corresonding to the first and second means above
meanNames <- c("Pre-Test", "Post-Test")

# create a data frame from the 2 vectors created above
measdf <- data.frame(meanNames, prepost_means)

# remove 2 vector objects from global environment
remove(prepost_means)
remove(meanNames)

# create bar chart
BarChart(x=meanNames, y=prepost_means, data=measdf,
         xlab="Time of Test",
         ylab="Average Score")

#Independent samples t-test (between subjects/groups)
#Post-test only with control group

#set wd

#dataset:
#TrainingEvaluation_PostControl.csv

td <- read.csv("TrainingEvaluation_PostControl.csv")

library(lessR)

#estimate independent samples t-test
ttest(PostTest ~ Condition, data=td, paired=FALSE

# data visualization (only if statistical difference)
# bar chart (from lessR)
BarChart(x=Condition, y=PostTest, 
         data=td,
         xlab="Training Condition",
         ylab="Mean of Post-Test Scores")

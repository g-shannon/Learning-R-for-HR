#one-way ANOVA (post test only with two comparison groups)

#setwd

#read in data
library(readr)

td3group <- read_csv("TrainingEvaluation_ThreeGroupPost.csv")

# visualize statistical assumptions
library(lessR)

Plot(PostTest, data=td3group, by1=Condition)

# normality assumption (p-values should be >0.05)
tapply(td3group$PostTest, td3group$Condition, shapiro.test)

# equality of vairances assumption (p-values should be >0.05)
#levene's test
install.packages("car")
library(car)

leveneTest(PostTest ~ Condition, data=td3group)

# one-way ANOVA
ANOVA(PostTest ~ Condition, data=td3group)

# effect size (practical significance)
install.packages("effsize")
library(effsize)

cohen.d(PostTest ~ Condition,
        data = subset(td3group, Condition!="Old"),
        paired = FALSE)

cohen.d(PostTest ~ Condition,
        data = subset(td3group, Condition!="New"),
        paired = FALSE)

# bar chart
posttest_means <- tapply(td3group$PostTest, td3group$Condition,
                         mean)

#?style() in order to edit for style
BarChart(posttest_means,
         values = "off",
         xlab = "Training Condition",
         ylab = "Average Post-Test Score")

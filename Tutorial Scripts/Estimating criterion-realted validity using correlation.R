# Estimating criterion-related validity using correlation

#SETWED

SelectionData.csv

# read in the data file
df <- read.csv("SelectionData.csv")

library(lessR)

# make a scatterplot
ScatterPlot(x=Conscientiousness, y=Performance, data=df)

#optional aesthetics
ScatterPlot(x=Conscientiousness, y=Performance, data=df,
            xlab="Conscientiousness Test Score",
            ylab="Job Performance Score",
            ellipse=TRUE)

# estimate correlation
Correlation(x=Conscientiousness, y=Performance, data=df)

#r = .469 (correlation) is our validity coefficient 
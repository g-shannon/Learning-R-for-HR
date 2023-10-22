# Aggregating (segmenting) data in R
# set WD

library(readr)
survdata <- read_csv("EmployeeSurveyData.csv")

install.packages("dplyr")
library(dplyr)

# describe or summarize data in aggreagate
# count the number of cases per unit

survdata %>% 
  group_by(Unit) %>% 
  summarize(UnitCount = n())

survdata %>% count(Unit)

survdata %>% 
  group_by(Unit) %>% 
  summarize(UnitCount = n_distinct(Supervisor))

survdata %>% 
  group_by(Unit) %>% 
  summarize(UnitCount = n_distinct(EmployeeID))

# calculate descriptive statistics
survdata %>% 
  group_by(Unit) %>% 
  summarize(Mean_JS = mean(JobSat1, na.rm=TRUE))

survdata %>% 
  group_by(Unit) %>% 
  summarize(Mean_JS = mean(JobSat1, na.rm=TRUE), 
            Mean_Ti = mean(TurnInt1, na.rm=TRUE),
            SD_JS = sd(JobSat1, na.rm=TRUE))

#create same data in a dataframe for further analysis
agg_survdata <-survdata %>% 
  group_by(Unit) %>% 
  summarize(Mean_JS = mean(JobSat1, na.rm=TRUE), 
            Mean_Ti = mean(TurnInt1, na.rm=TRUE),
            SD_JS = sd(JobSat1, na.rm=TRUE))

# psych package and describe function
install.packages("psych")
library(psych)

#descriptive statistics by unit
describeBy(survdata, group = survdata$Unit)

# create a new variable (and over-riding the survdata DF)
  # REMEMBER TO UNGROUP AT THE END OR DATA WILL REMAINED GORUPED
survdata <- survdata %>% 
  group_by(Unit) %>% 
  mutate(UnitCount = n()) %>%
  ungroup()

survdata <- survdata %>% 
  group_by(Unit) %>% 
  mutate(MEAN_JS = mean(JobSat1, na.rm=TRUE)) %>%
  ungroup()

# visualize by group or segment
install.packages("lessR")
library(lessR)

Plot(JobSat1, data=survdata, by1 = Unit)

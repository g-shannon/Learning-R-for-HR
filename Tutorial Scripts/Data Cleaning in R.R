# cleaning data in R
# read in data

library(readr)
clean_df <- read_csv("DataCleaningExample.csv")

# apply Count function from dplyr
library(dplyr)
# without pipes
count(clean_df, Facility)
# with pipes
clean_df %>% count(Facility)

count(clean_df, JobLevel)

# replace specific value for a specific case (e.g. EP1202, capitalize firsst letter)
str(clean_df)

new_df1 <- clean_df %>% mutate(Faclility = replace(Facility, match("EP1202", EmpID),
                                                   "Beaverton"))

new_df1 <- new_df1 %>% mutate(JobLevel = replace(JobLevel, match("EP1203", EmpID),"NA"))

# replace specific value for ALL cases with a particular value
new_df1 <- new_df1 %>% mutate(OnboardingCompleted = 
                                ifelse(OnboardingCompleted=="No", "Yes", OnboardingCompleted))

# same as above but change No and Yes to binary 1 or 0
new_df1 <- new_df1 %>% mutate(OnboardingCompleted = 
                                ifelse(OnboardingCompleted=="Yes", 1 , OnboardingCompleted))

new_df1$OnboardingCompleted[new_df1$OnboardingCompleted==1] <- "Yes"

# change the name fo a variable
new_df1$HireDate <- new_df1$StartDate
new_df1$StartDate <- NULL

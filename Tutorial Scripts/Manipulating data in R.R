# Manipulating data in R
# set WD

library("readr")
data_manip <- read_csv("ManipulatingData.csv")


# wide to long manipulation

install.packages("tidyr")
library(tidyr) # if error, try installing rlang and glue packages: or just the tidyverse package

names(data_manip) # see names of variables (columns)
nrow(data_manip) # number of rows in data frame

# using the gather function
data_manip_long <- data_manip %>% gather(
  key=Items,
  value=Scores,
  JobSatisfaction, TurnoverIntentions, OrgCommitment, JobInvolvement
)

names(data_manip_long)
nrow(data_manip_long)



# long to wide

data_manip_wide <- data_manip_long %>% spread(
  key = Items, 
  value = Scores
)

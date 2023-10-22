#Sorting and Arranging in R

# read in data
library(readr)
PD <- read_csv("PersData.csv")

# identify names of variables in df
names(PD)

# install and access dplyr package
library(dplyr)

# arrange/sort data in the data frame (with pipe) 
# by date, ascending
PD %>% arrange(startdate)

# arrange/sort by date, in descending order
PD %>% arrange(desc(startdate))

# override existing data frame
PD <- PD %>% arrange(desc(startdate))

# do this without pipe
arrange(PD, startdate)
PD <- arrange(PD, startdate)

# arrange by two+ variables
arrange(PD, gender, startdate)
# with pipe
PD2 <- PD %>% arrange(gender, startdate)

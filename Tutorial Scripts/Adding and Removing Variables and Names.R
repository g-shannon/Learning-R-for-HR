# Hi there! github committ and push test

# removing and adding variable names from a data frame object
# set working drive directory

# read in the .csv file
library(readr)

read_csv("PersData.csv")

df <- read_csv("PersData.csv")

# remove variable names
names(df) <- NULL

# add variable names
names(df) <- c("id", "lastname", "firstname", "startdate", "gender")

#change names using rename
#install dplyr
install.packages("dplyr")
library(dplyr)
df <- rename(df,
             Last_Name = "lastname",
             First_Name = "firstname")
head(df)


# write data frame to .csv file
write.csv(df, "AA Change Column Names.csv")



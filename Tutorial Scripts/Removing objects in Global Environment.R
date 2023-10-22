# removing objects from the Global Environment
# Set WD

# read in data as date frame

library(readr)

df1 <- read_csv("DataCleaningExample.csv")

# create objects

# create a table
table_1 <- xtabs(~ JobLevel + OnboardingCompleted, data=df1)

# variable assignment
a <- 3

# list objects in global environment
ls()

# remove one object
remove(a) # rm(a) short form of remove function

# remove all objects
remove(list=ls())


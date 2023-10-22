# Filtering data in R (subsetting)
# set WD

library(readr)
PersD <- read_csv("PersData.csv")
PerfD <- read_csv("PerfData.csv")
 
# merge data frames

library(dplyr)
mergeddf <- full_join(PersD, PerfD, by="id")

#filter from dplyr
newmergeddf <- mergeddf %>% filter(gender=="female")

newmergeddf <- mergeddf %>% filter(gender!="female")

# remove multiple cases
newmergeddf <- mergeddf %>% filter(!id %in% c(198, 201))

# remove single case
newmergeddf <- mergeddf %>% filter(id!=198)

# to filter for id's above or below a certain number use (id > or < than x)

# working with dates
str(mergeddf)

mergeddf$startdate2 <- as.Date(mergeddf$startdate, format="%m/%d/%y")

str(mergeddf)

newmergeddf <- mergeddf %>% filter(startdate2>"2020-01-05")

# remove a variable from data frame
mergeddf$id <- NULL

# select variables
newmergeddf <- mergeddf %>% select(lastname, firstname, gender, startdate2)

# remove multiple variables
newmergeddf <- mergeddf %>% select(-c(lastname, firstname, gender, startdate2))

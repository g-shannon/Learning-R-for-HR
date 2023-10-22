# joining (merging) data (frames) in R

# set WD

library(readr)
library(dplyr)
#read in data
PersD <- read_csv("PersData.csv")
PerfD <- read_csv("PerfData.csv")

# merge function from base r

#merge all with n/a data (full join)
mergedf1 <- merge(PersD, PerfD, by="id", all=TRUE)

# right join (y = PerfD)
mergedf1 <- merge(PersD, PerfD, by="id", all.y=TRUE)

# left join (x = PersD)
mergedf1 <- merge(PersD, PerfD, by="id", all.x=TRUE)

# join functions from dplyr

# with pipes (from magrittr)
mergedf2 <- PersD %>% full_join(PerfD, by="id")

mergedf2 <- PersD %>% right_join(PerfD, by="id")

mergedf2 <- PersD %>% inner_join(PerfD, by="id")

# without pipes
mergedf3 <- full_join(PersD, PerfD, by="id")

mergedf3 <- inner_join(PersD, PerfD, by="id")


# vertical join or merge
df1 <- data.frame(id=c(1, 2, 3), age=c(21, 23, 45), current=c("Yes", "No", "Yes"))
df2 <- data.frame(id=c(4, 5, 6), age=c(43, 33, 23), current=c("Yes", "No", "Yes"))

mergeddf4 <- rbind(df1, df2)

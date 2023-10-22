read_csv("PersData.csv")

df <- read_csv("PersData.csv")
install.packages("readr")
read_csv("PersData.csv")
library(readr)
read_csv("PersData.csv")
df <- read_csv("PersData.csv")
df <- rename(df,
             Last_Name = "lastname",
             First_Name = "firstname")
head(df)

# write data frame to .csv file
write.csv(df, "AA Change Column Names.csv")

# write data table from R to .csv

table_example <- table(df$gender, df$startdate)

write.table(table_example, "AA Table Example.csv", sep=",", col.names = NA)

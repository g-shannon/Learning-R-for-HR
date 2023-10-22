getwd()

# Reading data into R: read.csv, read_csv, Read

# Option 1: read.csv function

PD <- read.csv("PersData.csv")

str(PD)

# Option 2: read_csv function
install.packages("readr")
library(readr)
PD <- read_csv("PersData.csv")
print(PD)

# Option 3: Read function
# use to read in data that is NOT in .csv file: text, SPSS, SAS, Excel, R files
install.packages("lessR")
library(lessR)
PD <- Read("PersData.csv")

# view data function
View(PD) # or click on data frame name in Global Environment window

# Look at first 6 rows of data
head(PD)

# Look at the last 6 rows
tail(PD)

# names of variables
names(PD)

#Number of rows (not including headers)
nrow(PD)

# See tutorial 13.2 for reading in excel files with multiple sheets
# See tutorial 13.3 for reading in .csv from Qualtrics but skipping top rows of extra info
# See tutorial 13.3 for list of files in working directory
# selecting and removing variables from  data frame
#set WD 

personaldata <- read.csv("PersonalData.csv")
names (personaldata)
# practice selecting one variable (this method prints as a vector)
personaldata$startdate
# this method prints as a data frame:
tempdf<- subset(personaldata, select=startdate)

# selecting multiple variables (over-write tempdf)
tempdf<- subset(personaldata, select=c(lastname, firstname, gender))

# remove one variable
personaldata$startdate <- NULL

tempdf<- subset(personaldata, select = -id)

# removing multiple variables
tempdf<- subset(personaldata, select = -c(lastname, firstname))

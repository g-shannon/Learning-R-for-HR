# subsetting (filtering) cases from a data frame object

library(readr)
personaldata <- read.csv("PersonalData.csv")

#determine the class (type) of the variables
str(personaldata)

# subset by gender
sub_female_personaldata <- subset(personaldata, gender=="woman")

sub_NotFemale_personaldata <- subset(personaldata, gender!="woman")

# subset by id
sub_id_personaldata <- subset(personaldata, id > 154)

# subset by gender OR id
sub_femaleOrid_personaldata <- subset(personaldata, gender=="woman" | id > 154)

# subset by gender AND id
sub_femaleANDid_personaldata <- subset(personaldata, gender=="woman" & id > 154)

#subset out id of 198 and 201
sub_id_personaldata <- subset(personaldata, id %in% c(198, 201))

# show everything BUT those 2 id's: include ! logical operator before "id"
sub_id_personaldata <- subset(personaldata, !id %in% c(198, 201))
# OR e.g.; (same as above but a two-step process)
sub_id_personaldata <- subset(personaldata, id != 198)
sub_id_personaldata <- subset(sub_id_personaldata, id != 201)

# convert character startdate variable to the date type startdate2 variable
personaldata$startdate2 <- as.Date(personaldata$startdate, format = "%m/%d/%Y")
#verify new date format
str(personaldata)

# subset by startdate2
sub_date_personaldata <- subset(personaldata, startdate2 > as.Date("2016-01-07"))

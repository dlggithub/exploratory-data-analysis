## Get working directory - desktop
getwd()
##Get downloaded data
data <- "household_power_consumption.txt"
##Read data into R and view
datap1 <- read.table(data, header=TRUE, sep=";", , stringsAsFactors=FALSE, dec=".")
View(datap1)
##Subset data for required data and view
subdatap1 <- datap1[datap1$Date %in% c("2/1/2007", "2/2/2007") ,]
GAPower <- as.numeric(datap1$Global_active_power)
Warning message:
NAs introduced by coercion
## produce histogram 
hist(GAPower, col="red", main="Global Active Power", xlab="Global Actve Power (kilowatts)")
saved as png
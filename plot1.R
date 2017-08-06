## plot1.R will plot data from the "household_power_consumption.txt" dataset
## Create Histogram of Frequency vs Global Active Power (kilowatts)

## Mod 1 - Ensure you are in right folder , if not, set working dir to right folder 

getwd()
setwd("C:\\aInduction and Learning\\mJH_Data Science course\\Mod4_Exploratory_DA\\W1")
dataplot <- read.csv ("household_power_consumption.txt", na.strings="?", comment.char="",quote='\"', header = TRUE, sep = ";", stringsAsFactors=FALSE , check.names=FALSE)

## remove NAs
dataplotna<-na.omit(dataplot)

## filter for 2 days data
finaldataplot<-subset(dataplotna,Date=="1/2/2007"|Date=="2/2/2007")

## Create a variable called "finaldataplotDT" that combines both the "finaldataplot$Date" and "finaldataplot$Time" columns
finaldataplotDT <- paste(as.Date(finaldataplot$Date), finaldataplot$Time)

## Use the as.POSIX* and strptime() functions to format the date and then split into the "finaldataplot$Date" and "finaldataplot$Time" colums
finaldataplot$DateTime <- as.POSIXct(strptime(paste(finaldataplot$Date, finaldataplot$Time),"%d/%m/%Y %H:%M:%S"))

## Format the date field as a date format
finaldataplot$Date<-as.Date(finaldataplot$Date,format="%d/%m/%Y")


## Mode 2 - creating graph
hist(finaldataplot$Global_active_power,
     
     ## Label the x axis of the histogram "Global Active Power (kilowatts)"
     xlab="Global Active Power (kilowatts)",
     
     ## Label the y axis of the histogram "Frequency"
     ylab="Frequency",
     
     ## Label the histogram with a title "Global Active Power"
     main = paste ("Global Active Power"),
     
     ## Change the colour of the histogram to red
     col="red")


## Mod 3 - write to png file and close the file ##
dev.copy(png,file="plot1.png")
dev.off()

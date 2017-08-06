## File extraction need not be repeated
## starting point for this plot 2 is from finaldataplot table 
## updated with right date and time formats - 10 cols in Plot 1 code

## par() function used to set the graphical parameters to display 4 plots in the page

par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))

## Plot 1 ##
## Select the Global_active_power column in the finaldataplot variable

plot(finaldataplot$DateTime,finaldataplot$Global_active_power,
     
     ## Change the type of graph to type "l" for Line Plot
     
     type="l",
     
     ## Label the x axis of the graph blank
     
     xlab="",
     
     ## Label the y axis of the graph "Global Active Power (kilowatts)"
     
     ylab="Global Active Power (kilowatts)")


## Plot 2 ##
## Select the Voltage column in the finaldataplot variable

plot(finaldataplot$DateTime,finaldataplot$Voltage,
     
     ## Change the type of graph to type "l" for Line Plot
     
     type="l",
     
     ## Label the x axis of the graph "datetime"
     
     xlab="datetime",
     
     ## Label the y axis of the graph "Voltage (volt)"
     
     ylab="Voltage (volt)")


## Plot 3 ##
## Select the Sub_metering_1 column in the finaldataplot variable

plot(finaldataplot$DateTime,finaldataplot$Sub_metering_1,
     
     ## Change the type of graph to type "l" for Line Plot
     
     type="l",
     
     ## Label the x axis of the graph blank
     
     xlab="",
     
     ## Label the y axis of the graph "Energy sub metering"
     
     ylab="Energy sub metering")

## Add a line for the "Sub_metering_2 

lines(finaldataplot$DateTime,finaldataplot$Sub_metering_2,
      
      ## Change the colour of the line to Red
      
      col="red")

## Add a line for the "Sub_metering_3 

lines(finaldataplot$DateTime,finaldataplot$Sub_metering_3,
      
      ## Change the colour of the line to Blue
      
      col="blue")

## Add a legend to the top right of the plot for each of the lines plotted in the code above

legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       
       ## set the line types and widths for lines appearing in the legend
       
       lty=1, lwd=1,
       
       ## set the colours for the lines as per the code above       
       
       col=c("black","red","blue"))


## Plot 4 ##
## Select the Global_reactive_power column in the finaldataplot variable

plot(finaldataplot$DateTime,finaldataplot$Global_reactive_power,
     
     ## Change the type of graph to type "l" for Line Plot
     
     type="l",
     
     ## Label the x axis of the graph "datetime"
     
     xlab="datetime",
     
     ## Label the y axis of the graph "Global_reactive_power"
     
     ylab="Global_reactive_power")


## write to png file ##
dev.copy(png,file="plot4.png")

## close png file
dev.off()
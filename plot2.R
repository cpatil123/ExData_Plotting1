## File extraction need not be repeated
## starting point for this plot 2 is from finaldataplot table 
## updated with right date and time formats - 10 cols in Plot 1 code

plot(finaldataplot$DateTime,finaldataplot$Global_active_power,
     
     ## Change the type of graph to type "l" for Line Plot
     
     type="l",
     
     ## Label the x axis of the graph blank
     
     xlab="",
     
     ## Label the y axis of the graph "Global Active Power (kilowatts)"
     
     ylab="Global Active Power (kilowatts)")


## write to png file ##
dev.copy(png,file="plot2.png")

## close png file
dev.off()

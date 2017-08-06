## File extraction need not be repeated
## starting point for this plot 2 is from finaldataplot table 
## updated with right date and time formats - 10 cols in Plot 1 code

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

## write to png file ##
dev.copy(png,file="plot3.png")

## close png file
dev.off()



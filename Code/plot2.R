## Function to plot a scatter graph showing the global active power against the 
## date and time

plot2 <- function(datetime,data){
  
  png("plot2.png")
  plot(datetime,data,type="l",ylab="Global Active Power (kilowatts)",xlab="")
  dev.off()
  
}
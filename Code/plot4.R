## Function to plot the 4 required plots

plot4 <- function(datetime,data1,data2,data3,data4){
  
  png("plot4.png")
  layout(mat=matrix(c(1,2,3,4),2,2,byrow=TRUE))
  
  ## Plot 1
  plot(datetime,data1,type="l",ylab="Global Active Power (kilowatts)",xlab="")
  
  ## Plot 2
  plot(datetime,data2,type="l",ylab="Voltage")
  
  ## Plot 3
  plot(datetime,data3[,1],type="l",ylab="Global Active Power (kilowatts)",
       xlab = "")
  lines(datetime,data3[,2],col="red")
  lines(datetime,data3[,3],col="blue")
  
  legend("topright",col=c("black","red","blue"),lty=1,lwd=2,
         legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  
  ## Plot 4
  plot(datetime,data4,type="l",ylab="Global Reactive Power (kilowatts)")
  dev.off()
  
}
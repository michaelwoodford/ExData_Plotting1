## Coursera Exploratory Data Analysis Project 1 script

## First read in the dataset
data <- read.delim("household_power_consumption.txt",sep=";")

## Extract only the data for the dates of 2007-02-01 and 2007-02-02
temp <- data[data$Date == "1/2/2007",]
temp2 <- data[data$Date == "2/2/2007",]
data <- rbind(temp,temp2)
#data$Date <- as.character(data$Date)
data$Date <- as.Date(data$Date,format="%d/%m/%Y")

data$Global_active_power <- as.character(data$Global_active_power)
data$Global_active_power <- as.numeric(data$Global_active_power)

## Plot the histogram of global active power
plot1(data$Global_active_power)

## Plot a scatter plot of global active power against day. First combine the 
## date and time
datetime <- paste(data$Date,data$Time)
datetime <- as.POSIXct(datetime,format="%Y-%m-%d %H:%M:%S")
plot2(datetime,data$Global_active_power)


## Plot the line graph of the 3 sub meterings against date time
plot3(datetime,data$Sub_metering_1,data$Sub_metering_2,data$Sub_metering_3)

## Plot 4 separate graphs in the same png layout after converting data types
data$Voltage <- as.character(data$Voltage)
data$Voltage <- as.numeric(data$Voltage)
data$Global_reactive_power <- as.character(data$Global_reactive_power)
data$Global_reactive_power <- as.numeric(data$Global_reactive_power)
plot4(datetime,data$Global_active_power,data$Voltage,data[,(7:9)],data$Global_reactive_power)


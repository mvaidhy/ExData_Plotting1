#Load libraries
library(dplyr)
library(data.table)
library(lubridate)

#Read file
power_con <- read.csv("household_power_consumption.txt", sep=";", na.strings = "?", colClasses = c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))

#Convert date string to Date type and store in new column
power_con$datetime <- as.POSIXct(dmy_hms(paste(power_con$Date, power_con$Time)))

#Extract subset for First and Second day of Feb
power_con_sub <- power_con %>% filter(datetime >= as.POSIXct(ymd("2007-02-01")) & datetime < as.POSIXct(ymd("2007-02-03")))

#Open device
png(filename="plot4.png", width=480, height=480)

#Set global plotting parameters; set up for 4 plots in 2 columns and 2 rows
par(mfrow = c(2,2), mar = c(4, 4, 2, 1), oma = c(0, 0, 0, 0))

#plot 1: Global active power time series plot
with(power_con_sub, plot(datetime, Global_active_power, type="l", col="black", xlab="hour", ylab="Global Active Power (kilowatts)"))

#plot 2: Voltage time series plot
with(power_con_sub, plot(datetime, Voltage, type="l", col="black", xlab="hour"))

#plot 3: Sub meterings time series plot
with(power_con_sub, plot(datetime, Sub_metering_1, type="l", col="black", xlab="hour", ylab="Energy sub metering"))
with(power_con_sub, lines(datetime, Sub_metering_2, type="l", col="red"))
with(power_con_sub, lines(datetime, Sub_metering_3, type="l", col="blue"))
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#plot 4: Global reactive power time series plot
with(power_con_sub, plot(datetime, Global_reactive_power, type="l", col="black", xlab="hour", ylab="Global Reactive Power"))

#Close device
dev.off()

#Clean up 
rm(list=ls())

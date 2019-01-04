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
png(filename="plot3.png", width=480, height=480)

#Time series plot for three sub meterings
with(power_con_sub, plot(datetime, Sub_metering_1, type="l", col="black", xlab="hour", ylab="Energy sub metering"))
with(power_con_sub, lines(datetime, Sub_metering_2, type="l", col="red"))
with(power_con_sub, lines(datetime, Sub_metering_3, type="l", col="blue"))
legend("topright", lty=1, col = c("black", "red", "blue"), legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"))

#Close device
dev.off()

#Clean up 
rm(list=ls())

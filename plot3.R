plot3 <- function() {
    power <- read.csv("household_power_consumption.txt", sep = ";")
    power_target_dates <- power[grep("^[12]/2/2007", power$Date), ]
    sub_metering_1 <- as.numeric(as.character(power_target_dates[,"Sub_metering_1"]))
    sub_metering_2 <- as.numeric(as.character(power_target_dates[,"Sub_metering_2"]))
    sub_metering_3 <- as.numeric(as.character(power_target_dates[,"Sub_metering_3"]))
    datetime <- strptime(paste(power_target_dates$Date, power_target_dates$Time), "%d/%m/%Y %H:%M:%S")
    plot(datetime, sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering", col = "black")
    lines(datetime, sub_metering_2, col = "red")
    lines(datetime, sub_metering_3, col = "blue")
    legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), text.col = "black", col = c("black", "red", "blue"), lwd = 1, lty = 1)
}
plot2 <- function() {
    power <- read.csv("household_power_consumption.txt", sep = ";")
    power_target_dates <- power[grep("^[12]/2/2007", power$Date), ]
    global_active_power <- power_target_dates[,"Global_active_power"]
    converted <- as.numeric(as.character(global_active_power))
    dateTime <- strptime(paste(power_target_dates$Date, power_target_dates$Time), "%d/%m/%Y %H:%M:%S")
    plot(dateTime, converted, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
}
plot1 <- function() {
    power <- read.csv("household_power_consumption.txt", sep = ";")
    power_target_dates <- power[grep("^[12]/2/2007", power$Date), ]
    global_active_power <- power_target_dates[,"Global_active_power"]
    converted <- as.numeric(as.character(global_active_power))
    hist(p$Global_active_power, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
}
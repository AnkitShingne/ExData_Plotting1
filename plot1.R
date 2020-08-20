data <- read.csv2("household_power_consumption.txt")
req1 <- data[ 66637:69516, ]
req2 <- transform(req1, Global_active_power = as.numeric(Global_active_power))
png("plot1.png", width = 480, height = 480)
hist(req2$Global_active_power, main = "Global Active Power", col = "red", xlab = "Global Active Power (kilowatts)", breaks = 25)
dev.off()

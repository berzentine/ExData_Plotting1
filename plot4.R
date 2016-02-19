data <- read.csv.sql("household_power_consumption.txt",sql = "select * from file where Date = '2/2/2007' or Date = '1/2/2007'",header = TRUE, sep = ";", stringsAsFactors=FALSE)

png('/Users/NidhiVyas/Desktop/datascience/plot4.png',width = 480, height = 480)
par(mfrow=c(2,2))
##graph 1 in first row/line
y <- data[,3]
lab <- c("Thu","Fri","Sat")
plot(1:2880, y,type="l",xaxt='n',xlab = "",ylab = "Global Active Power (kilowatts)")
axis(side=1, at=c(0,1440,2880), c("Thu","Fri","Sat"))

##graph 2 in first line

y <- data[,5]
lab <- c("Thu","Fri","Sat")
plot(1:2880, y,type="l",xaxt='n',xlab = "datetime",ylab = "Voltage")
axis(side=1, at=c(0,1440,2880), c("Thu","Fri","Sat"))

##number 3 and first in the second row 
y <- data[,3]
lab <- c("Thu","Fri","Sat")
y1 <- data[,7]
y2 <- data[,8]
y3 <- data[,9]
plot(1:2880,y1,type="l",col="black",xaxt='n',xlab = "",ylab = "Energy sub metering")
points(1:2880,y2,col="red",type = "l")
points(1:2880,y3,col="blue", type = "l")
axis(side=1, at=c(0,1440,2880), c("Thu","Fri","Sat"))

legend("topright", 1.9, c("sub_metering_1", "sub_metering_2", "sub_metering_3"), col = c("black", "red", "blue"),
       text.col = "black", lty = c(1, 1, 1), pch = c(NA, NA, NA),
       merge = TRUE)

##plot number four and last in the second row

y <- data[,4]
lab <- c("Thu","Fri","Sat")
plot(1:2880, y,type="l",xaxt='n',xlab = "datetime",ylab = "Global_reactive_power")
axis(side=1, at=c(0,1440,2880), c("Thu","Fri","Sat"))

dev.off()

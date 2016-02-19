data <- read.csv.sql("household_power_consumption.txt",sql = "select * from file where Date = '2/2/2007' or Date = '1/2/2007'",header = TRUE, sep = ";", stringsAsFactors=FALSE)

png('/Users/NidhiVyas/Desktop/datascience/plot3.png',width = 480, height = 480)
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
dev.off()



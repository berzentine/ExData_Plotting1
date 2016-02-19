data <- read.csv.sql("household_power_consumption.txt",sql = "select * from file where Date = '2/2/2007' or Date = '1/2/2007'",header = TRUE, sep = ";", stringsAsFactors=FALSE)
png('/Users/NidhiVyas/Desktop/datascience/plot1.png',width = 480, height = 480)
hist(data[,3],col = "red", xlab = "Global active power (kilowatts)", main  = "Global Active power", ylim = c(0, 1200), las = 1)
dev.off()



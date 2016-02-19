data <- read.csv.sql("household_power_consumption.txt",sql = "select * from file where Date = '2/2/2007' or Date = '1/2/2007'",header = TRUE, sep = ";", stringsAsFactors=FALSE)
days <-c()
for (i in 1:nrow(data)){
  if(data[i,1] =="1/2/2007"){
    temp <-weekdays(as.Date('01/02/07','%d/%m/%y'))
    days <-c(days,temp)
  }
    else{
      temp <-weekdays(as.Date('02/02/07','%d/%m/%y'))
      days <-c(days,temp)
    }
  
  
}
png('/Users/NidhiVyas/Desktop/datascience/plot2.png',width = 480, height = 480)
y <- data[,3]
lab <- c("Thu","Fri","Sat")
plot(1:2880, y,type="l",xaxt='n',xlab = "",ylab = "Global Active Power (kilowatts)")
axis(side=1, at=c(0,1440,2880), c("Thu","Fri","Sat"))
dev.off()


 
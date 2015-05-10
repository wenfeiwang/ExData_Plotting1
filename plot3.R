data <- read.csv2('household_power_consumption.txt',stringsAsFactors=FALSE)
dd=data[data$Date=='1/2/2007'|data$Date=='2/2/2007',]
t<-strptime(paste(dd$Date,dd$Time),'%d/%m/%Y %H:%M:%S')
png = png(
        "plot3.png",
        width     = 480,
        height    = 480,
        units     = "px",
        
)
plot(as.POSIXct(t),dd$Sub_metering_1,type='l',xlab = '',ylab = 'Energy sub metering')
lines(as.POSIXct(t),dd$Sub_metering_2,col="red")
lines(as.POSIXct(t),dd$Sub_metering_3,col="blue")
legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c("black","red","blue"),lty=c(1,1,1))

dev.off()

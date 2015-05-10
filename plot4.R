data <- read.csv2('household_power_consumption.txt',stringsAsFactors=FALSE)
dd=data[data$Date=='1/2/2007'|data$Date=='2/2/2007',]
t<-strptime(paste(dd$Date,dd$Time),'%d/%m/%Y %H:%M:%S')
png = png(
        "plot4.png",
        width     = 480,
        height    = 480,
        units     = "px",
        
)
par(mfrow=c(2,2))
plot(as.POSIXct(t),dd$Global_active_power,type='l',xlab = '',ylab = 'Global Active Power (kilowatts)')

plot(as.POSIXct(t),dd$Voltage,type='l', xlab = 'datetime',ylab = 'Voltage')
plot(as.POSIXct(t),dd$Sub_metering_1,type='l',xlab = '',ylab = 'Energy sub metering')
lines(as.POSIXct(t),dd$Sub_metering_2,col="red")
lines(as.POSIXct(t),dd$Sub_metering_3,col="blue")
legend('topright',legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),col=c("black","red","blue"),bty ='n', lty=c(1,1,1))

plot(as.POSIXct(t),dd$Global_reactive_power, type ='l', xlab = 'datetime',ylab = 'Global Reactive Power')

dev.off()
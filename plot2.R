data <- read.csv2('household_power_consumption.txt',stringsAsFactors=FALSE)
dd=data[data$Date=='1/2/2007'|data$Date=='2/2/2007',]
t<-strptime(paste(dd$Date,dd$Time),'%d/%m/%Y %H:%M:%S')
png = png(
        "plot2.png",
        width     = 480,
        height    = 480,
        units     = "px",
        
)
plot(as.POSIXct(t),dd$Global_active_power,type='l',xlab = '',ylab = 'Global Active Power (kilowatts)')
dev.off()

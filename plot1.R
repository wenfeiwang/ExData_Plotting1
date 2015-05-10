data <- read.csv2('household_power_consumption.txt',stringsAsFactors=FALSE)
dd=data[data$Date=='1/2/2007'|data$Date=='2/2/2007',]
png = png(
        "plot1.png",
        width     = 480,
        height    = 480,
        units     = "px",

)
hist(as.numeric(dd$Global_active_power),xlab = 'Global Active Power (kilowatts)',main='Global Active Power',col = 'red')
dev.off()

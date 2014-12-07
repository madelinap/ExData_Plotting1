mydata = read.table("household_power_consumption.txt", header = TRUE, sep = ";")
myset<-subset(mydata, mydata$Date == "1/2/2007" | mydata$Date == "2/2/2007")
#myset<-subset(mydata, as.Date(as.character(mydata$Date),"%d/%m/%Y") == "2007-02-01" || as.Date(as.character(mydata$Date),"%d/%m/%Y") == "2007-02-02")
par(ps=10) 
hist(as.numeric(as.character(myset$Global_active_power)),main="Global Active Power", xlab="Global Active Power (kilowatts)", col="red", yaxt = "n", ps=10)
axis(side=2, at=seq(0,1200, 200), labels=seq(0,1200, 200))
dev.copy(png, file="plot1.png",width = 480, height = 480)
dev.off()


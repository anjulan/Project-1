dat1<-read.table("C:/Users/Cueball/Documents/Coursera EDA/household_power_consumption.txt",sep=";",header=TRUE)

s1<-dat1[dat1$Date=="1/2/2007",]
s2<-dat1[dat1$Date=="2/2/2007",]
subdat1<-rbind(s1,s2)

### Plot 4

subdat1$Voltage<-as.numeric(as.character(subdat1$Voltage))
subdat1$Global_reactive_power<-as.numeric(as.character(subdat1$Global_reactive_power))

png("Plot4.png",width = 480, height = 480)
par(mfrow=c(2,2))

plot(subdat1$DateTime,subdat1$Global_active_power,type="l",ylab="Global Active Power",xlab="")

plot(subdat1$DateTime,subdat1$Voltage,type="l",ylab="Voltage",xlab="datetime",yaxt="n")
axis(2, at=seq(234,246,4))

plot(subdat1$DateTime,subdat1$Sub_metering_1,type="l",col="black",yaxt="n",ylab="Energy sub metering",xlab="")
axis(2, at=seq(0,30,10))
lines(subdat1$DateTime,subdat1$Sub_metering_2,type="l",col="red")
lines(subdat1$DateTime,subdat1$Sub_metering_3,type="l",col="blue")
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1, col=c('black','red', 'blue'), cex=.75)

plot(subdat1$DateTime,subdat1$Global_reactive_power,type="l",xlab="datetime",yaxt="n",ylab="Global_reactive_power")
axis(2, at=seq(0.0,0.5,0.1))

dev.off()
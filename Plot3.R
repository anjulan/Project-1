dat1<-read.table("C:/Users/Cueball/Documents/Coursera EDA/household_power_consumption.txt",sep=";",header=TRUE)

s1<-dat1[dat1$Date=="1/2/2007",]
s2<-dat1[dat1$Date=="2/2/2007",]
subdat1<-rbind(s1,s2)

subdat1$Sub_metering_1<-as.numeric(as.character(subdat1$Sub_metering_1))
subdat1$Sub_metering_2<-as.numeric(as.character(subdat1$Sub_metering_2))
subdat1$Sub_metering_3<-as.numeric(as.character(subdat1$Sub_metering_3))

## plot 3

png("Plot3.png",width = 480, height = 480)
plot(subdat1$DateTime,subdat1$Sub_metering_1,type="l",col="black",yaxt="n",ylab="Energy sub metering",xlab="")
axis(2, at=seq(0,30,10))
lines(subdat1$DateTime,subdat1$Sub_metering_2,type="l",col="red")
lines(subdat1$DateTime,subdat1$Sub_metering_3,type="l",col="blue")
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1, col=c('black','red', 'blue'), cex=.75)
dev.off()

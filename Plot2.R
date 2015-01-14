dat1<-read.table("C:/Users/Cueball/Documents/Coursera EDA/household_power_consumption.txt",sep=";",header=TRUE)

s1<-dat1[dat1$Date=="1/2/2007",]
s2<-dat1[dat1$Date=="2/2/2007",]
subdat1<-rbind(s1,s2)

subdat1$DateTime <- paste(subdat1$Date, subdat1$Time)
subdat1$DateTime<-strptime(subdat1$DateTime, "%d/%m/%Y %H:%M:%S")

### Plot 2

plot(subdat1$DateTime,subdat1$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")

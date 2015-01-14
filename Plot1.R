dat1<-read.table("C:/Users/Cueball/Documents/Coursera EDA/household_power_consumption.txt",sep=";",header=TRUE)

s1<-dat1[dat1$Date=="1/2/2007",]
s2<-dat1[dat1$Date=="2/2/2007",]
subdat1<-rbind(s1,s2)

### plot 1

subdat1$Global_active_power<-as.numeric(as.character(subdat1$Global_active_power))

hist(subdat1$Global_active_power,xlab="Global Active Power (kilowatts)",col="red",main="Global Active Power")

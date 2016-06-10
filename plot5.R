NEI<-readRDS("summarySCC_PM25.rds")
SCC<-readRDS("Source_Classification_Code.rds")
subnei<-NEI[NEI$fips=="24510"&NEI$type=="ON-ROAD",]
motor<-aggregate(Emissions~year,subnei,sum)
png("plot5.png")
with(motor,plot(year,Emissions,xlab="year",ylab="Emission from motor vehicles",col="blue",main="Total Emission from Motor Vehicles",type="l"))
dev.off()
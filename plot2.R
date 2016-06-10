NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
sub<-NEI[NEI$fips=="24510",]
pmbalt<-aggregate(Emissions~year,sub,sum)
png("plot2.png")
plot(pmbalt$year,pmbalt$Emissions,type="l",col="blue",main="PM2.5 Emission in Baltimore",ylab="PM2.5 Emission",xlab="Year")
dev.off()
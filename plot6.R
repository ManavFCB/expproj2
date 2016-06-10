library(ggplot2)
NEI<-readRDS("summarySCC_PM25.rds")
SCC<-readRDS("Source_Classification_Code.rds")
balt<-NEI[NEI$fips=="24510"&NEI$type=="ON-ROAD",]
la<-NEI[NEI$fips=="06037"&NEI$type=="ON-ROAD",]
balt<-aggregate(Emissions~year+fips,balt,sum)
la<-aggregate(Emissions~year+fips,la,sum)
balt.vs.la<-rbind(balt,la)
png("plot6.png")
baltla<-ggplot(balt.vs.la,aes(year,Emissions))+facet_grid(.~fips)+geom_line()+xlab("year")+ylab("Emission from Motor Vehicles")+ggtitle("Motor Vehicle Emission in Baltimore(24510) vs Los Angeles(06037)")
print(baltla)
dev.off()

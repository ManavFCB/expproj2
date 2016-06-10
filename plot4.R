library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
subscc<-SCC[grepl("Coal",SCC$Short.Name),]
subnei<-NEI[NEI$SCC %in% subscc$SCC,]
png("plot4.png")
coalg<-ggplot(subnei,aes(factor(year),Emissions,fill=type))+geom_bar(stat="identity")+xlab("year")+ylab("Emissions from Coal")+ggtitle("Total Emissions from coal sources")
print(coalg)
dev.off()

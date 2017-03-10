## Uploading the ggplot2 library
library(ggplot2)

## Uploading the data
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")

## Extracting the data about Baltimore
baltimoreNEI <- NEI[NEI$fips=="24510",]

## creating the plot 
ggp <- ggplot(baltimoreNEI,aes(factor(year),Emissions,fill=type)) +
  geom_bar(stat="identity") +
  theme_bw() + guides(fill=FALSE)+
  facet_grid(.~type,scales = "free",space="free") + 
  labs(x="year", y=expression("Total PM"[2.5]*" Emission (Tons)")) + 
  labs(title=expression("PM"[2.5]*" Emissions, Baltimore City 1999-2008 by Source Type"))
 
## Saving the file 
ggsave(filename="plot3.png", plot=ggp)


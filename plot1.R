## Opening and reading the files
> NEI <- readRDS("summarySCC_PM25.rds")
> SCC <- readRDS("Source_Classification_Code.rds")

## Ploting the total PM2.5 emission in 1999, 2002, 2005 and 2008
png("plot1.png")
barplot(
  (aggTotals$Emissions)/10^6,
  names.arg=aggTotals$year,
  xlab="Year",
  ylab="PM2.5 Emissions (10^6 Tons)",
  main="Total PM2.5 Emissions From All US Sources")
dev.off()

## Conclusion: the total PM2.5 decrease over the years


## Get the complete dataset
data_all  <- read.table("household_power_consumption.txt", header=TRUE, sep=";", na.strings = "?", colClasses = c('character','character','numeric','numeric','numeric','numeric','numeric','numeric','numeric'))
## Format date to Type Date
data_all$Date <- as.Date(data_all$Date, format="%d/%m/%Y")

## Filter data set from Feb. 1, 2007 to Feb. 2, 2007
data <- subset(data_all, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

## Converting dates
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

## create histogram with title and axis labels
hist(data$V3, col = "red", main = "Global Active Power",
     xlab = "Global Active Power (killowatts)", ylab = "Frequency")



## Saving to file
dev.copy(png, file="plot1.png", height=480, width=480)
## Closing Graphics Device
dev.off()

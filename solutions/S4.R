
# Solution to 4.1
save.image('myoutput.Rdata')
save(climate, 'myclimatedata.Rdata')
myoutput <- list(data_short$NAME, data_short$LATITUTE)
save(myoutput, 'myclimatedata.Rdata')

# Solution to 4.2
library(quantmod)
# Get Apple Inc. (AAPL) stock data from Yahoo Finance
getSymbols("AAPL", src = "yahoo", from = "2024-01-01", to = Sys.Date())
plot(AAPL)
plot(plot(AAPL$AAPL.Close))

# Solution to 4.3
load("data/climate_wide.Rdata")
plot(wide_data$MAASTRICHT, type = 'l', col = 'blue', tck = 0.05,
xlab = "Month", ylab = "Average Temperature")
mean_max <- mean(wide_data$MAASTRICHT)
abline(h = mean_max)

# Solution to 4.4
load("data/climate_wide.Rdata")
# Start with an initial number of observations
# Make sure that the range of the x and y axes match with the whole dataset
plot(1:3, wide_data$MAASTRICHT[1:3],
     xlim = c(1, nrow(wide_data)), ylim = range(wide_data$MAASTRICHT),
     xlab = "Time", ylab = "Value", main = "Adding Data Over Time", type = 'l') 
# Gradually extend the line
# Within the for loop, add lines to the first plot, instead of plotting the data again.
for (i in 4:nrow(wide_data)) { 
  lines(1:i, wide_data$MAASTRICHT[1:i])  
  Sys.sleep(0.15)  # Pause to simulate "gradual" effect 
} 






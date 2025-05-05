# Install and load the necessary package
install.packages("quantmod")
library(quantmod)

# Get Microsoft stock data from Yahoo Finance
getSymbols("MSFT", src = "yahoo")

# Display the first few rows of the Microsoft stock data
print(head(MSFT))

msft_df <- data.frame(date = index(MSFT), close = MSFT$MSFT.Close)
msft_df <- na.omit(msft_df)

# Plot Closing Prices
dev.new()

# Basic plot
tail_df <- tail(msft_df, 30)

plot(
  tail_df$date,
  tail_df$close,
  type = "l",
  main = "MSFT Closing Prices - Last 30 Days",
  xlab = "Date",
  ylab = "Price (USD)",
  col = "blue"
)

# Show Candlestick Chart
dev.new()
candleChart(MSFT, 
            up.col = "green", 
            dn.col = "red", 
            theme = "white")
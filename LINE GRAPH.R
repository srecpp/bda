# Create the data for the chart
sales <- c(15, 23, 18, 35, 40)
months <- c("Jan", "Feb", "Mar", "Apr", "May")

# Plot the line chart
plot(sales,
     type = "o",
     col = "darkgreen",
     pch = 17,
     lty = 1,
     lwd = 2,
     xaxt = "n",
     xlab = "Month", 
     ylab = "Sales (in 1000s)", 
     main = "Monthly Sales Data")

# Add custom x-axis labels
axis(1, at = 1:5, labels = months)
# Create data for the graph
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

# Plot the pie chart with title and rainbow color palette
pie(
	x, 
	labels, 
	main = "City Pie Chart", 
	col = rainbow(length(x))
)

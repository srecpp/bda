# Create new input data
input <- data.frame(
  height = c(150, 160, 165, 170, 175, 180, 185, 190, 195, 200),
  weight = c(50, 55, 60, 68, 70, 75, 80, 85, 90, 95)
)

# Plot the chart for people with height between 150 to 200 and weight between 50 to 100
plot(
  x = input$height, y = input$weight,
  xlab = "Height (cm)",
  ylab = "Weight (kg)",
  xlim = c(150, 200),
  ylim = c(50, 100),
  main = "Height vs Weight",
  col = "blue",
  pch = 19,              # Solid circle points
  cex = 1.5              # Bigger point size
)

# Add grid lines
grid()

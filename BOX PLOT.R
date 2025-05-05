# Store the relevant data in a variable
mileage_data <- mtcars[, c("mpg", "cyl")]

# Display the first few rows for reference
print(head(mileage_data))

# Plot the boxplot using the new variable
boxplot(mpg ~ cyl, 
        data = mileage_data, 
        xlab = "Number of Cylinders",
        ylab = "Miles Per Gallon", 
        main = "Mileage Data")
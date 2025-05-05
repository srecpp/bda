# Create data for the histogram
weights <- c(9, 13, 21, 8, 36, 22, 12, 41, 31, 33, 19)

# Display the first few values for reference
print(head(weights))

# Create the histogram
hist(weights,
     breaks = 5,                      # Number of bins
     col = "skyblue",                 # Fill color
     border = "darkblue",            # Border color
     xlab = "Weight",
     main = "Histogram of Weights")

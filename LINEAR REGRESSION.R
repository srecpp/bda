X <- c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
Y <- c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)

plot(X, Y, 
col = "blue", 
main = "Height vs Weight Regression", 
pch = 16, 
xlab = "Height in cm", 
ylab = "Weight in kg")

relation <- lm(Y ~ X)

abline(relation, col = "red", lwd = 2)  # Adding the regression line

print(relation)
print(summary(relation))

a <- data.frame(X = 170)
result <- predict(relation, a)
print(result)

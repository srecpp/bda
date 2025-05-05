data <- mtcars[, c("am", "cyl", "hp", "wt")]

logit_model <- glm(am ~ cyl + hp + wt, data = data, family = binomial)

print(summary(logit_model))

predicted_probs <- predict(logit_model, type = "response")
print(predicted_probs)

predicted_classes <- ifelse(predicted_probs > 0.5, 1, 0)
print(predicted_classes)

comparison <- data.frame(Actual = data$am, Predicted = predicted_classes)
print(comparison)
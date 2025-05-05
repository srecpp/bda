x <- 1:20
y <- c(3,4,5,4,8,10,10,11,14,20,23,24,32,34,35,37,42,48,53,60)
train <- data.frame(x, y)

plot(train, pch=16)

model <- lm(y ~ x, train)

install.packages('e1071', dependencies=TRUE)
library(e1071)
model_svm <- svm(y ~ x, train)
pred <- predict(model_svm, train)
points(train$x, pred, col="green", pch=4)


svm_tune <- tune(svm, y ~ x, data=train, ranges=list(epsilon=seq(0,1,0.01), cost=2^(2:9)))
best_mod <- svm_tune$best.model
best_mod_pred <- predict(best_mod, train)

plot(train, pch=16)
abline(model, col="red")
points(train$x, best_mod_pred, col="blue", pch=4)

print(summary(model_svm))

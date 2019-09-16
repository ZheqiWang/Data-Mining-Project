# 9/10/2019
# linear regression

library("ElemStatLearn")
mydata <- ozone
head(mydata)

# linear regression
m <- lm(ozone ~ ., data = mydata) # (I want to predict this feature) ~ (. dot means all features)

# plot
plot(mydata$radiation, mydata$ozone)
plot(mydata$temperature, mydata$ozone)
plot(mydata$wind, mydata$ozone)

# transform wind -> log(wind)
new_wind <- log(mydata$wind)
plot(new_wind, mydata$ozone)

# build linear model m1 with log(wind) values
newdata <- mydata
newdata$wind <- new_wind
head(newdata)
m1 <- lm(ozone ~ ., newdata) # could omit 'data = '

summary(m) # Adjusted R-squared:  0.5952 
summary(m1) # Adjusted R-squared:  0.6477 

# other transformation functions: exp(x), 1/x, ...

# make prediction
m1$coefficients # return coefficient of linear model
pred <- predict(m1, data = mydata) # return vector of predicted value
mode(pred) # type of structure
length(pred)
pred[1:5]
mydata$ozone[1:5]

# prediction error
ozoneVal <- mydata$ozone # true response value
preErr <- mean(abs(ozoneVal - pred)) # average absolute deviation
preErr2 <- mean((ozoneVal - pred)^2) # average least squares resid

# are we allowed to have negative values for ozone?
negTF <- (pred < 0)
pred[negTF] = 0
View(pred) # show data in table

# residual plot
# x-axis: predicted value
# y-axis:residual
plot( predict(m1), residuals(m1))
abline(0, 0)



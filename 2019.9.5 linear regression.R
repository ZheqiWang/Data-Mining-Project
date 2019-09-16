# linear regression

# install a package
install.packages("ElemStatLearn") # run once

# lood
library(ElemStatLearn)
?ozone
mydata <- ozone

# observe data
head(ozone)
# ozone: ozone concentration in the air
# radiation: solar radiation
# temperature: max daily temperature
# wind: speed of wind
str(ozone)
summary(ozone)

# build linear model to predict ozone
plot(mydata$radiation, mydata$ozone)
plot(mydata$temperature,mydata$ozone)

# lm() function use to build linear model
model <- lm(ozone ~ ., data = mydata) # dot means all the features

# access model
summary(model)
# Multiple R-squared:  0.6062,	$$$Adjusted R-squared:  0.5952 $$$ high means better

coeff <- model$coefficients

m2 <- lm(ozone ~ temperature + wind, data = mydata)
m3 <- lm(ozone ~ . - radiation, data = mydata)

summary(m2) # Adjusted R-squared:  0.574 
summary(m3) # Adjusted R-squared:  0.574 

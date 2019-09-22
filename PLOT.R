# plot function
plot(1:10, type = "l", col = "green", lwd = 3) # line width == lwd

# also check: pch (market type), cex(marker size)
plot(1:10, pch = 19, cex = 2)

# add a straight line to existing plot
abline(0, 2) # intercept, slope
abline(v = 6, lty = 2) # vertical line, line type is 2
abline(h = 6, lty = 2) # horizantal line, line type is 2

# additional functions to add to existing plot
# lines(), points(), text(), legend(), title(), axis(), polygon()

# scatter plot
plot(rnorm(100), rnorm(100),
     xlab = "x1", ylab = "x2",
     main = "2-Dim Normal Distribution",
     col = "pink") # a verctor of size 100, normal distribution

# iris dataset
data("iris")
head(iris)
unique(iris$Species)
plot(iris$Sepal.Length)

# scatter plot sepal.length, sepal.width
plot(iris$Sepal.Length, iris$Sepal.Width,
     xlab = 'sepal length', ylab = 'sepal width',
     col = iris$Species)
pairs(~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, iris)
plot(iris[ , -5], col = iris[ , 5]) # -5 means from back to front 5 feature, the 5th as color

# histogram
hist(iris$Sepal.Length)
hist(iris$Sepal.Length, breaks = 10)
hist(iris$Sepal.Length, breaks = 30, col = "yellow green")

# boxplot
boxplot(iris$Sepal.Length)
boxplot(Sepal.Length ~ Species, data = iris)

# pie chart: count frewuency of each species
table(iris$Species)
pie(table(iris$Species),
    main = "Porportion of Species")

# estimate density
# kernel density estimation: Gaussian kernel
d <- density(iris$Sepal.Length)
plot(d)
polygon(d, col = "light blue")

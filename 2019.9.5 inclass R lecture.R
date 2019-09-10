
# difine a matrix
x <- matrix(1:6, nrow = 2, ncol = 3)

# functions for matrix
dim(x)
nrow(x)
ncol(x)
length(x)

# assign row names, col names
rownames(x) <- c("row1","row2")
colnames(x) <- c("c1","c2","c3")

# define another matrix of same size
y <- matrix(seq(101,106), nrow = 2,ncol = 3)
cbind(x,y) # bind x and y side by side
rbind(x,y) # row-bind

# mateix algebra
t(x) #transpose of matrix x
z <- t(y) # dimension is 3 x 2
x * z # elementwise multiplication, x should has same dimension as z
x * y
x %*% z # matrix multiplication x(2x3) %*% z(3x2)

# data frame

# define a data frame
df <- data.frame(drink = c("coffee", "juice", "soda"),
                 price = c(3,5,2))

# access columns
df[ ,2] # means all rows and column # 2
df$drink

#add new column
quantity = c(100,2,50)
df <- cbind(df,quantity)
cbind(df[ ,c(1)],quantity, df[ ,c(2)])

# if-statement
myScore <- 100
if(myScore > 90){
  print("I got an A")
}else{
  print("no A")
}

# for-loop
numQuantity <- length(quantity)
for(i in 1:numQuantity){
  print(quantity[i])
}

# while-loop
k <- 1
while(k < 6){
  print(k)
  k <- k + 1
}

# define function
inc <- function(x){
  x + 1
}
inc(10)
inc(1:5)


# in class exercise
# 1
?runif
my <- matrix(runif(5,min = 0, max = 1), nrow = 5, ncol = 5)
my

v <- runif(25)
m <- matrix(v, nrow = 5, ncol = 5)

# 2
n <- my[c(1,2,3),c(1,2,3)]
n <- m[1:3,1:3]

# 3
my[1, ] = 0
my[1, ] <- 0

# 4

# 5
findavg <- function(x){
  sum(x)/length(x)
}
x <- 1:100
findavg(x) # 50.5

# 6
findval <- function(x){
  lengthx <- length(x)
  for (i in 1:lengthx){
    currVal <- x[i]
    if(currVal < 5){
      print(currVal)
    }
  }
}
y <- seq(-10,10, by = 2)
findval(y)



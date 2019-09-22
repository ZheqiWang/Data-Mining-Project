# IN CLASS R2
# ZHEQI WANG
# to run singel line: command + enter

# assign 1 to variable c
c <- 1
# show the structer
str(c)

# create a vector
x <- c(1,2,3,4,5)
z<- x + 1
y <- 1/x
x + y
z<- c(x, 6, 7, 8, 9, 10)
c(x,y,z)

# sequence
s1 <- 100:105
s2 <- seq(20,32)
s3 <- seq(20,32,by=2) # 'by' is step
s4 <- seq(20,32,length = 10) # 'length' is split average to 10
s5 <- rep(x, times = 2) # repeat 2 times
s5
s6 <- rep(x, each = 2) # repeat each element twice
s6

# vector functions
sum(x)
length(x)
which(x[] ==4) #return index of x
max(x)
mean(x)

#logic vector
x < 3
lg <- x<3
as.numeric(lg) # convert TRUE,FALSE to 1,0:logical vector to numeric

# missing values/infinity
a <- c(-5:0,NA) # 'c' for combination
a

is.na(a) #check is empty or not

0/0 #NaN
2^5000 #Inf
?Inf

#chatacter vector
fruit <- c("apple","pear")
fruit
str(fruit)
paste(fruit,"juice")
fruit == "apple"
artical <- paste("artical",1:5,sep = " ")
artical

# access elements
x
x[1]
x[c(1,3)]
x[2:4]
x[x < 3] # x[logical vector] -> x[T T F F F] -> RETURN TRUE element
x[x<3] <- -100
x

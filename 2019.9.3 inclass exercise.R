# R exercise
# 1
x<- c(3,12,6,-5,0,8,15,1,-10,7)
x

#2
str(x) # or look at Global Environment

#3 important
length(x)
x[c(2,4,6,8,10)] - 5
x[seq(0,10,by=2)] -5
for (i in c(2,4,6,8,10)){
  x[i] = x[i] - 5
}
x

#4
sum(x)
mean(x) # sum(x)/length(x)

#5
x[10:1]
?rev
rev(x)

#6
logical <- x<0
x[logical]
x[x<0]

#7
x <- x[x>=0]
x

#8
length(x)

#9
rm(x)
?remove

#10
course <- c("EMIS 7331")

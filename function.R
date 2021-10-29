
rm(list=ls())

x <- scan()
y <- function(x) {
  return (2*x+1)
}
y(x)


myfunc01 <- function (x) {
  result = 2*x + 1
  return (result)
}
x <- 1
result <- myfunc01(x)
x <-2 
result <- myfunc01(x)

vec <- c(1:3)
result <- myfunc01(vec)

x <- seq(-1, 3, by=0.05)
y <- myfunc01(x)
plot(x, y, main='y=2*x+1')


## example - function

myfunc02 <- function (x1, x2) {
  result <- x1 + 2 * x2 - 3
  return (result)
}

myfunc02(1,1)
myfunc02(1,2)
myfunc02(2,1)


## 주요내장함수
jumsu <- read.csv('jumsu.csv')
head(jumsu)
head(jumsu, n=3)
tail(jumsu, 2)
View(head(jumsu))
dim(jumsu)
str(jumsu)
summary(jumsu)

min(jumsu$math)
max(jumsu$math)
range(jumsu$eng)
mean(jumsu$math)

sort(jumsu$math)
median(jumsu$math)
sum(jumsu$math)
order(jumsu$math)

mymath <- jumsu$math
mymath**2
mymath%%3
booltest <- as.logical(mymath%%3 == 0)
sum(booltest)


data <- read.csv('mathfunc.csv')

kor <- data$kor
math <- data$math
eng <- data$eng
sqr(kor)
ceiling(kor)
floor(kor)
round(kor)
round(kor, 1)
cumsum(kor)

which.max(kor)
which.min(kor)

sin(pi/2)
cos(pi/2)
tan(pi/4)
log(10)
log10(10)

abs(-3)
vec <- c(1,2,3,3)
prod(vec)
su <- 5
factorial(su)

cnt <- c(1:10)
for(idx in cnt) {
  print(factorial(idx))
}

pmax(kor, eng, math)
pmax(kor)
pmax(kor, eng)
pmin(kor, eng, math)



rm(list=ls())

c1 <- c(1,2)
c2 <- c(4, 1)

matrixA <- cbind(c1, c2)
nrow(matrixA)
ncol(matrixA)

apply(matrixA, 1, sum)
matrixAT = t(matrixA)

diag(3)
solveMat <- solve(matrixA)
diagMat <- matrixA %*% solveMat


##집합 연산
x <- c(1,2,3,4)
y <- c(4,1,3,2)
setequal(x, y)
y <- c(1,2,3,5)
setequal(x,y)
y <- c(3,4,5,6)
myunion <- union(x,y)
myintersect <- intersect(x,y)
x_minus_y <- setdiff(x,y)
y_minus_x <- setdiff(y, x)
myfind = 7
result <- myfind %in% x
myfind <- c(4,5)
result <- myfind %in% x
myfind <- 6
condition <- (myfind %in% x | myfind %in% y)
ifelse (condition, 'yes', 'no')

data <- c(1:5)
myfind <- c(2,6,3,1)
result <- sum(myfind %in% data)


jumsunew <- read.csv('jumsu.csv')
sum(jumsunew$math)
sum(jumsunew$kor)
sum(jumsunew$eng)

cbind(jumsunew, apply(jumsunew, 1, sum))
jumsunew <- cbind(jumsunew, apply(jumsunew, 1, mean))
ifelse(apply(jumsunew, 1, mean) >= 60)
jumsunew <- cbind(jumsunew, ifelse(jumsunew$apply(jumsunew, 1, mean) >= 60))

sort(jumsunew$kor, decreasing= TRUE)
sort(jumsunew$avg)

jumsunew <- cbind(jumsunew, ifelse(jumsunew$math >= 50, '우수', '노력'))
jumsunew <- cbind(jumsunew, ifelse(jumsunew$eng >= 50, '우수', '노력'))
jumsunew <- cbind(jumsunew, ifelse(jumsunew$kor >= 50, '우수', '노력'))


## example - 04
x <- 4
y<- 5
ifelse(x >= 3 & x <= 4, x^2, x)
ifelse(y%%2 == 0, '짝', '홀')
ifelse(x+y >= 7, '양호', '불량')

vec <- seq(from=1, to=100, by=3)
sum <- 0
for(a in vec) {
  sum <- sum + ifelse(a%%3 == 1, a, 0)
}

myfunc04 <- function(x1, x2) {
  y = 2* x1 + 3*x2 + 5
  return (y)
}

x <- 3
y <- 6
mymax <- max(x, y)
jegob <- sum(x^2, y^2)
mysub <- abs(x-y)

pythagoras <- function(x1, y1, x2, y2, x3, y3) {
  ab <- sqrt((x1-x2)^2 + (y1-y2)^2)
  bc <- sqrt((x3-x2)^2 + (y3-y2)^2)
  ac <- sqrt((ab)^2 + (bc)^2)
  return (ac)
}
pythagoras(1,4,1,1,5,1)


aa <- c(1:10)
aa <- c(1:5, 2)
bb <- c(3:5, 8:9)

help(seq)
cc <- seq(from=1, to=5)

help(rev)
rev(1:10)
rev(bb)

dd <- c(10:1)
ee <- seq(from=12, to=7, by= -1)
ff <- seq(from=14, to=2, by=-3)

help(rep)
gg <- rep(1, 10)
hh <- rep(1:2, 3)
hh2 <- rep_len(1:2, 3)
ii <- rep(1:2, each=3)
jj <- rep(c(2,3,5), 3)

cc <- c(1,2)
cc^2
dd <- seq(from=1, to=3)
dd^2


## example
a <- seq(1, 100, by=1)
b <- seq(3, 99, by=3)
result <- sum(a) - sum(b)


## example 03-quiz01
s <- seq(from=100, to=1, by=-3)

## example 03-quiz02
aa <- seq(from=1, to=99, by=2)
aa^2
sum(aa^2)

## example 03-quiz02 (sol01)
b1 <- seq(from=1, to=99, by=2)
b2 <- seq(from=-2, to=-100, by=-2)
sum(1/b1) + sum(1/b2)

## example 03-quiz02 (sol02)
bb <- c(1:100)
sum((1/bb)*(-1)^(bb+1))


# 연산자 실습
data <- seq(from=1, to=10, by=1)
data2 <- data[data %% 3 == 0 | data %% 5 == 0]
data3 <- data[data %% 2 == 0 & data %% 3 == 0]
data2_mean <- mean(data2)
data3_sum = sum(data3)
result <- c(data2_mean, data3_sum)
result1 <- c(data2, data3)


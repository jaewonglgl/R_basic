
rm(list=ls())

getwd()
setwd('/Users/seojaewon/RProjects/example01')
getwd()
setwd('~/RProjects/example01/aa')
txt <- read.table('aa.txt')


## example 02-1
human <- c('김유신', '강감찬', '김유신', '이순신', '김유신', '이순신', '강감찬', '김유신', '이순신')
x <- factor(human, levels=c('이순신', '강감찬', '김유신'))
plot(x)


## example 02-2
grade <- c(62, 57, 70, 91, 68)
mean(grade)
sum(grade)

## example 02-3
r <- 10.0
S <- pi * r * r



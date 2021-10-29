
## ** apply(x, margin, fun) : margin 에서 1은 행, 2는 열 의미

rm(list = ls())
somedata = cbind(x1 = seq(1,5), x2 = seq(6, 10))
dimnames(somedata) = list(c('김유신', '이순신', '강감찬', '윤봉길', '이봉창'), c('국어', '영어'))
mode(somedata)
class(somedata)
somedata

apply(somedata, 1, mean)
apply(somedata, 2, mean)
colMeans(somedata)

apply(somedata, 2, sum)
apply(somedata, 1, sum)

## **sapply, taaply 함수 써보기



## ** array(data, dim, dimanmes)






S <- 3.8
is.numeric(S)
as.character(S)

mode(S)
class(S)


df <- data.frame(name=c('김철수', '박영희'), jumsu=c(10, 20))
mode(df)
class(df)


sum(c(100, 200, NA))
sum(c(100, 200, NA), na.rm=T)
sum(c(100, 200, NULL))


human <- c('남자', '여자', '여자', '남자', '남자')
factor(human)
levels(factor(human))

# plot은 숫자 자료형만 그래프로 그릴 수 있음.
mode(human)
class(human)
length(human)

human2 <- as.factor(human)
mode(human2)
class(human2)
plot(human2)


nhuman <- as.factor(human)
levels(nhuman)
labels(nhuman)
table(nhuman)
plot(nhuman)

ohuman <- factor(human, levels=c('male', 'female'), ordered=T)
plot(ohuman)


## example : factor + plot
data <- c('강호동', '강호동', '강호동', '강호동', '유재석', '유재석', '유재석', '이수근', '이수근', '심형래')
data2 <- as.factor(data, ordered=F)
plot(data2)



sample(x=1:10, size=5)
sample(x=1:10, size=5, replace=FALSE)
myframe <- data.frame(col=c(1,2,3,4,5,6,6,7,8,9,10))
sample(x=myframe$col, size=5)
sample(x=myframe$col, size=5, replace=T)

set.seed(1234)
sample(x=1:10, size=5)

## example 03-1
kk <- seq(from=1, to=100, by=3)
sum(kk)
ll <- seq(from=96, to=1, by=-5)
sum(ll)
 
## example 03-2
seq(from=1, to=9, by=2)
rep(c(1,2,3), 3)
rep(1:3, each=3)

## example 03-3
ban1 = c(99, 91, 95, 90, 84)
ban2 = c(97, 70, 92, 91, 72)

ban1 * ban2
ban1 + ban2
ban1 == ban2
ban1 %*% ban2
c(ban1, ban2)

## example 03-4
name <- c('김구', '유관순', '이순신', '김유신', '홍길동')
age <- c(55, 45, 45, 53, 15)
gender <- c(1,2,1,1,1)
job <- c('연예인', '주부', '군인', '직장인', '학생')
sat <- c(3,4,2,5,5)
grade <- c('C', 'C', 'A', 'D', 'A')
total <- c(44.4, 28.5, 43.5, NA, 27.1)

members <- data.frame(name, age, gender, job, sat, grade, total)
barplot(members$gender)
## members2 <- filter(members, row_number()%%2 == 1)
members2 <- members[seq(from=1, to=nrow(members), 2)]
mysampling <- sample(x=members$name, size=6/10*nrow(members))
subset(members, age >= 50)
subset(members, grade == 'A' | grade == 'D', select=c('name', 'age', 'grade'))
subset(members, sat >= mean(members$sat))
  

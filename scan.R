
### 키보드 입력

members <- scan(what = character())

num <- scan()
## 10 20 30 40 50
mode(num)
class(num)
length(num)
sum(num)

name <- scan(what=character())
age <- scan()

cat(name, '님', age)



### 파일 입력
jumsu <- read.table('jumsunew.csv', header=TRUE)
jumsu$총점 <- jumsu$국어 + jumsu$영어 + jumsu$수학 + jumsu$사회 + jumsu$과학
jumsu$평균 <- round(jumsu$총점/5, 2)
write.csv('result.csv', quote=F)

rownames(jumsu) = c('a', 'b', 'c', 'd', 'e', 'f')
jumsu


asc <- order(+jumsu$국어)
jumsu[asc, ]
jumsu[order(+jumsu$국어, -jumsu$수학), ]

jumsu$사회 <- ifelse(is.na(jumsu$사회), 87, jumsu$사회)
mean_사회 <-  mean(jumsu$사회, na.rm=T)
jumsu$사회 <- ifelse(is.na(jumsu$사회), mean_사회, jumsu$사회)
write.csv(jumsu, 'jumsuCleanData.csv')

install.packages('xlsx')
install.packages('rJava')
library('xlsx')
library('rJava')

## sink
saved_file <- 'result.txt'
sink(saved_file)
no <- c(1,2,3)
name <- c('hong', 'lee', 'kim')
pay <- c(100, 200, 300)
emp01 <- data.frame(No=no, Name=name, Pay=pay)
emp01
sink()
result <- read.table(saved_file)


## sink & data frame test
sink('test.txt')
name <- c('김유신', '이순신', '강감찬')
kor <- c(10, 20, 30)
eng <- c(50, 60, 70)
math <- c(70, 80, 10)
grade <- data.frame(name, kor, eng, math)
grade
sink()


korean = c(50, 60, 70, 80, 90)
english = c(10, 20, 30, 40, 50)
name <- c('김유신', '강감찬', '이순신', '신사임당', '홍길동')
myframe <- data.frame(name=name, korean=korean, english=english)
myframe
write.xlsx(myframe, 'myframe.xlsx', row.names=F)

## rda data
dataframe <- data.frame(name=c('신돌석', '곽재우', '임꺽정', '변강쇠'), eng=c(90,80,60,70), math=c(50,60,70,80))
dataframe
save(dataframe, file='dataframe1.rda')
rm(dataframe)
load('dataframe1.rda')
dataframe


### example 06
name <- scan(what=character())
grade <- scan()
dataframe <- data.frame(name, grade)
dataframe






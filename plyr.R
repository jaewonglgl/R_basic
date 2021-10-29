### tapply

data <- read.csv('mydata.csv', header=TRUE)

unique(data$coupon)
data$coupon2 <- factor(data$coupon, levels=c(1,2), labels=c('할인쿠폰', '적립쿠폰'))

# data$coupon2 기준으로 그룹핑하여 data$amount값의 mean을 구함
ta <- tapply(data$amount, data$coupon2, mean)
barplot(ta, col=rainbow(length(ta)), main='쿠폰 유형별 사용 금액', xlab='쿠폰유형', ylab='평균 사용 금액')

data$gender2 <- factor(data$gender, levels=c('F', 'M'), labels=c('여자', '남자'))
tgender <- tapply(data$age, data$gender2, mean)
barplot(tgender, col=rainbow(length(ta)), main='성별 평균 나이', xlab='성별', ylab='평균나이')


### merge
df_kor = data.frame(id=c(1,2,3), kor=c(95, 90, 75))
df_eng = data.frame(id=c(1,2,4), eng=c(80, 75, 88))

df_user = merge(df_kor, df_eng, by.x='id', by.y='id')
df_user
df_all = merge(df_kor, df_eng, by.x='id', by.y='id', all=TRUE)
df_all

df_all$kor <- ifelse(is.na(df_all$kor), 60, df_all$kor)
df_all$eng <- ifelse(is.na(df_all$eng), 50, df_all$eng)
df_all
class(df_all)


### plyr-join
install.packages('plyr')
library(plyr)

data1 = data.frame(id=c(1,2,3,4,5), kor=c(60,75,80,60,70))
data2 = data.frame(id=c(5,4,1,3,2), eng=c(55,73,60,55,80))
result = join(data1, data2, by='id')
result

data1 = data.frame(id=c(1,2,3,4,6), kor=c(60,75,80,60,70))
data2 = data.frame(id=c(5,4,1,3,7), eng=c(55,73,60,55,80))
result = join(data1, data2, by='id')
result

result = join(data1, data2, by='id', type='inner')
result

result = join(data1, data2, by='id', type='full')
result


data01 <- data.frame(key1=c(1,1,2,2,3), key2=c('a', 'b', 'c', 'd', 'f'), val1=c(10,20,30,40,50))
data02 <- data.frame(key1=c(3,2,2,1,1), key2=c('e', 'd', 'c', 'b', 'a'), val2=c(500, 400, 300, 200, 100))
result <- join(data01, data02, by=c('key1', 'key2'))
result

result <- join(data01, data02, by=c('key1', 'key2'), type='inner')
result


df_kor <- data.frame(id=c(1,1,2), kor=c(95,90,75))
df_eng <- data.frame(id=c(1,2,2), eng=c(80,75,88))
result <- join(df_kor, df_eng, by='id', match='first')
result

result <- join(df_kor, df_eng, by='id', match='all')
result


### dply
install.packages('dplyr')
library('dplyr')

midexam <- data.frame(id=c(1,2,3,4,5), midterm=c(60,80,70,90,85))
finalexam <- data.frame(id=c(1,2,3,4,5), finalexam=c(70,83,65,95,80))
teacher <- data.frame(id=c(1,2,3,4,5), teacher=c('kim','lee', 'park', 'choi', 'jung'))
students <- left_join(midexam, finalexam, by='id')
students_new <- left_join(students, teacher, by='id')
head(students_new)

boy <- data.frame(name=c('김유신','이순신', '강감찬', '홍길동', '임꺽정'), test=c(60,65,70,75,80))
boy$name <- as.character(boy$name)
girl <- data.frame(name=c('유관순','조마리아', '황진이', '평강공주', '정순왕후'), test=c(44,55,66,77,88))
total <- bind_rows(boy, girl)
total

mean(total$test, na.rm=T)
students_new$semester <- tapply(students_new$midterm, students_new$finalexam, mean)
students_new
result <- select(students_new, c(id, semester))
result
result <- select(students_new, -c(midterm, finalexam))
result
result <- students_new %>% filter(id != 1) %>% select(c(id, semester))
result
result <- select(head(total, 6), c(name, test))
result
result <- students_new %>% arrange(semester)
result
result <- students_new %>% arrange(desc(semester))
result

newdata <- students_new %>% mutate(total=midterm+finalexam, average=total/2, result=ifelse(average >= 60.0, 'pass', 'fail'))
newdata
result <- newdata %>% arrange(total)
result

mean_mid <- mean(newdata$midterm)
mean_mid

result <- newdata %>% group_by(ban) %>% summarise(avgkor=mean(kor, na.rm=TRUE), sumeng=sum(eng, na.rm=TRUE), su=n())
mode(result)
class(result)


### reshape
install.packages('reshape')
library('reshape')

#?????
result <- rename(result, c(V1='name', V2='mid', V3='final', V4='total', V5='sum', V6='mean', V7='result'))
result <- rename(result, c(V1='id', V2='average', V3='result'))
result


### reshape2
install.packages('reshape2')
library('reshape2')

no <- c(1,1,2,2)
day <- c(1,2,1,2)
kor <- c(50,60,70,80)
eng <- c(70, 65, 60,55)
data <- data.frame(no, day, kor, eng)
data
mdata <- melt(data, id=c('no', 'day'))
mdata
dcast(mdata, no+day ~variable)
dcast(mdata, no ~variable+day)
dcast(mdata, no~variable, sum)
dcast(mdata, day~variable, mean)
dcast(mdata, no~day, mean)


## example - 07





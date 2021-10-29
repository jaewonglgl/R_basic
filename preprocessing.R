### outlier
gender <- c(1,2,3,1,2,1)
jumsu <- c(2,5,1,3,4,20)

boxplot(jumsu)
outlier <- data.frame(gender, jumsu)
outlier
sort(unique(outlier$gender))
sort(unique(outlier$jumsu))
table(outlier$gender)
table(outlier$jumsu)

outlier$gender <- ifelse(outlier$gender == 3, NA, outlier$gender)
table(outlier$gender, useNA='ifany')
condition1 <- outlier$gender == 1 | outlier$gender == 2
outlier$gender <- ifelse(condition1, outlier$gender, NA)
table(outlier$gender, useNA='ifany')

outlier$jumsu <- ifelse(outlier$jumsu <= 5, outlier$jumsu, NA)
condition2 <- outlier$jumsu >=1 & outlier$jumsu<=5
outlier$jumsu <- ifelse(condition2, outlier$jumsu, NA)
table(outlier$jumsu, useNA = 'ifany')

outlier


### mpg 데이터셋
install.packages('ggplot2')
library('ggplot2')
help(mpg)
mybox <- boxplot(mpg$hwy)
attributes(mybox)
mybox$stats
sort(mpg$hwy)
mpg$hwy <- ifelse(mpg$hwy < 12 | mpg$hwy > 37, NA, mpg$hwy)
table(is.na(mpg$hwy))
result <- mpg %>% group_by(drv) %>% summarize(mean_hwy = mean(hwy, na.rm=T))
result


### 결측치 missing value
name <- c('김유신', '유관순', '강감찬', '이율곡', '신사임당')
gender <- c('남자', '여자', NA, '남자', '여자')
score <- c(10,15, 20, 25, NA)
student <- data.frame(name, gender, score)
student
is.na(student)
sum(is.na(student))
sum(is.na(student$score))
table(is.na(student))
mean(student$score)
sum(student$score)
unique(student$gender)

student %>% filter(is.na(score))
student %>% filter(is.na(gender))
student %>% filter(!is.na(score) & !is.na(gender))
student_nomiss <- student %>% filter(!is.na(score))
student_nomiss
mean(student_nomiss$score)
sum(student_nomiss$score)
student_nomiss <- student %>% filter(!is.na(score) & !is.na(gender))
student_nomiss
student_nomiss2 <- na.omit(student)
student_nomiss2
mean(student$score, na.rm=T)
sum(student$score, na.rm=T)

## 도전문제 
table(student$gender, useNA='ifany')
student$gender <- ifelse(is.na(student$gender), 1, student$gender)
table(student$gender)




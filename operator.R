
rm(list=ls())


num1 <- 14
num2 <- 5


result <- num1 + num2
result <- num1 - num2
result <- num1 * num2
result <- num1 / num2
result <- num1 %% num2
result <- num1 ^ 2
result <- num2 ** 3

# 논리연산자
num1 <- 14
num2 <- 5
result <- num1 == num2
result <- num1 != num2
result <- num1 > num2
result <- num1 < num2
result <- num1 >= num2
result <- num1 <= num2

result <- num1 >= 10 & num2 <3
result <- num1 >= 10 | num2 < 3
result <- !(num1 >= 10) | num2 <3

data1 <- 'a'
data2 <- 'b'
(data1 >= data2)
(data1 < data2)

su1 <- 3
su2 <- 2

(su1 >= su2)
su1 < su2
su1 == su2
su1 != su2

## 출력
x <- 14
y <- 5
z <- x * y 

cat ("x*y의 결과는 ", z, "입니다\n", sep='')
cat("x*y=", z, sep='')

print(z)


## 조건문
score <- scan()

x <- 6
y <- 5
z <- x*y

if(x*y >= 40) {
  cat ('x*y의 결과는 40 이상입니다\n')
  cat('x*y=', z)
} else {
  cat ('x*y의 결과는 40 미만입니다\n')
  cat('x*y=', z)
}

score <- scan()
print(score)

result <- '노력'
if(score >= 40) {
  result <- '우수'
} 
cat('당신의 학점은', result)
print(result)

ifelse(score >= 80, '우수', '노력')

## example - ifelse
input <- scan()
ifelse(input %% 2 == 1, '홀', '짝')

x <- 5
y <- 12
ifelse(y %/% x == 0, '약수', '약수 아님')

jumsu <- c(10, 15, 20, 33)
ifelse(jumsu %% 2 == 1, '홀', '짝')


## switch
switch('name', id='hong', name='홍길동', password='1234', age=105)

empname <- scan(what='')
switch(empname, hong=250, kim=500, choi=300, lee=100)

## which
name <- c('강감찬', '김유신', '이순신', '신사임당', '최영')
findname <- scan(what = character())
result <- which(name == findname)  # 해당 요소의 index를 리턴. 없으면 0
name[result]

result2 <- which(name == '이성계')
name[result2]

## example - which
id <- seq(1:5)
name <- c('강감찬', '김유신', '이순신', '신사임당', '최영')
grade <- c(78, 80, 85, 90, 95)

data <- data.frame(id, name, grade)

findname <- scan(what = character())
result <- which(data$name == findname)
subset(data, id == result) # row_number() 사용할 수 있나?
subset(data, grade >= 88)
subset(data, grade >= 80 & grade <= 90)

## 다중택일
score <- 75
if(score >= 90) {
  grade <- 'A'
} else if(score >= 80) {
  grade <- 'B'
} else if(score >= 70) {
  grade <- 'C'
} else if(score >= 60) {
  grade <- 'D'
} else {
  grade <- 'F'
}

cat('학점:', grade)


## example
month <- scan()
if (month >= 1 & month <=3 | month >= 11) {
  season <- '겨울'
} else if(month >= 4 & month <= 6) {
  season <- '봄'
} else if(month >= 7 & month <= 8) {
  season <- '여름'
} else if(month >= 9 & month <= 10) {
  season <- '가을'
}
cat(month, '월은 ', season, '입니다.\n')


## 반복문
cnt <- c(1:3)
for(idx in cnt) {
  print(idx)
}
for(idx in 1:3) {
  print(idx)
}

cnt <- c(1:10)
total <- 0
for(idx in cnt) {
  total <- total + idx
}


transport = c('bus', 'subway', 'bike', 'car')
for(t in transport) {
  print(t)
}


score <- c(70, 80, 90)
name <- c('심형래', '임하룡', '김정식')

i <- 1
for(s in score) {
  cat(name[i], '->', s, '\n')
  i <- i + 1
}

## example 
arr <- seq(from=1, to=96, by=5)
result <- sum(arr^2)

sum <- 0
for(idx in arr) {
  sum <- sum + idx^2
}

a <- 1
while(a <= 10) {
  print(a)
  a <- a+1
}

a <- 1
sum <- 0
while(a <= 10) {
 sum <- sum + a 
 a <- a + 1
}

a <- 1
while(a <= 10) {
  if (a >= 5) {
    break
  } else {
    print(a)
  }
  a <- a + 1
}

a <- 1
while(a <= 10) {
  if (a %% 3 != 0) {
    print(a)
  }
  a <- a + 1
}

a <- 1
while(a <= 10) {
  if (a %% 3 == 0) {
    next
  } 
  print(a)
  a <- a + 1
}

x <- 0
while(x < 10) {
  x <- x+1
  if(x %% 3 == 0) {
    next
  }
  print(x)
}

## example - while
arr <- seq(from=1, to=50, by=1)
sum <- 0
for(idx in arr) {
  if(idx %% 3 == 0) {
    next
  }
  sum <- sum + idx
}





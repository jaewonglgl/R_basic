install.packages('stringr')

str <- '홍길동15강감찬25을지문덕35'
test01 <- str_extract(str, '[0-9]{2}')
mode(test01)
class(test01)
test01
test02 <- str_extract_all(str, '[0-9]{2}')
mode(test02)
class(test02)
unlist(test02)

string <- 'hong1234김유신5678'
length(string)
str_length(string)

string2 <- c('hello', 'math')
length(string2)
str_length(string2)

findword <- '김유신'
loc <- str_locate(string, findword)
mode(loc)
class(loc)
loc
kim <- str_sub(string, loc[1], loc[2])
stringsub <- str_sub(string, 1, 9-1)

string3 <- 'Hong1234'
upper <- str_to_upper(string3)
lower <- str_to_lower(string3)

string3 <- 'hong1234'
string_rep <- str_replace(string3, 'hong', 'kang')
string_rep2 <- str_replace(string3, '1234', '5678')

string4 <- 'hong1234hong5678'
replace3 <- str_replace(string4, 'hong', 'kim')
replace4 <- str_replace_all(string4, 'hong', 'kim')
replace5 <- str_replace_all(string4, '[0-9]', '')

string5 <- 'aaa123'
string6 <- 'bbb456'
concat <- str_c(string5, string6)

string7 <- 'aaa,bbb,ccc'
split1 <- str_split(string7, ',')

vec <- unlist(split1)

members <- c('홍길동10', '김유신20', '이순신30')
string_join<- paste(members, collapse=',')
paste('안녕', '여러분', sep='/')
data <- c('안녕', '여러분')
paste(data, collapse='/')

mystr <- '홍길동&10&역삼동&hong@naver.com&박영희&20&공덕동&park@daum.net'
str_list <- str_split(mystr, '&', simplify=TRUE)
dataF <- data.frame(str_list)
matrix(str_list, nrow=2)

reg <- '[a-z]{2}[1-9]{3}'
str_extract('ab123', reg)
str_extract('cd456', reg)
str_extract('ef789', reg)
str_extract('abc12', reg)

somedata <- c('2002홍길동220', '1970이순신300', '1980유관순260')
name_func <- function(str) {
  n <- str_extract(str, '[가-힣]{3}')
  return (n)
}

sal <- function(str) {
  s <- as.numeric(str_extract(str, '[0-9]{3}$'))
  return (s)
}
sal_list <- sal(somedata)
avg_sal <- mean(sal_list)

cat('전체급여평균:', avg_sal, '\n\n', '평균급여이상수령자')
for(a in somedata) {
  if(sal(a) >= avg_sal) {
    cat(name_func(a), '=>', sal(a), '\n')
  }
}

string <- 'kim100김유신/lee200이순신'
str_list <- str_split(string, '/', simplify=TRUE)
id = list()
age = list()
name = list()
idx <- 1
for(s in str_list) {
  id[idx] = str_extract(s, '^[a-z]{3}')
  age[idx] = as.numeric(str_extract(s, '[0-9]{2,3}'))
  name[idx] = str_extract(s, '[가-힣]{3}')
  idx <- idx + 1
}
age <- age + 50
id <- str_to_upper(id)
matrix(c(id, age, name), nrow=3, byrow=TRUE)


##example-05
mystr <- '사과10=배20=감15=사과30'
str_list <- str_split(mystr, '=', simplify = TRUE)
f <- str_extract(str_list, '[가-힣]*')
n <- str_extract(str_list, '[0-9]{2}')
matrix(c(f, n), nrow=2, byrow=TRUE)

str1 <- '사과 3(100)개, 밤 5(500)개, 배 4(2000)개만 주세요'
str_list <- str_extract_all(str1, '[가-힣]*\\ [0-9]*\\([0-9]*\\)(개)', simplify = TRUE)
f <- list()
n <- list()
c <- list()
idx <- 1
for(a in str_list) {
  f[idx] <- str_extract(a, '^[가-힣]*')
  n[idx] <- as.numeric(str_replace(str_extract(a, '[0-9]*\\('), '\\(', ''))
  c[idx] <- as.numeric(str_replace(str_extract(a, '[0-9]*\\)'), '\\)', ''))
  idx <- idx+1
}

cat('총 구입 개수:', sum(unlist(n)), '개\n', '총 판매 금액:', sum(unlist(n)*unlist(c)), '원\n')

mydata <- c('강원원주시웅비2길8', '강원도철원군서면와수로181번길7-16', '강원평창군봉평면태기로68', '강원강릉시강변로410번길36')
str_extract(mydata, '[0-9]{1}[0-9|가-힣|-]*$')


mydata <- c('abcd@naver.com', '1aaa@daum.net', 'xyz1@daum.net', 'xyz@daum.net')
for(str in mydata) {
  data <- str_split(str, '@', simplify=TRUE)
  id <- data[1]
  mail <- data[2]
  
  if(str_detect(id, '^[a-z]') & str_length(id) >= 4) {
    cat('아이디: ', id, '메일 종류: ', mail, '\n')
  }
}

rm(list=ls())


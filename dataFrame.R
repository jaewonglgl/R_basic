

df <- data.frame(korean=c(50, 55, 60, 65, 70), english=c(10, 20, 30, 40, 50), name=c('김유신', '이순신', '강감찬', '홍길동', '신사임당'))
df

df$korean


str(df)
ncol(df)
nrow(df)
names(df)
df[c(2:3),]
df$korean


summary(df)
apply(df[, c(1,2)], 2, sum)


## example - dataFrame
data = data.frame(name=c('이순신', '김유신', '강감찬'), 국어=c(45, 60, 85), 영어=c(65, 70, 90), 수학=c(90, 55, 35))


## example - subset
iris
str(iris)
unique(iris$Species)

subset(iris, Species == 'setosa')

filter01 <- subset(iris, Species == 'setosa' & Sepal.Length >= 5.3)
filter01
nrow(filter01)

filter02 <- subset(iris, select=c('Species', 'Sepal.Length', 'Sepal.Width'))
filter02

filter03 <- subset(iris, Petal.Width <= 0.5)

filter04 <- subset(iris, Petal.Width <= 0.5, select=c('Species', 'Sepal.Length', 'Petal.Length'))

filter05 <- subset(iris, Petal.Length >= 7.4, select=-c(Species))


## merge
x1 <- data.frame(name=c('a', 'b', 'c'), math=c(1,2,3))
y1 <- data.frame(name=c('d', 'b', 'a'), english=c(4,5,6))

merge(x1, y1, by='name')
merge(x1, y1)

x2 <- data.frame(writer=c('a','b','c'), math=c(1,2,3))
y2 <- data.frame(name=c('a','b','d'), english=c(4,5,6))

merge(x2, y2, by.x='writer', by.y='name')
merge(x2, y2, by.x='writer', by.y='name', all=TRUE)


## example - merge
x <- data.frame(name=c('강감찬', '이순신', '김유신'), math=c(90, 80, 40))
y <- data.frame(name=c('강감찬', '이순신', '을지문덕'), korean=c(75, 60, 90))

merge(x, y, by='name', all=TRUE)





matrix(c(1:10), nrow=2, byrow=TRUE)

myvector <- c(1,2,3,4,5,6)
mat_a <- matrix(myvector, nrow=3)
mat_b <- matrix(myvector, nrow=2)
mat_c <- matrix(myvector, nrow=2, byrow=T)

mydimnames <- list(c('kim', 'park'), c('kor', 'eng', 'math'))
## matrix에 행과 열 부여: (row, ncol) 순서로 부여
mat_d <- matrix(myvector, nrow=2, byrow=T, dimnames=mydimnames)

## example01
dimName <- list(c('이순신', '김유신', '강감찬'), c('국어', '영어', '수학'))
values <- c(45, 65, 90, 60, 70, 55, 85, 90, 35)
mat <- matrix(values, nrow=3, byrow=TRUE, dimnames=dimName)

## example: 행렬 연산자

mat_a <- matrix(c(1,2), nrow=1)
mat_b <- matrix(c(-2, 3), nrow=2)
mat_c <- matrix(c(3,2,-1,0), nrow=2, byrow=T)

ab <- mat_a %*% mat_b
ac <- mat_a %*% mat_c
ba <- mat_b %*% mat_a
cb <- mat_c %*% mat_b


first.matrix <- matrix(1:12, ncol = 4)#column by column
first.matrix

matrix(1:12, ncol = 4, byrow = TRUE)#row by row
str(first.matrix)
dim(first.matrix)
length(first.matrix)
#combine vectors to matrix
v1<-c(4,5,8,9)
v2<-c(34,56,78,90)
m1<-rbind(v1,v2)
m1
cbind(1:3, 4:6, matrix(7:12, ncol = 2))
#extraction
first.matrix[1:2, 2:3]
#dropping
first.matrix
first.matrix[-2, -3]
#replacing
first.matrix[3, 2] <- 4

#scalar
first.matrix + 4
second.matrix <- matrix(1:3, nrow = 3, ncol = 4)
first.matrix + 1:3
rowSums(first.matrix)
#transposing
t(first.matrix)
#multiplying
first.matrix %*% t(second.matrix)




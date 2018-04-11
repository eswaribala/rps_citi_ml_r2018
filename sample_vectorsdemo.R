data<-c(45,3,4,5,18,25)
str(data)
length(data)
authors<-c("larry","page")
str(authors)
is.numeric(data)
is.integer(data) #The standard mode is double.
intData<-c(5L,90L)
is.integer(intData)
#creating vectors
seq(from = 4.5, to = 2.5, by = -0.5)
#specifying numbers reqd in the range length.out=difference/partitions 
seq(from = -2.7, to = 1.3, length.out = 5) 
#combining vectors
v1<-c(5,6,7,8)
v2<-1:30
v3<-c(v1,v2)
v3
#replicate vectors
rep(c(0, 0, 7), times = 3)
rep(c(2, 4, 2), each = 3)
rep(c(0, 7), times = c(4, 2))
rep(1:3, length.out = 7)
#indexing
numbers<-30:1
numbers
numbers[5]
numbers[1:10]
numbers[c(1, 3, 5)]
indices <- c(2, 4, 6)
numbers[indices]
numbers[-3]#except the 3rd element #28 missing
numbers[-1]
numbers[-(1:20)]
#Changing values in a vector
numbers[1]<-51
numbers
numbers[c(1,3,5)]<-5 #replace first, three and five position by 5
numbers
#copy data
copy_data<-numbers
copy_data
numbers[1]<-91
copy_data
numbers
#Working with Logical Vectors
numbers>10
which(numbers > 25)
data<-25:27 #check with vector data
result <- numbers < data
result
numbers[result]
x <- c(3, 6, 1, NA, 2)
x[x > 2]
min.data <- numbers == min(data)
min.data
max.data <- numbers == max(data)
max.data
#combine
min.data | max.data
x[!is.na(x)]



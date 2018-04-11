data <- read.csv("F:/Rprogramming/Citi_R_04042018/data-marketing-budget-12mo.csv")
print(data)
print(is.data.frame(data))
print(ncol(data))
print(nrow(data))
# Get the max salary from data frame.
spend <- max(data$Spend)
print(spend)
retval <- subset( data, Month == 2)
print(retval)
info <- subset(data, Spend > 4000 & Month == 3)
print(info)
# row wise sum up of dataframe using apply function in R
#1 for rowwise
#2 for columnwise

apply(data,1,sum)
apply(data,2,sum)
# column wise mean of dataframe using apply function in R
apply(data,2,mean)
# lapply function divides the values in the dataframe by 2 and the
#output will be in form of list
lapply(data, function(data) data/2)
# sapply function divides the values in the dataframe by 2 and the
#output will be in form of vector
sapply(data, function(data) data/2)

# mapply (multivariate) function in R
#mapply sums up all the first elements(1+1+1) ,sums up all the
#second elements(2+2+2) and so on
mapply(sum, 1:4, 1:4, 1:4)
#Species is a factor with 3 values namely Setosa, 
#versicolor and virginica. 
#If we want to find the mean of sepal length of these 3 
#species(subsets). 
#F:\Program Files\R\R-3.4.3\library\gdata\xls
attach(iris)
# mean sepal length by species
tapply(iris$Sepal.Length, Species, mean)

#rapply function in R is nothing but recursive apply, 
#as the name suggests it is used to apply a 
#function to all elements of a list recursively.
# rapply function in R
x=list(1,2,3,4)
rapply(x,function(x){x^2},class=c("numeric"))
#vapply function in R is similar to sapply, 
#but has a pre-specified type of return value, 
#so it can be safer (and sometimes faster) to use.
# vapply function in R
vapply(1:5, sqrt, numeric(length = 1))
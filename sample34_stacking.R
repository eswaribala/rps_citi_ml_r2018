a <- data.frame(a=c(0,1,2), b=c(3,4,5), c=c(6,7,8))
a
b <- data.frame(a=c(9,10,11), c=c(12,13,14))
b
b$b <- NA #add missing column with NA
b
new <- rbind(a,b)
new


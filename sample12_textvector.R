org<-c("CITI","Corporation")
is.character(org)
length(org)
nchar(org)
letters
LETTERS
tail(LETTERS,5)
head(letters, 10)
#Looking at how named vectors work
str(islands)
islands[c("Asia", "Africa", "Antarctica")]
names(islands)[1:50]
names(sort(islands, decreasing = TRUE)[1:6])
#
#creating and assigning named vectors
month.days <- c(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31)
names(month.days) <- month.name
month.days
names(month.days[month.days == 31])

#rm(month.days)


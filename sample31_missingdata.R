x <- c(1:4, NA, 6:7, NA)
x
is.na(x)
df <- data.frame(col1 = c(1:3, ""),
                 col2 = c("this", NA,"is", "text"), 
                 col3 = c(TRUE, FALSE, TRUE, TRUE), 
                 col4 = c(2.5, 4.2, 3.2, NA),
                 stringsAsFactors = FALSE)


library(dplyr)
selectedData=select(df,col1)

for (i in 1:4)
{
  for(j in 1:1)
  {
    print(selectedData[i,j])
    len<-nchar(selectedData[i,j])
    if(len == 0)
    {
      print(99)
      selectedData[i,j]<-99
    }
  }
}
selectedData 
# 
# df
# is.na(df)
# is.na(df$col4)
# # identify location of NAs in vector
# which(is.na(x))
# # identify count of NAs in data frame
# sum(is.na(df))
# 
# #Recode missing values
# x <- c(1:4, NA, 6:7, NA)
# x
# x[is.na(x)] <- mean(x, na.rm = TRUE)
# round(x, 2)
# # data frame with missing data
# df <- data.frame(col1 = (1:3, NA),
#                  col2 = c("this", NA,"is", "text"),
#                  col3 = c(TRUE, FALSE, TRUE, TRUE),
#                  col4 = c(2.5, 4.2, 3.2, NA),
#                  stringsAsFactors = FALSE)
# df
# 
# df$col4[is.na(df$col4)] <- mean(df$col4, na.rm = TRUE)
# df

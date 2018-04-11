# mydf <- data.frame(col1 = LETTERS[1:3], col2 = 1:3, col3 = 4:6)
# mydf
# #   A B C
# # 1 A 1 4
# # 2 B 2 5
# # 3 C 3 6
# 
# library(reshape2)
# 
# mDF <- melt(mydf, id.vars="col1")
# mDF
# #dcast(mDF, A ~ variable, value.var="value")
# 


library(dplyr)
 pew <- read.delim(
   file = "F:/Rprogramming/Citi_R_04042018/pew.txt",
   header = TRUE,
   stringsAsFactors = FALSE,
   check.names = F
 )
result<-filter(pew,religion=="Hindu")
result
 
 
 
 library(reshape2)
 pew_tidy <- melt(
   data = result,
   id = "religion",
   variable.name = "income",
   value.name = "frequency"
 )
 pew_tidy

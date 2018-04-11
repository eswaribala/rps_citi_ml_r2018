data <- read.csv("F:/Rprogramming/Citi_R_04042018/data-marketing-budget-12mo.csv")

library(dplyr)#easy grammar for data manipulation
#select query
selectedData <- select(data,Spend, Sales)
head(selectedData,n=8L)#n to define head size
filter(data, Spend >= 4000)
filter(data, Spend >= 4000, Month >= 2)
#arrange or reorder rows -- order by
data %>% arrange(Spend) 

#arrange with 2 columns
arrange(data, Spend, desc(Sales))

#create new columns
data %>% 
  mutate(profit = Sales-Spend) 
#create summary
data %>% 
  summarise(avg_spend = mean(Spend))

#groupby
data %>% 
  group_by(Spend) %>%
  summarise(avg_spend= mean(Spend), 
            total = n())


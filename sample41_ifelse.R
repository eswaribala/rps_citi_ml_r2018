a = c(5,7,2,9)
ifelse(a %% 2 == 0,"even","odd")

#excluding missing values while calculating the mean
x <- c(1,2,NA,3)
mean(x) # returns NA
mean(x, na.rm=TRUE) # returns 2

attach(warpbreaks)
ave(breaks, wool)
ave(breaks, tension)
ave(breaks, tension, FUN = function(x) mean(x, trim =0.1 ))
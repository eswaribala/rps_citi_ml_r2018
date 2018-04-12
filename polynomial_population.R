Year <- c(1959, 1960, 1961, 1962, 1963, 1964, 1965, 1966, 1967, 1968, 1969)
Population <- c(4835, 4970, 5085, 5160, 5310, 5260, 5235, 5255, 5235, 5210, 5175)
sample1 <- data.frame(Year, Population)
sample1
sample1$Year <- sample1$Year - 1964
sample1
# type
# what type of plot should be drawn. Possible types are
# 
# "p" for points,
# 
# "l" for lines,
# 
# "b" for both,
# 
# "c" for the lines part alone of "b",
# 
# "o" for both ‘overplotted’,
# 
# "h" for ‘histogram’ like (or ‘high-density’) vertical lines,
# 
# "s" for stair steps,
# 
# "S" for other steps, see ‘Details’ below,
# 
# "n" for no plotting.
plot(sample1$Year, sample1$Population, type="p")
plot

# Fitting Linear Regression to the dataset
lin_reg = lm(formula = Year ~ .,
             data = sample1)

fit1 <- lm(sample1$Population ~ sample1$Year)
summary(fit1)
#fit2 <- lm(sample1$Population ~ sample1$Year + I(sample1$Year^2))
#fit3 <- lm(sample1$Population ~ sample1$Year + I(sample1$Year^2) + I(sample1$Year^3))
fit2b <- lm(sample1$Population ~ poly(sample1$Year, 2, raw=TRUE))
summary(fit2b)#it will b0,b1 and b2
fit3b <- lm(sample1$Population ~ poly(sample1$Year, 3, raw=TRUE))
summary(fit3b)#it will return b0,b1,b2 and b3
fit4b <- lm(sample1$Population ~ poly(sample1$Year, 4, raw=TRUE))
summary(fit4b)#it will return b0,b1,b2, b3 and b4
sample1$Year2 = sample1$Year^2
sample1$Year3 = sample1$Year^3
sample1$Year4 = sample1$Year^4
poly_reg = lm(formula = Year ~ .,
              data = sample1)
library(ggplot2)
ggplot() +
  geom_point(aes(x = sample1$Year, y = sample1$Population),
             colour = 'red') +
  #geom_line(aes(x = sample1$Year, y = predict(poly_reg, newdata = sample1)),
  #          colour = 'blue') +
  ggtitle('Truth or Bluff (Linear Regression)') +
  xlab('Year') +
  ylab('Population')


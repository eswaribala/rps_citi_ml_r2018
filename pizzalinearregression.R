# Simple Linear Regression

# Importing the dataset
x = c(6,8,10,14,18) #pizza diameter
x
y = c(7,9,13,17.5,18) #price in dollars
y
dataset=data.frame( "x" = x, "y" = y, stringsAsFactors = FALSE)
dataset
# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$y, SplitRatio = 2/3)
training_set = subset(dataset)
test_set = subset(dataset)
test_set
# Feature Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)

# Fitting Simple Linear Regression to the Training set
regressor = lm(formula = y ~ x,
               data = training_set)

# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)
y_pred

# summarize accuracy
mse <- sqrt((dataset$y - y_pred)^2)
print(mse)
# Visualising the Training set results
library(ggplot2)
ggplot() +
  geom_point(aes(x = training_set$x, y = training_set$y),
             colour = 'red') +
  geom_line(aes(x = training_set$x, y = predict(regressor, newdata = training_set)),
            colour = 'blue') +
  ggtitle('Size vs Price (Training set)') +
  xlab('Size') +
  ylab('Price')

# Visualising the Test set results
library(ggplot2)
ggplot() +
  geom_point(aes(x = test_set$x, y = test_set$y),
             colour = 'red') +
  geom_line(aes(x = training_set$x, y = predict(regressor, newdata = training_set)),
            colour = 'blue') +
  ggtitle('Size vs Price (Test set)') +
  xlab('Size') +
  ylab('Price')


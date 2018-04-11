# Multiple Linear Regression

# Importing the dataset
dataset = read.csv('G:/Local disk/MachineLearning/Data_Processing/Multiple_Linear_Regression/Multiple_Linear_Regression/50_Startups.csv')

# Encoding categorical data
dataset$State = factor(dataset$State,
                       levels = c('New York', 'California', 'Florida'),
                       labels = c(1, 2, 3))

# Splitting the dataset into the Training set and Test set
# install.packages('caTools')
library(caTools)
set.seed(123)
split = sample.split(dataset$Profit, SplitRatio = 0.8)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)

# Feature Scaling
# training_set = scale(training_set)
# test_set = scale(test_set)

# Fitting Multiple Linear Regression to the Training set
regressor = lm(formula = Profit ~ .,
               data = training_set)

# Predicting the Test set results
y_pred = predict(regressor, newdata = test_set)
y_pred


# Visualising the Training set results
library(ggplot2)
ggplot() +
  geom_point(aes(x = training_set$RandD, y = training_set$Profit),
             colour = 'red') +
  #geom_line(aes(x = training_set$Administration, y = predict(regressor, newdata = training_set)),
  #          colour = 'blue') +
  ggtitle('R&D vs Profit (Training set)') +
  xlab('R&D') +
  ylab('Profit')

# Visualising the Test set results
library(ggplot2)
ggplot() +
  geom_point(aes(x = test_set$RandD, y = test_set$Profit),
             colour = 'red') +
  #geom_line(aes(x = training_set$Administration, y = predict(regressor, newdata = training_set)),
  #          colour = 'blue') +
  ggtitle('R&D vs Profit (Training set)') +
  xlab('R&D') +
  ylab('Profit')


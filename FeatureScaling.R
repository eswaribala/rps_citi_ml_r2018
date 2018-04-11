# Age vector
age <- c(25, 35, 50)
# Salary vector
salary <- c(200000, 1200000, 2000000)
# Data frame created using age and salary
df <- data.frame( "Age" = age, "Salary" = salary, stringsAsFactors = FALSE)
df
#normalize the data or feature scale
#(X - min(X))/(max(X) - min(X)) -- min max normalization or Z-Score Standardization
normalize <- function(x) {
  return ((x - min(x)) / (max(x) - min(x)))
}
dfNorm <- as.data.frame(lapply(df, normalize))
dfNorm
# Note df[2]
dfNorm <- as.data.frame(lapply(df[2], normalize))
dfNorm
# Note df["Salary"]
dfNorm <- as.data.frame(lapply(df["Salary"], normalize))
dfNorm
#
#dfNormZ <- as.data.frame( scale(df[1:2] ))
#dfNormZ
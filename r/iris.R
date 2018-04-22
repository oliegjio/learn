# "header = FALSE" means that data set does not give you the attribute names of the data.
# iris <- read.csv("./data/iris.data", header = FALSE)
iris <- read.csv(url("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"), 
                 header = FALSE)

# Return first 5 lines of data.
head(iris)

# "c(...)" is a vector.
# Set column names.
names(iris) <- c("Sepal.Length", "Sepal.Width", "Petal.Length", "Petal.Width", "Species")

# Load plotting library.
library(ggvis)

# Plot a graph.
iris %>% ggvis(~Sepal.Length, ~Sepal.Width, fill = ~Species) %>% layer_points()

# Correlation between (in percents)...
cor(iris$Petal.Length, iris$Petal.Width)

# Return values of `iris` levels.
x = levels(iris$Species)

# Print Setosa correlation matrix.
print(x[1])
cor(iris[iris$Species == x[1], 1:4])

# Print Versicolor correlation matrix.
print(x[2])
cor(iris[iris$Species == x[2], 1:4])

# Print Virginica correlation matrix.
print(x[3])
cor(iris[iris$Species == x[3], 1:4])

# Return all `iris` data.
iris

# Return structure of `iris`.
# There "Factor" represents categorical variables.
str(iris)

# Division of species.
table(iris$Species)

# Percentual division of species.
round(prop.table(table(iris$Species)) * 100, digits = 1)

# Gives:
# 1. Minimum value.
# 2. First quantile.
# 3. Median.
# 4. Mean.
# 5. Third quantile.
# 6. Maximum value.
summary(iris)

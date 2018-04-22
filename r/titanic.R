train <- read.csv("./data/train.csv", header = T)
test <- read.csv("./data/test.csv", header = T)

# Adding 'survived' column to the table 'test' with all the values equal to 'None'.
test.survived <- data.frame(survived = rep("None", nrow(test)), test[,])

# Joins the table 'train' with the 'test.survived' table.
data.combined <- rbind(train, test.survived)

# Print information about 'data.combined' structure.
str(data.combined)

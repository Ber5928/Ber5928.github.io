# Assignment: ASSIGNMENT 9_2
# Name: Reppeto, Brian
# Date: 2023-07-31

## Set the working directory to the root of your DSC 520 directory
setwd("~/DSC520/Week 9")

library(readr)
library(caret)

## Load the `data`
data <- read.csv("binary-classifier-data.csv")

set.seed(42)  # For reproducibility
train_index <- createDataPartition(data$label, p = 0.8, list = FALSE)
train_data <- data[train_index, ]
test_data <- data[-train_index, ]

model <- glm(label ~ x + y, data = train_data, family = binomial)

summary(model)
predictions <- predict(model, newdata = test_data, type = "response")

print(predictions)

predicted_labels <- ifelse(predictions > 0.5, 1, 0)
accuracy <- mean(predicted_labels == test_data$label)

print(accuracy)
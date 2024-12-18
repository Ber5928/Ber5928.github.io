# Assignment: ASSIGNMENT 9
# Name: Reppeto, Brian
# Date: 2023-07-31

## Set the working directory to the root of your DSC 520 directory
setwd("~/DSC520/Week 9")

library(tidyverse)
library(foreign)

## Load the `data`
surgery_df <- read.arff("ThoraricSurgery.arff")
surgery <- as_tibble(surgery_df)
surgery <- surgery %>%
  rename(
    Diagnosis = DGN,
    FVC = PRE4,
    FEV1 = PRE5,
    Performance = PRE6,
    Pain = PRE7,
    Haemoptysis = PRE8,
    Dyspnoea = PRE9,
    Cough = PRE10,
    Weakness = PRE11,
    Tumor_size = PRE14,
    Diabetes_mellitus = PRE17,
    MI = PRE19,
    PAD = PRE25,
    Smoking = PRE30,
    Asthma = PRE32,
    Risk1Y = Risk1Yr  
  )

#surgery$Risk1Y <- factor(surgery$Risk1Y, levels = c("T", "F")) 

#survived_patients <- with(surgery, Risk1Y == "T")

model <-
  glm(
    Risk1Y ~ Diagnosis + FVC + FEV1 + Performance + Pain
    + Haemoptysis + Dyspnoea + Cough + Weakness + Tumor_size + Diabetes_mellitus
    + MI + PAD + Smoking + Asthma + AGE,
    data = surgery,
    family = binomial
  )

summary(model)


## DyspnoeaT, Tumor_sizeOC14, Diabetes_mellitusT, and SmokingT all had p-values
## less than 0.05 which indicated that they have the greatest effect on the 
## survival rate among the predictor variables included in the model.  


# Make predictions using the fitted model
predicted_probs <- predict(model, surgery, type = "response")

# Convert predicted prob to binary predictions (T or F) on a threshold (0.5)
predicted_outcomes <- ifelse(predicted_probs >= 0.5, "T", "F")

# Compare predicted outcomes with actual outcomes and calculate accuracy
correct_predictions <- sum(predicted_outcomes == surgery$Risk1Y)
total_predictions <- nrow(surgery)
accuracy <- correct_predictions / total_predictions * 100

# Print the accuracy
cat("Accuracy of the model:", accuracy, "%\n")


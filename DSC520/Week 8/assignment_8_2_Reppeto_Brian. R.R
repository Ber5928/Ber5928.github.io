# Assignment: ASSIGNMENT 8_2
# Name: Reppeto, Brian
# Date: 2023-07-27

## Load the ggplot2 package

library(tidyverse)
library(readxl)
library(ggplot2)
library(dplyr)
library(conflicted)
library(stats)
library(car)
library(lmtest)
library(corrplot)
library(lm.beta)
theme_set(theme_minimal())

## Set the working directory to the root of your DSC 520 directory
setwd("~/DSC520/Week 8")

## Load the `data` to
housing_df <- read_xlsx("week-6-housing.xlsx")


## 1.
housing <- na.omit(housing_df)
housing <-
  rename(housing_df, sale_price = `Sale Price`, sale_date = `Sale Date`)

housing <- mutate(housing, month = lubridate :: month (sale_date),
                  year = lubridate :: year (sale_date))

housing <- mutate(housing, sale_price_in_thous = sale_price / 1000)

# standardized the data to make easier to work with.
 
## 2. Create two variables; one that will contain the variables Sale Price and 
## Square Foot of Lot (same variables used from previous assignment on simple 
## regression) and one that will contain Sale Price and several additional 
## predictors of your choice. Explain the basis for your additional predictor 
## selections.

sale_price_sq_ft_df <- housing [,c("sale_price","sq_ft_lot")]
#head(sale_price_sq_ft_df)
housing_predictors_df <-
  housing[, c("sale_price","bedrooms",
              "bath_full_count",
              "year_built",
              "square_feet_total_living","sale_date")]
head(housing_predictors_df)

## these items were chosen as they can help understand the pricing of the homes



## 3. Execute a summary() function on two variables defined in the previous 
## step to compare the model results. What are the R2 and Adjusted R2 
## statistics? Explain what these results tell you about the overall model. 
## Did the inclusion of the additional predictors help explain any large 
## variations found in Sale Price?


model_1 <- lm(sale_price ~ sq_ft_lot, data = sale_price_sq_ft_df)
summary(model_1)

model_2 <-
  lm(
    sale_price ~ bedrooms + bath_full_count + year_built + 
    square_feet_total_living + sale_date,
    data = housing_predictors_df
  )
summary(model_2)


# Since model_2 has a higher r2 of 0.2219 than model_1 of 0.01435, I can
# conclude that the additional predictors did help.


## 4. Considering the parameters of the multiple regression model you have 
## created. What are the standardized betas for each parameter and what do the 
## values indicate?



standardized_betas_model_1 <- lm.beta(model_1)
print(standardized_betas_model_1)
# A positive value for sq_ft_lot indicates that an increase in the standard
# deviation of sq_ft_lot is associated with an increase in the stnd. deviation
# of sale_price
standardized_betas_model_2 <- lm.beta(model_2)
print(standardized_betas_model_2)

# A positive value for the other parameters indicates that an increase in the 
# standard deviation of the other parameters is associated with an increase 
# in the standard deviation of sale_price.  A negative number indicates the 
# a possible inverse relationship with sale_price.

## 5. Calculate the confidence intervals for the parameters in your model and 
## explain what the results indicate.


conf_intervals_model_1 <- confint(model_1)

conf_intervals_model_2 <- confint(model_2)

print(conf_intervals_model_1)
print(conf_intervals_model_2)

# Based on the results, we can conclude that there is a 97.5% confidence that 
# the true population value of the parameter lies somewhere between the %'s.
# Since the interval does not include zero, we can conclude that the parameter 
# is statistically significant.

## 6. Assess the improvement of the new model compared to your original model 
## (simple regression model) by testing whether this change is significant by 
## performing an analysis of variance.

anova_result <- anova(model_1, model_2)
print(anova_result)

## 7. Perform casewise diagnostics to identify outliers and/or influential 
## cases, storing each function's output in a dataframe assigned to a unique 
## variable name.

housing$residuals_mod1 <- resid(model_1)
housing$studentized.residuals_mod1 <- rstudent(model_1)
housing$standardized.residuals_mod1 <- rstandard(model_1)

housing$residuals_mod2 <- resid(model_2)
housing$studentized.residuals_mod2 <- rstudent(model_2)
housing$standardized.residuals_mod2 <- rstandard(model_2)
## Influential cases
housing$dffit_mod1 <- dffits(model_1)
housing$leverage_mod1 <- hatvalues(model_1)
housing$covariance.ratios_mod1 <- covratio(model_1)
housing$cooks.distance_mod1 <- cooks.distance(model_1)
housing$dfbeta_mod2 <- dfbeta(model_1)
housing$dffit_mod1 <- dffits(model_1)

housing$leverage_mod2 <- hatvalues(model_2)
housing$covariance.ratios_mod2 <- covratio(model_2)
housing$cooks.distance_mod2 <- cooks.distance(model_2)
housing$dfbeta_mod2 <- dfbeta(model_2)
summary(housing)



## 8. Calculate the standardized residuals using the appropriate command, 
## specifying those that are +-2, storing the results of large residuals in 
## a variable you create.

standardized_residuals <- rstandard(model_2)

large_residuals <- abs(standardized_residuals) >= 2

data_points_with_large_residuals <- housing_predictors_df[large_residuals, ]

print(data_points_with_large_residuals)


## 9. Use the appropriate function to show the sum of large residuals.

sum_large_residuals <- sum(large_residuals)
print(sum_large_residuals)
## 10. Which specific variables have large residuals (only cases that evaluate 
## as TRUE)?
print(data_points_with_large_residuals[, c(
  "bedrooms",
  "bath_full_count",
  "year_built",
  "square_feet_total_living",
  "sale_date"
)])

## 11. Investigate further by calculating the leverage, cooks distance, and 
## covariance rations. Comment on all cases that are problematics.
# Load necessary libraries (if not already loaded)



leverage <- hatvalues(model_2)


cooks_distance <- cooks.distance(model_2)


cov_ratios <- covratio(model_2)


diagnostics_df <- data.frame(Leverage = leverage,
                             Cooks_Distance = cooks_distance,
                             covariance_ratio = cov_ratios)

print(diagnostics_df)



## 12. Perform the necessary calculations to assess the assumption of 
## independence and state if the condition is met or not.

standardized_residuals <- rstandard(model_2)


plot(model_2$fitted.values, standardized_residuals,
     main = "Standardized Residuals vs. Fitted Values",
     xlab = "Fitted Values",
     ylab = "Standardized Residuals")


## 13. Perform the necessary calculations to assess the assumption of no 
## multicollinearity and state if the condition is met or not.

vif_values <- vif(model_2)


print(vif_values)

# Overall, the VIF values for the predictor variables in the model are 
# relatively low, and none of them exceed a value of 5. This indicates that 
# there is no significant multicollinearity among the predictors in the model. 
# The VIF values being close to 1 for most variables suggest that the 
# predictors have little correlation with other predictors, supporting the 
# assumption of no multicollinearity in the model.

## 14. Visually check the assumptions related to the residuals using the 
## plot() and hist() functions. Summarize what each graph is informing you of 
## and if any anomalies are present.

hist(standardized_residuals,
     main = "Histogram of Standardized Residuals",
     xlab = "Standardized Residuals")


qqnorm(standardized_residuals)
qqline(standardized_residuals)


hist(resid(model_2),
     main = "Histogram of Residuals",
     xlab = "Residuals")

## 15. Overall, is this regression model unbiased? If an unbiased regression 
## model, what does this tell us about the sample vs. the entire population 
## model?

# Overall, the Model_2 appears to be unbiased. The unbiased regression model 
# provides estimates of the population parameters based on the sampled data.
# However, the model validity depends on the quality of the sample and the 
# assumptions of the model. 

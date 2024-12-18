# Assignment: ASSIGNMENT 4_1
# Name: Reppeto, Brian
# Date: 2023-06-27

library(tidyverse)
library(readxl)
library(ggplot2)
library(dplyr)
library(conflicted)
#library(plyr)
theme_set(theme_minimal())

## Set the working directory to the root of your DSC 520 directory
setwd("~/DSC520/Week_4")

## Load the `data` to
scores_df <- read.csv("scores.csv")

head(scores_df)

## 1. The observational units are the students in the two sections
## 2. Section Type (Categorical),Course Grades (Categorical), total 
##    Points Earned (Quantitative)

regular_section <- subset(scores_df, Section == "Regular", select=Count:Section)
sports_section <- subset(scores_df, Section == "Sports",select=Count:Section)

#head (regular_section)
#head (sports_section)
#table (scores_df['Section'])

ttl_reg_score <- sum(regular_section$Score)
ttl_sport_score <- sum(sports_section$Score)

ttl_reg_count <- sum(regular_section$Count)
ttl_sport_count <- sum(sports_section$Count)

avg_reg_score <- mean(regular_section$Score)
avg_sport_score <- mean(sports_section$Score)

med_reg_score <- median(regular_section$Score)
med_sport_score <- median(sports_section$Score)

sd_reg_score <- sd(regular_section$Score)
sd_sport_score <- sd(sports_section$Score)

iqr_reg_score <- IQR(regular_section$Score)
iqr_sport_score <- IQR(sports_section$Score)

avg_reg_count <- mean(regular_section$Count)
avg_sport_count <- mean(sports_section$Count)

ttl_reg_score
ttl_sport_score

ttl_reg_count
ttl_sport_count

avg_reg_score
avg_sport_score

avg_reg_count
avg_sport_count

med_reg_score
med_sport_score

sd_reg_score
sd_sport_score

iqr_reg_score
iqr_sport_score


ggplot(regular_section, aes(x = Score, y = Count)) +
  geom_bar(stat ="identity", fill ="blue", color = "black") +
  ylim(0,50)+
  labs(title = "Regular Section Scores",
       x = "Score",
       y = "Count")

# Plot for Sports Section
ggplot(sports_section, aes(x = Score, y = Count)) +
  geom_bar(stat ="identity", fill ="lightblue", color = "black") +
  ylim(0,50)+
  labs(title = "Sports Section Scores",
       x = "Score",
       y = "Count")

## We cannot definitively say that one section tended to score more points than 
## the other just by looking at the plots.  The avg scores for each are below.
## The avg_reg_score is 327.6316 which is just slightly larger than the 
## avg_sport_score which is 307.3684.  The difference in avg scores is 
## insignificant and does not determine if one is better than the other.


## No, based on the plots, we can see that there is some overlap in scores 
## between the two sections.  
## Statistical tendency means that on average, one section might have higher 
## scores than the other, but individual variations exist.


## The students' prior knowledge or interest in sports could be an additional 
## variable influencing the scores.
## If one section had more sports enthusiasts or students with prior 
## knowledge in sports-related applications, they might perform better in the 
## sports-themed section.

# Assignment: ASSIGNMENT 3.1
# Name: Reppeto, Brian
# Date: 2023-06-20

## Load the ggplot2 package
library(ggplot2)
library(psych)
library(pastecs)
theme_set(theme_minimal())

## Set the working directory to the root of your DSC 520 directory
setwd("~/DSC520/Week 3")

## Load the `` to
acs_df <- read.csv("acs-14-1yr-s0201.csv")

## 1.  The data elements are .............................

#$ Id                    : chr  
#$ Id2                   : int  
#$ Geography             : chr  
#$ PopGroupID            : int  
#$ POPGROUP.display.label: chr  
#$ RacesReported         : int  
#$ HSDegree              : num  
#$ BachDegree            : num


## 2.Please provide the output from the following functions: 
##str(); nrow(); ncol()

str(acs_df)
nrow(acs_df)
ncol(acs_df)

## 3.Create a Histogram of the HSDegree variable using the ggplot2 package.
##Set a bin size for the Histogram.
##Include a Title and appropriate X/Y axis labels on your Histogram Plot.


ggplot(acs_df, aes(x = HSDegree)) +
  geom_histogram(aes(y = ..density..) ,binwidth = 1, color = "black"
  , fill = "lightblue") +
  stat_function(fun = dnorm, args = list(mean = mean(acs_df$HSDegree, 
  na.rm =  TRUE), sd = sd(acs_df$HSDegree, na.rm =TRUE)),
  color = "red", size = 1) +
  labs(title = "Histogram of HSDegree with Normal Curve"
  , x = "HSDegree", y = "Frequency")




## 4.Answer the following questions based on the Histogram produced:
##    1. Based on what you see in this histogram, is the data 
##        distribution unimodal? ----  Yes the distribution is unimodal.
##    2. Is it approximately symmetrical? --- No
##    3. Is it approximately bell-shaped? ----No
##    4. Is it approximately normal?-----No
##    5. If not normal, is the distribution skewed? If so, in which direction?
##    -----Left-skewed unimodal
##    6. Include a normal curve to the Histogram that you plotted.----Done  
##    7. Explain whether a normal distribution can accurately be used as a model
##        for this data.-- T




## 5. Create a Probability Plot of the HSDegree variable

ggplot(acs_df, aes(sample = HSDegree)) + stat_qq() + stat_qq_line(color="green")


## 6.Answer the following questions based on the Probability Plot:
##    1.Based on what you see in this probability plot, is the distribution 
##      approximately normal? Explain how you know.--------The distribution is 
##      not normal.  This is based on a normal line test.
##    2.If not normal, is the distribution skewed? If so, in which direction? 
##      Explain how you know.-------------The plot is left skewed.




## 7. Now that you have looked at this data visually for normality, you will 
##    now quantify normality with numbers using the stat.desc() function. 
##    Include a screen capture of the results produced.

describe(acs_df$HSDegree)

stat.desc(acs_df$HSDegree, basic =TRUE, norm = FALSE)

## 8. In several sentences provide an explanation of the result produced for 
##    skew, kurtosis, and z-scores. In addition, explain how a change in the 
##    sample size may change your explanation?

## Skewness, kurtosis, and z-scores are statistical measures used to analyze the 
## distribution of a dataset. Skewness measures the asymmetry of the data 
## distribution, where positive skewness indicates a longer tail on the 
## right side, negative skewness indicates a longer tail on the left side, 
## and zero skewness represents a symmetric distribution. Kurtosis measures 
## the "tailedness" of the distribution, where positive kurtosis indicates 
## heavier tails and a sharper peak, negative kurtosis indicates lighter tails 
## and a flatter peak, and zero kurtosis represents a normal distribution. 
## Z-scores are a standardized measure that expresses a data point's 
## deviation from the mean in terms of standard deviations.  Since the kurtosis
## is greater than 3 this indicates the leptokurtic has lang and skinny tails
## this means there are more chances of outliers.  Additionally, the negative
## skew indicates the data points are more concentrated towards the right
## side of the distribution, and makes the mean bend more toward the right also.
## A change in the sample size can affect the interpretation of these measures. 
## Skewness and kurtosis are influenced by extreme values, and as the sample 
## size increases, the impact of outliers or extreme values tends to diminish. 
##  Therefore, larger sample sizes may result in more accurate estimates of 
## skewness and kurtosis, providing a better representation of the underlying 
## population. On the other hand, z-scores are not directly affected by sample 
## size since they are calculated based on the mean and standard deviation. 
## However, a larger sample size can provide more reliable estimates of the 
## mean and standard deviation, leading to more precise z-scores.



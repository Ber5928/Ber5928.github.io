# Assignment: ASSIGNMENT 4
# Name: Reppeto, Brian
# Date: 2023-06-27

## Load the ggplot2 package

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
housing_df <- read_xlsx("week-6-housing.xlsx")

#housing_df %>% rename("Sale_Price" = "Sale Price")

#sum_by_day <-apply(housing_df$'Sale Price',housing_df$'Sale Date',sum)


## 1.
ttl_house_prices <- apply(housing_df[c('Sale Price')], 2, sum)

print (ttl_house_prices)

## 2.
ttl_sales_by_zip <- aggregate(`Sale Price` ~  zip5, data = housing_df, mean)

print (ttl_sales_by_zip)

## 3.

housing <-
  rename(housing_df, sale_price = `Sale Price`, sale_date = `Sale Date`)

housing <- mutate(housing, month = lubridate :: month (sale_date),
                          year = lubridate :: year (sale_date))

sales_year <- aggregate(sale_price ~ year, data = housing, sum)

housing <- mutate(housing, sale_price_in_thous = sale_price / 1000)

print(sales_year)

## 4
ggplot(housing, aes(x = sale_price_in_thous)) +
  geom_histogram(fill = "lightblue", bins = 30) +
  labs(title = "Distribution of Sale Price in thousands")

## 5.
## There are outliers in the data for the sale_price variable as shown in the
## graph above.

## 6.
housing <- mutate(housing, price_per_sf =  sale_price/square_feet_total_living)

housing <- mutate(housing, commision = .06)

housing <-
  mutate(housing, net_sales_price = (sale_price - (sale_price * commision)))
                  
#head(select(housing,price_per_sf))                  

#head(select(housing, net_sales_price, commision, sale_price_in_thous))

##view(housing)
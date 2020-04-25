
# Your solution code goes here
## What is the popular times of travel in 
## New York
## Washington
## chicago
newyork = read.csv('new_york_city.csv')
wash = read.csv('washington.csv')
chi = read.csv('chicago.csv')

## installatin of lubridate package
library(tidyverse)
library(lubridate)

## New York City
## 1.  the most common month of travel

d.month <- ymd_hms(newyork$Start.Time)
Most.Often.Month <- table(month(d.month))
Most.Often.Month.df <- as.data.frame(Most.Often.Month)
names(Most.Often.Month.df) <- c("month", "count")
Most.Often.Month.df

## visual representation 

ggplot(Most.Often.Month.df, aes(x= month, y = count, group = 1)) +
  geom_line(state = "identity")+
  labs(title = "this plot represents months of travel")



## Washington
## the most common month of travel
datetime <- ymd_hms(wash$Start.Time)
Most.Often.Month <- table(month(datetime))
Most.Often.Month.df <- as.data.frame(Most.Often.Month)
names(Most.Often.Month.df) <- c("month", "count")
Most.Often.Month.df

## visual representation 

ggplot(Most.Often.Month.df, aes(x= month, y = count, group = 1)) +
  geom_line(state = "identity")+
  labs(title = "this plot represents months of travel")

## Chicago city
## the most common month of travel
datetime <- ymd_hms(chi$Start.Time)
Most.Often.Month <- table(month(datetime))
Most.Often.Month.df <- as.data.frame(Most.Often.Month)
names(Most.Often.Month.df) <- c("month", "count")
Most.Often.Month.df

## visual representation 

ggplot(Most.Often.Month.df, aes(x= month, y = count, group = 1)) +
  geom_line(state = "identity")+
  labs(title = "this plot represents months of travel")


## what is the most common day of week to travel?

##New York city
## most common day of week?

datetime <- ymd_hms(newyork$Start.Time)
Most.Often.Day <- table(wday(datetime, abbr = FALSE))
Most.Often.Day.df <- as.data.frame(Most.Often.Day)
names(Most.Often.Day.df) <- c("Week_days", "count")
Most.Often.Day.df 



## visual representation of data

ggplot(Most.Often.Day.df, aes(x= Week_days, y = count, group = 1)) +
  geom_line(state = "identity")+
  labs(title = "this plot represents week days of travel")


## Washington city
## most common day of week?

datetime <- ymd_hms(wash$Start.Time)
Most.Often.Day <- table(wday(datetime, abbr = FALSE))
Most.Often.Day.df <- as.data.frame(Most.Often.Day)
names(Most.Often.Day.df) <- c("Week_days", "count")
Most.Often.Day.df 
## visual representation of data

ggplot(Most.Often.Day.df, aes(x= Week_days, y = count, group = 1)) +
  geom_line(state = "identity")+
  labs(title = "this plot represents week days of travel")


## Chicago
## most common day of week?
datetime <- ymd_hms(chi$Start.Time)
Most.Often.Day <- table(wday(datetime, abbr = FALSE))
Most.Often.Day.df <- as.data.frame(Most.Often.Day)
names(Most.Often.Day.df) <- c("Week_days", "count")
Most.Often.Day.df 

## visual representation of data

ggplot(Most.Often.Day.df, aes(x= Week_days, y = count, group = 1)) +
  geom_line(state = "identity")+
  labs(title = "this plot represents week days of travel")

## New York City

## most common hour of the day to travel

datetime <- ymd_hms(newyork$Start.Time)
Most.Often.hour <- table(hour(datetime))
Most.Often.hour.df <- as.data.frame(Most.Often.hour)
names(Most.Often.hour.df) <- c("Hours_of_day", "count")
Most.Often.hour.df


##visualization
ggplot(Most.Often.hour.df, aes(x= Hours_of_day, y = count, group = 1)) +
  geom_line(state = "identity")


## Washington City

## Washington City
datetime <- ymd_hms(wash$Start.Time)
Most.Often.hour <- table(hour(datetime))
Most.Often.hour.df <- as.data.frame(Most.Often.hour)
names(Most.Often.hour.df) <- c("Hours_of_day", "count")
Most.Often.hour.df


##visualization
ggplot(Most.Often.hour.df, aes(x= Hours_of_day, y = count, group = 1)) +
  geom_line(state = "identity") +
  labs(title = "this plot represent hours of the day")



## Chicago City
datetime <- ymd_hms(chi$Start.Time)
Most.Often.hour <- table(hour(datetime))
Most.Often.hour.df <- as.data.frame(Most.Often.hour)
names(Most.Often.hour.df) <- c("Hours_of_day", "count")
Most.Often.hour.df
##visualization
ggplot(Most.Often.hour.df, aes(x= Hours_of_day, y = count, group = 1)) +
  geom_line(state = "identity") +
  geom_point() +
  labs(title = "this plot represent hours of the day")


# Your solution code goes here

##New York
start_station_tb <- table(newyork$Start.Station)
start_station_tb[which.max(start_station_tb)]


## Washington
start_station_tb <- table(wash$Start.Station)
start_station_tb[which.max(start_station_tb)]


## Chicago
start_station_tb <- table(chi$Start.Station)
start_station_tb[which.max(start_station_tb)]



## Newyork
End_station_tb <- table(newyork$End.Station)
End_station_tb[which.max(End_station_tb)]


## Washington
End_station_tb <- table(wash$End.Station)
End_station_tb[which.max(End_station_tb)]


## Chicago
End_station_tb <- table(chi$End.Station)
End_station_tb[which.max(End_station_tb)]


# Your solution code goes 
library(dplyr)
newyork %>%
group_by(User.Type) %>%
summarise(Total.Travel.Time = sum(Trip.Duration))


## sum of travel time for all users
total.travel.time <- sum(newyork[,'Trip.Duration'], na.rm = TRUE)
print(total.travel.time)


# Your solution code goes 
library(dplyr)
wash %>%
group_by(User.Type) %>%
summarise(Total.Travel.Time = sum(Trip.Duration))


## sum of travel time for all users 
total.travel.time <- sum(wash[,'Trip.Duration'], na.rm = TRUE)
print(total.travel.time)


# Your solution code goes 
library(dplyr)
chi %>%
group_by(User.Type) %>%
summarise(Total.Travel.Time = sum(Trip.Duration))


## sum of travel time for all users 
total.travel.time <- sum(chi[,'Trip.Duration'], na.rm = TRUE)
print(total.travel.time)



library(tidyverse)
newyork %>%
group_by(User.Type) %>%
summarise(average = mean(Trip.Duration))


## Average of travel time for all users
average.travel.time <-mean(newyork[,'Trip.Duration'], na.rm = TRUE)
average.travel.time

library(tidyverse)
wash %>%
group_by(User.Type) %>%
summarise(average = mean(Trip.Duration))


## Average of travel time for all users
average.travel.time <-mean(wash[,'Trip.Duration'], na.rm = TRUE)
average.travel.time

library(tidyverse)
chi %>%
group_by(User.Type) %>%
summarise(average = mean(Trip.Duration))


## Average of travel time for all users
average.travel.time <-mean(chi[,'Trip.Duration'], na.rm = TRUE)
average.travel.time


## count of user type
user_count <- table(newyork$User.Type)
user_count_dframe = as.data.frame(user_count)
names(user_count_dframe) = c("user_type", "count")
user_count_dframe

## visual representation of count of each user

library(ggplot2)
ggplot(data = user_count_dframe, aes(x=user_type,
                                                  y = count)) +
  geom_bar(stat = "identity", width = 0.5, fill = "steelblue", color = "black") +
  labs(title = "Plot represents count of each user type") +
  geom_text(aes(label=count), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)



##Count of user type in Washiton city

user_w_count <- table(wash$User.Type)
user_w_dframe <- as.data.frame(user_w_count)
names(user_w_dframe) = c("user_type", "count")
user_w_dframe


## visual representation of count of user type in Washington
library(ggplot2)
ggplot(data = user_w_dframe, aes(x=user_type,
                                     y = count)) +
  geom_bar(stat = "identity", width = 0.5, fill = "orchid", color = "black") +
  labs(title = "Plot represents count of each user type") +
  geom_text(aes(label=count), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)



user_chi_count <- table(chi$User.Type)
user_chi_dframe <- as.data.frame(user_chi_count)
names(user_chi_dframe) <- c("user_type", "count")
user_chi_dframe


## visual representation of count of user type in Chicago city
library(ggplot2)
ggplot(data = user_chi_dframe, aes(x=user_type,
                                 y = count)) +
  geom_bar(stat = "identity", width = 0.5, fill = "chocolate2", color = "black") +
  labs(title = "Plot represents count of each user type") +
  geom_text(aes(label=count), vjust=1.6, color="black",
            position = position_dodge(0.9), size=3.5)


## counts of each gender type
gender_count_ny <- table(newyork$Gender)
gender_count_dframe <- as.data.frame(gender_count_ny)
names(gender_count_dframe) <- c("gender_type", "count")
gender_count_dframe


## visual representation of count of gender in New York
library(ggplot2)
ggplot(data = gender_count_dframe, aes(x=gender_type,
                                   y = count)) +
  geom_bar(stat = "identity", width = 0.5, fill = "peachpuff", color = "black") +
  labs(title = "Plot represents count of each user type") +
  geom_text(aes(label=count), hjust=1.3, color="black") +
  coord_flip()


# counts of each gender type
gender_chi_count <- table(chi$Gender)
gender_count_chi_dframe <- as.data.frame(gender_chi_count)
names(gender_count_chi_dframe) <- c("gender_type", "count")
gender_count_chi_dframe

# visual representation of count of gender in Chicago
library(ggplot2)
ggplot(data = gender_count_dframe, aes(x=gender_type,
                                   y = count)) +
  geom_bar(stat = "identity", width = 0.5, fill = "darkslategray3", color = "black") +
  labs(title = "Plot represents count of each user type") +
  geom_text(aes(label=count), hjust=1.3, color="black") +
  coord_flip()




##What are the earliest, most recent, most common year of birth(only availabe for NYC and Chicago)

library(dplyr)
## New York city
## the most earliest and most recent year of birth
summary(newyork$Birth.Year)

## the most common year of birth
birth_year_dframe <- as.data.frame(table(newyork$Birth.Year))
names(birth_year_dframe) <- c("Birth_year", "count")

ggplot(birth_year_dframe, aes(x = Birth_year, y = count, group = 1)) +
  geom_line(stat = "identity", position = "identity") +
  scale_x_discrete(breaks = c(1885,1940,1952,1976,1989,2001)) +
  labs(title = "This plot represents count of birth years(1885-2001)")


## Chicago city
## the most earliest and most recent year of birth

summary(chi$Birth.Year)

## the most common year of birth
birth_year_dframe_chi <- as.data.frame(table(chi$Birth.Year))
names(birth_year_dframe_chi) <- c("Birth_year", "count")


ggplot(birth_year_dframe_chi, aes(x = Birth_year, y = count, group = 1)) +
  geom_line(stat = "identity", position = "identity") +
  scale_x_discrete(breaks = c(1899,1940,1952,1976,1989,2016)) +
  labs(title = "This plot represents count of birth years(1889-2016)")




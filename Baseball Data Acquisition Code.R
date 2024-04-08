## Acquiring Baseball Data for Braves 2023 Season ##

## March 30 - Day 1 ##

## Week 1 - March 30 - April 8 ##

library(tidyverse)

#install.packages('baseballr')

library(baseballr)

wk1 <- bref_daily_batter("2023-03-30","2023-04-08") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 1")

## Week 2 - April 9 - April 15 ##

wk2 <- bref_daily_batter("2023-04-09","2023-04-15") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 2")

## Week 3 - April 16 - April 22 ##

wk3 <- bref_daily_batter("2023-04-16","2023-04-22") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 3")


## Week 4 - April 23 - April 29 ##

wk4 <- bref_daily_batter("2023-04-23","2023-04-29") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 4")

## Week 5 - April 30 - May 06 ##

wk5 <- bref_daily_batter("2023-04-30","2023-05-06") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 5")

## Week 6 - May 07 - May 13 ##

wk6 <- bref_daily_batter("2023-05-07","2023-05-13") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 6")

## Week 7 - May 14 - May 20 ##

wk7 <- bref_daily_batter("2023-05-14","2023-05-20") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 7")

## Week 8 - May 21 - May 27 ##

wk8 <- bref_daily_batter("2023-05-21","2023-05-27") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 8")

## Week 9 - May 28 - June 3 ##

wk9 <- bref_daily_batter("2023-05-28","2023-06-03") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 9")

## Week 10 - June 04 - June 10 ##

wk10 <- bref_daily_batter("2023-06-04","2023-06-10") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 10")

## Week 11 - June 11 - June 17 ##

wk11 <- bref_daily_batter("2023-06-11","2023-06-17") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 11")

## Week 12 - June 18 - June 24 ##

wk12 <- bref_daily_batter("2023-06-08","2023-06-27") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 12")

## Week 13 - June 25 - July 01 ##

wk13 <- bref_daily_batter("2023-06-25","2023-07-01") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 13")

## Week 14 - July 02 - July 08 ##

wk14 <- bref_daily_batter("2023-07-02","2023-07-08") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 14")

## Week 15 - July 09 - July 15 ##

wk15 <- bref_daily_batter("2023-07-09","2023-07-15") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 15")

## Week 16 - July 16 - July 22 ##

wk16 <- bref_daily_batter("2023-07-16","2023-07-22") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 16")

## Week 17 - July 23 - July 29 ##

wk17 <- bref_daily_batter("2023-07-23","2023-07-29") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 17")

## Week 18 - July 30 - Aug 05 ##

wk18 <- bref_daily_batter("2023-07-30","2023-08-05") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 18")

## Week 19 - Aug 06 - Aug 12 ##

wk19 <- bref_daily_batter("2023-08-06","2023-08-12") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 19")

## Week 20 - Aug 13 - Aug 19 ##

wk20 <- bref_daily_batter("2023-08-13","2023-08-19") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 20")

## Week 21 - Aug 20 - Aug 26 ##

wk21 <- bref_daily_batter("2023-08-21","2023-08-26") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 21")

## Week 22 - Aug 27 - Sep 02 ##

wk22 <- bref_daily_batter("2023-08-27","2023-09-02") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 22")

## Week 23 - Sep 03 - Sep 09 ##

wk23 <- bref_daily_batter("2023-09-03","2023-09-09") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 23")

## Week 24 - Sep 10 - Sep 16 ##

wk24 <- bref_daily_batter("2023-09-10","2023-09-16") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 24")

## Week 25 - Sep 17 - Sep 23 ##

wk25 <- bref_daily_batter("2023-09-17","2023-09-23") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 25")

## Week 26 - Sep 24 - Sep 30 ##

wk26 <- bref_daily_batter("2023-09-24","2023-09-30") |>
  filter(Team == "Atlanta") |>
  mutate(Week = "Week 26")


################# Combined data for wk1 to wk26 #############
library(dplyr)
# Combine all the data into one dataset
BB0330to1001 <- bind_rows(
  wk1 %>% mutate(Week = "Week 1"),
  wk2 %>% mutate(Week = "Week 2"),
  wk3 %>% mutate(Week = "Week 3"),
  wk4 %>% mutate(Week = "Week 4"),
  wk5 %>% mutate(Week = "Week 5"),
  wk6 %>% mutate(Week = "Week 6"),
  wk7 %>% mutate(Week = "Week 7"),
  wk8 %>% mutate(Week = "Week 8"),
  wk9 %>% mutate(Week = "Week 9"),
  wk10 %>% mutate(Week = "Week 10"),
  wk11 %>% mutate(Week = "Week 11"),
  wk12 %>% mutate(Week = "Week 12"),
  wk13 %>% mutate(Week = "Week 13"),
  wk14 %>% mutate(Week = "Week 14"),
  wk15 %>% mutate(Week = "Week 15"),
  wk16 %>% mutate(Week = "Week 16"),
  wk17 %>% mutate(Week = "Week 17"),
  wk18 %>% mutate(Week = "Week 18"),
  wk19 %>% mutate(Week = "Week 19"),
  wk20 %>% mutate(Week = "Week 20"),
  wk21 %>% mutate(Week = "Week 21"),
  wk22 %>% mutate(Week = "Week 22"),
  wk23 %>% mutate(Week = "Week 23"),
  wk24 %>% mutate(Week = "Week 24"),
  wk25 %>% mutate(Week = "Week 25"),
  wk26 %>% mutate(Week = "Week 26")
)

# View the structure of the combined dataset
str(BB0330to1001)

# View the first few rows of the combined dataset
head(BB0330to1001)

############ Descriptive of Players for the 26 wks #############
library(dplyr)

# Calculate the frequency of bbref_id
bbref_id_frequency <- BB0330to1001 %>%
  count(bbref_id)  # can also use varaible "Name" for the actual name

# View the frequency of bbref_id
print(bbref_id_frequency)

# Note: Austin Riley, Eddie Rosario, Marcell Ozuna, Matt Olson, Ronald Acuna Jr., Sean Murphy #
# appears in all the 26 weeks, so I decided to keep them in the subset. #


##################   Subsetting for players with 26 wks appreance  ###########

# Subset the dataset
sixplayers <- BB0330to1001 %>%
  filter(bbref_id %in% bbref_id_frequency$bbref_id[bbref_id_frequency$n == 26]) %>%
  select(bbref_id, Name, H, Week)

# View the subsetted dataset
print(sixplayers)

# Summarize H by Week for each Name
H_per_week <- sixplayers %>%
  group_by(Name, Week) %>%
  summarize(total_H = sum(H))

# View the summarized data
print(H_per_week)

######### Calculate descriptive statistics of total_H by Name #######################
H_per_week_summary_by_name <- H_per_week %>%
  group_by(Name) %>%
  summarise(
    mean_total_H = mean(total_H),
    median_total_H = median(total_H),
    min_total_H = min(total_H),
    max_total_H = max(total_H),
    sd_total_H = sd(total_H)
  )

# View the descriptive statistics
print(H_per_week_summary_by_name)





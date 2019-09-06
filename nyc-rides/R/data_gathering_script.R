## SETUP

library(tidyverse)
library(sf)

## Locate Data
uber_raw_data_april14_url <- "https://github.com/fivethirtyeight/uber-tlc-foil-response/raw/master/uber-trip-data/uber-raw-data-apr14.csv"

uber_raw_data_may14_url <-
  "https://github.com/fivethirtyeight/uber-tlc-foil-response/raw/master/uber-trip-data/uber-raw-data-may14.csv"

uber_raw_data_jun14_url <-
  "https://github.com/fivethirtyeight/uber-tlc-foil-response/raw/master/uber-trip-data/uber-raw-data-jun14.csv"

uber_raw_data_jul14_url <-
  "https://github.com/fivethirtyeight/uber-tlc-foil-response/raw/master/uber-trip-data/uber-raw-data-jul14.csv"

uber_raw_data_aug14_url <-
  "https://github.com/fivethirtyeight/uber-tlc-foil-response/raw/master/uber-trip-data/uber-raw-data-aug14.csv"

uber_raw_data_sept14_url <-
  "https://github.com/fivethirtyeight/uber-tlc-foil-response/raw/master/uber-trip-data/uber-raw-data-sep14.csv"

## LOAD DATA

uber_trip_data <- 
  rbind(
    read_csv(file = uber_raw_data_april14_url, progress = TRUE),
    read_csv(file = uber_raw_data_may14_url, progress = TRUE),
    read_csv(file = uber_raw_data_jun14_url, progress = TRUE),
    read_csv(file = uber_raw_data_jul14_url, progress = TRUE),
    read_csv(file = uber_raw_data_aug14_url, progress = TRUE),
    read_csv(file = uber_raw_data_sept14_url, progress = TRUE)
  )
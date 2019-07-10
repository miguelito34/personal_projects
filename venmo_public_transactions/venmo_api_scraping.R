## Setup

library(tidyverse)
library(lubridate)
library(RJSONIO)
library(jsonlite)

load("/Users/michaelspencer/data_projects/personal_projects/venmo_public_transactions/data/all_transactions.rdata")

new_transaction_data <- 
  fromJSON(txt = "https://venmo.com/api/v5/public", flatten = TRUE)$data

transaction_data <- 
  rbind(transaction_data, new_transaction_data) %>% 
  distinct(story_id, .keep_all = TRUE)

save(
  transaction_data, 
  file = "/Users/michaelspencer/data_projects/personal_projects/venmo_public_transactions/data/all_transactions.rdata"
)

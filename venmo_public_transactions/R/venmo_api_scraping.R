## Setup

library(tidyverse, quietly = TRUE, warn.conflicts = FALSE)
library(RJSONIO, quietly = TRUE, warn.conflicts = FALSE)
library(jsonlite, quietly = TRUE, warn.conflicts = FALSE)

paste("The current time is: ", Sys.time())

load("/Users/michaelspencer/data_projects/personal_projects/venmo_public_transactions/data/all_transactions.rdata")

new_transaction_data <- 
  fromJSON(txt = "https://venmo.com/api/v5/public", flatten = TRUE)$data

transaction_data <- 
  rbind(transaction_data, new_transaction_data) %>% 
  distinct(story_id, .keep_all = TRUE) %>% 
  arrange(payment_id)

save(
  transaction_data, 
  file = "/Users/michaelspencer/data_projects/personal_projects/venmo_public_transactions/data/all_transactions.rdata"
)

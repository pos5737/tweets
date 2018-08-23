
# load packages
library(tidyverse)
library(rtweet)

# get most recent 3200 tweets posted by Donald Trump's account
djt_df_raw <- get_timeline("realDonaldTrump", n = 3200) 

djt_df <- djt_df_raw %>%
  mutate_if(is.list, paste0) %>%
  glimpse() %>%
  write_csv("trump-tweets.csv")


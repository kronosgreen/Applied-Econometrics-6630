library(tidyverse)
library(magrittr)
library(readxl)
library(haven) # for read_sas function
library(lubridate) # for working with date fields

# set working directory
setwd("/Users/alexisathens/Documents/UofU/6 - Spring 2023/Applied Econometrics/Data/Real Estate Data")

# get list of data files in folder
files <- list.files()
files <- files[str_detect(files, ".sas7bdat$")] # just keep files with sas extensions

# initialize data frame for city home sales
data <- NULL

# loop through each file, appending city i
for(i in 1:length(files)){ 
  city <- read_sas(files[i], encoding="latin1") # need latin encoding to avoid read-in error (stackexchange solution)
  data %<>% bind_rows(city)
}

# double check same count as original files (should be 13)
data %>% distinct(City) %>% count()


## begin analysis



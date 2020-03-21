#d = read.csv("csse_covid_19_data/csse_covid_19_daily_reports/01-22-2020.csv", header = TRUE)

#install.packages("tidyverse")
#install.packages("data.table")

install.packages("plyr")
install.packages("readr")
library(plyr)
library(readr)
library(tidyverse)
library(data.table)
library(plyr)
library(ldply)
library(readr)
getwd()
setwd("/Users/fppaula/Documents/GitHub/covid-19/")
files = list.files("./csse_covid_19_data/csse_covid_19_daily_reports/", pattern = "*.csv", full.names = TRUE)
myfiles = lapply(files, read.delim)


#read separate files
setwd("./csse_covid_19_data/csse_covid_19_daily_reports/")
files <- list.files(pattern="*.csv")
dat_csv = ldply(files, read_csv)
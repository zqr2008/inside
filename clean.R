library(readxl)
library(compareGroups)
library(tidyverse)

question <- read_excel("C:/Users/zhaiqiangrong/Desktop/cohort/inside/内部全周期孕晚期问卷-0817.xls")

question <- question %>% 
  dplyr::mutate_at(.vars = vars(7:9,15:21,27,31), .funs = as.factor)

table2 <- descrTable(~., data=question,  method = NA)
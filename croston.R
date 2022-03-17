library(tidyverse)
library(readxl)
library(tsintermittent)
library(lubridate)



df <- read_excel("./data.xlsx")
ts_data <- ts(df$sales, start=year(df$date)[1], frequency = 12)



croston(ts_data) %>% autoplot()

crost(ts_data, outplot = T, opt.on = F, w=c(0.1, 0.1),  init=c("naive","naive"), cost="mse", init.opt = F)

tsb(ts_data, outplot = T, opt.on = F, w=c(0.1, 0.1),  init=c("naive","naive"), cost="mse", init.opt = F)



croston(c(1,0,4,0,1)) %>% summary()

crost(c(1,0,4,0,1), outplot = T, opt.on = F, w=c(0.1, 0.1),  init=c("naive","naive"), cost="mse", init.opt = F)

tsb(ts_data, outplot = T, opt.on = F, w=c(0.0, 0.17322741462632069), init=c("naive","naive"), cost="mse", init.opt = F)

tsb(ts_data, outplot = T, opt.on = F, init=c("naive","naive"), cost="mse", init.opt = F)

crost(ts_data, outplot = T, opt.on = F, init=c("naive","naive"), cost="mse", init.opt = F)

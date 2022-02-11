library(tidyverse)
library(lubridate)
library(dslabs)
temp_carbon<-data("temp_carbon")
setwd("~/dataviz/Ejguiado")
maunaloa_raw<-read_csv("https://raw.githubusercontent.com/Janopecuario/dataviz/main/maunaloa.csv")

maunaloa<-maunaloa_raw %>% rename(date='decimal date') %>% 
  mutate(date=date_decimal(date))

temp_carbon<-temp_carbon %>% filter(year>1957)


joint<-left_join(maunaloa,temp_carbon,by="year")

ggplot(joint,aes(x=date,y=average,group=1))+
  geom_line(aes(x=date,y=average,group=1))+
  geom_bar(aes(x=date,y=average,fill=temp_anomaly),stat="identity")+
  scale_fill_gradientn(colours=c("blue","white","red"))+
  ylim(300,420)+theme_minimal()+theme(legend.position = "none")

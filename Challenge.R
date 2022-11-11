#Deliverable 1

#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load dplyr library
library(dplyr)
#Read Data
setwd("C:/Users/celia/MechaCar_Statistical_Analysis")

#Importing csv file
mecha <- read.csv('MechaCar_mpg.csv', check.names = F, stringsAsFactors = F) 

# Performing Liner Regression
lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha)

#Summary for the Linear Regression
summary(lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mecha))

#Deliverable 2

#Importing CSV file
suspension <- read.csv('Suspension_coil.csv', check.names = F, stringsAsFactors = F)

#Creating a summary table
total_summary <- suspension %>% 
  summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#Creating a lot summary
lot_summary <- suspension %>% 
  group_by(Manufacturing_Lot) %>% 
  summarise(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#Deliverable 3

# Performing t test for all the lots
t.test(suspension$PSI, mu=mean(suspension$PSI))

#Performing t test for lot 1
t.test(subset(suspension$PSI, suspension$Manufacturing_Lot=='Lot1'), mu=mean(suspension$PSI))

#Performing t test for lot 2
t.test(subset(suspension$PSI, suspension$Manufacturing_Lot=='Lot2'), mu=mean(suspension$PSI))

#Performing t test for lot 3
t.test(subset(suspension$PSI, suspension$Manufacturing_Lot=='Lot3'), mu=mean(suspension$PSI))

# Module 16 Challenge

# Libraries
library(dplyr)
library(tidyverse)

# Deliverable 1:

# Creating Data Frame
MechaCar_df <- read.csv('MechaCar_mpg.csv')

# Linear Regression - lm() function
MechaCar_LR <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=MechaCar_df)

# Summary Statistics
summary(MechaCar_LR)

# Deliverable 2:

# Importing Coil file as table
Coil_Table <- read.csv('Suspension_Coil.csv')

# Summary Statistics of PSI column- total_summary() function
coil_total_summary <- Coil_Table %>% summarize(Mean = mean(PSI), Median = median(PSI), 
                                               Variance = var(PSI), SD = sd(PSI), 
                                               .groups = 'keep')
coil_total_summary

# Group and Summarize Manufacturing Lot
coil_lot_summary <- Coil_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),
                                                                             Median = median(PSI),
                                                                             Variance = var(PSI), 
                                                                             SD = sd(PSI) , 
                                                                             .groups = 'keep')
coil_lot_summary

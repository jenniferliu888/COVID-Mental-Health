#### Preamble ####
# Purpose: Clean the survey data 
# Author: Jennifer Liu
# Data: April 27, 2021
# Contact: jenliu.liu@mail.utoronto.ca
# License: MIT
# Pre-requisites: 
# - Need to have downloaded the data and saved it to inputs/data

#### Workspace setup ####

library(tidyverse)

data_clean <- data %>%
  select(DEM_10, AGEGR_10, PVISMIN, MH_05, MH_15A,BH_60A, BH_60B, BH_55A, BH_55H, BH_55J, PBH_55L, PLM_30, PIIDFLAG) %>%
  filter(MH_15A < 6 & BH_60A < 6 & PVISMIN < 6 & MH_05 < 6 & BH_60B < 6 & BH_55A < 6 & BH_55H < 6 & BH_55J < 6 & PBH_55L < 6 & PLM_30 < 96)

#rename the columns
data_clean <- rename(data_clean, gender = DEM_10, gender = DEM_10, age_group = AGEGR_10, visible_minority = PVISMIN, perceived_mental_health = MH_05, feeling = MH_15A, shopping_grocery = BH_60A, delivery = BH_60B, concern_ownhealth = BH_55A, concern_socialties = BH_55H, concern_coopafter = BH_55J, concern_violence = PBH_55L, concern_loosing = PLM_30, indigenous = PIIDFLAG) 
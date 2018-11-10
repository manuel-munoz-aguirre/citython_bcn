############################## Airbnb analysis 

options(stringsAsFactors = FALSE)
library(dplyr)
library(data.table)

Airbnb_input <- fread("/Users/raziel/Documents/citython_bcn/Data_mining/Airbnb_analysis/Airbnb.data.csv")

Airbnb_input <- Airbnb_input[,c(7,8,10)]

# write.csv(Airbnb_input, 
#           file = "/Users/raziel/Documents/citython_bcn/Data_mining/Airbnb_analysis/lat.long.Airbnb.csv",
#           row.names = FALSE)


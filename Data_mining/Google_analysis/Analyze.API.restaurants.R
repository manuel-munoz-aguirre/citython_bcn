################## Analyzing restaurants data 

options(stringsAsFactors = FALSE)
library(data.table)

#### Bring the data:
tmp_restaurantes <- fread("/Users/raziel/Documents/citython_bcn/data_mining/tmp.Restaurant.python.csv")

coordinates <-  tmp_restaurantes$geometry %>% strsplit(., split = ":", fixed=TRUE) %>%
  lapply(., function(x){y <- x[c(2:4)]; paste(y, collapse = "")}) %>% 
  unlist() %>% strsplit(., split = "{", fixed = TRUE) %>%
  lapply(., function(x){y <- x[2]}) %>% unlist() %>%
  strsplit(., split = ",", fixed = TRUE) %>%
  lapply(., function(x){y <- x[c(1:2)]; paste(y, collapse = "")}) %>%
  unlist() %>% strsplit(., split = "lat'") %>% lapply(., function(x){y <- x[2]}) %>%
  unlist() %>% strsplit(., split = "'lng'", fixed=TRUE) %>%
  lapply(., function(x){y <- paste(x, collapse = " "); trimws(y)}) %>% unlist() %>%
  strsplit(., split = "}", fixed = TRUE) %>% lapply(., function(x){y <- x[1]}) %>% unlist() %>%
  colsplit(., pattern = " ", c("lat", "lng"))

Restaurantes_final <- cbind(coordinates, tmp_restaurantes) 

Restaurantes_final <- Restaurantes_final[,c(1,2,11,12)]
rm(Restaurantes_tmp)

# write.csv(Restaurantes_final,
#           file = "/Users/raziel/Documents/citython_bcn/data_mining/Restaurantes.csv",
#           row.names = FALSE)


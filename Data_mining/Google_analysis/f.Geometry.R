############ Function to modify geometry: 

library(dplyr)
library(reshape2)
options(stringsAsFactors = FALSE)

f.Geometry <- function(Input_matrix){
  
  tmp_geom <- Input_matrix[,1]
  tmp_geom <- as.character(tmp_geom)
  # tmp_geom <- tmp_geom %>% strsplit(., split = ":", fixed=TRUE) %>%
  #   lapply(., function(x){y <- x[c(2:4)]; paste(y, collapse = "")}) #%>%
    # unlist() %>% strsplit(., split = "{", fixed = TRUE) %>%
    # lapply(., function(x){y <- x[2]}) %>% unlist() #%>%
    # strsplit(., split = ",", fixed = TRUE) %>%
    # lapply(., function(x){y <- x[c(1:2)]; paste(y, collapse = "")}) %>%
    # unlist() %>% strsplit(., split = "lat'") %>% lapply(., function(x){y <- x[2]}) #%>%
    # unlist() %>% strsplit(., split = "'lng'", fixed=TRUE) %>%
    # lapply(., function(x){y <- paste(x, collapse = " "); trimws(y)}) %>% unlist() %>%
    # strsplit(., split = "}", fixed = TRUE) %>% lapply(., function(x){y <- x[1]}) %>% unlist()
    # 
  print(tmp_geom)
  
  
  # 
  # tmp_geom <- colsplit(tmp_geom, pattern = " ", c("lat", "lng"))
  # 
  # tmp_geom <- cbind(tmp_geom, Input_matrix)
  # tmp_geom <- tmp_geom[,-c(3)]
  
  #return(tmp_geom)
  
}





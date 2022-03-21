library(tidyverse)
library(leaflet)

df <- read_csv("occ_aaegypti.csv") 

leaflet(df) %>%
  addTiles() %>%
  setView(lng = -52.0986, lat = -30.5, zoom = 6) %>%
  addCircles(
    lng = ~longitude, lat = ~latitude, 
    popup = "Aedes aegypti",
    color = "red"
  )

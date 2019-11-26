# Working directory set as root of project
library(sf)
library(lwgeom)


roads <- sf::read_sf("data/nigeria_roads/Nigeria_Roads.shp")
roads <- lwgeom::st_make_valid(roads) 
roads <- roads[-c(721:899),]
roads <- sf::write_sf(roads, "data/roads-cleaned/roads.shp")

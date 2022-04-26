#Cargando librerias 
library(tidyverse) #pkg para ciencia de datos
library(leaflet) #pkg para crear mapas web
library(leaflet.extras) #plugins para leaflet
library(sf)
library(cptcity)
library(htmltools)

#LECTURA DE DATOS

#Rutas de Huampu Qotu de Musho
rut_line <- st_read('https://github.com/junior0428/RutasMusho/blob/main/vectorial/ruta_Huampu_Qotu.gpkg?raw=true')
plot(rut_line)

#Nombre de la ruta de Huampu Qotu de Musho
rut_nom <- st_read("https://github.com/junior0428/RutasMusho/blob/main/vectorial/nombre_Huampu_Qotu.gpkg?raw=true")
plot(st_geometry(rut_nom), add = T)



#CREACION DE MAPA WEB
rut_nom %>% 
  leaflet() %>% 
  addProviderTiles(provider = providers$CartoDB.DarkMatter) %>% 
  addPolygons(fillColor = "green", highlight = highlightOptions( weight = 5, color = 'red', fillOpacity = 0.7, bringToFront = TRUE))

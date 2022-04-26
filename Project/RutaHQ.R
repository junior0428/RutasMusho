#Cargando librerias 
library(tidyverse) #pkg para ciencia de datos
library(leaflet) #pkg para crear mapas web
library(leaflet.extras) #plugins para leaflet
library(sf)
library(cptcity)
library(htmltools)

#Lectura de datos 
setwd('E:/MUSHO/Ciclismo/Nombres_Rutas')

rut <- st_read('ruta_Huampu_Qotu.gpkg')
plot(rut)

#!/bin/bash

#Executar no diretório que contém os arquivos GeoTiff que serão modificados
   
folder_dest="" #adicionar o diretório de origem

for file in *.tif;
do
   gdalwarp -dstnodata 0 -t_srs EPSG:4326 -of GTiff "$file" "${folder_dest}/warped$file"
done

#!/bin/bash

   folder_dest="C:\xampp\tomcat\webapps\geoserver\data\data\pytestes\teste1"

for file in *.tif;
do   
   gdal_translate -a_srs EPSG:4326 -of GTiff "$file" "${folder_dest}/translate4326$_file"

done
#!/bin/bash

   folder_dest="C:\xampp\tomcat\webapps\geoserver\data\data\pytestes\teste1\pylamina"
   extensao=".tif"

for file in *.tif;
do
   
   gdal_retile.py -v -r bilinear -levels 4 -ps 2048 2048 -co "TILED=YES" -co "COMPRESS=JPEG" -targetDir $folder_dest $file

done
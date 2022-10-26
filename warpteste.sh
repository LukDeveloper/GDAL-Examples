#!/bin/bash
   
   folder_dest=""

for file in *.tif;
do
   gdalwarp -dstnodata 0 -t_srs EPSG:4326 -of GTiff "$file" "${folder_dest}/warped$file"
done
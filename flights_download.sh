#!/bin/bash

#YEAR=$(date+'%Y')

YEAR=`date +"%Y"`


echo "Downloading YEAR=$YEAR..."



RESPONSE=$(curl -o $YEAR.xls https://www1.nyc.gov/assets/finance/downloads/pdf/rolling_sales/annualized-sales/$YEAR/$YEAR_brooklyn.xls)

line=$(head -n 1 $YEAR.xls)
echo $line

if [ $line -ne '<!DOCTYPE html>' ]; then
	echo "No HTML file"
	sh ./script.sh $YEAR
else 
	echo "HTML file present"
	rm -rf ./$YEAR.xls
	exit
if

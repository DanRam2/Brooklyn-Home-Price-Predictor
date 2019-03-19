#in2csv 2017_1.xls > temp_2017.csv
#sed -n '5,24p;25q' temp_2017.csv > temp_new_2017
#sed -i 1,24d temp_2017.csv
#sed 's/\"//g' temp_new_2017 > temp_new_2017_modified_11
#sed ':a;N;$!ba;s/\n/ /g' temp_new_2017_modified_11 > temp_new_2017_modified_12
#sed 's/ ,/,/g' temp_new_2017_modified_12 > temp_new_2017_modified_14
#cat temp_2017.csv>>temp_new_2017_modified_14


 in2csv $1.xls > temp_$1.csv
 sed -n '5,24p;25q' temp_$1.csv > temp_$1_1.csv
 sed -i 1,24d temp_$1.csv
 sed 's/\"//g' temp_$1_1.csv > temp_$1_2.csv
 sed ':a;N;$!ba;s/\n/ /g' temp_$1_2.csv > temp_$1_3.csv
 sed 's/ ,/,/g' temp_$1_3.csv > temp_$1_4.csv
 cat temp_$1.csv>>temp_$1_4.csv
 mv temp_$1_4.csv ./csvs/$1.csv
 rm -rf temp_*

#!/bin/bash

# 0 - Prepare
echo AWK TASK
echo -----files-----
tree ./files/
echo ---------------

# 1&2 - task1&2
echo -----task1\&2---
awk 'FNR==1{n=split(FILENAME,a,"/");print a[n]}' ./files/* | awk '{n=split($1,a,"_");print a[1],"->",a[n]}'
echo ---------------

# 3 - task3
echo ----task3----
awk '{a[FILENAME]+=$3} END{for(f in a) print f, a[f]}' ./files/* | awk -F" +|/" '{print $(NF-1), "\t", $NF, "rub"}'
echo -------------

# 4 - task4
echo ----task4----
# echo *.xyz | xargs -n 1 awk '{sum+=$5} END{print FILENAME,sum }' > output.txt
awk '$1=="tomato"{print FILENAME}' ./files/* | awk -F"/|_" '{print $3, $4}'
echo -------------

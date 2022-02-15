#!/bin/bash

# 0 - Prepare
echo AWK TASK
echo -----files-----
tree ./files/
echo ---------------

# 1 - task1
echo -----task1-----
ls files | awk -f task1.awk -F_
echo ---------------

# 2 - task2
echo -----task2-----
ls files | awk -f task2.awk -v day="12.06.2000" -F_
echo ---------------

# 3 - task3
echo ----task3----
awk '{a[FILENAME]+=$3} END{for(f in a) print f, a[f]}' ./files/* | awk -F" +|/" '{print $(NF-1), "\t", $NF, "rub"}'
echo -------------

# 4 - task4
echo ----task4----
awk -f task4.awk -v product="tomato" ./files/*
echo -------------

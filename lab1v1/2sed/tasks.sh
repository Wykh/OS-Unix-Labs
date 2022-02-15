#!/bin/bash

# 0 - Prepare
echo SED TASK
echo -original file-
cat ./file
echo ---------------

# 1 - task1
echo -----task1-----
sed -r '/error|ERROR/d' ./file
echo ---------------

# 2 - task2
echo -----task2-----
sed -r '/error|ERROR/s/$/ Achtung!!!/' file
echo ---------------

# 3 - task3
echo -----task3-----
#c - replace
sed -r '/error|ERROR/s/^[a-zA-Z0-9 ]+$/Achtung!!!/' file
echo ---------------

# 4 - task4
echo -----task4-----
sed -r '/error|ERROR/y/abcdefghijklmnopqrstuvwxyz/zyxwvutsrqponmlkjihgfedcba/' file
echo ---------------


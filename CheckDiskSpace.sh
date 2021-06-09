#!/bin/bash

UsedSpace=`df -h | awk '{print $5}' | grep -v Capacity | awk -F % '{print $1}' | head -n1`
WarningLimit=90

if [ "$UsedSpace" -gt "$WarningLimit" ];then
    echo -e "\033[01;33mUsed space is more than" "$WarningLimit"%"\033[0m"
    echo -e "\033[01;32mUsing: "$UsedSpace"%\033[0m"
else
    echo -e "\033[01;32mFree space is ok!\033[0m"
    echo -e "\033[01;32mUsing: "$UsedSpace"%\033[0m"
fi
#!/bin/bash

echo "Website Connectivity Checker"

read -p "Enter website name: " website

ping -c 1 $website > /dev/null 2>&1

if [ $? -eq 0 ]
then
    echo "$website is UP"
else
    echo "$website is DOWN"
fi

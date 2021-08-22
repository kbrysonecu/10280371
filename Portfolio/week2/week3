#!/bin/bash

read -sp "Password: " pass_var 
#user enters password and hides input and stays on that line

echo "Password: $pass_var" | sha256sum > passwordcheck.txt 
#create plain text password into txt 


if cmp -s passwordcheck.txt secret.txt; then 
# compares two .txt documents

    echo -e "\033[32mAccess granted.\e[0m"
    exit 0
#if they are the same, access is granted

else
    echo -e "\033[31mAccess denied.\e[0m"
    exit 1
#if they do not match, then access denied

fi
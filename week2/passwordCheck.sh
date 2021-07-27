#!/bin/bash

read -sp "Password: " pass_var 
#user enters password and hides input and stays on that line

echo "Password: $pass_var" | sha256sum > passwordcheck.txt 
#create plain text password into txt 


if cmp -s passwordcheck.txt secret.txt; then
    echo "Access granted."
    exit 0
else
    echo "Access denied."
    exit 1
fi
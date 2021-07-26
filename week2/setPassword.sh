#!/bin/bash

read -p "Folder Name: " folder_var 
#enter folder name

read -sp "Password: " pass_var 
#user enters password and hides input and stays on that line

echo "Password: $pass_var" | sha256sum > secret.txt 
#create plain text password into txt 
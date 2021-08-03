#!/bin/bash

echo "File contents checker"
echo "Type name of file with .txt"
read filename

for line in `cat $filename`
do

if test -f "$line"; then
    echo "$line - That file exists"; 
    
    elif test -d "$line"; then
    echo "$line - That is a directory"; 

    else
    echo "$line - I don't know what that is!"
fi

done







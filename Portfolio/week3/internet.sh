#!/bin/bash

website="1" #sets the variable so it does not default to exit


until [[ $website = "exit" ]]; do
    read -p "Please type the URL of a file to download or type 'exit' to quit: " website
    
        if [ $website != "exit" ]; then
        read -p "Type the location of where you would like to download the file to: " location
        wget -O $location $website
        fi

done


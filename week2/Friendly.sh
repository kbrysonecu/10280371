#!/bin/bash

echo "Please enter your name"
read name

if [ "$name" = "kristi" ]; then
    echo "Kristi is a very cool name"
else   
    echo "Hi $name"
fi
#!/bin/bash

#create a script to search my work for following patterns:

#all sed statements

grep -r sed

#all lines that start with the letter m

grep -r "^m"

#all lines that contain three digit numbers

grep -r "\d\d\d"

#all echo statements with at least three words

gawk '^echo NF>3'
#or
grep -E '^echo (\w+\b.){3}'

#all lines that would make a good password

grep -E '(\w{10,})
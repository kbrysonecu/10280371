#!/bin/bash

# -eq is equal to if [ "$a" -eq "$b" ]
# -ne is not equal to if [ "$a" -ne "$b" ]
# -gt is greater than if if [ "$a" -gt "$b" ]
# -ge is greater or equal to if [ "$a" -ge "$b" ]
# -lt is less than to if [ "$a" -lt "$b" ]
# -le is less than or equal to if [ "$a" -le "$b" ]

val_a=25
val_b=23

#eq demonstration

#if [  ]; then
#    echo ""
#else
#    echo ""
#fi

if [ "$val_a" -eq "$val_b" ]; then
    echo "The integers are the same"
else
    echo "The intergers are not the same"
fi
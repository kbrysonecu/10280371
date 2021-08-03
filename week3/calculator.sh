#!/bin/bash

echo "Calculator"
i="y"
while [[ $i = "y" ]]
do #Menu of options
echo -e "\033[34m1.Addition\e[0m" #Addition in blue
echo -e "\033[32m2.Subtraction\e[0m" #Subtraction in green
echo -e "\033[31m3.Multiplication\e[0m" #Multiplication in red
echo -e "\033[35m4.Division\e[0m" #Division in purple
echo -e "\033[33m5.Exit\e[0m" #Exit in yellow
echo "Enter choice"
read ch

case "$ch" in
        1)
            echo "Enter first number:"
            read num1 #user enter number
            echo "Enter second number:"
            read num2 #user enter number
            result=`expr $num1 + $num2` #addition operator
            echo -e "\033[34mAnswer: $result\e[0m" #answer in blue
            break 
        ;;
        2)
            echo "Enter first number:"
            read num1
            echo "Enter second number:"
            read num2
            result=`expr $num1 - $num2` #subtraction operator
            echo -e "\033[32mAnswer: $result\e[0m" #answer in green
            break
        ;;
        3)
            echo "Enter first number:"
            read num1
            echo "Enter second number:"
            read num2
            result=`expr $num1 \* $num2` #multiplication operator
            echo -e "\033[31mAnswer: $result\e[0m" #answer in red
            break
        ;;
        4)
            echo "Enter first number:"
            read num1
            echo "Enter second number:"
            read num2
            result=`expr $num1 / $num2` #division operator
            echo -e "\033[35mAnswer: $result\e[0m" #answer in purple, only to whole number
            break
        ;;
        5) exit 
        ;;
        *)
            echo "$ch is not a valid choice" #default case
            break
        ;;
    esac
echo "Do you want to continue?" #continue in loop until user presses anything but 'y'
read i
if [ $i != "y" ]
then
exit
fi
done
bash ./passwordCheck.sh
#!/bin/bash

if [ $? -eq 0 ] 
then

read -p "Select a value 1, 2 or 3: " userchoice 
#read user input selection

case $userchoice in 
    "1" )
        ./foldermaker.sh ;;

    "2")
        ./foldercopier.sh ;;
    
    "3")
        ./setPassword.sh ;;

*) #default case
    echo "$userchoice is not a valid selection."
;;
esac

fi


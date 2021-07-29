bash ./passwordCheck.sh
#!/bin/bash

if [ $? -eq 0 ] 

then

read -p "Select a value: 
1. Folder Maker 
2. Folder Copier
3. Set Password
" userchoice 
#read user input selection

case $userchoice in 
    "1" ) echo 1. Folder Maker
        ./foldermaker.sh ;;

    "2") echo 2. Folder Copier
        ./foldercopier.sh ;;
    
    "3") echo 3. Set Password
        ./setPassword.sh ;;

*) #default case
    echo "$userchoice is not a valid selection."
;;
esac

fi


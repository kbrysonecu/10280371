#!/bin/bash
~/Student/Scripts/Portfolio/week2/passwordCheck.sh

if [ $? -eq 0 ] 

then

while [[ "$userchoice" -ne "8" ]]; do 

echo -e "Select a value: 
\033[36m1. Folder Maker 
2. Folder Copier
3. Set Password
4. Calculator
5. Create Week Folders
6. Check Filenames
7. Download a File\e[0m
\033[33m8. Exit\e[0m"

read userchoice 
#read user input selection

case $userchoice in 
    "1") echo 1. Folder Maker
        ~/Student/Scripts/Portfolio/week2/foldermaker.sh ;;

    "2") echo 2. Folder Copier
        ~/Student/Scripts/Portfolio/week2/foldercopier.sh ;;
    
    "3") echo 3. Set Password
        ~/Student/Scripts/Portfolio/week2/setPassword.sh ;;
    
    "4") echo 4. Calculator
        ./calculator.sh ;;

    "5") echo 5. Create Week Folders
        ./megafoldermaker.sh ;;
    
    "6") echo 6. Check Filenames
        ./filenames.sh ;;
    
    "7") echo 7. Download a File
        ./internet.sh ;;
    
    "8") echo 8. Exit
            exit;;

*) #default case
        echo "$userchoice is not a valid selection."
       ;;
esac
done
fi
#!/bin/bash

#Introduction to regular expressions - tutorial

#To look  up phone numbers
# \d\d\d-\d\d\d - means to look up any digit 0-9 and having 3 in a row 
#means any 3 digits in a row followed by a dash and 3 more digits

# . means any character
# * means zero or more
# .* means to follow by any number or character

#Show all lines that contain 'echo'.
#grep -r echo

#Show only lines that start with 'echo'.
# grep -r "^echo" 

#Show only statements that contain an echo with a flag.
# grep -r 'echo -.*' 

#Show only echo statements where the text is in double quotes and starts with an uppercase letter.
# grep -r 'echo .*\"[A-Z].*\"' 

#Show only echo statements with text in double quotes that ends in an exclamation mark.
# grep -r 'echo .*\".*!\"'
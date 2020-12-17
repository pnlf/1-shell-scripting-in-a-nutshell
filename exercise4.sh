#!/bin/bash

#Write a shell script to check to see if the file "/etc/shadow" exists. 
#If it does exist, display "Shadow passwords are enabled." Next, check to see 
#if you can write to the file. If you can, display "You have permissions to edit /etc/shadow." 
#If you cannot, display "You do NOT have permissions to edit /etc/shadow."

FILE=/etc/shadow

if [ -f "$FILE" ]; then # check to see if file exists
    if [ -w "$FILE" ]; then # check to see if you can write to the file
    echo "You have permissions to edit /etc/shadow."
    else
        echo "You do NOT have permissions to edit /etc/shadow."
    fi
else
    echo "Shadow passwords are enabled."
fi
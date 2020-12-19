#!/bin/bash

# Modify the script from the previous exercise. Make the "file_count" function 
# accept a directory as an argument. Next have the function display the name of 
# the directory followed by a colon. Finally, display the number of files to the 
# screen on the next line. Call the function three times. First, on the "/etc" 
# directory, next on the "/var" directory and finally on the "/usr/bin" directory.
# Example output:
# /etc: 85

file_count()
{
    local NR_FILES=$(ls -p "${1}/"| grep -v / | wc -l)
    echo "$NR_FILES"
}

DIR="$1"

echo "${DIR}: "
file_count $DIR
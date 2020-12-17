#!/bin/bash

# Write a shell script that accepts a file or directory name as an argument. 
# Have the script report if it is a regular file, a directory, or other type of file. 
# If it is a regular file, exit with a 0 exit status. If it is a directory, exit with a 1 exit status. 
# If it is some other type of file, exit with a 2 exit status.

IN_FILE="$1"

if [ -f "$IN_FILE" ]; then
    echo "$IN_FILE is a regular file"
    EXIT="0"
elif [ -d "$IN_FILE" ]; then
    echo "$IN_FILE is a directory"
    EXIT="1"
else
    echo "$IN_FILE is an other type of file (not regular or directory)"
    EXIT="2"
fi

exit $EXIT
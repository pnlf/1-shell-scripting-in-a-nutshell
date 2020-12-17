#!/bin/bash

# Write a shell script that prompts the user for a name of a file or directory 
# and reports if it is a regular file, a directory, or other type of file.
# Also perform an ls command against the file or directory with the long listing option.

read -p "Insert name of a file or directory: " IN_VAL

if [ -f "$IN_VAL" ]; then
    echo "$IN_VAL is a regular file"
elif [ -d "$IN_VAL" ]; then
    echo "$IN_VAL is a directory"
else
    echo "$IN_VAL is an other type of file (not regular or directory)"
fi

ls -l $IN_VAL